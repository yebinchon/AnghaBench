; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/os_dep/extr_os_intfs.c_rtw_select_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/os_dep/extr_os_intfs.c_rtw_select_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.net_device = type { i32 }
%struct.adapter = type { %struct.mlme_priv }
%struct.mlme_priv = type { i64 }

@rtw_1d_to_queue = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.sk_buff*, %struct.net_device*)* @rtw_select_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtw_select_queue(%struct.net_device* %0, %struct.sk_buff* %1, %struct.net_device* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.adapter*, align 8
  %8 = alloca %struct.mlme_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store %struct.net_device* %2, %struct.net_device** %6, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.adapter* @rtw_netdev_priv(%struct.net_device* %9)
  store %struct.adapter* %10, %struct.adapter** %7, align 8
  %11 = load %struct.adapter*, %struct.adapter** %7, align 8
  %12 = getelementptr inbounds %struct.adapter, %struct.adapter* %11, i32 0, i32 0
  store %struct.mlme_priv* %12, %struct.mlme_priv** %8, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %14 = call i64 @rtw_classify8021d(%struct.sk_buff* %13)
  %15 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %16 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %15, i32 0, i32 0
  store i64 %14, i64* %16, align 8
  %17 = load %struct.mlme_priv*, %struct.mlme_priv** %8, align 8
  %18 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %3
  %22 = load %struct.mlme_priv*, %struct.mlme_priv** %8, align 8
  %23 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %26 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i64 @qos_acm(i64 %24, i64 %27)
  %29 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %30 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %29, i32 0, i32 0
  store i64 %28, i64* %30, align 8
  br label %31

31:                                               ; preds = %21, %3
  %32 = load i32*, i32** @rtw_1d_to_queue, align 8
  %33 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %34 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds i32, i32* %32, i64 %35
  %37 = load i32, i32* %36, align 4
  ret i32 %37
}

declare dso_local %struct.adapter* @rtw_netdev_priv(%struct.net_device*) #1

declare dso_local i64 @rtw_classify8021d(%struct.sk_buff*) #1

declare dso_local i64 @qos_acm(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
