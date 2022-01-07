; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x0/extr_init.c_mt76x0_init_mac_registers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x0/extr_init.c_mt76x0_init_mac_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76x02_dev = type { i32 }

@common_mac_reg_table = common dso_local global i32 0, align 4
@mt76x0_mac_reg_table = common dso_local global i32 0, align 4
@MT_MAC_SYS_CTRL = common dso_local global i32 0, align 4
@MT_EXT_CCA_CFG = common dso_local global i32 0, align 4
@MT_FCE_L2_STUFF = common dso_local global i32 0, align 4
@MT_FCE_L2_STUFF_WR_MPDU_LEN_EN = common dso_local global i32 0, align 4
@MT_WMM_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mt76x02_dev*)* @mt76x0_init_mac_registers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt76x0_init_mac_registers(%struct.mt76x02_dev* %0) #0 {
  %2 = alloca %struct.mt76x02_dev*, align 8
  store %struct.mt76x02_dev* %0, %struct.mt76x02_dev** %2, align 8
  %3 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %4 = load i32, i32* @common_mac_reg_table, align 4
  %5 = call i32 @RANDOM_WRITE(%struct.mt76x02_dev* %3, i32 %4)
  %6 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %7 = load i32, i32* @mt76x0_mac_reg_table, align 4
  %8 = call i32 @RANDOM_WRITE(%struct.mt76x02_dev* %6, i32 %7)
  %9 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %10 = load i32, i32* @MT_MAC_SYS_CTRL, align 4
  %11 = call i32 @mt76_clear(%struct.mt76x02_dev* %9, i32 %10, i32 3)
  %12 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %13 = load i32, i32* @MT_EXT_CCA_CFG, align 4
  %14 = call i32 @mt76_set(%struct.mt76x02_dev* %12, i32 %13, i32 61440)
  %15 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %16 = load i32, i32* @MT_FCE_L2_STUFF, align 4
  %17 = load i32, i32* @MT_FCE_L2_STUFF_WR_MPDU_LEN_EN, align 4
  %18 = call i32 @mt76_clear(%struct.mt76x02_dev* %15, i32 %16, i32 %17)
  %19 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %20 = load i32, i32* @MT_WMM_CTRL, align 4
  %21 = call i32 @mt76_rmw(%struct.mt76x02_dev* %19, i32 %20, i32 1023, i32 513)
  ret void
}

declare dso_local i32 @RANDOM_WRITE(%struct.mt76x02_dev*, i32) #1

declare dso_local i32 @mt76_clear(%struct.mt76x02_dev*, i32, i32) #1

declare dso_local i32 @mt76_set(%struct.mt76x02_dev*, i32, i32) #1

declare dso_local i32 @mt76_rmw(%struct.mt76x02_dev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
