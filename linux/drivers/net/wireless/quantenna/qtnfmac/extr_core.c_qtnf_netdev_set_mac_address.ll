; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_core.c_qtnf_netdev_set_mac_address.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_core.c_qtnf_netdev_set_mac_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i8* }
%struct.qtnf_vif = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.sockaddr = type { i8* }

@ETH_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i8*)* @qtnf_netdev_set_mac_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qtnf_netdev_set_mac_address(%struct.net_device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.qtnf_vif*, align 8
  %7 = alloca %struct.sockaddr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = call %struct.qtnf_vif* @qtnf_netdev_get_priv(%struct.net_device* %12)
  store %struct.qtnf_vif* %13, %struct.qtnf_vif** %6, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to %struct.sockaddr*
  store %struct.sockaddr* %15, %struct.sockaddr** %7, align 8
  %16 = load i32, i32* @ETH_ALEN, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %9, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %10, align 8
  %20 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %21 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = trunc i64 %17 to i32
  %24 = call i32 @memcpy(i8* %19, i8* %22, i32 %23)
  %25 = load %struct.net_device*, %struct.net_device** %4, align 8
  %26 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %27 = call i32 @eth_mac_addr(%struct.net_device* %25, %struct.sockaddr* %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %2
  %31 = load i32, i32* %8, align 4
  store i32 %31, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %60

32:                                               ; preds = %2
  %33 = load %struct.qtnf_vif*, %struct.qtnf_vif** %6, align 8
  %34 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @qtnf_scan_done(i32 %35, i32 1)
  %37 = load %struct.qtnf_vif*, %struct.qtnf_vif** %6, align 8
  %38 = load %struct.qtnf_vif*, %struct.qtnf_vif** %6, align 8
  %39 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.qtnf_vif*, %struct.qtnf_vif** %6, align 8
  %43 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %47 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = call i32 @qtnf_cmd_send_change_intf_type(%struct.qtnf_vif* %37, i32 %41, i32 %45, i8* %48)
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %32
  %53 = load %struct.net_device*, %struct.net_device** %4, align 8
  %54 = getelementptr inbounds %struct.net_device, %struct.net_device* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = load i32, i32* @ETH_ALEN, align 4
  %57 = call i32 @memcpy(i8* %55, i8* %19, i32 %56)
  br label %58

58:                                               ; preds = %52, %32
  %59 = load i32, i32* %8, align 4
  store i32 %59, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %60

60:                                               ; preds = %58, %30
  %61 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %61)
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local %struct.qtnf_vif* @qtnf_netdev_get_priv(%struct.net_device*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @eth_mac_addr(%struct.net_device*, %struct.sockaddr*) #1

declare dso_local i32 @qtnf_scan_done(i32, i32) #1

declare dso_local i32 @qtnf_cmd_send_change_intf_type(%struct.qtnf_vif*, i32, i32, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
