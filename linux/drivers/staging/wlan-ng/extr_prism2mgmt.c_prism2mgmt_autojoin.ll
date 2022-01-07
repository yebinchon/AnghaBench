; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_prism2mgmt.c_prism2mgmt_autojoin.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_prism2mgmt.c_prism2mgmt_autojoin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wlandevice = type { i32, i32, %struct.hfa384x* }
%struct.hfa384x = type { i32 }
%struct.p80211msg_lnxreq_autojoin = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64 }
%struct.p80211pstrd = type { i32 }
%struct.hfa384x_bytestr = type { i32 }

@WLAN_MACMODE_NONE = common dso_local global i32 0, align 4
@HFA384x_RID_TXRATECNTL = common dso_local global i32 0, align 4
@P80211ENUM_authalg_sharedkey = common dso_local global i64 0, align 8
@HFA384x_CNFAUTHENTICATION_SHAREDKEY = common dso_local global i32 0, align 4
@HFA384x_CNFAUTHENTICATION_OPENSYSTEM = common dso_local global i32 0, align 4
@HFA384x_RID_CNFAUTHENTICATION = common dso_local global i32 0, align 4
@HFA384x_RID_CNFDESIREDSSID = common dso_local global i32 0, align 4
@HFA384x_RID_CNFDESIREDSSID_LEN = common dso_local global i32 0, align 4
@HFA384x_PORTTYPE_BSS = common dso_local global i32 0, align 4
@HFA384x_RID_CNFPORTTYPE = common dso_local global i32 0, align 4
@P80211ENUM_msgitem_status_data_ok = common dso_local global i32 0, align 4
@P80211ENUM_resultcode_success = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @prism2mgmt_autojoin(%struct.wlandevice* %0, i8* %1) #0 {
  %3 = alloca %struct.wlandevice*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.hfa384x*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.p80211msg_lnxreq_autojoin*, align 8
  %10 = alloca %struct.p80211pstrd*, align 8
  %11 = alloca [256 x i32], align 16
  %12 = alloca %struct.hfa384x_bytestr*, align 8
  store %struct.wlandevice* %0, %struct.wlandevice** %3, align 8
  store i8* %1, i8** %4, align 8
  %13 = load %struct.wlandevice*, %struct.wlandevice** %3, align 8
  %14 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %13, i32 0, i32 2
  %15 = load %struct.hfa384x*, %struct.hfa384x** %14, align 8
  store %struct.hfa384x* %15, %struct.hfa384x** %5, align 8
  store i32 0, i32* %6, align 4
  %16 = load i8*, i8** %4, align 8
  %17 = bitcast i8* %16 to %struct.p80211msg_lnxreq_autojoin*
  store %struct.p80211msg_lnxreq_autojoin* %17, %struct.p80211msg_lnxreq_autojoin** %9, align 8
  %18 = getelementptr inbounds [256 x i32], [256 x i32]* %11, i64 0, i64 0
  %19 = bitcast i32* %18 to %struct.hfa384x_bytestr*
  store %struct.hfa384x_bytestr* %19, %struct.hfa384x_bytestr** %12, align 8
  %20 = load i32, i32* @WLAN_MACMODE_NONE, align 4
  %21 = load %struct.wlandevice*, %struct.wlandevice** %3, align 8
  %22 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  %23 = load %struct.wlandevice*, %struct.wlandevice** %3, align 8
  %24 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %23, i32 0, i32 0
  %25 = load %struct.p80211msg_lnxreq_autojoin*, %struct.p80211msg_lnxreq_autojoin** %9, align 8
  %26 = getelementptr inbounds %struct.p80211msg_lnxreq_autojoin, %struct.p80211msg_lnxreq_autojoin* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = call i32 @memcpy(i32* %24, i32* %27, i32 4)
  %29 = load %struct.hfa384x*, %struct.hfa384x** %5, align 8
  %30 = call i32 @hfa384x_drvr_disable(%struct.hfa384x* %29, i32 0)
  %31 = load %struct.hfa384x*, %struct.hfa384x** %5, align 8
  %32 = load i32, i32* @HFA384x_RID_TXRATECNTL, align 4
  %33 = call i32 @hfa384x_drvr_setconfig16(%struct.hfa384x* %31, i32 %32, i32 15)
  %34 = load %struct.p80211msg_lnxreq_autojoin*, %struct.p80211msg_lnxreq_autojoin** %9, align 8
  %35 = getelementptr inbounds %struct.p80211msg_lnxreq_autojoin, %struct.p80211msg_lnxreq_autojoin* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @P80211ENUM_authalg_sharedkey, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %2
  %41 = load i32, i32* @HFA384x_CNFAUTHENTICATION_SHAREDKEY, align 4
  store i32 %41, i32* %7, align 4
  br label %44

