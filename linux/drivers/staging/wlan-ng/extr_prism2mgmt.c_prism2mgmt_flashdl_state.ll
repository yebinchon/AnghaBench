; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_prism2mgmt.c_prism2mgmt_flashdl_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_prism2mgmt.c_prism2mgmt_flashdl_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wlandevice = type { i64, i32, %struct.hfa384x* }
%struct.hfa384x = type { i32 }
%struct.p80211msg_p2req_flashdl_state = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i8* }
%struct.TYPE_3__ = type { i64 }

@WLAN_MSD_FWLOAD = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [58 x i8] c"flashdl_state(): may only be called in the fwload state.\0A\00", align 1
@P80211ENUM_resultcode_implementation_failure = common dso_local global i8* null, align 8
@P80211ENUM_msgitem_status_data_ok = common dso_local global i8* null, align 8
@P80211ENUM_truth_true = common dso_local global i64 0, align 8
@P80211ENUM_resultcode_success = common dso_local global i32 0, align 4
@WLAN_MSD_HWPRESENT = common dso_local global i64 0, align 8
@P80211ENUM_ifstate_fwload = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [60 x i8] c"prism2sta_ifstate(fwload) failed, P80211ENUM_resultcode=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @prism2mgmt_flashdl_state(%struct.wlandevice* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wlandevice*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.hfa384x*, align 8
  %8 = alloca %struct.p80211msg_p2req_flashdl_state*, align 8
  store %struct.wlandevice* %0, %struct.wlandevice** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.wlandevice*, %struct.wlandevice** %4, align 8
  %10 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %9, i32 0, i32 2
  %11 = load %struct.hfa384x*, %struct.hfa384x** %10, align 8
  store %struct.hfa384x* %11, %struct.hfa384x** %7, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.p80211msg_p2req_flashdl_state*
  store %struct.p80211msg_p2req_flashdl_state* %13, %struct.p80211msg_p2req_flashdl_state** %8, align 8
  %14 = load %struct.wlandevice*, %struct.wlandevice** %4, align 8
  %15 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @WLAN_MSD_FWLOAD, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %33

19:                                               ; preds = %2
  %20 = load %struct.wlandevice*, %struct.wlandevice** %4, align 8
  %21 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i32 (i32, i8*, ...) @netdev_err(i32 %22, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0))
  %24 = load i8*, i8** @P80211ENUM_resultcode_implementation_failure, align 8
  %25 = ptrtoint i8* %24 to i32
  %26 = load %struct.p80211msg_p2req_flashdl_state*, %struct.p80211msg_p2req_flashdl_state** %8, align 8
  %27 = getelementptr inbounds %struct.p80211msg_p2req_flashdl_state, %struct.p80211msg_p2req_flashdl_state* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  store i32 %25, i32* %28, align 8
  %29 = load i8*, i8** @P80211ENUM_msgitem_status_data_ok, align 8
  %30 = load %struct.p80211msg_p2req_flashdl_state*, %struct.p80211msg_p2req_flashdl_state** %8, align 8
  %31 = getelementptr inbounds %struct.p80211msg_p2req_flashdl_state, %struct.p80211msg_p2req_flashdl_state* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  store i8* %29, i8** %32, align 8
  store i32 0, i32* %3, align 4
  br label %89

33:                                               ; preds = %2
  %34 = load i8*, i8** @P80211ENUM_msgitem_status_data_ok, align 8
  %35 = load %struct.p80211msg_p2req_flashdl_state*, %struct.p80211msg_p2req_flashdl_state** %8, align 8
  %36 = getelementptr inbounds %struct.p80211msg_p2req_flashdl_state, %struct.p80211msg_p2req_flashdl_state* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  store i8* %34, i8** %37, align 8
  %38 = load %struct.p80211msg_p2req_flashdl_state*, %struct.p80211msg_p2req_flashdl_state** %8, align 8
  %39 = getelementptr inbounds %struct.p80211msg_p2req_flashdl_state, %struct.p80211msg_p2req_flashdl_state* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @P80211ENUM_truth_true, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %60

