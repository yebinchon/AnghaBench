; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_wlan.c_wilc_wlan_txq_add_cfg_pkt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_wlan.c_wilc_wlan_txq_add_cfg_pkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wilc_vif = type { i32, %struct.wilc* }
%struct.wilc = type { i32, i64 }
%struct.txq_entry_t = type { %struct.wilc_vif*, i32, i32*, i32*, i32, i32*, i32 }

@.str = private unnamed_addr constant [26 x i8] c"Adding config packet ...\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Return due to clear function\0A\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@WILC_CFG_PKT = common dso_local global i32 0, align 4
@NOT_TCP_ACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wilc_vif*, i32*, i32)* @wilc_wlan_txq_add_cfg_pkt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wilc_wlan_txq_add_cfg_pkt(%struct.wilc_vif* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wilc_vif*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.txq_entry_t*, align 8
  %9 = alloca %struct.wilc*, align 8
  store %struct.wilc_vif* %0, %struct.wilc_vif** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.wilc_vif*, %struct.wilc_vif** %5, align 8
  %11 = getelementptr inbounds %struct.wilc_vif, %struct.wilc_vif* %10, i32 0, i32 1
  %12 = load %struct.wilc*, %struct.wilc** %11, align 8
  store %struct.wilc* %12, %struct.wilc** %9, align 8
  %13 = load %struct.wilc_vif*, %struct.wilc_vif** %5, align 8
  %14 = getelementptr inbounds %struct.wilc_vif, %struct.wilc_vif* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @netdev_dbg(i32 %15, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.wilc*, %struct.wilc** %9, align 8
  %18 = getelementptr inbounds %struct.wilc, %struct.wilc* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %3
  %22 = load %struct.wilc_vif*, %struct.wilc_vif** %5, align 8
  %23 = getelementptr inbounds %struct.wilc_vif, %struct.wilc_vif* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @netdev_dbg(i32 %24, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %26 = load %struct.wilc*, %struct.wilc** %9, align 8
  %27 = getelementptr inbounds %struct.wilc, %struct.wilc* %26, i32 0, i32 0
  %28 = call i32 @complete(i32* %27)
  store i32 0, i32* %4, align 4
  br label %58

29:                                               ; preds = %3
  %30 = load i32, i32* @GFP_ATOMIC, align 4
  %31 = call %struct.txq_entry_t* @kmalloc(i32 56, i32 %30)
  store %struct.txq_entry_t* %31, %struct.txq_entry_t** %8, align 8
  %32 = load %struct.txq_entry_t*, %struct.txq_entry_t** %8, align 8
  %33 = icmp ne %struct.txq_entry_t* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %29
  store i32 0, i32* %4, align 4
  br label %58

35:                                               ; preds = %29
  %36 = load i32, i32* @WILC_CFG_PKT, align 4
  %37 = load %struct.txq_entry_t*, %struct.txq_entry_t** %8, align 8
  %38 = getelementptr inbounds %struct.txq_entry_t, %struct.txq_entry_t* %37, i32 0, i32 6
  store i32 %36, i32* %38, align 8
  %39 = load i32*, i32** %6, align 8
  %40 = load %struct.txq_entry_t*, %struct.txq_entry_t** %8, align 8
  %41 = getelementptr inbounds %struct.txq_entry_t, %struct.txq_entry_t* %40, i32 0, i32 5
  store i32* %39, i32** %41, align 8
  %42 = load i32, i32* %7, align 4
  %43 = load %struct.txq_entry_t*, %struct.txq_entry_t** %8, align 8
  %44 = getelementptr inbounds %struct.txq_entry_t, %struct.txq_entry_t* %43, i32 0, i32 4
  store i32 %42, i32* %44, align 8
  %45 = load %struct.txq_entry_t*, %struct.txq_entry_t** %8, align 8
  %46 = getelementptr inbounds %struct.txq_entry_t, %struct.txq_entry_t* %45, i32 0, i32 3
  store i32* null, i32** %46, align 8
  %47 = load %struct.txq_entry_t*, %struct.txq_entry_t** %8, align 8
  %48 = getelementptr inbounds %struct.txq_entry_t, %struct.txq_entry_t* %47, i32 0, i32 2
  store i32* null, i32** %48, align 8
  %49 = load i32, i32* @NOT_TCP_ACK, align 4
  %50 = load %struct.txq_entry_t*, %struct.txq_entry_t** %8, align 8
  %51 = getelementptr inbounds %struct.txq_entry_t, %struct.txq_entry_t* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 8
  %52 = load %struct.wilc_vif*, %struct.wilc_vif** %5, align 8
  %53 = load %struct.txq_entry_t*, %struct.txq_entry_t** %8, align 8
  %54 = getelementptr inbounds %struct.txq_entry_t, %struct.txq_entry_t* %53, i32 0, i32 0
  store %struct.wilc_vif* %52, %struct.wilc_vif** %54, align 8
  %55 = load %struct.wilc_vif*, %struct.wilc_vif** %5, align 8
  %56 = load %struct.txq_entry_t*, %struct.txq_entry_t** %8, align 8
  %57 = call i32 @wilc_wlan_txq_add_to_head(%struct.wilc_vif* %55, %struct.txq_entry_t* %56)
  store i32 1, i32* %4, align 4
  br label %58

58:                                               ; preds = %35, %34, %21
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i32 @netdev_dbg(i32, i8*) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local %struct.txq_entry_t* @kmalloc(i32, i32) #1

declare dso_local i32 @wilc_wlan_txq_add_to_head(%struct.wilc_vif*, %struct.txq_entry_t*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