42:                                               ; preds = %2
  %43 = load i32, i32* @HFA384x_CNFAUTHENTICATION_OPENSYSTEM, align 4
  store i32 %43, i32* %7, align 4
  br label %44

44:                                               ; preds = %42, %40
  %45 = load %struct.hfa384x*, %struct.hfa384x** %5, align 8
  %46 = load i32, i32* @HFA384x_RID_CNFAUTHENTICATION, align 4
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @hfa384x_drvr_setconfig16(%struct.hfa384x* %45, i32 %46, i32 %47)
  %49 = getelementptr inbounds [256 x i32], [256 x i32]* %11, i64 0, i64 0
  %50 = call i32 @memset(i32* %49, i32 0, i32 256)
  %51 = load %struct.p80211msg_lnxreq_autojoin*, %struct.p80211msg_lnxreq_autojoin** %9, align 8
  %52 = getelementptr inbounds %struct.p80211msg_lnxreq_autojoin, %struct.p80211msg_lnxreq_autojoin* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = bitcast i32* %53 to %struct.p80211pstrd*
  store %struct.p80211pstrd* %54, %struct.p80211pstrd** %10, align 8
  %55 = load %struct.hfa384x_bytestr*, %struct.hfa384x_bytestr** %12, align 8
  %56 = load %struct.p80211pstrd*, %struct.p80211pstrd** %10, align 8
  %57 = call i32 @prism2mgmt_pstr2bytestr(%struct.hfa384x_bytestr* %55, %struct.p80211pstrd* %56)
  %58 = load %struct.hfa384x*, %struct.hfa384x** %5, align 8
  %59 = load i32, i32* @HFA384x_RID_CNFDESIREDSSID, align 4
  %60 = getelementptr inbounds [256 x i32], [256 x i32]* %11, i64 0, i64 0
  %61 = load i32, i32* @HFA384x_RID_CNFDESIREDSSID_LEN, align 4
  %62 = call i32 @hfa384x_drvr_setconfig(%struct.hfa384x* %58, i32 %59, i32* %60, i32 %61)
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* @HFA384x_PORTTYPE_BSS, align 4
  store i32 %63, i32* %8, align 4
  %64 = load %struct.hfa384x*, %struct.hfa384x** %5, align 8
  %65 = load i32, i32* @HFA384x_RID_CNFPORTTYPE, align 4
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @hfa384x_drvr_setconfig16(%struct.hfa384x* %64, i32 %65, i32 %66)
  %68 = load %struct.hfa384x*, %struct.hfa384x** %5, align 8
  %69 = call i32 @hfa384x_drvr_enable(%struct.hfa384x* %68, i32 0)
  %70 = load i32, i32* @P80211ENUM_msgitem_status_data_ok, align 4
  %71 = load %struct.p80211msg_lnxreq_autojoin*, %struct.p80211msg_lnxreq_autojoin** %9, align 8
  %72 = getelementptr inbounds %struct.p80211msg_lnxreq_autojoin, %struct.p80211msg_lnxreq_autojoin* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 1
  store i32 %70, i32* %73, align 4
  %74 = load i32, i32* @P80211ENUM_resultcode_success, align 4
  %75 = load %struct.p80211msg_lnxreq_autojoin*, %struct.p80211msg_lnxreq_autojoin** %9, align 8
  %76 = getelementptr inbounds %struct.p80211msg_lnxreq_autojoin, %struct.p80211msg_lnxreq_autojoin* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  store i32 %74, i32* %77, align 8
  %78 = load i32, i32* %6, align 4
  ret i32 %78
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @hfa384x_drvr_disable(%struct.hfa384x*, i32) #1

declare dso_local i32 @hfa384x_drvr_setconfig16(%struct.hfa384x*, i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @prism2mgmt_pstr2bytestr(%struct.hfa384x_bytestr*, %struct.p80211pstrd*) #1

declare dso_local i32 @hfa384x_drvr_setconfig(%struct.hfa384x*, i32, i32*, i32) #1

declare dso_local i32 @hfa384x_drvr_enable(%struct.hfa384x*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
