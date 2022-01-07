; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_prism2sta.c_prism2sta_mlmerequest.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_prism2sta.c_prism2sta_mlmerequest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wlandevice = type { i32, %struct.hfa384x* }
%struct.hfa384x = type { i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32, i32 }
%struct.p80211msg = type { i32 }
%struct.p80211msg_lnxreq_ifstate = type { %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32, i8* }
%struct.TYPE_8__ = type { i32 }
%struct.p80211msg_lnxreq_commsquality = type { %struct.TYPE_14__, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_12__ = type { i8*, i8* }
%struct.TYPE_11__ = type { i8*, i8* }
%struct.TYPE_10__ = type { i8*, i8* }

@.str = private unnamed_addr constant [25 x i8] c"Received mibget request\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Received mibset request\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Received scan request\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Received scan_results request\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"Received mlme start request\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"Received mlme readpda request\0A\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"Received mlme ramdl_state request\0A\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"Received mlme ramdl_write request\0A\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"Received mlme flashdl_state request\0A\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"Received mlme flashdl_write request\0A\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"Received mlme ifstate request\0A\00", align 1
@P80211ENUM_msgitem_status_data_ok = common dso_local global i8* null, align 8
@.str.11 = private unnamed_addr constant [33 x i8] c"Received mlme wlansniff request\0A\00", align 1
@.str.12 = private unnamed_addr constant [32 x i8] c"Received mlme autojoin request\0A\00", align 1
@.str.13 = private unnamed_addr constant [31 x i8] c"Received commsquality request\0A\00", align 1
@.str.14 = private unnamed_addr constant [36 x i8] c"Unknown mgmt request message 0x%08x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wlandevice*, %struct.p80211msg*)* @prism2sta_mlmerequest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prism2sta_mlmerequest(%struct.wlandevice* %0, %struct.p80211msg* %1) #0 {
  %3 = alloca %struct.wlandevice*, align 8
  %4 = alloca %struct.p80211msg*, align 8
  %5 = alloca %struct.hfa384x*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.p80211msg_lnxreq_ifstate*, align 8
  %8 = alloca %struct.p80211msg_lnxreq_commsquality*, align 8
  store %struct.wlandevice* %0, %struct.wlandevice** %3, align 8
  store %struct.p80211msg* %1, %struct.p80211msg** %4, align 8
  %9 = load %struct.wlandevice*, %struct.wlandevice** %3, align 8
  %10 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %9, i32 0, i32 1
  %11 = load %struct.hfa384x*, %struct.hfa384x** %10, align 8
  store %struct.hfa384x* %11, %struct.hfa384x** %5, align 8
  store i32 0, i32* %6, align 4
  %12 = load %struct.p80211msg*, %struct.p80211msg** %4, align 8
  %13 = getelementptr inbounds %struct.p80211msg, %struct.p80211msg* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %140 [
    i32 142, label %15
    i32 141, label %20
    i32 140, label %25
    i32 139, label %30
    i32 138, label %35
    i32 128, label %40
    i32 130, label %45
    i32 129, label %50
    i32 132, label %55
    i32 131, label %60
    i32 135, label %65
    i32 134, label %66
    i32 133, label %84
    i32 137, label %89
    i32 136, label %94
  ]

15:                                               ; preds = %2
  %16 = call i32 @pr_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.wlandevice*, %struct.wlandevice** %3, align 8
  %18 = load %struct.p80211msg*, %struct.p80211msg** %4, align 8
  %19 = call i32 @prism2mgmt_mibset_mibget(%struct.wlandevice* %17, %struct.p80211msg* %18)
  store i32 %19, i32* %6, align 4
  br label %148

20:                                               ; preds = %2
  %21 = call i32 @pr_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %22 = load %struct.wlandevice*, %struct.wlandevice** %3, align 8
  %23 = load %struct.p80211msg*, %struct.p80211msg** %4, align 8
  %24 = call i32 @prism2mgmt_mibset_mibget(%struct.wlandevice* %22, %struct.p80211msg* %23)
  store i32 %24, i32* %6, align 4
  br label %148

25:                                               ; preds = %2
  %26 = call i32 @pr_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %27 = load %struct.wlandevice*, %struct.wlandevice** %3, align 8
  %28 = load %struct.p80211msg*, %struct.p80211msg** %4, align 8
  %29 = call i32 @prism2mgmt_scan(%struct.wlandevice* %27, %struct.p80211msg* %28)
  store i32 %29, i32* %6, align 4
  br label %148

30:                                               ; preds = %2
  %31 = call i32 @pr_debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %32 = load %struct.wlandevice*, %struct.wlandevice** %3, align 8
  %33 = load %struct.p80211msg*, %struct.p80211msg** %4, align 8
  %34 = call i32 @prism2mgmt_scan_results(%struct.wlandevice* %32, %struct.p80211msg* %33)
  store i32 %34, i32* %6, align 4
  br label %148

35:                                               ; preds = %2
  %36 = call i32 @pr_debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %37 = load %struct.wlandevice*, %struct.wlandevice** %3, align 8
  %38 = load %struct.p80211msg*, %struct.p80211msg** %4, align 8
  %39 = call i32 @prism2mgmt_start(%struct.wlandevice* %37, %struct.p80211msg* %38)
  store i32 %39, i32* %6, align 4
  br label %148

40:                                               ; preds = %2
  %41 = call i32 @pr_debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  %42 = load %struct.wlandevice*, %struct.wlandevice** %3, align 8
  %43 = load %struct.p80211msg*, %struct.p80211msg** %4, align 8
  %44 = call i32 @prism2mgmt_readpda(%struct.wlandevice* %42, %struct.p80211msg* %43)
  store i32 %44, i32* %6, align 4
  br label %148

45:                                               ; preds = %2
  %46 = call i32 @pr_debug(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0))
  %47 = load %struct.wlandevice*, %struct.wlandevice** %3, align 8
  %48 = load %struct.p80211msg*, %struct.p80211msg** %4, align 8
  %49 = call i32 @prism2mgmt_ramdl_state(%struct.wlandevice* %47, %struct.p80211msg* %48)
  store i32 %49, i32* %6, align 4
  br label %148

