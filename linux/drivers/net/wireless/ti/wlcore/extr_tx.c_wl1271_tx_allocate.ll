; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_tx.c_wl1271_tx_allocate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_tx.c_wl1271_tx_allocate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i64, i64, i64, %struct.TYPE_2__*, i32, i32*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.wl12xx_vif = type { i32 }
%struct.sk_buff = type { i64 }
%struct.wl1271_tx_hw_descr = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@WL1271_FLAG_REINIT_TX_WDOG = common dso_local global i32 0, align 4
@DEBUG_TX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"tx_allocate: size: %d, blocks: %d, id: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wl1271*, %struct.wl12xx_vif*, %struct.sk_buff*, i64, i64, i64, i32)* @wl1271_tx_allocate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wl1271_tx_allocate(%struct.wl1271* %0, %struct.wl12xx_vif* %1, %struct.sk_buff* %2, i64 %3, i64 %4, i64 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.wl1271*, align 8
  %10 = alloca %struct.wl12xx_vif*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.wl1271_tx_hw_descr*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  store %struct.wl1271* %0, %struct.wl1271** %9, align 8
  store %struct.wl12xx_vif* %1, %struct.wl12xx_vif** %10, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %11, align 8
  store i64 %3, i64* %12, align 8
  store i64 %4, i64* %13, align 8
  store i64 %5, i64* %14, align 8
  store i32 %6, i32* %15, align 4
  %23 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %24 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = add i64 %25, 4
  %27 = load i64, i64* %12, align 8
  %28 = add i64 %26, %27
  store i64 %28, i64* %17, align 8
  %29 = load i32, i32* @EBUSY, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %20, align 4
  %31 = load i64, i64* %13, align 8
  %32 = load i64, i64* %17, align 8
  %33 = add nsw i64 %31, %32
  %34 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %35 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp sgt i64 %33, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %7
  %39 = load i32, i32* @EAGAIN, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %8, align 4
  br label %141

41:                                               ; preds = %7
  %42 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %43 = load i32, i32* %15, align 4
  %44 = call i64 @wlcore_hw_get_spare_blocks(%struct.wl1271* %42, i32 %43)
  store i64 %44, i64* %22, align 8
  %45 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %46 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %47 = call i32 @wl1271_alloc_tx_id(%struct.wl1271* %45, %struct.sk_buff* %46)
  store i32 %47, i32* %19, align 4
  %48 = load i32, i32* %19, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %41
  %51 = load i32, i32* %19, align 4
  store i32 %51, i32* %8, align 4
  br label %141

52:                                               ; preds = %41
  %53 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %54 = load i64, i64* %17, align 8
  %55 = load i64, i64* %22, align 8
  %56 = call i64 @wlcore_hw_calc_tx_blocks(%struct.wl1271* %53, i64 %54, i64 %55)
  store i64 %56, i64* %18, align 8
  %57 = load i64, i64* %18, align 8
  %58 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %59 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp sle i64 %57, %60
  br i1 %61, label %62, label %135

62:                                               ; preds = %52
  %63 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %64 = load i64, i64* %17, align 8
  %65 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %66 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = sub nsw i64 %64, %67
  %69 = call %struct.wl1271_tx_hw_descr* @skb_push(%struct.sk_buff* %63, i64 %68)
  store %struct.wl1271_tx_hw_descr* %69, %struct.wl1271_tx_hw_descr** %16, align 8
  %70 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %71 = load %struct.wl1271_tx_hw_descr*, %struct.wl1271_tx_hw_descr** %16, align 8
  %72 = load i64, i64* %18, align 8
  %73 = load i64, i64* %22, align 8
  %74 = call i32 @wlcore_hw_set_tx_desc_blocks(%struct.wl1271* %70, %struct.wl1271_tx_hw_descr* %71, i64 %72, i64 %73)
  %75 = load i32, i32* %19, align 4
  %76 = load %struct.wl1271_tx_hw_descr*, %struct.wl1271_tx_hw_descr** %16, align 8
  %77 = getelementptr inbounds %struct.wl1271_tx_hw_descr, %struct.wl1271_tx_hw_descr* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 4
  %78 = load i64, i64* %18, align 8
  %79 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %80 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = sub nsw i64 %81, %78
  store i64 %82, i64* %80, align 8
  %83 = load i64, i64* %18, align 8
  %84 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %85 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = add nsw i64 %86, %83
  store i64 %87, i64* %85, align 8
  %88 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %89 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* %18, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %99, label %93

