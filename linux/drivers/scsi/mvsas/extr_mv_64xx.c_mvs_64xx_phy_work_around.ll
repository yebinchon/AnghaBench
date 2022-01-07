; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/mvsas/extr_mv_64xx.c_mvs_64xx_phy_work_around.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/mvsas/extr_mv_64xx.c_mvs_64xx_phy_work_around.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvs_info = type { %struct.mvs_phy* }
%struct.mvs_phy = type { i32 }

@VSR_PHY_MODE6 = common dso_local global i32 0, align 4
@PHY_NEG_SPP_PHYS_LINK_RATE_MASK = common dso_local global i32 0, align 4
@PHY_NEG_SPP_PHYS_LINK_RATE_MASK_OFFSET = common dso_local global i32 0, align 4
@SAS_LINK_RATE_1_5_GBPS = common dso_local global i32 0, align 4
@PHY_MODE6_LATECLK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mvs_info*, i32)* @mvs_64xx_phy_work_around to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvs_64xx_phy_work_around(%struct.mvs_info* %0, i32 %1) #0 {
  %3 = alloca %struct.mvs_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.mvs_phy*, align 8
  store %struct.mvs_info* %0, %struct.mvs_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.mvs_info*, %struct.mvs_info** %3, align 8
  %8 = getelementptr inbounds %struct.mvs_info, %struct.mvs_info* %7, i32 0, i32 0
  %9 = load %struct.mvs_phy*, %struct.mvs_phy** %8, align 8
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.mvs_phy, %struct.mvs_phy* %9, i64 %11
  store %struct.mvs_phy* %12, %struct.mvs_phy** %6, align 8
  %13 = load %struct.mvs_info*, %struct.mvs_info** %3, align 8
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @VSR_PHY_MODE6, align 4
  %16 = call i32 @mvs_write_port_vsr_addr(%struct.mvs_info* %13, i32 %14, i32 %15)
  %17 = load %struct.mvs_info*, %struct.mvs_info** %3, align 8
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @mvs_read_port_vsr_data(%struct.mvs_info* %17, i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = load %struct.mvs_phy*, %struct.mvs_phy** %6, align 8
  %21 = getelementptr inbounds %struct.mvs_phy, %struct.mvs_phy* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @PHY_NEG_SPP_PHYS_LINK_RATE_MASK, align 4
  %24 = and i32 %22, %23
  %25 = load i32, i32* @PHY_NEG_SPP_PHYS_LINK_RATE_MASK_OFFSET, align 4
  %26 = ashr i32 %24, %25
  %27 = load i32, i32* @SAS_LINK_RATE_1_5_GBPS, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %2
  %30 = load i32, i32* @PHY_MODE6_LATECLK, align 4
  %31 = xor i32 %30, -1
  %32 = load i32, i32* %5, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %5, align 4
  br label %38

34:                                               ; preds = %2
  %35 = load i32, i32* @PHY_MODE6_LATECLK, align 4
  %36 = load i32, i32* %5, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %5, align 4
  br label %38

38:                                               ; preds = %34, %29
  %39 = load %struct.mvs_info*, %struct.mvs_info** %3, align 8
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @mvs_write_port_vsr_data(%struct.mvs_info* %39, i32 %40, i32 %41)
  ret void
}

declare dso_local i32 @mvs_write_port_vsr_addr(%struct.mvs_info*, i32, i32) #1

declare dso_local i32 @mvs_read_port_vsr_data(%struct.mvs_info*, i32) #1

declare dso_local i32 @mvs_write_port_vsr_data(%struct.mvs_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
