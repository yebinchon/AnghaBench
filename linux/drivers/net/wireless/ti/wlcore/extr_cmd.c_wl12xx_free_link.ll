; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_cmd.c_wl12xx_free_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_cmd.c_wl12xx_free_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i64, %struct.TYPE_4__*, i32, i32, i32 }
%struct.TYPE_4__ = type { i64, i32*, i32, i64, i64, i64 }
%struct.wl12xx_vif = type { i64, i64, i64, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i64 }

@WL12XX_INVALID_LINK_ID = common dso_local global i64 0, align 8
@BSS_TYPE_AP_BSS = common dso_local global i64 0, align 8
@WL1271_TX_SQN_POST_RECOVERY_PADDING = common dso_local global i64 0, align 8
@KEY_GEM = common dso_local global i64 0, align 8
@WL1271_TX_SQN_POST_RECOVERY_PADDING_GEM = common dso_local global i64 0, align 8
@WL1271_FLAG_RECOVERY_IN_PROGRESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wl12xx_free_link(%struct.wl1271* %0, %struct.wl12xx_vif* %1, i64* %2) #0 {
  %4 = alloca %struct.wl1271*, align 8
  %5 = alloca %struct.wl12xx_vif*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.wl1271* %0, %struct.wl1271** %4, align 8
  store %struct.wl12xx_vif* %1, %struct.wl12xx_vif** %5, align 8
  store i64* %2, i64** %6, align 8
  %9 = load i64*, i64** %6, align 8
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @WL12XX_INVALID_LINK_ID, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  br label %141

14:                                               ; preds = %3
  %15 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %16 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %15, i32 0, i32 3
  %17 = load i64, i64* %7, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  %19 = load i64*, i64** %6, align 8
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %22 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @__clear_bit(i64 %20, i32 %23)
  %25 = load i64*, i64** %6, align 8
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %5, align 8
  %28 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @__clear_bit(i64 %26, i32 %29)
  %31 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %32 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %31, i32 0, i32 3
  %33 = load i64, i64* %7, align 8
  %34 = call i32 @spin_unlock_irqrestore(i32* %32, i64 %33)
  %35 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %36 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %35, i32 0, i32 1
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = load i64*, i64** %6, align 8
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 5
  store i64 0, i64* %41, align 8
  %42 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %43 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %42, i32 0, i32 1
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = load i64*, i64** %6, align 8
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 4
  store i64 0, i64* %48, align 8
  %49 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %50 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %49, i32 0, i32 1
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = load i64*, i64** %6, align 8
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 3
  store i64 0, i64* %55, align 8
  %56 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %57 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %56, i32 0, i32 1
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = load i64*, i64** %6, align 8
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @eth_zero_addr(i32 %63)
  %65 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %66 = load i64*, i64** %6, align 8
  %67 = load i64, i64* %66, align 8
  %68 = call i32 @wl1271_tx_reset_link_queues(%struct.wl1271* %65, i64 %67)
  %69 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %70 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %69, i32 0, i32 1
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = load i64*, i64** %6, align 8
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 1
  store i32* null, i32** %75, align 8
  %76 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %5, align 8
  %77 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @BSS_TYPE_AP_BSS, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %121

81:                                               ; preds = %14
  %82 = load i64*, i64** %6, align 8
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %5, align 8
  %85 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %84, i32 0, i32 3
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp eq i64 %83, %87
  br i1 %88, label %89, label %121

89:                                               ; preds = %81
  %90 = load i64, i64* @WL1271_TX_SQN_POST_RECOVERY_PADDING, align 8
  store i64 %90, i64* %8, align 8
  %91 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %92 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %91, i32 0, i32 1
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %92, align 8
  %94 = load i64*, i64** %6, align 8
  %95 = load i64, i64* %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %5, align 8
  %100 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %99, i32 0, i32 2
  store i64 %98, i64* %100, align 8
  %101 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %5, align 8
  %102 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @KEY_GEM, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %108

106:                                              ; preds = %89
  %107 = load i64, i64* @WL1271_TX_SQN_POST_RECOVERY_PADDING_GEM, align 8
  store i64 %107, i64* %8, align 8
  br label %108

108:                                              ; preds = %106, %89
  %109 = load i32, i32* @WL1271_FLAG_RECOVERY_IN_PROGRESS, align 4
  %110 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %111 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %110, i32 0, i32 2
  %112 = call i64 @test_bit(i32 %109, i32* %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %120

114:                                              ; preds = %108
  %115 = load i64, i64* %8, align 8
  %116 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %5, align 8
  %117 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %116, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = add nsw i64 %118, %115
  store i64 %119, i64* %117, align 8
  br label %120

120:                                              ; preds = %114, %108
  br label %121

121:                                              ; preds = %120, %81, %14
  %122 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %123 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %122, i32 0, i32 1
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %123, align 8
  %125 = load i64*, i64** %6, align 8
  %126 = load i64, i64* %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 0
  store i64 0, i64* %128, align 8
  %129 = load i64, i64* @WL12XX_INVALID_LINK_ID, align 8
  %130 = load i64*, i64** %6, align 8
  store i64 %129, i64* %130, align 8
  %131 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %132 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = add nsw i64 %133, -1
  store i64 %134, i64* %132, align 8
  %135 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %136 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = icmp slt i64 %137, 0
  %139 = zext i1 %138 to i32
  %140 = call i32 @WARN_ON_ONCE(i32 %139)
  br label %141

141:                                              ; preds = %121, %13
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @__clear_bit(i64, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @eth_zero_addr(i32) #1

declare dso_local i32 @wl1271_tx_reset_link_queues(%struct.wl1271*, i64) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
