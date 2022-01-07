; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_wlan.c_wilc_wlan_txq_add_net_pkt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_wlan.c_wilc_wlan_txq_add_net_pkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.txq_entry_t = type { void (i8*, i32)*, i32, %struct.wilc_vif*, i8*, i32, i32*, i32 }
%struct.wilc_vif = type { %struct.TYPE_2__, %struct.wilc* }
%struct.TYPE_2__ = type { i64 }
%struct.wilc = type { i32, i64 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@WILC_NET_PKT = common dso_local global i32 0, align 4
@NOT_TCP_ACK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wilc_wlan_txq_add_net_pkt(%struct.net_device* %0, i8* %1, i32* %2, i32 %3, void (i8*, i32)* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca void (i8*, i32)*, align 8
  %12 = alloca %struct.txq_entry_t*, align 8
  %13 = alloca %struct.wilc_vif*, align 8
  %14 = alloca %struct.wilc*, align 8
  store %struct.net_device* %0, %struct.net_device** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store void (i8*, i32)* %4, void (i8*, i32)** %11, align 8
  %15 = load %struct.net_device*, %struct.net_device** %7, align 8
  %16 = call %struct.wilc_vif* @netdev_priv(%struct.net_device* %15)
  store %struct.wilc_vif* %16, %struct.wilc_vif** %13, align 8
  %17 = load %struct.wilc_vif*, %struct.wilc_vif** %13, align 8
  %18 = getelementptr inbounds %struct.wilc_vif, %struct.wilc_vif* %17, i32 0, i32 1
  %19 = load %struct.wilc*, %struct.wilc** %18, align 8
  store %struct.wilc* %19, %struct.wilc** %14, align 8
  %20 = load %struct.wilc*, %struct.wilc** %14, align 8
  %21 = getelementptr inbounds %struct.wilc, %struct.wilc* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %69

25:                                               ; preds = %5
  %26 = load i32, i32* @GFP_ATOMIC, align 4
  %27 = call %struct.txq_entry_t* @kmalloc(i32 56, i32 %26)
  store %struct.txq_entry_t* %27, %struct.txq_entry_t** %12, align 8
  %28 = load %struct.txq_entry_t*, %struct.txq_entry_t** %12, align 8
  %29 = icmp ne %struct.txq_entry_t* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %25
  store i32 0, i32* %6, align 4
  br label %69

31:                                               ; preds = %25
  %32 = load i32, i32* @WILC_NET_PKT, align 4
  %33 = load %struct.txq_entry_t*, %struct.txq_entry_t** %12, align 8
  %34 = getelementptr inbounds %struct.txq_entry_t, %struct.txq_entry_t* %33, i32 0, i32 6
  store i32 %32, i32* %34, align 8
  %35 = load i32*, i32** %9, align 8
  %36 = load %struct.txq_entry_t*, %struct.txq_entry_t** %12, align 8
  %37 = getelementptr inbounds %struct.txq_entry_t, %struct.txq_entry_t* %36, i32 0, i32 5
  store i32* %35, i32** %37, align 8
  %38 = load i32, i32* %10, align 4
  %39 = load %struct.txq_entry_t*, %struct.txq_entry_t** %12, align 8
  %40 = getelementptr inbounds %struct.txq_entry_t, %struct.txq_entry_t* %39, i32 0, i32 4
  store i32 %38, i32* %40, align 8
  %41 = load void (i8*, i32)*, void (i8*, i32)** %11, align 8
  %42 = load %struct.txq_entry_t*, %struct.txq_entry_t** %12, align 8
  %43 = getelementptr inbounds %struct.txq_entry_t, %struct.txq_entry_t* %42, i32 0, i32 0
  store void (i8*, i32)* %41, void (i8*, i32)** %43, align 8
  %44 = load i8*, i8** %8, align 8
  %45 = load %struct.txq_entry_t*, %struct.txq_entry_t** %12, align 8
  %46 = getelementptr inbounds %struct.txq_entry_t, %struct.txq_entry_t* %45, i32 0, i32 3
  store i8* %44, i8** %46, align 8
  %47 = load %struct.wilc_vif*, %struct.wilc_vif** %13, align 8
  %48 = load %struct.txq_entry_t*, %struct.txq_entry_t** %12, align 8
  %49 = getelementptr inbounds %struct.txq_entry_t, %struct.txq_entry_t* %48, i32 0, i32 2
  store %struct.wilc_vif* %47, %struct.wilc_vif** %49, align 8
  %50 = load i32, i32* @NOT_TCP_ACK, align 4
  %51 = load %struct.txq_entry_t*, %struct.txq_entry_t** %12, align 8
  %52 = getelementptr inbounds %struct.txq_entry_t, %struct.txq_entry_t* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 8
  %53 = load %struct.wilc_vif*, %struct.wilc_vif** %13, align 8
  %54 = getelementptr inbounds %struct.wilc_vif, %struct.wilc_vif* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %31
  %59 = load %struct.net_device*, %struct.net_device** %7, align 8
  %60 = load %struct.txq_entry_t*, %struct.txq_entry_t** %12, align 8
  %61 = call i32 @tcp_process(%struct.net_device* %59, %struct.txq_entry_t* %60)
  br label %62

62:                                               ; preds = %58, %31
  %63 = load %struct.net_device*, %struct.net_device** %7, align 8
  %64 = load %struct.txq_entry_t*, %struct.txq_entry_t** %12, align 8
  %65 = call i32 @wilc_wlan_txq_add_to_tail(%struct.net_device* %63, %struct.txq_entry_t* %64)
  %66 = load %struct.wilc*, %struct.wilc** %14, align 8
  %67 = getelementptr inbounds %struct.wilc, %struct.wilc* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  store i32 %68, i32* %6, align 4
  br label %69

69:                                               ; preds = %62, %30, %24
  %70 = load i32, i32* %6, align 4
  ret i32 %70
}

declare dso_local %struct.wilc_vif* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.txq_entry_t* @kmalloc(i32, i32) #1

declare dso_local i32 @tcp_process(%struct.net_device*, %struct.txq_entry_t*) #1

declare dso_local i32 @wilc_wlan_txq_add_to_tail(%struct.net_device*, %struct.txq_entry_t*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
