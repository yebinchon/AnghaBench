; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_asus-wmi.c_asus_hotk_restore.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_asus-wmi.c_asus_hotk_restore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.asus_wmi = type { %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i64 }

@ASUS_WMI_DEVID_BLUETOOTH = common dso_local global i32 0, align 4
@ASUS_WMI_DEVID_WIMAX = common dso_local global i32 0, align 4
@ASUS_WMI_DEVID_WWAN3G = common dso_local global i32 0, align 4
@ASUS_WMI_DEVID_GPS = common dso_local global i32 0, align 4
@ASUS_WMI_DEVID_UWB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @asus_hotk_restore to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asus_hotk_restore(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.asus_wmi*, align 8
  %4 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %5 = load %struct.device*, %struct.device** %2, align 8
  %6 = call %struct.asus_wmi* @dev_get_drvdata(%struct.device* %5)
  store %struct.asus_wmi* %6, %struct.asus_wmi** %3, align 8
  %7 = load %struct.asus_wmi*, %struct.asus_wmi** %3, align 8
  %8 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %7, i32 0, i32 6
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load %struct.asus_wmi*, %struct.asus_wmi** %3, align 8
  %14 = call i32 @asus_rfkill_hotplug(%struct.asus_wmi* %13)
  br label %15

15:                                               ; preds = %12, %1
  %16 = load %struct.asus_wmi*, %struct.asus_wmi** %3, align 8
  %17 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %16, i32 0, i32 5
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %34

21:                                               ; preds = %15
  %22 = load %struct.asus_wmi*, %struct.asus_wmi** %3, align 8
  %23 = load i32, i32* @ASUS_WMI_DEVID_BLUETOOTH, align 4
  %24 = call i32 @asus_wmi_get_devstate_simple(%struct.asus_wmi* %22, i32 %23)
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %4, align 4
  %28 = load %struct.asus_wmi*, %struct.asus_wmi** %3, align 8
  %29 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %28, i32 0, i32 5
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @rfkill_set_sw_state(i64 %31, i32 %32)
  br label %34

34:                                               ; preds = %21, %15
  %35 = load %struct.asus_wmi*, %struct.asus_wmi** %3, align 8
  %36 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %35, i32 0, i32 4
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %53

40:                                               ; preds = %34
  %41 = load %struct.asus_wmi*, %struct.asus_wmi** %3, align 8
  %42 = load i32, i32* @ASUS_WMI_DEVID_WIMAX, align 4
  %43 = call i32 @asus_wmi_get_devstate_simple(%struct.asus_wmi* %41, i32 %42)
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  store i32 %46, i32* %4, align 4
  %47 = load %struct.asus_wmi*, %struct.asus_wmi** %3, align 8
  %48 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %47, i32 0, i32 4
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @rfkill_set_sw_state(i64 %50, i32 %51)
  br label %53

53:                                               ; preds = %40, %34
  %54 = load %struct.asus_wmi*, %struct.asus_wmi** %3, align 8
  %55 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %54, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %72

59:                                               ; preds = %53
  %60 = load %struct.asus_wmi*, %struct.asus_wmi** %3, align 8
  %61 = load i32, i32* @ASUS_WMI_DEVID_WWAN3G, align 4
  %62 = call i32 @asus_wmi_get_devstate_simple(%struct.asus_wmi* %60, i32 %61)
  %63 = icmp ne i32 %62, 0
  %64 = xor i1 %63, true
  %65 = zext i1 %64 to i32
  store i32 %65, i32* %4, align 4
  %66 = load %struct.asus_wmi*, %struct.asus_wmi** %3, align 8
  %67 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %66, i32 0, i32 3
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i32, i32* %4, align 4
  %71 = call i32 @rfkill_set_sw_state(i64 %69, i32 %70)
  br label %72

72:                                               ; preds = %59, %53
  %73 = load %struct.asus_wmi*, %struct.asus_wmi** %3, align 8
  %74 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %91

78:                                               ; preds = %72
  %79 = load %struct.asus_wmi*, %struct.asus_wmi** %3, align 8
  %80 = load i32, i32* @ASUS_WMI_DEVID_GPS, align 4
  %81 = call i32 @asus_wmi_get_devstate_simple(%struct.asus_wmi* %79, i32 %80)
  %82 = icmp ne i32 %81, 0
  %83 = xor i1 %82, true
  %84 = zext i1 %83 to i32
  store i32 %84, i32* %4, align 4
  %85 = load %struct.asus_wmi*, %struct.asus_wmi** %3, align 8
  %86 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i32, i32* %4, align 4
  %90 = call i32 @rfkill_set_sw_state(i64 %88, i32 %89)
  br label %91

91:                                               ; preds = %78, %72
  %92 = load %struct.asus_wmi*, %struct.asus_wmi** %3, align 8
  %93 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %110

97:                                               ; preds = %91
  %98 = load %struct.asus_wmi*, %struct.asus_wmi** %3, align 8
  %99 = load i32, i32* @ASUS_WMI_DEVID_UWB, align 4
  %100 = call i32 @asus_wmi_get_devstate_simple(%struct.asus_wmi* %98, i32 %99)
  %101 = icmp ne i32 %100, 0
  %102 = xor i1 %101, true
  %103 = zext i1 %102 to i32
  store i32 %103, i32* %4, align 4
  %104 = load %struct.asus_wmi*, %struct.asus_wmi** %3, align 8
  %105 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i32, i32* %4, align 4
  %109 = call i32 @rfkill_set_sw_state(i64 %107, i32 %108)
  br label %110

110:                                              ; preds = %97, %91
  %111 = load %struct.asus_wmi*, %struct.asus_wmi** %3, align 8
  %112 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @IS_ERR_OR_NULL(i32 %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %120, label %117

117:                                              ; preds = %110
  %118 = load %struct.asus_wmi*, %struct.asus_wmi** %3, align 8
  %119 = call i32 @kbd_led_update(%struct.asus_wmi* %118)
  br label %120

120:                                              ; preds = %117, %110
  %121 = load %struct.asus_wmi*, %struct.asus_wmi** %3, align 8
  %122 = call i64 @asus_wmi_has_fnlock_key(%struct.asus_wmi* %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %120
  %125 = load %struct.asus_wmi*, %struct.asus_wmi** %3, align 8
  %126 = call i32 @asus_wmi_fnlock_update(%struct.asus_wmi* %125)
  br label %127

127:                                              ; preds = %124, %120
  ret i32 0
}

declare dso_local %struct.asus_wmi* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @asus_rfkill_hotplug(%struct.asus_wmi*) #1

declare dso_local i32 @asus_wmi_get_devstate_simple(%struct.asus_wmi*, i32) #1

declare dso_local i32 @rfkill_set_sw_state(i64, i32) #1

declare dso_local i32 @IS_ERR_OR_NULL(i32) #1

declare dso_local i32 @kbd_led_update(%struct.asus_wmi*) #1

declare dso_local i64 @asus_wmi_has_fnlock_key(%struct.asus_wmi*) #1

declare dso_local i32 @asus_wmi_fnlock_update(%struct.asus_wmi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
