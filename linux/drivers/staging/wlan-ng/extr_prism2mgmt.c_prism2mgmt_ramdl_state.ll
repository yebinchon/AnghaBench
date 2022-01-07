; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_prism2mgmt.c_prism2mgmt_ramdl_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_prism2mgmt.c_prism2mgmt_ramdl_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wlandevice = type { i64, i32, %struct.hfa384x* }
%struct.hfa384x = type { i32 }
%struct.p80211msg_p2req_ramdl_state = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i8*, i8* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64 }

@WLAN_MSD_FWLOAD = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [56 x i8] c"ramdl_state(): may only be called in the fwload state.\0A\00", align 1
@P80211ENUM_resultcode_implementation_failure = common dso_local global i8* null, align 8
@P80211ENUM_msgitem_status_data_ok = common dso_local global i8* null, align 8
@P80211ENUM_truth_true = common dso_local global i64 0, align 8
@P80211ENUM_resultcode_success = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @prism2mgmt_ramdl_state(%struct.wlandevice* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wlandevice*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.hfa384x*, align 8
  %7 = alloca %struct.p80211msg_p2req_ramdl_state*, align 8
  store %struct.wlandevice* %0, %struct.wlandevice** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.wlandevice*, %struct.wlandevice** %4, align 8
  %9 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %8, i32 0, i32 2
  %10 = load %struct.hfa384x*, %struct.hfa384x** %9, align 8
  store %struct.hfa384x* %10, %struct.hfa384x** %6, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.p80211msg_p2req_ramdl_state*
  store %struct.p80211msg_p2req_ramdl_state* %12, %struct.p80211msg_p2req_ramdl_state** %7, align 8
  %13 = load %struct.wlandevice*, %struct.wlandevice** %4, align 8
  %14 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @WLAN_MSD_FWLOAD, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %31

18:                                               ; preds = %2
  %19 = load %struct.wlandevice*, %struct.wlandevice** %4, align 8
  %20 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @netdev_err(i32 %21, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  %23 = load i8*, i8** @P80211ENUM_resultcode_implementation_failure, align 8
  %24 = load %struct.p80211msg_p2req_ramdl_state*, %struct.p80211msg_p2req_ramdl_state** %7, align 8
  %25 = getelementptr inbounds %struct.p80211msg_p2req_ramdl_state, %struct.p80211msg_p2req_ramdl_state* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  store i8* %23, i8** %26, align 8
  %27 = load i8*, i8** @P80211ENUM_msgitem_status_data_ok, align 8
  %28 = load %struct.p80211msg_p2req_ramdl_state*, %struct.p80211msg_p2req_ramdl_state** %7, align 8
  %29 = getelementptr inbounds %struct.p80211msg_p2req_ramdl_state, %struct.p80211msg_p2req_ramdl_state* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  store i8* %27, i8** %30, align 8
  store i32 0, i32* %3, align 4
  br label %69

31:                                               ; preds = %2
  %32 = load i8*, i8** @P80211ENUM_msgitem_status_data_ok, align 8
  %33 = load %struct.p80211msg_p2req_ramdl_state*, %struct.p80211msg_p2req_ramdl_state** %7, align 8
  %34 = getelementptr inbounds %struct.p80211msg_p2req_ramdl_state, %struct.p80211msg_p2req_ramdl_state* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  store i8* %32, i8** %35, align 8
  %36 = load %struct.p80211msg_p2req_ramdl_state*, %struct.p80211msg_p2req_ramdl_state** %7, align 8
  %37 = getelementptr inbounds %struct.p80211msg_p2req_ramdl_state, %struct.p80211msg_p2req_ramdl_state* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @P80211ENUM_truth_true, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %61

42:                                               ; preds = %31
  %43 = load %struct.hfa384x*, %struct.hfa384x** %6, align 8
  %44 = load %struct.p80211msg_p2req_ramdl_state*, %struct.p80211msg_p2req_ramdl_state** %7, align 8
  %45 = getelementptr inbounds %struct.p80211msg_p2req_ramdl_state, %struct.p80211msg_p2req_ramdl_state* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i64 @hfa384x_drvr_ramdl_enable(%struct.hfa384x* %43, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %42
  %51 = load i8*, i8** @P80211ENUM_resultcode_implementation_failure, align 8
  %52 = load %struct.p80211msg_p2req_ramdl_state*, %struct.p80211msg_p2req_ramdl_state** %7, align 8
  %53 = getelementptr inbounds %struct.p80211msg_p2req_ramdl_state, %struct.p80211msg_p2req_ramdl_state* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  store i8* %51, i8** %54, align 8
  br label %60

55:                                               ; preds = %42
  %56 = load i8*, i8** @P80211ENUM_resultcode_success, align 8
  %57 = load %struct.p80211msg_p2req_ramdl_state*, %struct.p80211msg_p2req_ramdl_state** %7, align 8
  %58 = getelementptr inbounds %struct.p80211msg_p2req_ramdl_state, %struct.p80211msg_p2req_ramdl_state* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  store i8* %56, i8** %59, align 8
  br label %60

60:                                               ; preds = %55, %50
  br label %68

61:                                               ; preds = %31
  %62 = load %struct.hfa384x*, %struct.hfa384x** %6, align 8
  %63 = call i32 @hfa384x_drvr_ramdl_disable(%struct.hfa384x* %62)
  %64 = load i8*, i8** @P80211ENUM_resultcode_success, align 8
  %65 = load %struct.p80211msg_p2req_ramdl_state*, %struct.p80211msg_p2req_ramdl_state** %7, align 8
  %66 = getelementptr inbounds %struct.p80211msg_p2req_ramdl_state, %struct.p80211msg_p2req_ramdl_state* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  store i8* %64, i8** %67, align 8
  br label %68

68:                                               ; preds = %61, %60
  store i32 0, i32* %3, align 4
  br label %69

69:                                               ; preds = %68, %18
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i32 @netdev_err(i32, i8*) #1

declare dso_local i64 @hfa384x_drvr_ramdl_enable(%struct.hfa384x*, i32) #1

declare dso_local i32 @hfa384x_drvr_ramdl_disable(%struct.hfa384x*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