50:                                               ; preds = %2
  %51 = call i32 @pr_debug(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0))
  %52 = load %struct.wlandevice*, %struct.wlandevice** %3, align 8
  %53 = load %struct.p80211msg*, %struct.p80211msg** %4, align 8
  %54 = call i32 @prism2mgmt_ramdl_write(%struct.wlandevice* %52, %struct.p80211msg* %53)
  store i32 %54, i32* %6, align 4
  br label %148

55:                                               ; preds = %2
  %56 = call i32 @pr_debug(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0))
  %57 = load %struct.wlandevice*, %struct.wlandevice** %3, align 8
  %58 = load %struct.p80211msg*, %struct.p80211msg** %4, align 8
  %59 = call i32 @prism2mgmt_flashdl_state(%struct.wlandevice* %57, %struct.p80211msg* %58)
  store i32 %59, i32* %6, align 4
  br label %148

60:                                               ; preds = %2
  %61 = call i32 @pr_debug(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i64 0, i64 0))
  %62 = load %struct.wlandevice*, %struct.wlandevice** %3, align 8
  %63 = load %struct.p80211msg*, %struct.p80211msg** %4, align 8
  %64 = call i32 @prism2mgmt_flashdl_write(%struct.wlandevice* %62, %struct.p80211msg* %63)
  store i32 %64, i32* %6, align 4
  br label %148

65:                                               ; preds = %2
  br label %148

