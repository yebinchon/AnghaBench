; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/extr_composite.c_count_ext_prop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/extr_composite.c_count_ext_prop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_configuration = type { %struct.usb_function** }
%struct.usb_function = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.usb_os_desc* }
%struct.usb_os_desc = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_configuration*, i32)* @count_ext_prop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @count_ext_prop(%struct.usb_configuration* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_configuration*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.usb_function*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.usb_os_desc*, align 8
  store %struct.usb_configuration* %0, %struct.usb_configuration** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.usb_configuration*, %struct.usb_configuration** %4, align 8
  %10 = getelementptr inbounds %struct.usb_configuration, %struct.usb_configuration* %9, i32 0, i32 0
  %11 = load %struct.usb_function**, %struct.usb_function*** %10, align 8
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.usb_function*, %struct.usb_function** %11, i64 %13
  %15 = load %struct.usb_function*, %struct.usb_function** %14, align 8
  store %struct.usb_function* %15, %struct.usb_function** %6, align 8
  store i32 0, i32* %7, align 4
  br label %16

16:                                               ; preds = %55, %2
  %17 = load i32, i32* %7, align 4
  %18 = load %struct.usb_function*, %struct.usb_function** %6, align 8
  %19 = getelementptr inbounds %struct.usb_function, %struct.usb_function* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %58

22:                                               ; preds = %16
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.usb_function*, %struct.usb_function** %6, align 8
  %25 = getelementptr inbounds %struct.usb_function, %struct.usb_function* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %23, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %22
  br label %55

34:                                               ; preds = %22
  %35 = load %struct.usb_function*, %struct.usb_function** %6, align 8
  %36 = getelementptr inbounds %struct.usb_function, %struct.usb_function* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load %struct.usb_os_desc*, %struct.usb_os_desc** %41, align 8
  store %struct.usb_os_desc* %42, %struct.usb_os_desc** %8, align 8
  %43 = load %struct.usb_os_desc*, %struct.usb_os_desc** %8, align 8
  %44 = icmp ne %struct.usb_os_desc* %43, null
  br i1 %44, label %45, label %54

45:                                               ; preds = %34
  %46 = load %struct.usb_os_desc*, %struct.usb_os_desc** %8, align 8
  %47 = getelementptr inbounds %struct.usb_os_desc, %struct.usb_os_desc* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %45
  %51 = load %struct.usb_os_desc*, %struct.usb_os_desc** %8, align 8
  %52 = getelementptr inbounds %struct.usb_os_desc, %struct.usb_os_desc* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  store i32 %53, i32* %3, align 4
  br label %59

54:                                               ; preds = %45, %34
  br label %55

55:                                               ; preds = %54, %33
  %56 = load i32, i32* %7, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %7, align 4
  br label %16

58:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %59

59:                                               ; preds = %58, %50
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
