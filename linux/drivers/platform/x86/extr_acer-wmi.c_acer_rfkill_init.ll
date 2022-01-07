; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_acer-wmi.c_acer_rfkill_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_acer-wmi.c_acer_rfkill_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }

@ACER_CAP_WIRELESS = common dso_local global i32 0, align 4
@RFKILL_TYPE_WLAN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"acer-wireless\00", align 1
@wireless_rfkill = common dso_local global i32 0, align 4
@ACER_CAP_BLUETOOTH = common dso_local global i32 0, align 4
@RFKILL_TYPE_BLUETOOTH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"acer-bluetooth\00", align 1
@bluetooth_rfkill = common dso_local global i32 0, align 4
@ACER_CAP_THREEG = common dso_local global i32 0, align 4
@RFKILL_TYPE_WWAN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"acer-threeg\00", align 1
@threeg_rfkill = common dso_local global i32 0, align 4
@rfkill_inited = common dso_local global i32 0, align 4
@ec_raw_mode = common dso_local global i64 0, align 8
@ACERWMID_EVENT_GUID = common dso_local global i32 0, align 4
@acer_rfkill_work = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @acer_rfkill_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acer_rfkill_init(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %5 = load i32, i32* @ACER_CAP_WIRELESS, align 4
  %6 = call i64 @has_cap(i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %20

8:                                                ; preds = %1
  %9 = load %struct.device*, %struct.device** %3, align 8
  %10 = load i32, i32* @RFKILL_TYPE_WLAN, align 4
  %11 = load i32, i32* @ACER_CAP_WIRELESS, align 4
  %12 = call i32 @acer_rfkill_register(%struct.device* %9, i32 %10, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %11)
  store i32 %12, i32* @wireless_rfkill, align 4
  %13 = load i32, i32* @wireless_rfkill, align 4
  %14 = call i64 @IS_ERR(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %8
  %17 = load i32, i32* @wireless_rfkill, align 4
  %18 = call i32 @PTR_ERR(i32 %17)
  store i32 %18, i32* %4, align 4
  br label %92

19:                                               ; preds = %8
  br label %20

20:                                               ; preds = %19, %1
  %21 = load i32, i32* @ACER_CAP_BLUETOOTH, align 4
  %22 = call i64 @has_cap(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %36

24:                                               ; preds = %20
  %25 = load %struct.device*, %struct.device** %3, align 8
  %26 = load i32, i32* @RFKILL_TYPE_BLUETOOTH, align 4
  %27 = load i32, i32* @ACER_CAP_BLUETOOTH, align 4
  %28 = call i32 @acer_rfkill_register(%struct.device* %25, i32 %26, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  store i32 %28, i32* @bluetooth_rfkill, align 4
  %29 = load i32, i32* @bluetooth_rfkill, align 4
  %30 = call i64 @IS_ERR(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %24
  %33 = load i32, i32* @bluetooth_rfkill, align 4
  %34 = call i32 @PTR_ERR(i32 %33)
  store i32 %34, i32* %4, align 4
  br label %82

35:                                               ; preds = %24
  br label %36

36:                                               ; preds = %35, %20
  %37 = load i32, i32* @ACER_CAP_THREEG, align 4
  %38 = call i64 @has_cap(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %52

40:                                               ; preds = %36
  %41 = load %struct.device*, %struct.device** %3, align 8
  %42 = load i32, i32* @RFKILL_TYPE_WWAN, align 4
  %43 = load i32, i32* @ACER_CAP_THREEG, align 4
  %44 = call i32 @acer_rfkill_register(%struct.device* %41, i32 %42, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %43)
  store i32 %44, i32* @threeg_rfkill, align 4
  %45 = load i32, i32* @threeg_rfkill, align 4
  %46 = call i64 @IS_ERR(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %40
  %49 = load i32, i32* @threeg_rfkill, align 4
  %50 = call i32 @PTR_ERR(i32 %49)
  store i32 %50, i32* %4, align 4
  br label %72

51:                                               ; preds = %40
  br label %52

52:                                               ; preds = %51, %36
  store i32 1, i32* @rfkill_inited, align 4
  %53 = load i64, i64* @ec_raw_mode, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %52
  %56 = load i32, i32* @ACERWMID_EVENT_GUID, align 4
  %57 = call i32 @wmi_has_guid(i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %71, label %59

59:                                               ; preds = %55, %52
  %60 = load i32, i32* @ACER_CAP_WIRELESS, align 4
  %61 = load i32, i32* @ACER_CAP_BLUETOOTH, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @ACER_CAP_THREEG, align 4
  %64 = or i32 %62, %63
  %65 = call i64 @has_cap(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %59
  %68 = load i32, i32* @HZ, align 4
  %69 = call i32 @round_jiffies_relative(i32 %68)
  %70 = call i32 @schedule_delayed_work(i32* @acer_rfkill_work, i32 %69)
  br label %71

71:                                               ; preds = %67, %59, %55
  store i32 0, i32* %2, align 4
  br label %94

72:                                               ; preds = %48
  %73 = load i32, i32* @ACER_CAP_BLUETOOTH, align 4
  %74 = call i64 @has_cap(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %72
  %77 = load i32, i32* @bluetooth_rfkill, align 4
  %78 = call i32 @rfkill_unregister(i32 %77)
  %79 = load i32, i32* @bluetooth_rfkill, align 4
  %80 = call i32 @rfkill_destroy(i32 %79)
  br label %81

81:                                               ; preds = %76, %72
  br label %82

82:                                               ; preds = %81, %32
  %83 = load i32, i32* @ACER_CAP_WIRELESS, align 4
  %84 = call i64 @has_cap(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %82
  %87 = load i32, i32* @wireless_rfkill, align 4
  %88 = call i32 @rfkill_unregister(i32 %87)
  %89 = load i32, i32* @wireless_rfkill, align 4
  %90 = call i32 @rfkill_destroy(i32 %89)
  br label %91

91:                                               ; preds = %86, %82
  br label %92

92:                                               ; preds = %91, %16
  %93 = load i32, i32* %4, align 4
  store i32 %93, i32* %2, align 4
  br label %94

94:                                               ; preds = %92, %71
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

declare dso_local i64 @has_cap(i32) #1

declare dso_local i32 @acer_rfkill_register(%struct.device*, i32, i8*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @wmi_has_guid(i32) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @round_jiffies_relative(i32) #1

declare dso_local i32 @rfkill_unregister(i32) #1

declare dso_local i32 @rfkill_destroy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