66:                                               ; preds = %2
  %67 = call i32 @pr_debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0))
  %68 = load %struct.p80211msg*, %struct.p80211msg** %4, align 8
  %69 = bitcast %struct.p80211msg* %68 to %struct.p80211msg_lnxreq_ifstate*
  store %struct.p80211msg_lnxreq_ifstate* %69, %struct.p80211msg_lnxreq_ifstate** %7, align 8
  %70 = load %struct.wlandevice*, %struct.wlandevice** %3, align 8
  %71 = load %struct.p80211msg_lnxreq_ifstate*, %struct.p80211msg_lnxreq_ifstate** %7, align 8
  %72 = getelementptr inbounds %struct.p80211msg_lnxreq_ifstate, %struct.p80211msg_lnxreq_ifstate* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @prism2sta_ifstate(%struct.wlandevice* %70, i32 %74)
  store i32 %75, i32* %6, align 4
  %76 = load i8*, i8** @P80211ENUM_msgitem_status_data_ok, align 8
  %77 = load %struct.p80211msg_lnxreq_ifstate*, %struct.p80211msg_lnxreq_ifstate** %7, align 8
  %78 = getelementptr inbounds %struct.p80211msg_lnxreq_ifstate, %struct.p80211msg_lnxreq_ifstate* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 1
  store i8* %76, i8** %79, align 8
  %80 = load i32, i32* %6, align 4
  %81 = load %struct.p80211msg_lnxreq_ifstate*, %struct.p80211msg_lnxreq_ifstate** %7, align 8
  %82 = getelementptr inbounds %struct.p80211msg_lnxreq_ifstate, %struct.p80211msg_lnxreq_ifstate* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 0
  store i32 %80, i32* %83, align 8
  store i32 0, i32* %6, align 4
  br label %148

84:                                               ; preds = %2
  %85 = call i32 @pr_debug(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.11, i64 0, i64 0))
  %86 = load %struct.wlandevice*, %struct.wlandevice** %3, align 8
  %87 = load %struct.p80211msg*, %struct.p80211msg** %4, align 8
  %88 = call i32 @prism2mgmt_wlansniff(%struct.wlandevice* %86, %struct.p80211msg* %87)
  store i32 %88, i32* %6, align 4
  br label %148

89:                                               ; preds = %2
  %90 = call i32 @pr_debug(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.12, i64 0, i64 0))
  %91 = load %struct.wlandevice*, %struct.wlandevice** %3, align 8
  %92 = load %struct.p80211msg*, %struct.p80211msg** %4, align 8
  %93 = call i32 @prism2mgmt_autojoin(%struct.wlandevice* %91, %struct.p80211msg* %92)
  store i32 %93, i32* %6, align 4
  br label %148

