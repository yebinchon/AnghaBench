; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_cfg80211.c_qtnf_add_key.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_cfg80211.c_qtnf_add_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.net_device = type { i32 }
%struct.key_params = type { i32 }
%struct.qtnf_vif = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [53 x i8] c"VIF%u.%u: failed to add key: cipher=%x idx=%u pw=%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, %struct.net_device*, i32, i32, i32*, %struct.key_params*)* @qtnf_add_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qtnf_add_key(%struct.wiphy* %0, %struct.net_device* %1, i32 %2, i32 %3, i32* %4, %struct.key_params* %5) #0 {
  %7 = alloca %struct.wiphy*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.key_params*, align 8
  %13 = alloca %struct.qtnf_vif*, align 8
  %14 = alloca i32, align 4
  store %struct.wiphy* %0, %struct.wiphy** %7, align 8
  store %struct.net_device* %1, %struct.net_device** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store %struct.key_params* %5, %struct.key_params** %12, align 8
  %15 = load %struct.net_device*, %struct.net_device** %8, align 8
  %16 = call %struct.qtnf_vif* @qtnf_netdev_get_priv(%struct.net_device* %15)
  store %struct.qtnf_vif* %16, %struct.qtnf_vif** %13, align 8
  %17 = load %struct.qtnf_vif*, %struct.qtnf_vif** %13, align 8
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* %10, align 4
  %20 = load i32*, i32** %11, align 8
  %21 = load %struct.key_params*, %struct.key_params** %12, align 8
  %22 = call i32 @qtnf_cmd_send_add_key(%struct.qtnf_vif* %17, i32 %18, i32 %19, i32* %20, %struct.key_params* %21)
  store i32 %22, i32* %14, align 4
  %23 = load i32, i32* %14, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %40

25:                                               ; preds = %6
  %26 = load %struct.qtnf_vif*, %struct.qtnf_vif** %13, align 8
  %27 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.qtnf_vif*, %struct.qtnf_vif** %13, align 8
  %32 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.key_params*, %struct.key_params** %12, align 8
  %35 = getelementptr inbounds %struct.key_params, %struct.key_params* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %10, align 4
  %39 = call i32 @pr_err(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %33, i32 %36, i32 %37, i32 %38)
  br label %40

40:                                               ; preds = %25, %6
  %41 = load i32, i32* %14, align 4
  ret i32 %41
}

declare dso_local %struct.qtnf_vif* @qtnf_netdev_get_priv(%struct.net_device*) #1

declare dso_local i32 @qtnf_cmd_send_add_key(%struct.qtnf_vif*, i32, i32, i32*, %struct.key_params*) #1

declare dso_local i32 @pr_err(i8*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
