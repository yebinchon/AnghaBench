; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_core.c_qtnf_wake_all_queues.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_core.c_qtnf_wake_all_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.qtnf_vif = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.qtnf_bus* }
%struct.qtnf_bus = type { %struct.qtnf_wmac**, %struct.TYPE_4__ }
%struct.qtnf_wmac = type { %struct.qtnf_vif* }
%struct.TYPE_4__ = type { i32 }

@QTNF_MAX_MAC = common dso_local global i32 0, align 4
@QTNF_MAX_INTF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qtnf_wake_all_queues(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.qtnf_vif*, align 8
  %4 = alloca %struct.qtnf_wmac*, align 8
  %5 = alloca %struct.qtnf_bus*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = call %struct.qtnf_vif* @qtnf_netdev_get_priv(%struct.net_device* %8)
  store %struct.qtnf_vif* %9, %struct.qtnf_vif** %3, align 8
  %10 = load %struct.qtnf_vif*, %struct.qtnf_vif** %3, align 8
  %11 = icmp ne %struct.qtnf_vif* %10, null
  br i1 %11, label %12, label %25

12:                                               ; preds = %1
  %13 = load %struct.qtnf_vif*, %struct.qtnf_vif** %3, align 8
  %14 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %13, i32 0, i32 1
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = icmp ne %struct.TYPE_3__* %15, null
  br i1 %16, label %17, label %25

17:                                               ; preds = %12
  %18 = load %struct.qtnf_vif*, %struct.qtnf_vif** %3, align 8
  %19 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %18, i32 0, i32 1
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load %struct.qtnf_bus*, %struct.qtnf_bus** %21, align 8
  %23 = icmp ne %struct.qtnf_bus* %22, null
  %24 = xor i1 %23, true
  br label %25

25:                                               ; preds = %17, %12, %1
  %26 = phi i1 [ true, %12 ], [ true, %1 ], [ %24, %17 ]
  %27 = zext i1 %26 to i32
  %28 = call i64 @unlikely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  br label %93

31:                                               ; preds = %25
  %32 = load %struct.qtnf_vif*, %struct.qtnf_vif** %3, align 8
  %33 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %32, i32 0, i32 1
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load %struct.qtnf_bus*, %struct.qtnf_bus** %35, align 8
  store %struct.qtnf_bus* %36, %struct.qtnf_bus** %5, align 8
  store i32 0, i32* %6, align 4
  br label %37

37:                                               ; preds = %90, %31
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @QTNF_MAX_MAC, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %93

41:                                               ; preds = %37
  %42 = load %struct.qtnf_bus*, %struct.qtnf_bus** %5, align 8
  %43 = getelementptr inbounds %struct.qtnf_bus, %struct.qtnf_bus* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @BIT(i32 %46)
  %48 = and i32 %45, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %41
  br label %90

51:                                               ; preds = %41
  %52 = load %struct.qtnf_bus*, %struct.qtnf_bus** %5, align 8
  %53 = getelementptr inbounds %struct.qtnf_bus, %struct.qtnf_bus* %52, i32 0, i32 0
  %54 = load %struct.qtnf_wmac**, %struct.qtnf_wmac*** %53, align 8
  %55 = load i32, i32* %6, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.qtnf_wmac*, %struct.qtnf_wmac** %54, i64 %56
  %58 = load %struct.qtnf_wmac*, %struct.qtnf_wmac** %57, align 8
  store %struct.qtnf_wmac* %58, %struct.qtnf_wmac** %4, align 8
  store i32 0, i32* %7, align 4
  br label %59

59:                                               ; preds = %86, %51
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* @QTNF_MAX_INTF, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %89

63:                                               ; preds = %59
  %64 = load %struct.qtnf_wmac*, %struct.qtnf_wmac** %4, align 8
  %65 = getelementptr inbounds %struct.qtnf_wmac, %struct.qtnf_wmac* %64, i32 0, i32 0
  %66 = load %struct.qtnf_vif*, %struct.qtnf_vif** %65, align 8
  %67 = load i32, i32* %7, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %66, i64 %68
  store %struct.qtnf_vif* %69, %struct.qtnf_vif** %3, align 8
  %70 = load %struct.qtnf_vif*, %struct.qtnf_vif** %3, align 8
  %71 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %85

74:                                               ; preds = %63
  %75 = load %struct.qtnf_vif*, %struct.qtnf_vif** %3, align 8
  %76 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = call i64 @netif_queue_stopped(i64 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %74
  %81 = load %struct.qtnf_vif*, %struct.qtnf_vif** %3, align 8
  %82 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = call i32 @netif_tx_wake_all_queues(i64 %83)
  br label %85

85:                                               ; preds = %80, %74, %63
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %7, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %7, align 4
  br label %59

89:                                               ; preds = %59
  br label %90

90:                                               ; preds = %89, %50
  %91 = load i32, i32* %6, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %6, align 4
  br label %37

93:                                               ; preds = %30, %37
  ret void
}

declare dso_local %struct.qtnf_vif* @qtnf_netdev_get_priv(%struct.net_device*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i64 @netif_queue_stopped(i64) #1

declare dso_local i32 @netif_tx_wake_all_queues(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
