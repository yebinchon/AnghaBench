; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_asus-wmi.c_pwm1_enable_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_asus-wmi.c_pwm1_enable_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.asus_wmi = type { i64, i32 }

@FAN_TYPE_SPEC83 = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ASUS_WMI_DEVID_CPU_FAN_CTRL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@FAN_TYPE_AGFN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @pwm1_enable_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pwm1_enable_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.asus_wmi*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load %struct.device*, %struct.device** %6, align 8
  %17 = call %struct.asus_wmi* @dev_get_drvdata(%struct.device* %16)
  store %struct.asus_wmi* %17, %struct.asus_wmi** %10, align 8
  store i32 0, i32* %11, align 4
  %18 = load i8*, i8** %8, align 8
  %19 = call i32 @kstrtouint(i8* %18, i32 10, i32* %12)
  store i32 %19, i32* %14, align 4
  %20 = load i32, i32* %14, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = load i32, i32* %14, align 4
  store i32 %23, i32* %5, align 4
  br label %80

24:                                               ; preds = %4
  %25 = load %struct.asus_wmi*, %struct.asus_wmi** %10, align 8
  %26 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @FAN_TYPE_SPEC83, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %52

30:                                               ; preds = %24
  %31 = load i32, i32* %12, align 4
  switch i32 %31, label %34 [
    i32 129, label %32
    i32 130, label %33
  ]

32:                                               ; preds = %30
  store i32 1, i32* %13, align 4
  br label %37

33:                                               ; preds = %30
  store i32 0, i32* %13, align 4
  br label %37

34:                                               ; preds = %30
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %80

37:                                               ; preds = %33, %32
  %38 = load i32, i32* @ASUS_WMI_DEVID_CPU_FAN_CTRL, align 4
  %39 = load i32, i32* %13, align 4
  %40 = call i32 @asus_wmi_set_devstate(i32 %38, i32 %39, i32* %15)
  store i32 %40, i32* %14, align 4
  %41 = load i32, i32* %14, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = load i32, i32* %14, align 4
  store i32 %44, i32* %5, align 4
  br label %80

45:                                               ; preds = %37
  %46 = load i32, i32* %15, align 4
  %47 = icmp ne i32 %46, 1
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = load i32, i32* @EIO, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %5, align 4
  br label %80

51:                                               ; preds = %45
  br label %74

52:                                               ; preds = %24
  %53 = load %struct.asus_wmi*, %struct.asus_wmi** %10, align 8
  %54 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @FAN_TYPE_AGFN, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %73

58:                                               ; preds = %52
  %59 = load i32, i32* %12, align 4
  switch i32 %59, label %69 [
    i32 128, label %60
    i32 130, label %61
  ]

60:                                               ; preds = %58
  br label %72

61:                                               ; preds = %58
  %62 = load %struct.asus_wmi*, %struct.asus_wmi** %10, align 8
  %63 = call i32 @asus_fan_set_auto(%struct.asus_wmi* %62)
  store i32 %63, i32* %11, align 4
  %64 = load i32, i32* %11, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %61
  %67 = load i32, i32* %11, align 4
  store i32 %67, i32* %5, align 4
  br label %80

68:                                               ; preds = %61
  br label %72

69:                                               ; preds = %58
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %5, align 4
  br label %80

72:                                               ; preds = %68, %60
  br label %73

73:                                               ; preds = %72, %52
  br label %74

74:                                               ; preds = %73, %51
  %75 = load i32, i32* %12, align 4
  %76 = load %struct.asus_wmi*, %struct.asus_wmi** %10, align 8
  %77 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 8
  %78 = load i64, i64* %9, align 8
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %5, align 4
  br label %80

80:                                               ; preds = %74, %69, %66, %48, %43, %34, %22
  %81 = load i32, i32* %5, align 4
  ret i32 %81
}

declare dso_local %struct.asus_wmi* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @kstrtouint(i8*, i32, i32*) #1

declare dso_local i32 @asus_wmi_set_devstate(i32, i32, i32*) #1

declare dso_local i32 @asus_fan_set_auto(%struct.asus_wmi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
