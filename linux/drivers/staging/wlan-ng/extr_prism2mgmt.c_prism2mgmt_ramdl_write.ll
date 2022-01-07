; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_prism2mgmt.c_prism2mgmt_ramdl_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_prism2mgmt.c_prism2mgmt_ramdl_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wlandevice = type { i64, i32, %struct.hfa384x* }
%struct.hfa384x = type { i32 }
%struct.p80211msg_p2req_ramdl_write = type { %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32, i8* }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@WLAN_MSD_FWLOAD = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [56 x i8] c"ramdl_write(): may only be called in the fwload state.\0A\00", align 1
@P80211ENUM_resultcode_implementation_failure = common dso_local global i32 0, align 4
@P80211ENUM_msgitem_status_data_ok = common dso_local global i8* null, align 8
@P80211ENUM_resultcode_invalid_parameters = common dso_local global i8* null, align 8
@P80211ENUM_resultcode_refused = common dso_local global i32 0, align 4
@P80211ENUM_resultcode_success = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @prism2mgmt_ramdl_write(%struct.wlandevice* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wlandevice*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.hfa384x*, align 8
  %7 = alloca %struct.p80211msg_p2req_ramdl_write*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store %struct.wlandevice* %0, %struct.wlandevice** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load %struct.wlandevice*, %struct.wlandevice** %4, align 8
  %12 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %11, i32 0, i32 2
  %13 = load %struct.hfa384x*, %struct.hfa384x** %12, align 8
  store %struct.hfa384x* %13, %struct.hfa384x** %6, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to %struct.p80211msg_p2req_ramdl_write*
  store %struct.p80211msg_p2req_ramdl_write* %15, %struct.p80211msg_p2req_ramdl_write** %7, align 8
  %16 = load %struct.wlandevice*, %struct.wlandevice** %4, align 8
  %17 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @WLAN_MSD_FWLOAD, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %34

21:                                               ; preds = %2
  %22 = load %struct.wlandevice*, %struct.wlandevice** %4, align 8
  %23 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @netdev_err(i32 %24, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @P80211ENUM_resultcode_implementation_failure, align 4
  %27 = load %struct.p80211msg_p2req_ramdl_write*, %struct.p80211msg_p2req_ramdl_write** %7, align 8
  %28 = getelementptr inbounds %struct.p80211msg_p2req_ramdl_write, %struct.p80211msg_p2req_ramdl_write* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  store i32 %26, i32* %29, align 8
  %30 = load i8*, i8** @P80211ENUM_msgitem_status_data_ok, align 8
  %31 = load %struct.p80211msg_p2req_ramdl_write*, %struct.p80211msg_p2req_ramdl_write** %7, align 8
  %32 = getelementptr inbounds %struct.p80211msg_p2req_ramdl_write, %struct.p80211msg_p2req_ramdl_write* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 1
  store i8* %30, i8** %33, align 8
  store i32 0, i32* %3, align 4
  br label %79

34:                                               ; preds = %2
  %35 = load i8*, i8** @P80211ENUM_msgitem_status_data_ok, align 8
  %36 = load %struct.p80211msg_p2req_ramdl_write*, %struct.p80211msg_p2req_ramdl_write** %7, align 8
  %37 = getelementptr inbounds %struct.p80211msg_p2req_ramdl_write, %struct.p80211msg_p2req_ramdl_write* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 1
  store i8* %35, i8** %38, align 8
  %39 = load %struct.p80211msg_p2req_ramdl_write*, %struct.p80211msg_p2req_ramdl_write** %7, align 8
  %40 = getelementptr inbounds %struct.p80211msg_p2req_ramdl_write, %struct.p80211msg_p2req_ramdl_write* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = sext i32 %42 to i64
  %44 = icmp ugt i64 %43, 8
  br i1 %44, label %45, label %50

45:                                               ; preds = %34
  %46 = load i8*, i8** @P80211ENUM_resultcode_invalid_parameters, align 8
  %47 = load %struct.p80211msg_p2req_ramdl_write*, %struct.p80211msg_p2req_ramdl_write** %7, align 8
  %48 = getelementptr inbounds %struct.p80211msg_p2req_ramdl_write, %struct.p80211msg_p2req_ramdl_write* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 1
  store i8* %46, i8** %49, align 8
  store i32 0, i32* %3, align 4
  br label %79

50:                                               ; preds = %34
  %51 = load %struct.p80211msg_p2req_ramdl_write*, %struct.p80211msg_p2req_ramdl_write** %7, align 8
  %52 = getelementptr inbounds %struct.p80211msg_p2req_ramdl_write, %struct.p80211msg_p2req_ramdl_write* %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %8, align 4
  %55 = load %struct.p80211msg_p2req_ramdl_write*, %struct.p80211msg_p2req_ramdl_write** %7, align 8
  %56 = getelementptr inbounds %struct.p80211msg_p2req_ramdl_write, %struct.p80211msg_p2req_ramdl_write* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  store i32 %58, i32* %9, align 4
  %59 = load %struct.p80211msg_p2req_ramdl_write*, %struct.p80211msg_p2req_ramdl_write** %7, align 8
  %60 = getelementptr inbounds %struct.p80211msg_p2req_ramdl_write, %struct.p80211msg_p2req_ramdl_write* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  store i32* %62, i32** %10, align 8
  %63 = load %struct.hfa384x*, %struct.hfa384x** %6, align 8
  %64 = load i32, i32* %8, align 4
  %65 = load i32*, i32** %10, align 8
  %66 = load i32, i32* %9, align 4
  %67 = call i64 @hfa384x_drvr_ramdl_write(%struct.hfa384x* %63, i32 %64, i32* %65, i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %50
  %70 = load i32, i32* @P80211ENUM_resultcode_refused, align 4
  %71 = load %struct.p80211msg_p2req_ramdl_write*, %struct.p80211msg_p2req_ramdl_write** %7, align 8
  %72 = getelementptr inbounds %struct.p80211msg_p2req_ramdl_write, %struct.p80211msg_p2req_ramdl_write* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  store i32 %70, i32* %73, align 8
  br label %74

74:                                               ; preds = %69, %50
  %75 = load i32, i32* @P80211ENUM_resultcode_success, align 4
  %76 = load %struct.p80211msg_p2req_ramdl_write*, %struct.p80211msg_p2req_ramdl_write** %7, align 8
  %77 = getelementptr inbounds %struct.p80211msg_p2req_ramdl_write, %struct.p80211msg_p2req_ramdl_write* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  store i32 %75, i32* %78, align 8
  store i32 0, i32* %3, align 4
  br label %79

79:                                               ; preds = %74, %45, %21
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i32 @netdev_err(i32, i8*) #1

declare dso_local i64 @hfa384x_drvr_ramdl_write(%struct.hfa384x*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
