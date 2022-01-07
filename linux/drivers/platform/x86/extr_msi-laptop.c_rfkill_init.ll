; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_msi-laptop.c_rfkill_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_msi-laptop.c_rfkill_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.platform_device = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"msi-bluetooth\00", align 1
@RFKILL_TYPE_BLUETOOTH = common dso_local global i32 0, align 4
@rfkill_bluetooth_ops = common dso_local global i32 0, align 4
@rfk_bluetooth = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"msi-wlan\00", align 1
@RFKILL_TYPE_WLAN = common dso_local global i32 0, align 4
@rfkill_wlan_ops = common dso_local global i32 0, align 4
@rfk_wlan = common dso_local global i64 0, align 8
@threeg_exists = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [11 x i8] c"msi-threeg\00", align 1
@RFKILL_TYPE_WWAN = common dso_local global i32 0, align 4
@rfkill_threeg_ops = common dso_local global i32 0, align 4
@rfk_threeg = common dso_local global i64 0, align 8
@quirks = common dso_local global %struct.TYPE_2__* null, align 8
@msi_rfkill_init = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@msi_rfkill_work = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @rfkill_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rfkill_init(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %5 = call i32 (...) @get_wireless_state_ec_standard()
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  %8 = load i32, i32* @RFKILL_TYPE_BLUETOOTH, align 4
  %9 = call i64 @rfkill_alloc(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32* %7, i32 %8, i32* @rfkill_bluetooth_ops, i32* null)
  store i64 %9, i64* @rfk_bluetooth, align 8
  %10 = load i64, i64* @rfk_bluetooth, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %4, align 4
  br label %88

15:                                               ; preds = %1
  %16 = load i64, i64* @rfk_bluetooth, align 8
  %17 = call i32 @rfkill_register(i64 %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  br label %88

21:                                               ; preds = %15
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %22, i32 0, i32 0
  %24 = load i32, i32* @RFKILL_TYPE_WLAN, align 4
  %25 = call i64 @rfkill_alloc(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32* %23, i32 %24, i32* @rfkill_wlan_ops, i32* null)
  store i64 %25, i64* @rfk_wlan, align 8
  %26 = load i64, i64* @rfk_wlan, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %21
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %79

31:                                               ; preds = %21
  %32 = load i64, i64* @rfk_wlan, align 8
  %33 = call i32 @rfkill_register(i64 %32)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %79

37:                                               ; preds = %31
  %38 = load i64, i64* @threeg_exists, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %57

40:                                               ; preds = %37
  %41 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %42 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %41, i32 0, i32 0
  %43 = load i32, i32* @RFKILL_TYPE_WWAN, align 4
  %44 = call i64 @rfkill_alloc(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32* %42, i32 %43, i32* @rfkill_threeg_ops, i32* null)
  store i64 %44, i64* @rfk_threeg, align 8
  %45 = load i64, i64* @rfk_threeg, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %40
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %70

50:                                               ; preds = %40
  %51 = load i64, i64* @rfk_threeg, align 8
  %52 = call i32 @rfkill_register(i64 %51)
  store i32 %52, i32* %4, align 4
  %53 = load i32, i32* %4, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  br label %70

56:                                               ; preds = %50
  br label %57

57:                                               ; preds = %56, %37
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** @quirks, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %57
  %63 = load i32, i32* @HZ, align 4
  %64 = mul nsw i32 1, %63
  %65 = call i32 @round_jiffies_relative(i32 %64)
  %66 = call i32 @schedule_delayed_work(i32* @msi_rfkill_init, i32 %65)
  br label %69

67:                                               ; preds = %57
  %68 = call i32 @schedule_work(i32* @msi_rfkill_work)
  br label %69

69:                                               ; preds = %67, %62
  store i32 0, i32* %2, align 4
  br label %92

70:                                               ; preds = %55, %47
  %71 = load i64, i64* @rfk_threeg, align 8
  %72 = call i32 @rfkill_destroy(i64 %71)
  %73 = load i64, i64* @rfk_wlan, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %70
  %76 = load i64, i64* @rfk_wlan, align 8
  %77 = call i32 @rfkill_unregister(i64 %76)
  br label %78

78:                                               ; preds = %75, %70
  br label %79

79:                                               ; preds = %78, %36, %28
  %80 = load i64, i64* @rfk_wlan, align 8
  %81 = call i32 @rfkill_destroy(i64 %80)
  %82 = load i64, i64* @rfk_bluetooth, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %79
  %85 = load i64, i64* @rfk_bluetooth, align 8
  %86 = call i32 @rfkill_unregister(i64 %85)
  br label %87

87:                                               ; preds = %84, %79
  br label %88

88:                                               ; preds = %87, %20, %12
  %89 = load i64, i64* @rfk_bluetooth, align 8
  %90 = call i32 @rfkill_destroy(i64 %89)
  %91 = load i32, i32* %4, align 4
  store i32 %91, i32* %2, align 4
  br label %92

92:                                               ; preds = %88, %69
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

declare dso_local i32 @get_wireless_state_ec_standard(...) #1

declare dso_local i64 @rfkill_alloc(i8*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @rfkill_register(i64) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @round_jiffies_relative(i32) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @rfkill_destroy(i64) #1

declare dso_local i32 @rfkill_unregister(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
