; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x2/extr_phy.c_mt76x2_configure_tx_delay.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x2/extr_phy.c_mt76x2_configure_tx_delay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76x02_dev = type { i32 }

@MT_TX_SW_CFG0 = common dso_local global i32 0, align 4
@MT_TX_SW_CFG1 = common dso_local global i32 0, align 4
@MT_XIFS_TIME_CFG = common dso_local global i32 0, align 4
@MT_XIFS_TIME_CFG_OFDM_SIFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mt76x2_configure_tx_delay(%struct.mt76x02_dev* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.mt76x02_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mt76x02_dev* %0, %struct.mt76x02_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %9 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call i64 @mt76x02_ext_pa_enabled(%struct.mt76x02_dev* %9, i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %3
  %14 = load i64, i64* %6, align 8
  %15 = icmp ne i64 %14, 0
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, i32 723969, i32 1052929
  store i32 %17, i32* %7, align 4
  store i32 70676, i32* %8, align 4
  br label %23

18:                                               ; preds = %3
  %19 = load i64, i64* %6, align 8
  %20 = icmp ne i64 %19, 0
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i32 723713, i32 1052673
  store i32 %22, i32* %7, align 4
  store i32 136212, i32* %8, align 4
  br label %23

23:                                               ; preds = %18, %13
  %24 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %25 = load i32, i32* @MT_TX_SW_CFG0, align 4
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @mt76_wr(%struct.mt76x02_dev* %24, i32 %25, i32 %26)
  %28 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %29 = load i32, i32* @MT_TX_SW_CFG1, align 4
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @mt76_wr(%struct.mt76x02_dev* %28, i32 %29, i32 %30)
  %32 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %33 = load i32, i32* @MT_XIFS_TIME_CFG, align 4
  %34 = load i32, i32* @MT_XIFS_TIME_CFG_OFDM_SIFS, align 4
  %35 = call i32 @mt76_rmw_field(%struct.mt76x02_dev* %32, i32 %33, i32 %34, i32 15)
  ret void
}

declare dso_local i64 @mt76x02_ext_pa_enabled(%struct.mt76x02_dev*, i32) #1

declare dso_local i32 @mt76_wr(%struct.mt76x02_dev*, i32, i32) #1

declare dso_local i32 @mt76_rmw_field(%struct.mt76x02_dev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