93:                                               ; preds = %62
  %94 = load i32, i32* @WL1271_FLAG_REINIT_TX_WDOG, align 4
  %95 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %96 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %95, i32 0, i32 6
  %97 = call i64 @test_and_clear_bit(i32 %94, i32* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %93, %62
  %100 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %101 = call i32 @wl12xx_rearm_tx_watchdog_locked(%struct.wl1271* %100)
  br label %102

102:                                              ; preds = %99, %93
  %103 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %104 = call i32 @skb_get_queue_mapping(%struct.sk_buff* %103)
  %105 = call i32 @wl1271_tx_get_queue(i32 %104)
  store i32 %105, i32* %21, align 4
  %106 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %107 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %106, i32 0, i32 5
  %108 = load i32*, i32** %107, align 8
  %109 = load i32, i32* %21, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %111, align 4
  %114 = load i64, i64* %14, align 8
  %115 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %116 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %115, i32 0, i32 4
  %117 = load i32, i32* %116, align 8
  %118 = call i64 @test_bit(i64 %114, i32 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %129

120:                                              ; preds = %102
  %121 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %122 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %121, i32 0, i32 3
  %123 = load %struct.TYPE_2__*, %struct.TYPE_2__** %122, align 8
  %124 = load i64, i64* %14, align 8
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %126, align 4
  br label %129

129:                                              ; preds = %120, %102
  store i32 0, i32* %20, align 4
  %130 = load i32, i32* @DEBUG_TX, align 4
  %131 = load i64, i64* %17, align 8
  %132 = load i64, i64* %18, align 8
  %133 = load i32, i32* %19, align 4
  %134 = call i32 @wl1271_debug(i32 %130, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i64 %131, i64 %132, i32 %133)
  br label %139

135:                                              ; preds = %52
  %136 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %137 = load i32, i32* %19, align 4
  %138 = call i32 @wl1271_free_tx_id(%struct.wl1271* %136, i32 %137)
  br label %139

139:                                              ; preds = %135, %129
  %140 = load i32, i32* %20, align 4
  store i32 %140, i32* %8, align 4
  br label %141

141:                                              ; preds = %139, %50, %38
  %142 = load i32, i32* %8, align 4
  ret i32 %142
}

declare dso_local i64 @wlcore_hw_get_spare_blocks(%struct.wl1271*, i32) #1

declare dso_local i32 @wl1271_alloc_tx_id(%struct.wl1271*, %struct.sk_buff*) #1

declare dso_local i64 @wlcore_hw_calc_tx_blocks(%struct.wl1271*, i64, i64) #1

declare dso_local %struct.wl1271_tx_hw_descr* @skb_push(%struct.sk_buff*, i64) #1

declare dso_local i32 @wlcore_hw_set_tx_desc_blocks(%struct.wl1271*, %struct.wl1271_tx_hw_descr*, i64, i64) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @wl12xx_rearm_tx_watchdog_locked(%struct.wl1271*) #1

declare dso_local i32 @wl1271_tx_get_queue(i32) #1

declare dso_local i32 @skb_get_queue_mapping(%struct.sk_buff*) #1

declare dso_local i64 @test_bit(i64, i32) #1

declare dso_local i32 @wl1271_debug(i32, i8*, i64, i64, i32) #1

declare dso_local i32 @wl1271_free_tx_id(%struct.wl1271*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
