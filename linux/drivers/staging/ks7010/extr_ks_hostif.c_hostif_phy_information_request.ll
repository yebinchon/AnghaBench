; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/ks7010/extr_ks_hostif.c_hostif_phy_information_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/ks7010/extr_ks_hostif.c_hostif_phy_information_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ks_wlan_private = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.hostif_phy_information_request = type { i8*, i8* }

@HIF_PHY_INFO_REQ = common dso_local global i32 0, align 4
@TIME_TYPE = common dso_local global i64 0, align 8
@NORMAL_TYPE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ks_wlan_private*)* @hostif_phy_information_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hostif_phy_information_request(%struct.ks_wlan_private* %0) #0 {
  %2 = alloca %struct.ks_wlan_private*, align 8
  %3 = alloca %struct.hostif_phy_information_request*, align 8
  store %struct.ks_wlan_private* %0, %struct.ks_wlan_private** %2, align 8
  %4 = load i32, i32* @HIF_PHY_INFO_REQ, align 4
  %5 = call %struct.hostif_phy_information_request* @hostif_generic_request(i32 16, i32 %4)
  store %struct.hostif_phy_information_request* %5, %struct.hostif_phy_information_request** %3, align 8
  %6 = load %struct.hostif_phy_information_request*, %struct.hostif_phy_information_request** %3, align 8
  %7 = icmp ne %struct.hostif_phy_information_request* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %40

9:                                                ; preds = %1
  %10 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %11 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %27

15:                                               ; preds = %9
  %16 = load i64, i64* @TIME_TYPE, align 8
  %17 = call i8* @cpu_to_le16(i64 %16)
  %18 = load %struct.hostif_phy_information_request*, %struct.hostif_phy_information_request** %3, align 8
  %19 = getelementptr inbounds %struct.hostif_phy_information_request, %struct.hostif_phy_information_request* %18, i32 0, i32 1
  store i8* %17, i8** %19, align 8
  %20 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %21 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i8* @cpu_to_le16(i64 %23)
  %25 = load %struct.hostif_phy_information_request*, %struct.hostif_phy_information_request** %3, align 8
  %26 = getelementptr inbounds %struct.hostif_phy_information_request, %struct.hostif_phy_information_request* %25, i32 0, i32 0
  store i8* %24, i8** %26, align 8
  br label %35

27:                                               ; preds = %9
  %28 = load i64, i64* @NORMAL_TYPE, align 8
  %29 = call i8* @cpu_to_le16(i64 %28)
  %30 = load %struct.hostif_phy_information_request*, %struct.hostif_phy_information_request** %3, align 8
  %31 = getelementptr inbounds %struct.hostif_phy_information_request, %struct.hostif_phy_information_request* %30, i32 0, i32 1
  store i8* %29, i8** %31, align 8
  %32 = call i8* @cpu_to_le16(i64 0)
  %33 = load %struct.hostif_phy_information_request*, %struct.hostif_phy_information_request** %3, align 8
  %34 = getelementptr inbounds %struct.hostif_phy_information_request, %struct.hostif_phy_information_request* %33, i32 0, i32 0
  store i8* %32, i8** %34, align 8
  br label %35

35:                                               ; preds = %27, %15
  %36 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %37 = load %struct.hostif_phy_information_request*, %struct.hostif_phy_information_request** %3, align 8
  %38 = call i32 @hif_align_size(i32 16)
  %39 = call i32 @send_request_to_device(%struct.ks_wlan_private* %36, %struct.hostif_phy_information_request* %37, i32 %38)
  br label %40

40:                                               ; preds = %35, %8
  ret void
}

declare dso_local %struct.hostif_phy_information_request* @hostif_generic_request(i32, i32) #1

declare dso_local i8* @cpu_to_le16(i64) #1

declare dso_local i32 @send_request_to_device(%struct.ks_wlan_private*, %struct.hostif_phy_information_request*, i32) #1

declare dso_local i32 @hif_align_size(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