94:                                               ; preds = %2
  %95 = call i32 @pr_debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i64 0, i64 0))
  %96 = load %struct.p80211msg*, %struct.p80211msg** %4, align 8
  %97 = bitcast %struct.p80211msg* %96 to %struct.p80211msg_lnxreq_commsquality*
  store %struct.p80211msg_lnxreq_commsquality* %97, %struct.p80211msg_lnxreq_commsquality** %8, align 8
  %98 = load i8*, i8** @P80211ENUM_msgitem_status_data_ok, align 8
  %99 = load %struct.p80211msg_lnxreq_commsquality*, %struct.p80211msg_lnxreq_commsquality** %8, align 8
  %100 = getelementptr inbounds %struct.p80211msg_lnxreq_commsquality, %struct.p80211msg_lnxreq_commsquality* %99, i32 0, i32 3
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 1
  store i8* %98, i8** %101, align 8
  %102 = load i8*, i8** @P80211ENUM_msgitem_status_data_ok, align 8
  %103 = load %struct.p80211msg_lnxreq_commsquality*, %struct.p80211msg_lnxreq_commsquality** %8, align 8
  %104 = getelementptr inbounds %struct.p80211msg_lnxreq_commsquality, %struct.p80211msg_lnxreq_commsquality* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 1
  store i8* %102, i8** %105, align 8
  %106 = load i8*, i8** @P80211ENUM_msgitem_status_data_ok, align 8
  %107 = load %struct.p80211msg_lnxreq_commsquality*, %struct.p80211msg_lnxreq_commsquality** %8, align 8
  %108 = getelementptr inbounds %struct.p80211msg_lnxreq_commsquality, %struct.p80211msg_lnxreq_commsquality* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 1
  store i8* %106, i8** %109, align 8
  %110 = load %struct.hfa384x*, %struct.hfa384x** %5, align 8
  %111 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = call i8* @le16_to_cpu(i32 %113)
  %115 = load %struct.p80211msg_lnxreq_commsquality*, %struct.p80211msg_lnxreq_commsquality** %8, align 8
  %116 = getelementptr inbounds %struct.p80211msg_lnxreq_commsquality, %struct.p80211msg_lnxreq_commsquality* %115, i32 0, i32 3
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 0
  store i8* %114, i8** %117, align 8
  %118 = load %struct.hfa384x*, %struct.hfa384x** %5, align 8
  %119 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = call i8* @le16_to_cpu(i32 %121)
  %123 = load %struct.p80211msg_lnxreq_commsquality*, %struct.p80211msg_lnxreq_commsquality** %8, align 8
  %124 = getelementptr inbounds %struct.p80211msg_lnxreq_commsquality, %struct.p80211msg_lnxreq_commsquality* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 0
  store i8* %122, i8** %125, align 8
  %126 = load %struct.hfa384x*, %struct.hfa384x** %5, align 8
  %127 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = call i8* @le16_to_cpu(i32 %129)
  %131 = load %struct.p80211msg_lnxreq_commsquality*, %struct.p80211msg_lnxreq_commsquality** %8, align 8
  %132 = getelementptr inbounds %struct.p80211msg_lnxreq_commsquality, %struct.p80211msg_lnxreq_commsquality* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %132, i32 0, i32 0
  store i8* %130, i8** %133, align 8
  %134 = load %struct.hfa384x*, %struct.hfa384x** %5, align 8
  %135 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.p80211msg_lnxreq_commsquality*, %struct.p80211msg_lnxreq_commsquality** %8, align 8
  %138 = getelementptr inbounds %struct.p80211msg_lnxreq_commsquality, %struct.p80211msg_lnxreq_commsquality* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %138, i32 0, i32 0
  store i32 %136, i32* %139, align 8
  br label %148

140:                                              ; preds = %2
  %141 = load %struct.wlandevice*, %struct.wlandevice** %3, align 8
  %142 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.p80211msg*, %struct.p80211msg** %4, align 8
  %145 = getelementptr inbounds %struct.p80211msg, %struct.p80211msg* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @netdev_warn(i32 %143, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.14, i64 0, i64 0), i32 %146)
  br label %148

148:                                              ; preds = %140, %94, %89, %84, %66, %65, %60, %55, %50, %45, %40, %35, %30, %25, %20, %15
  %149 = load i32, i32* %6, align 4
  ret i32 %149
}

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @prism2mgmt_mibset_mibget(%struct.wlandevice*, %struct.p80211msg*) #1

declare dso_local i32 @prism2mgmt_scan(%struct.wlandevice*, %struct.p80211msg*) #1

declare dso_local i32 @prism2mgmt_scan_results(%struct.wlandevice*, %struct.p80211msg*) #1

declare dso_local i32 @prism2mgmt_start(%struct.wlandevice*, %struct.p80211msg*) #1

declare dso_local i32 @prism2mgmt_readpda(%struct.wlandevice*, %struct.p80211msg*) #1

declare dso_local i32 @prism2mgmt_ramdl_state(%struct.wlandevice*, %struct.p80211msg*) #1

declare dso_local i32 @prism2mgmt_ramdl_write(%struct.wlandevice*, %struct.p80211msg*) #1

declare dso_local i32 @prism2mgmt_flashdl_state(%struct.wlandevice*, %struct.p80211msg*) #1

declare dso_local i32 @prism2mgmt_flashdl_write(%struct.wlandevice*, %struct.p80211msg*) #1

declare dso_local i32 @prism2sta_ifstate(%struct.wlandevice*, i32) #1

declare dso_local i32 @prism2mgmt_wlansniff(%struct.wlandevice*, %struct.p80211msg*) #1

declare dso_local i32 @prism2mgmt_autojoin(%struct.wlandevice*, %struct.p80211msg*) #1

declare dso_local i8* @le16_to_cpu(i32) #1

declare dso_local i32 @netdev_warn(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
