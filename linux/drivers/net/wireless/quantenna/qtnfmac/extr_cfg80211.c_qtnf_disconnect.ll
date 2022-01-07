; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_cfg80211.c_qtnf_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_cfg80211.c_qtnf_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.net_device = type { i32 }
%struct.qtnf_wmac = type { i32 }
%struct.qtnf_vif = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i64 }

@.str = private unnamed_addr constant [38 x i8] c"MAC%u: primary VIF is not configured\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"VIF%u.%u: failed to disconnect\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, %struct.net_device*, i32)* @qtnf_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qtnf_disconnect(%struct.wiphy* %0, %struct.net_device* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wiphy*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.qtnf_wmac*, align 8
  %9 = alloca %struct.qtnf_vif*, align 8
  %10 = alloca i32, align 4
  store %struct.wiphy* %0, %struct.wiphy** %5, align 8
  store %struct.net_device* %1, %struct.net_device** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.wiphy*, %struct.wiphy** %5, align 8
  %12 = call %struct.qtnf_wmac* @wiphy_priv(%struct.wiphy* %11)
  store %struct.qtnf_wmac* %12, %struct.qtnf_wmac** %8, align 8
  store i32 0, i32* %10, align 4
  %13 = load %struct.qtnf_wmac*, %struct.qtnf_wmac** %8, align 8
  %14 = call %struct.qtnf_vif* @qtnf_mac_get_base_vif(%struct.qtnf_wmac* %13)
  store %struct.qtnf_vif* %14, %struct.qtnf_vif** %9, align 8
  %15 = load %struct.qtnf_vif*, %struct.qtnf_vif** %9, align 8
  %16 = icmp ne %struct.qtnf_vif* %15, null
  br i1 %16, label %24, label %17

17:                                               ; preds = %3
  %18 = load %struct.qtnf_wmac*, %struct.qtnf_wmac** %8, align 8
  %19 = getelementptr inbounds %struct.qtnf_wmac, %struct.qtnf_wmac* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* @EFAULT, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %68

24:                                               ; preds = %3
  %25 = load %struct.qtnf_vif*, %struct.qtnf_vif** %9, align 8
  %26 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %24
  %32 = load i32, i32* @EOPNOTSUPP, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %10, align 4
  br label %66

34:                                               ; preds = %24
  %35 = load %struct.qtnf_vif*, %struct.qtnf_vif** %9, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @qtnf_cmd_send_disconnect(%struct.qtnf_vif* %35, i32 %36)
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %34
  %41 = load %struct.qtnf_wmac*, %struct.qtnf_wmac** %8, align 8
  %42 = getelementptr inbounds %struct.qtnf_wmac, %struct.qtnf_wmac* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.qtnf_vif*, %struct.qtnf_vif** %9, align 8
  %45 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %43, i32 %46)
  br label %48

48:                                               ; preds = %40, %34
  %49 = load %struct.qtnf_vif*, %struct.qtnf_vif** %9, align 8
  %50 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %65

54:                                               ; preds = %48
  %55 = load %struct.qtnf_vif*, %struct.qtnf_vif** %9, align 8
  %56 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @netif_carrier_off(i32 %57)
  %59 = load %struct.qtnf_vif*, %struct.qtnf_vif** %9, align 8
  %60 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* @GFP_KERNEL, align 4
  %64 = call i32 @cfg80211_disconnected(i32 %61, i32 %62, i32* null, i32 0, i32 1, i32 %63)
  br label %65

65:                                               ; preds = %54, %48
  br label %66

66:                                               ; preds = %65, %31
  %67 = load i32, i32* %10, align 4
  store i32 %67, i32* %4, align 4
  br label %68

68:                                               ; preds = %66, %17
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local %struct.qtnf_wmac* @wiphy_priv(%struct.wiphy*) #1

declare dso_local %struct.qtnf_vif* @qtnf_mac_get_base_vif(%struct.qtnf_wmac*) #1

declare dso_local i32 @pr_err(i8*, i32, ...) #1

declare dso_local i32 @qtnf_cmd_send_disconnect(%struct.qtnf_vif*, i32) #1

declare dso_local i32 @netif_carrier_off(i32) #1

declare dso_local i32 @cfg80211_disconnected(i32, i32, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
