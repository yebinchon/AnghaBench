; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_wlan.c_wilc_wlan_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_wlan.c_wilc_wlan_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.txq_entry_t = type { i32, i32 (i32, i32)* }
%struct.rxq_entry_t = type { i32, i32 (i32, i32)* }
%struct.wilc_vif = type { %struct.wilc* }
%struct.wilc = type { i32, %struct.TYPE_2__*, %struct.txq_entry_t*, %struct.txq_entry_t* }
%struct.TYPE_2__ = type { i32 (i32*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wilc_wlan_cleanup(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.txq_entry_t*, align 8
  %4 = alloca %struct.rxq_entry_t*, align 8
  %5 = alloca %struct.wilc_vif*, align 8
  %6 = alloca %struct.wilc*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call %struct.wilc_vif* @netdev_priv(%struct.net_device* %7)
  store %struct.wilc_vif* %8, %struct.wilc_vif** %5, align 8
  %9 = load %struct.wilc_vif*, %struct.wilc_vif** %5, align 8
  %10 = getelementptr inbounds %struct.wilc_vif, %struct.wilc_vif* %9, i32 0, i32 0
  %11 = load %struct.wilc*, %struct.wilc** %10, align 8
  store %struct.wilc* %11, %struct.wilc** %6, align 8
  %12 = load %struct.wilc*, %struct.wilc** %6, align 8
  %13 = getelementptr inbounds %struct.wilc, %struct.wilc* %12, i32 0, i32 0
  store i32 1, i32* %13, align 8
  br label %14

14:                                               ; preds = %36, %1
  %15 = load %struct.net_device*, %struct.net_device** %2, align 8
  %16 = call %struct.txq_entry_t* @wilc_wlan_txq_remove_from_head(%struct.net_device* %15)
  store %struct.txq_entry_t* %16, %struct.txq_entry_t** %3, align 8
  %17 = load %struct.txq_entry_t*, %struct.txq_entry_t** %3, align 8
  %18 = icmp ne %struct.txq_entry_t* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %14
  br label %37

20:                                               ; preds = %14
  %21 = load %struct.txq_entry_t*, %struct.txq_entry_t** %3, align 8
  %22 = getelementptr inbounds %struct.txq_entry_t, %struct.txq_entry_t* %21, i32 0, i32 1
  %23 = load i32 (i32, i32)*, i32 (i32, i32)** %22, align 8
  %24 = icmp ne i32 (i32, i32)* %23, null
  br i1 %24, label %25, label %33

25:                                               ; preds = %20
  %26 = load %struct.txq_entry_t*, %struct.txq_entry_t** %3, align 8
  %27 = getelementptr inbounds %struct.txq_entry_t, %struct.txq_entry_t* %26, i32 0, i32 1
  %28 = load i32 (i32, i32)*, i32 (i32, i32)** %27, align 8
  %29 = load %struct.txq_entry_t*, %struct.txq_entry_t** %3, align 8
  %30 = getelementptr inbounds %struct.txq_entry_t, %struct.txq_entry_t* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 %28(i32 %31, i32 0)
  br label %33

33:                                               ; preds = %25, %20
  %34 = load %struct.txq_entry_t*, %struct.txq_entry_t** %3, align 8
  %35 = call i32 @kfree(%struct.txq_entry_t* %34)
  br label %36

36:                                               ; preds = %33
  br i1 true, label %14, label %37

37:                                               ; preds = %36, %19
  br label %38

38:                                               ; preds = %49, %37
  %39 = load %struct.wilc*, %struct.wilc** %6, align 8
  %40 = call %struct.txq_entry_t* @wilc_wlan_rxq_remove(%struct.wilc* %39)
  %41 = bitcast %struct.txq_entry_t* %40 to %struct.rxq_entry_t*
  store %struct.rxq_entry_t* %41, %struct.rxq_entry_t** %4, align 8
  %42 = load %struct.rxq_entry_t*, %struct.rxq_entry_t** %4, align 8
  %43 = icmp ne %struct.rxq_entry_t* %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %38
  br label %50

45:                                               ; preds = %38
  %46 = load %struct.rxq_entry_t*, %struct.rxq_entry_t** %4, align 8
  %47 = bitcast %struct.rxq_entry_t* %46 to %struct.txq_entry_t*
  %48 = call i32 @kfree(%struct.txq_entry_t* %47)
  br label %49

49:                                               ; preds = %45
  br i1 true, label %38, label %50

50:                                               ; preds = %49, %44
  %51 = load %struct.wilc*, %struct.wilc** %6, align 8
  %52 = getelementptr inbounds %struct.wilc, %struct.wilc* %51, i32 0, i32 3
  %53 = load %struct.txq_entry_t*, %struct.txq_entry_t** %52, align 8
  %54 = call i32 @kfree(%struct.txq_entry_t* %53)
  %55 = load %struct.wilc*, %struct.wilc** %6, align 8
  %56 = getelementptr inbounds %struct.wilc, %struct.wilc* %55, i32 0, i32 3
  store %struct.txq_entry_t* null, %struct.txq_entry_t** %56, align 8
  %57 = load %struct.wilc*, %struct.wilc** %6, align 8
  %58 = getelementptr inbounds %struct.wilc, %struct.wilc* %57, i32 0, i32 2
  %59 = load %struct.txq_entry_t*, %struct.txq_entry_t** %58, align 8
  %60 = call i32 @kfree(%struct.txq_entry_t* %59)
  %61 = load %struct.wilc*, %struct.wilc** %6, align 8
  %62 = getelementptr inbounds %struct.wilc, %struct.wilc* %61, i32 0, i32 2
  store %struct.txq_entry_t* null, %struct.txq_entry_t** %62, align 8
  %63 = load %struct.wilc*, %struct.wilc** %6, align 8
  %64 = getelementptr inbounds %struct.wilc, %struct.wilc* %63, i32 0, i32 1
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32 (i32*)*, i32 (i32*)** %66, align 8
  %68 = call i32 %67(i32* null)
  ret void
}

declare dso_local %struct.wilc_vif* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.txq_entry_t* @wilc_wlan_txq_remove_from_head(%struct.net_device*) #1

declare dso_local i32 @kfree(%struct.txq_entry_t*) #1

declare dso_local %struct.txq_entry_t* @wilc_wlan_rxq_remove(%struct.wilc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
