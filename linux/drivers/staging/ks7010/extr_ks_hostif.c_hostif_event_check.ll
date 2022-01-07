; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/ks7010/extr_ks_hostif.c_hostif_event_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/ks7010/extr_ks_hostif.c_hostif_event_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ks_wlan_private = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32*, i64 }

@.str = private unnamed_addr constant [23 x i8] c"undefined event[%04X]\0A\00", align 1
@SME_EVENT_BUFF_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ks_wlan_private*)* @hostif_event_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hostif_event_check(%struct.ks_wlan_private* %0) #0 {
  %2 = alloca %struct.ks_wlan_private*, align 8
  %3 = alloca i32, align 4
  store %struct.ks_wlan_private* %0, %struct.ks_wlan_private** %2, align 8
  %4 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %5 = call i32 @get_word(%struct.ks_wlan_private* %4)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  switch i32 %6, label %56 [
    i32 142, label %7
    i32 139, label %10
    i32 138, label %13
    i32 134, label %16
    i32 130, label %19
    i32 129, label %22
    i32 143, label %25
    i32 128, label %28
    i32 133, label %31
    i32 140, label %34
    i32 141, label %34
    i32 146, label %37
    i32 147, label %37
    i32 144, label %40
    i32 137, label %43
    i32 132, label %46
    i32 136, label %49
    i32 135, label %49
    i32 131, label %52
    i32 145, label %55
  ]

7:                                                ; preds = %1
  %8 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %9 = call i32 @hostif_data_indication(%struct.ks_wlan_private* %8)
  br label %65

10:                                               ; preds = %1
  %11 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %12 = call i32 @hostif_mib_get_confirm(%struct.ks_wlan_private* %11)
  br label %65

13:                                               ; preds = %1
  %14 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %15 = call i32 @hostif_mib_set_confirm(%struct.ks_wlan_private* %14)
  br label %65

16:                                               ; preds = %1
  %17 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %18 = call i32 @hostif_power_mgmt_confirm(%struct.ks_wlan_private* %17)
  br label %65

19:                                               ; preds = %1
  %20 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %21 = call i32 @hostif_sleep_confirm(%struct.ks_wlan_private* %20)
  br label %65

22:                                               ; preds = %1
  %23 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %24 = call i32 @hostif_start_confirm(%struct.ks_wlan_private* %23)
  br label %65

25:                                               ; preds = %1
  %26 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %27 = call i32 @hostif_connect_indication(%struct.ks_wlan_private* %26)
  br label %65

28:                                               ; preds = %1
  %29 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %30 = call i32 @hostif_stop_confirm(%struct.ks_wlan_private* %29)
  br label %65

31:                                               ; preds = %1
  %32 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %33 = call i32 @hostif_ps_adhoc_set_confirm(%struct.ks_wlan_private* %32)
  br label %65

34:                                               ; preds = %1, %1
  %35 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %36 = call i32 @hostif_infrastructure_set_confirm(%struct.ks_wlan_private* %35)
  br label %65

37:                                               ; preds = %1, %1
  %38 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %39 = call i32 @hostif_adhoc_set_confirm(%struct.ks_wlan_private* %38)
  br label %65

40:                                               ; preds = %1
  %41 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %42 = call i32 @hostif_associate_indication(%struct.ks_wlan_private* %41)
  br label %65

43:                                               ; preds = %1
  %44 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %45 = call i32 @hostif_mic_failure_confirm(%struct.ks_wlan_private* %44)
  br label %65

46:                                               ; preds = %1
  %47 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %48 = call i32 @hostif_bss_scan_confirm(%struct.ks_wlan_private* %47)
  br label %65

49:                                               ; preds = %1, %1
  %50 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %51 = call i32 @hostif_phy_information_confirm(%struct.ks_wlan_private* %50)
  br label %65

52:                                               ; preds = %1
  %53 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %54 = call i32 @hostif_scan_indication(%struct.ks_wlan_private* %53)
  br label %65

55:                                               ; preds = %1
  br label %56

56:                                               ; preds = %1, %55
  %57 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %58 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %3, align 4
  %61 = call i32 @netdev_err(i32 %59, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %60)
  %62 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %63 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %62, i32 0, i32 1
  %64 = call i32 @complete(i32* %63)
  br label %65

65:                                               ; preds = %56, %52, %49, %46, %43, %40, %37, %34, %31, %28, %25, %22, %19, %16, %13, %10, %7
  %66 = load i32, i32* %3, align 4
  %67 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %68 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %72 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = getelementptr inbounds i32, i32* %70, i64 %74
  store i32 %66, i32* %75, align 4
  %76 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %77 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = add i64 %79, 1
  %81 = load i32, i32* @SME_EVENT_BUFF_SIZE, align 4
  %82 = sext i32 %81 to i64
  %83 = urem i64 %80, %82
  %84 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %85 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 1
  store i64 %83, i64* %86, align 8
  ret void
}

declare dso_local i32 @get_word(%struct.ks_wlan_private*) #1

declare dso_local i32 @hostif_data_indication(%struct.ks_wlan_private*) #1

declare dso_local i32 @hostif_mib_get_confirm(%struct.ks_wlan_private*) #1

declare dso_local i32 @hostif_mib_set_confirm(%struct.ks_wlan_private*) #1

declare dso_local i32 @hostif_power_mgmt_confirm(%struct.ks_wlan_private*) #1

declare dso_local i32 @hostif_sleep_confirm(%struct.ks_wlan_private*) #1

declare dso_local i32 @hostif_start_confirm(%struct.ks_wlan_private*) #1

declare dso_local i32 @hostif_connect_indication(%struct.ks_wlan_private*) #1

declare dso_local i32 @hostif_stop_confirm(%struct.ks_wlan_private*) #1

declare dso_local i32 @hostif_ps_adhoc_set_confirm(%struct.ks_wlan_private*) #1

declare dso_local i32 @hostif_infrastructure_set_confirm(%struct.ks_wlan_private*) #1

declare dso_local i32 @hostif_adhoc_set_confirm(%struct.ks_wlan_private*) #1

declare dso_local i32 @hostif_associate_indication(%struct.ks_wlan_private*) #1

declare dso_local i32 @hostif_mic_failure_confirm(%struct.ks_wlan_private*) #1

declare dso_local i32 @hostif_bss_scan_confirm(%struct.ks_wlan_private*) #1

declare dso_local i32 @hostif_phy_information_confirm(%struct.ks_wlan_private*) #1

declare dso_local i32 @hostif_scan_indication(%struct.ks_wlan_private*) #1

declare dso_local i32 @netdev_err(i32, i8*, i32) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
