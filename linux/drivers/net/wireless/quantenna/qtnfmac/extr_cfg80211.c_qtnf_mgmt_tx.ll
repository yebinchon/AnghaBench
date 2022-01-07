; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_cfg80211.c_qtnf_mgmt_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_cfg80211.c_qtnf_mgmt_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.wireless_dev = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.cfg80211_mgmt_tx_params = type { i32, i64, %struct.TYPE_3__*, i64, i64, i64 }
%struct.TYPE_3__ = type { i64 }
%struct.qtnf_vif = type { i32 }
%struct.ieee80211_mgmt = type { i32, i32 }

@QLINK_FRAME_TX_FLAG_OFFCHAN = common dso_local global i64 0, align 8
@QLINK_FRAME_TX_FLAG_NO_CCK = common dso_local global i64 0, align 8
@QLINK_FRAME_TX_FLAG_ACK_NOWAIT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [55 x i8] c"%s freq:%u; FC:%.4X; DA:%pM; len:%zu; C:%.8X; FL:%.4X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, %struct.wireless_dev*, %struct.cfg80211_mgmt_tx_params*, i32*)* @qtnf_mgmt_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qtnf_mgmt_tx(%struct.wiphy* %0, %struct.wireless_dev* %1, %struct.cfg80211_mgmt_tx_params* %2, i32* %3) #0 {
  %5 = alloca %struct.wiphy*, align 8
  %6 = alloca %struct.wireless_dev*, align 8
  %7 = alloca %struct.cfg80211_mgmt_tx_params*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.qtnf_vif*, align 8
  %10 = alloca %struct.ieee80211_mgmt*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.wiphy* %0, %struct.wiphy** %5, align 8
  store %struct.wireless_dev* %1, %struct.wireless_dev** %6, align 8
  store %struct.cfg80211_mgmt_tx_params* %2, %struct.cfg80211_mgmt_tx_params** %7, align 8
  store i32* %3, i32** %8, align 8
  %14 = load %struct.wireless_dev*, %struct.wireless_dev** %6, align 8
  %15 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = call %struct.qtnf_vif* @qtnf_netdev_get_priv(%struct.TYPE_4__* %16)
  store %struct.qtnf_vif* %17, %struct.qtnf_vif** %9, align 8
  %18 = load %struct.cfg80211_mgmt_tx_params*, %struct.cfg80211_mgmt_tx_params** %7, align 8
  %19 = getelementptr inbounds %struct.cfg80211_mgmt_tx_params, %struct.cfg80211_mgmt_tx_params* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to i8*
  %22 = bitcast i8* %21 to %struct.ieee80211_mgmt*
  store %struct.ieee80211_mgmt* %22, %struct.ieee80211_mgmt** %10, align 8
  %23 = call i32 (...) @prandom_u32()
  store i32 %23, i32* %11, align 4
  store i64 0, i64* %12, align 8
  %24 = load i32, i32* %11, align 4
  %25 = load i32*, i32** %8, align 8
  store i32 %24, i32* %25, align 4
  %26 = load %struct.cfg80211_mgmt_tx_params*, %struct.cfg80211_mgmt_tx_params** %7, align 8
  %27 = getelementptr inbounds %struct.cfg80211_mgmt_tx_params, %struct.cfg80211_mgmt_tx_params* %26, i32 0, i32 5
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %4
  %31 = load i64, i64* @QLINK_FRAME_TX_FLAG_OFFCHAN, align 8
  %32 = load i64, i64* %12, align 8
  %33 = or i64 %32, %31
  store i64 %33, i64* %12, align 8
  br label %34

34:                                               ; preds = %30, %4
  %35 = load %struct.cfg80211_mgmt_tx_params*, %struct.cfg80211_mgmt_tx_params** %7, align 8
  %36 = getelementptr inbounds %struct.cfg80211_mgmt_tx_params, %struct.cfg80211_mgmt_tx_params* %35, i32 0, i32 4
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = load i64, i64* @QLINK_FRAME_TX_FLAG_NO_CCK, align 8
  %41 = load i64, i64* %12, align 8
  %42 = or i64 %41, %40
  store i64 %42, i64* %12, align 8
  br label %43

