; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_prism2mib.c_prism2mib_priv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_prism2mib.c_prism2mib_priv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mibrec = type { i32 }
%struct.wlandevice = type { i32 }
%struct.hfa384x = type { i32 }
%struct.p80211msg_dot11req_mibset = type { i32 }
%struct.p80211pstrd = type { i32, i32 }
%struct.hfa384x_wpa_data = type { i32, i32 }

@HFA384x_RID_CNFWPADATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Unhandled DID 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mibrec*, i32, %struct.wlandevice*, %struct.hfa384x*, %struct.p80211msg_dot11req_mibset*, i8*)* @prism2mib_priv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prism2mib_priv(%struct.mibrec* %0, i32 %1, %struct.wlandevice* %2, %struct.hfa384x* %3, %struct.p80211msg_dot11req_mibset* %4, i8* %5) #0 {
  %7 = alloca %struct.mibrec*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.wlandevice*, align 8
  %10 = alloca %struct.hfa384x*, align 8
  %11 = alloca %struct.p80211msg_dot11req_mibset*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.p80211pstrd*, align 8
  %14 = alloca %struct.hfa384x_wpa_data, align 4
  store %struct.mibrec* %0, %struct.mibrec** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.wlandevice* %2, %struct.wlandevice** %9, align 8
  store %struct.hfa384x* %3, %struct.hfa384x** %10, align 8
  store %struct.p80211msg_dot11req_mibset* %4, %struct.p80211msg_dot11req_mibset** %11, align 8
  store i8* %5, i8** %12, align 8
  %15 = load i8*, i8** %12, align 8
  %16 = bitcast i8* %15 to %struct.p80211pstrd*
  store %struct.p80211pstrd* %16, %struct.p80211pstrd** %13, align 8
  %17 = load %struct.mibrec*, %struct.mibrec** %7, align 8
  %18 = getelementptr inbounds %struct.mibrec, %struct.mibrec* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %62 [
    i32 128, label %20
  ]

20:                                               ; preds = %6
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %42

23:                                               ; preds = %20
  %24 = load %struct.hfa384x*, %struct.hfa384x** %10, align 8
  %25 = load i32, i32* @HFA384x_RID_CNFWPADATA, align 4
  %26 = bitcast %struct.hfa384x_wpa_data* %14 to i32*
  %27 = call i32 @hfa384x_drvr_getconfig(%struct.hfa384x* %24, i32 %25, i32* %26, i32 8)
  %28 = getelementptr inbounds %struct.hfa384x_wpa_data, %struct.hfa384x_wpa_data* %14, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @le16_to_cpu(i32 %29)
  %31 = load %struct.p80211pstrd*, %struct.p80211pstrd** %13, align 8
  %32 = getelementptr inbounds %struct.p80211pstrd, %struct.p80211pstrd* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = load %struct.p80211pstrd*, %struct.p80211pstrd** %13, align 8
  %34 = getelementptr inbounds %struct.p80211pstrd, %struct.p80211pstrd* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds %struct.hfa384x_wpa_data, %struct.hfa384x_wpa_data* %14, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.p80211pstrd*, %struct.p80211pstrd** %13, align 8
  %39 = getelementptr inbounds %struct.p80211pstrd, %struct.p80211pstrd* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @memcpy(i32 %35, i32 %37, i32 %40)
  br label %61

42:                                               ; preds = %20
  %43 = load %struct.p80211pstrd*, %struct.p80211pstrd** %13, align 8
  %44 = getelementptr inbounds %struct.p80211pstrd, %struct.p80211pstrd* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @cpu_to_le16(i32 %45)
  %47 = getelementptr inbounds %struct.hfa384x_wpa_data, %struct.hfa384x_wpa_data* %14, i32 0, i32 1
  store i32 %46, i32* %47, align 4
  %48 = getelementptr inbounds %struct.hfa384x_wpa_data, %struct.hfa384x_wpa_data* %14, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.p80211pstrd*, %struct.p80211pstrd** %13, align 8
  %51 = getelementptr inbounds %struct.p80211pstrd, %struct.p80211pstrd* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.p80211pstrd*, %struct.p80211pstrd** %13, align 8
  %54 = getelementptr inbounds %struct.p80211pstrd, %struct.p80211pstrd* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @memcpy(i32 %49, i32 %52, i32 %55)
  %57 = load %struct.hfa384x*, %struct.hfa384x** %10, align 8
  %58 = load i32, i32* @HFA384x_RID_CNFWPADATA, align 4
  %59 = bitcast %struct.hfa384x_wpa_data* %14 to i32*
  %60 = call i32 @hfa384x_drvr_setconfig(%struct.hfa384x* %57, i32 %58, i32* %59, i32 8)
  br label %61

61:                                               ; preds = %42, %23
  br label %70

62:                                               ; preds = %6
  %63 = load %struct.wlandevice*, %struct.wlandevice** %9, align 8
  %64 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.mibrec*, %struct.mibrec** %7, align 8
  %67 = getelementptr inbounds %struct.mibrec, %struct.mibrec* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @netdev_err(i32 %65, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %68)
  br label %70

70:                                               ; preds = %62, %61
  ret i32 0
}

declare dso_local i32 @hfa384x_drvr_getconfig(%struct.hfa384x*, i32, i32*, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @hfa384x_drvr_setconfig(%struct.hfa384x*, i32, i32*, i32) #1

declare dso_local i32 @netdev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
