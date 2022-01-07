; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/extr_functions.c_usb_get_function.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/extr_functions.c_usb_get_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_function = type { %struct.usb_function_instance* }
%struct.usb_function_instance = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.usb_function* @usb_get_function(%struct.usb_function_instance* %0) #0 {
  %2 = alloca %struct.usb_function*, align 8
  %3 = alloca %struct.usb_function_instance*, align 8
  %4 = alloca %struct.usb_function*, align 8
  store %struct.usb_function_instance* %0, %struct.usb_function_instance** %3, align 8
  %5 = load %struct.usb_function_instance*, %struct.usb_function_instance** %3, align 8
  %6 = getelementptr inbounds %struct.usb_function_instance, %struct.usb_function_instance* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = bitcast {}** %8 to %struct.usb_function* (%struct.usb_function_instance*)**
  %10 = load %struct.usb_function* (%struct.usb_function_instance*)*, %struct.usb_function* (%struct.usb_function_instance*)** %9, align 8
  %11 = load %struct.usb_function_instance*, %struct.usb_function_instance** %3, align 8
  %12 = call %struct.usb_function* %10(%struct.usb_function_instance* %11)
  store %struct.usb_function* %12, %struct.usb_function** %4, align 8
  %13 = load %struct.usb_function*, %struct.usb_function** %4, align 8
  %14 = call i64 @IS_ERR(%struct.usb_function* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load %struct.usb_function*, %struct.usb_function** %4, align 8
  store %struct.usb_function* %17, %struct.usb_function** %2, align 8
  br label %23

18:                                               ; preds = %1
  %19 = load %struct.usb_function_instance*, %struct.usb_function_instance** %3, align 8
  %20 = load %struct.usb_function*, %struct.usb_function** %4, align 8
  %21 = getelementptr inbounds %struct.usb_function, %struct.usb_function* %20, i32 0, i32 0
  store %struct.usb_function_instance* %19, %struct.usb_function_instance** %21, align 8
  %22 = load %struct.usb_function*, %struct.usb_function** %4, align 8
  store %struct.usb_function* %22, %struct.usb_function** %2, align 8
  br label %23

23:                                               ; preds = %18, %16
  %24 = load %struct.usb_function*, %struct.usb_function** %2, align 8
  ret %struct.usb_function* %24
}

declare dso_local i64 @IS_ERR(%struct.usb_function*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