43:                                               ; preds = %39, %34
  %44 = load %struct.cfg80211_mgmt_tx_params*, %struct.cfg80211_mgmt_tx_params** %7, align 8
  %45 = getelementptr inbounds %struct.cfg80211_mgmt_tx_params, %struct.cfg80211_mgmt_tx_params* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %43
  %49 = load i64, i64* @QLINK_FRAME_TX_FLAG_ACK_NOWAIT, align 8
  %50 = load i64, i64* %12, align 8
  %51 = or i64 %50, %49
  store i64 %51, i64* %12, align 8
  br label %52

52:                                               ; preds = %48, %43
  %53 = load %struct.cfg80211_mgmt_tx_params*, %struct.cfg80211_mgmt_tx_params** %7, align 8
  %54 = getelementptr inbounds %struct.cfg80211_mgmt_tx_params, %struct.cfg80211_mgmt_tx_params* %53, i32 0, i32 2
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = icmp ne %struct.TYPE_3__* %55, null
  br i1 %56, label %57, label %63

57:                                               ; preds = %52
  %58 = load %struct.cfg80211_mgmt_tx_params*, %struct.cfg80211_mgmt_tx_params** %7, align 8
  %59 = getelementptr inbounds %struct.cfg80211_mgmt_tx_params, %struct.cfg80211_mgmt_tx_params* %58, i32 0, i32 2
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  store i64 %62, i64* %13, align 8
  br label %64

63:                                               ; preds = %52
  store i64 0, i64* %13, align 8
  br label %64

64:                                               ; preds = %63, %57
  %65 = load %struct.wireless_dev*, %struct.wireless_dev** %6, align 8
  %66 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %65, i32 0, i32 0
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i64, i64* %13, align 8
  %71 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %10, align 8
  %72 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @le16_to_cpu(i32 %73)
  %75 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %10, align 8
  %76 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.cfg80211_mgmt_tx_params*, %struct.cfg80211_mgmt_tx_params** %7, align 8
  %79 = getelementptr inbounds %struct.cfg80211_mgmt_tx_params, %struct.cfg80211_mgmt_tx_params* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* %11, align 4
  %82 = load i64, i64* %12, align 8
  %83 = call i32 @pr_debug(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %69, i64 %70, i32 %74, i32 %77, i32 %80, i32 %81, i64 %82)
  %84 = load %struct.qtnf_vif*, %struct.qtnf_vif** %9, align 8
  %85 = load i32, i32* %11, align 4
  %86 = load i64, i64* %12, align 8
  %87 = load i64, i64* %13, align 8
  %88 = load %struct.cfg80211_mgmt_tx_params*, %struct.cfg80211_mgmt_tx_params** %7, align 8
  %89 = getelementptr inbounds %struct.cfg80211_mgmt_tx_params, %struct.cfg80211_mgmt_tx_params* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.cfg80211_mgmt_tx_params*, %struct.cfg80211_mgmt_tx_params** %7, align 8
  %92 = getelementptr inbounds %struct.cfg80211_mgmt_tx_params, %struct.cfg80211_mgmt_tx_params* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @qtnf_cmd_send_frame(%struct.qtnf_vif* %84, i32 %85, i64 %86, i64 %87, i64 %90, i32 %93)
  ret i32 %94
}

declare dso_local %struct.qtnf_vif* @qtnf_netdev_get_priv(%struct.TYPE_4__*) #1

declare dso_local i32 @prandom_u32(...) #1

declare dso_local i32 @pr_debug(i8*, i32, i64, i32, i32, i32, i32, i64) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @qtnf_cmd_send_frame(%struct.qtnf_vif*, i32, i64, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
