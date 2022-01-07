; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_renesas_usb3.c_role_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_renesas_usb3.c_role_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.renesas_usb3 = type { i64, i32 }

@ENODEV = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"host\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"peripheral\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @role_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @role_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.renesas_usb3*, align 8
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.device*, %struct.device** %6, align 8
  %13 = call %struct.renesas_usb3* @dev_get_drvdata(%struct.device* %12)
  store %struct.renesas_usb3* %13, %struct.renesas_usb3** %10, align 8
  %14 = load %struct.renesas_usb3*, %struct.renesas_usb3** %10, align 8
  %15 = getelementptr inbounds %struct.renesas_usb3, %struct.renesas_usb3* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %4
  %19 = load i64, i64* @ENODEV, align 8
  %20 = sub i64 0, %19
  store i64 %20, i64* %5, align 8
  br label %58

21:                                               ; preds = %4
  %22 = load %struct.renesas_usb3*, %struct.renesas_usb3** %10, align 8
  %23 = getelementptr inbounds %struct.renesas_usb3, %struct.renesas_usb3* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load i64, i64* @EBUSY, align 8
  %28 = sub i64 0, %27
  store i64 %28, i64* %5, align 8
  br label %58

29:                                               ; preds = %21
  %30 = load i8*, i8** %8, align 8
  %31 = call i64 @sysfs_streq(i8* %30, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  store i32 1, i32* %11, align 4
  br label %43

34:                                               ; preds = %29
  %35 = load i8*, i8** %8, align 8
  %36 = call i64 @sysfs_streq(i8* %35, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  store i32 0, i32* %11, align 4
  br label %42

39:                                               ; preds = %34
  %40 = load i64, i64* @EINVAL, align 8
  %41 = sub i64 0, %40
  store i64 %41, i64* %5, align 8
  br label %58

42:                                               ; preds = %38
  br label %43

43:                                               ; preds = %42, %33
  %44 = load i32, i32* %11, align 4
  %45 = load %struct.renesas_usb3*, %struct.renesas_usb3** %10, align 8
  %46 = call i32 @usb3_is_host(%struct.renesas_usb3* %45)
  %47 = icmp eq i32 %44, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load i64, i64* @EINVAL, align 8
  %50 = sub i64 0, %49
  store i64 %50, i64* %5, align 8
  br label %58

51:                                               ; preds = %43
  %52 = load %struct.renesas_usb3*, %struct.renesas_usb3** %10, align 8
  %53 = load i32, i32* %11, align 4
  %54 = load %struct.renesas_usb3*, %struct.renesas_usb3** %10, align 8
  %55 = call i32 @usb3_is_a_device(%struct.renesas_usb3* %54)
  %56 = call i32 @usb3_mode_config(%struct.renesas_usb3* %52, i32 %53, i32 %55)
  %57 = load i64, i64* %9, align 8
  store i64 %57, i64* %5, align 8
  br label %58

58:                                               ; preds = %51, %48, %39, %26, %18
  %59 = load i64, i64* %5, align 8
  ret i64 %59
}

declare dso_local %struct.renesas_usb3* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @sysfs_streq(i8*, i8*) #1

declare dso_local i32 @usb3_is_host(%struct.renesas_usb3*) #1

declare dso_local i32 @usb3_mode_config(%struct.renesas_usb3*, i32, i32) #1

declare dso_local i32 @usb3_is_a_device(%struct.renesas_usb3*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