44:                                               ; preds = %33
  %45 = load %struct.hfa384x*, %struct.hfa384x** %7, align 8
  %46 = call i64 @hfa384x_drvr_flashdl_enable(%struct.hfa384x* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %44
  %49 = load i8*, i8** @P80211ENUM_resultcode_implementation_failure, align 8
  %50 = ptrtoint i8* %49 to i32
  %51 = load %struct.p80211msg_p2req_flashdl_state*, %struct.p80211msg_p2req_flashdl_state** %8, align 8
  %52 = getelementptr inbounds %struct.p80211msg_p2req_flashdl_state, %struct.p80211msg_p2req_flashdl_state* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  store i32 %50, i32* %53, align 8
  br label %59

54:                                               ; preds = %44
  %55 = load i32, i32* @P80211ENUM_resultcode_success, align 4
  %56 = load %struct.p80211msg_p2req_flashdl_state*, %struct.p80211msg_p2req_flashdl_state** %8, align 8
  %57 = getelementptr inbounds %struct.p80211msg_p2req_flashdl_state, %struct.p80211msg_p2req_flashdl_state* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  store i32 %55, i32* %58, align 8
  br label %59

59:                                               ; preds = %54, %48
  br label %88

60:                                               ; preds = %33
  %61 = load %struct.hfa384x*, %struct.hfa384x** %7, align 8
  %62 = call i32 @hfa384x_drvr_flashdl_disable(%struct.hfa384x* %61)
  %63 = load i32, i32* @P80211ENUM_resultcode_success, align 4
  %64 = load %struct.p80211msg_p2req_flashdl_state*, %struct.p80211msg_p2req_flashdl_state** %8, align 8
  %65 = getelementptr inbounds %struct.p80211msg_p2req_flashdl_state, %struct.p80211msg_p2req_flashdl_state* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  store i32 %63, i32* %66, align 8
  %67 = load i64, i64* @WLAN_MSD_HWPRESENT, align 8
  %68 = load %struct.wlandevice*, %struct.wlandevice** %4, align 8
  %69 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %68, i32 0, i32 0
  store i64 %67, i64* %69, align 8
  %70 = load %struct.wlandevice*, %struct.wlandevice** %4, align 8
  %71 = load i32, i32* @P80211ENUM_ifstate_fwload, align 4
  %72 = call i32 @prism2sta_ifstate(%struct.wlandevice* %70, i32 %71)
  store i32 %72, i32* %6, align 4
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* @P80211ENUM_resultcode_success, align 4
  %75 = icmp ne i32 %73, %74
  br i1 %75, label %76, label %87

76:                                               ; preds = %60
  %77 = load %struct.wlandevice*, %struct.wlandevice** %4, align 8
  %78 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* %6, align 4
  %81 = call i32 (i32, i8*, ...) @netdev_err(i32 %79, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0), i32 %80)
  %82 = load i8*, i8** @P80211ENUM_resultcode_implementation_failure, align 8
  %83 = ptrtoint i8* %82 to i32
  %84 = load %struct.p80211msg_p2req_flashdl_state*, %struct.p80211msg_p2req_flashdl_state** %8, align 8
  %85 = getelementptr inbounds %struct.p80211msg_p2req_flashdl_state, %struct.p80211msg_p2req_flashdl_state* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  store i32 %83, i32* %86, align 8
  store i32 -1, i32* %6, align 4
  br label %87

87:                                               ; preds = %76, %60
  br label %88

88:                                               ; preds = %87, %59
  store i32 0, i32* %3, align 4
  br label %89

89:                                               ; preds = %88, %19
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local i32 @netdev_err(i32, i8*, ...) #1

declare dso_local i64 @hfa384x_drvr_flashdl_enable(%struct.hfa384x*) #1

declare dso_local i32 @hfa384x_drvr_flashdl_disable(%struct.hfa384x*) #1

declare dso_local i32 @prism2sta_ifstate(%struct.wlandevice*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
