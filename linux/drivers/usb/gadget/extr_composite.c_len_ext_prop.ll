; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/extr_composite.c_len_ext_prop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/extr_composite.c_len_ext_prop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_configuration = type { %struct.usb_function** }
%struct.usb_function = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.usb_os_desc* }
%struct.usb_os_desc = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_configuration*, i32)* @len_ext_prop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @len_ext_prop(%struct.usb_configuration* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_configuration*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.usb_function*, align 8
  %7 = alloca %struct.usb_os_desc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.usb_configuration* %0, %struct.usb_configuration** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 10, i32* %9, align 4
  %10 = load %struct.usb_configuration*, %struct.usb_configuration** %4, align 8
  %11 = getelementptr inbounds %struct.usb_configuration, %struct.usb_configuration* %10, i32 0, i32 0
  %12 = load %struct.usb_function**, %struct.usb_function*** %11, align 8
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.usb_function*, %struct.usb_function** %12, i64 %14
  %16 = load %struct.usb_function*, %struct.usb_function** %15, align 8
  store %struct.usb_function* %16, %struct.usb_function** %6, align 8
  store i32 0, i32* %8, align 4
  br label %17

17:                                               ; preds = %55, %2
  %18 = load i32, i32* %8, align 4
  %19 = load %struct.usb_function*, %struct.usb_function** %6, align 8
  %20 = getelementptr inbounds %struct.usb_function, %struct.usb_function* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %58

23:                                               ; preds = %17
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.usb_function*, %struct.usb_function** %6, align 8
  %26 = getelementptr inbounds %struct.usb_function, %struct.usb_function* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %24, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %23
  br label %55

35:                                               ; preds = %23
  %36 = load %struct.usb_function*, %struct.usb_function** %6, align 8
  %37 = getelementptr inbounds %struct.usb_function, %struct.usb_function* %36, i32 0, i32 1
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load %struct.usb_os_desc*, %struct.usb_os_desc** %42, align 8
  store %struct.usb_os_desc* %43, %struct.usb_os_desc** %7, align 8
  %44 = load %struct.usb_os_desc*, %struct.usb_os_desc** %7, align 8
  %45 = icmp ne %struct.usb_os_desc* %44, null
  br i1 %45, label %46, label %54

46:                                               ; preds = %35
  %47 = load i32, i32* %9, align 4
  %48 = sext i32 %47 to i64
  %49 = load %struct.usb_os_desc*, %struct.usb_os_desc** %7, align 8
  %50 = getelementptr inbounds %struct.usb_os_desc, %struct.usb_os_desc* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = add nsw i64 %48, %51
  %53 = call i32 @min(i64 %52, i32 4096)
  store i32 %53, i32* %3, align 4
  br label %60

54:                                               ; preds = %35
  br label %55

55:                                               ; preds = %54, %34
  %56 = load i32, i32* %8, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %8, align 4
  br label %17

58:                                               ; preds = %17
  %59 = load i32, i32* %9, align 4
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %58, %46
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @min(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
