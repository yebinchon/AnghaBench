; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_prism2mgmt.c_prism2mgmt_readpda.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_prism2mgmt.c_prism2mgmt_readpda.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wlandevice = type { i64, i32, %struct.hfa384x* }
%struct.hfa384x = type { i32 }
%struct.p80211msg_p2req_readpda = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i8*, i8* }
%struct.TYPE_3__ = type { i8*, i32 }

@WLAN_MSD_FWLOAD = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c"PDA may only be read in the fwload state.\0A\00", align 1
@P80211ENUM_resultcode_implementation_failure = common dso_local global i8* null, align 8
@P80211ENUM_msgitem_status_data_ok = common dso_local global i8* null, align 8
@HFA384x_PDA_LEN_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"hfa384x_drvr_readpda() failed, result=%d\0A\00", align 1
@P80211ENUM_resultcode_success = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @prism2mgmt_readpda(%struct.wlandevice* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wlandevice*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.hfa384x*, align 8
  %7 = alloca %struct.p80211msg_p2req_readpda*, align 8
  %8 = alloca i32, align 4
  store %struct.wlandevice* %0, %struct.wlandevice** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load %struct.wlandevice*, %struct.wlandevice** %4, align 8
  %10 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %9, i32 0, i32 2
  %11 = load %struct.hfa384x*, %struct.hfa384x** %10, align 8
  store %struct.hfa384x* %11, %struct.hfa384x** %6, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.p80211msg_p2req_readpda*
  store %struct.p80211msg_p2req_readpda* %13, %struct.p80211msg_p2req_readpda** %7, align 8
  %14 = load %struct.wlandevice*, %struct.wlandevice** %4, align 8
  %15 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @WLAN_MSD_FWLOAD, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %32

19:                                               ; preds = %2
  %20 = load %struct.wlandevice*, %struct.wlandevice** %4, align 8
  %21 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i32 (i32, i8*, ...) @netdev_err(i32 %22, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %24 = load i8*, i8** @P80211ENUM_resultcode_implementation_failure, align 8
  %25 = load %struct.p80211msg_p2req_readpda*, %struct.p80211msg_p2req_readpda** %7, align 8
  %26 = getelementptr inbounds %struct.p80211msg_p2req_readpda, %struct.p80211msg_p2req_readpda* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  store i8* %24, i8** %27, align 8
  %28 = load i8*, i8** @P80211ENUM_msgitem_status_data_ok, align 8
  %29 = load %struct.p80211msg_p2req_readpda*, %struct.p80211msg_p2req_readpda** %7, align 8
  %30 = getelementptr inbounds %struct.p80211msg_p2req_readpda, %struct.p80211msg_p2req_readpda* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  store i8* %28, i8** %31, align 8
  br label %69

32:                                               ; preds = %2
  %33 = load %struct.hfa384x*, %struct.hfa384x** %6, align 8
  %34 = load %struct.p80211msg_p2req_readpda*, %struct.p80211msg_p2req_readpda** %7, align 8
  %35 = getelementptr inbounds %struct.p80211msg_p2req_readpda, %struct.p80211msg_p2req_readpda* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @HFA384x_PDA_LEN_MAX, align 4
  %39 = call i32 @hfa384x_drvr_readpda(%struct.hfa384x* %33, i32 %37, i32 %38)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %56

42:                                               ; preds = %32
  %43 = load %struct.wlandevice*, %struct.wlandevice** %4, align 8
  %44 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %8, align 4
  %47 = call i32 (i32, i8*, ...) @netdev_err(i32 %45, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  %48 = load i8*, i8** @P80211ENUM_resultcode_implementation_failure, align 8
  %49 = load %struct.p80211msg_p2req_readpda*, %struct.p80211msg_p2req_readpda** %7, align 8
  %50 = getelementptr inbounds %struct.p80211msg_p2req_readpda, %struct.p80211msg_p2req_readpda* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  store i8* %48, i8** %51, align 8
  %52 = load i8*, i8** @P80211ENUM_msgitem_status_data_ok, align 8
  %53 = load %struct.p80211msg_p2req_readpda*, %struct.p80211msg_p2req_readpda** %7, align 8
  %54 = getelementptr inbounds %struct.p80211msg_p2req_readpda, %struct.p80211msg_p2req_readpda* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  store i8* %52, i8** %55, align 8
  store i32 0, i32* %3, align 4
  br label %70

56:                                               ; preds = %32
  %57 = load i8*, i8** @P80211ENUM_msgitem_status_data_ok, align 8
  %58 = load %struct.p80211msg_p2req_readpda*, %struct.p80211msg_p2req_readpda** %7, align 8
  %59 = getelementptr inbounds %struct.p80211msg_p2req_readpda, %struct.p80211msg_p2req_readpda* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  store i8* %57, i8** %60, align 8
  %61 = load i8*, i8** @P80211ENUM_resultcode_success, align 8
  %62 = load %struct.p80211msg_p2req_readpda*, %struct.p80211msg_p2req_readpda** %7, align 8
  %63 = getelementptr inbounds %struct.p80211msg_p2req_readpda, %struct.p80211msg_p2req_readpda* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  store i8* %61, i8** %64, align 8
  %65 = load i8*, i8** @P80211ENUM_msgitem_status_data_ok, align 8
  %66 = load %struct.p80211msg_p2req_readpda*, %struct.p80211msg_p2req_readpda** %7, align 8
  %67 = getelementptr inbounds %struct.p80211msg_p2req_readpda, %struct.p80211msg_p2req_readpda* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  store i8* %65, i8** %68, align 8
  br label %69

69:                                               ; preds = %56, %19
  store i32 0, i32* %3, align 4
  br label %70

70:                                               ; preds = %69, %42
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32 @netdev_err(i32, i8*, ...) #1

declare dso_local i32 @hfa384x_drvr_readpda(%struct.hfa384x*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
