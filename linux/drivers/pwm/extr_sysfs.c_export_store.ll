; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_sysfs.c_export_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_sysfs.c_export_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.pwm_chip = type { i32 }
%struct.pwm_device = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"sysfs\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @export_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @export_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.pwm_chip*, align 8
  %11 = alloca %struct.pwm_device*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call %struct.pwm_chip* @dev_get_drvdata(%struct.device* %14)
  store %struct.pwm_chip* %15, %struct.pwm_chip** %10, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = call i32 @kstrtouint(i8* %16, i32 0, i32* %12)
  store i32 %17, i32* %13, align 4
  %18 = load i32, i32* %13, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = load i32, i32* %13, align 4
  store i32 %21, i32* %5, align 4
  br label %60

22:                                               ; preds = %4
  %23 = load i32, i32* %12, align 4
  %24 = load %struct.pwm_chip*, %struct.pwm_chip** %10, align 8
  %25 = getelementptr inbounds %struct.pwm_chip, %struct.pwm_chip* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp uge i32 %23, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = load i32, i32* @ENODEV, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %5, align 4
  br label %60

31:                                               ; preds = %22
  %32 = load %struct.pwm_chip*, %struct.pwm_chip** %10, align 8
  %33 = load i32, i32* %12, align 4
  %34 = call %struct.pwm_device* @pwm_request_from_chip(%struct.pwm_chip* %32, i32 %33, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store %struct.pwm_device* %34, %struct.pwm_device** %11, align 8
  %35 = load %struct.pwm_device*, %struct.pwm_device** %11, align 8
  %36 = call i64 @IS_ERR(%struct.pwm_device* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %31
  %39 = load %struct.pwm_device*, %struct.pwm_device** %11, align 8
  %40 = call i32 @PTR_ERR(%struct.pwm_device* %39)
  store i32 %40, i32* %5, align 4
  br label %60

41:                                               ; preds = %31
  %42 = load %struct.device*, %struct.device** %6, align 8
  %43 = load %struct.pwm_device*, %struct.pwm_device** %11, align 8
  %44 = call i32 @pwm_export_child(%struct.device* %42, %struct.pwm_device* %43)
  store i32 %44, i32* %13, align 4
  %45 = load i32, i32* %13, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  %48 = load %struct.pwm_device*, %struct.pwm_device** %11, align 8
  %49 = call i32 @pwm_put(%struct.pwm_device* %48)
  br label %50

50:                                               ; preds = %47, %41
  %51 = load i32, i32* %13, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %50
  %54 = sext i32 %51 to i64
  br label %57

55:                                               ; preds = %50
  %56 = load i64, i64* %9, align 8
  br label %57

57:                                               ; preds = %55, %53
  %58 = phi i64 [ %54, %53 ], [ %56, %55 ]
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %5, align 4
  br label %60

60:                                               ; preds = %57, %38, %28, %20
  %61 = load i32, i32* %5, align 4
  ret i32 %61
}

declare dso_local %struct.pwm_chip* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @kstrtouint(i8*, i32, i32*) #1

declare dso_local %struct.pwm_device* @pwm_request_from_chip(%struct.pwm_chip*, i32, i8*) #1

declare dso_local i64 @IS_ERR(%struct.pwm_device*) #1

declare dso_local i32 @PTR_ERR(%struct.pwm_device*) #1

declare dso_local i32 @pwm_export_child(%struct.device*, %struct.pwm_device*) #1

declare dso_local i32 @pwm_put(%struct.pwm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
