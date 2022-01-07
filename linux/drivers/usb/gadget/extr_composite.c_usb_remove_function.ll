; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/extr_composite.c_usb_remove_function.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/extr_composite.c_usb_remove_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_configuration = type { i32 }
%struct.usb_function = type { i64, i32 (%struct.usb_configuration.0*, %struct.usb_function*)*, i32, i32, i32 (%struct.usb_function*)* }
%struct.usb_configuration.0 = type opaque

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usb_remove_function(%struct.usb_configuration* %0, %struct.usb_function* %1) #0 {
  %3 = alloca %struct.usb_configuration*, align 8
  %4 = alloca %struct.usb_function*, align 8
  store %struct.usb_configuration* %0, %struct.usb_configuration** %3, align 8
  store %struct.usb_function* %1, %struct.usb_function** %4, align 8
  %5 = load %struct.usb_function*, %struct.usb_function** %4, align 8
  %6 = getelementptr inbounds %struct.usb_function, %struct.usb_function* %5, i32 0, i32 4
  %7 = load i32 (%struct.usb_function*)*, i32 (%struct.usb_function*)** %6, align 8
  %8 = icmp ne i32 (%struct.usb_function*)* %7, null
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = load %struct.usb_function*, %struct.usb_function** %4, align 8
  %11 = getelementptr inbounds %struct.usb_function, %struct.usb_function* %10, i32 0, i32 4
  %12 = load i32 (%struct.usb_function*)*, i32 (%struct.usb_function*)** %11, align 8
  %13 = load %struct.usb_function*, %struct.usb_function** %4, align 8
  %14 = call i32 %12(%struct.usb_function* %13)
  br label %15

15:                                               ; preds = %9, %2
  %16 = load %struct.usb_function*, %struct.usb_function** %4, align 8
  %17 = getelementptr inbounds %struct.usb_function, %struct.usb_function* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @bitmap_zero(i32 %18, i32 32)
  %20 = load %struct.usb_function*, %struct.usb_function** %4, align 8
  %21 = getelementptr inbounds %struct.usb_function, %struct.usb_function* %20, i32 0, i32 2
  %22 = call i32 @list_del(i32* %21)
  %23 = load %struct.usb_function*, %struct.usb_function** %4, align 8
  %24 = getelementptr inbounds %struct.usb_function, %struct.usb_function* %23, i32 0, i32 1
  %25 = load i32 (%struct.usb_configuration.0*, %struct.usb_function*)*, i32 (%struct.usb_configuration.0*, %struct.usb_function*)** %24, align 8
  %26 = icmp ne i32 (%struct.usb_configuration.0*, %struct.usb_function*)* %25, null
  br i1 %26, label %27, label %35

27:                                               ; preds = %15
  %28 = load %struct.usb_function*, %struct.usb_function** %4, align 8
  %29 = getelementptr inbounds %struct.usb_function, %struct.usb_function* %28, i32 0, i32 1
  %30 = load i32 (%struct.usb_configuration.0*, %struct.usb_function*)*, i32 (%struct.usb_configuration.0*, %struct.usb_function*)** %29, align 8
  %31 = load %struct.usb_configuration*, %struct.usb_configuration** %3, align 8
  %32 = bitcast %struct.usb_configuration* %31 to %struct.usb_configuration.0*
  %33 = load %struct.usb_function*, %struct.usb_function** %4, align 8
  %34 = call i32 %30(%struct.usb_configuration.0* %32, %struct.usb_function* %33)
  br label %35

35:                                               ; preds = %27, %15
  %36 = load %struct.usb_function*, %struct.usb_function** %4, align 8
  %37 = getelementptr inbounds %struct.usb_function, %struct.usb_function* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load %struct.usb_function*, %struct.usb_function** %4, align 8
  %42 = call i32 @usb_function_activate(%struct.usb_function* %41)
  br label %43

43:                                               ; preds = %40, %35
  ret void
}

declare dso_local i32 @bitmap_zero(i32, i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @usb_function_activate(%struct.usb_function*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
