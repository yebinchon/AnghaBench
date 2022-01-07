; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/mvsas/extr_mv_94xx.c_mvs_94xx_phy_set_link_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/mvsas/extr_mv_94xx.c_mvs_94xx_phy_set_link_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvs_info = type { i32 }
%struct.sas_phy_linkrates = type { i32 }

@SAS_LINK_RATE_1_5_GBPS = common dso_local global i32 0, align 4
@PHY_RST_HARD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mvs_info*, i32, %struct.sas_phy_linkrates*)* @mvs_94xx_phy_set_link_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvs_94xx_phy_set_link_rate(%struct.mvs_info* %0, i32 %1, %struct.sas_phy_linkrates* %2) #0 {
  %4 = alloca %struct.mvs_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sas_phy_linkrates*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mvs_info* %0, %struct.mvs_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.sas_phy_linkrates* %2, %struct.sas_phy_linkrates** %6, align 8
  store i32 0, i32* %7, align 4
  %9 = load %struct.mvs_info*, %struct.mvs_info** %4, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @mvs_read_phy_ctl(%struct.mvs_info* %9, i32 %10)
  store i32 %11, i32* %8, align 4
  %12 = load %struct.sas_phy_linkrates*, %struct.sas_phy_linkrates** %6, align 8
  %13 = getelementptr inbounds %struct.sas_phy_linkrates, %struct.sas_phy_linkrates* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @SAS_LINK_RATE_1_5_GBPS, align 4
  %16 = sub nsw i32 %14, %15
  %17 = shl i32 %16, 12
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %3
  %21 = load i32, i32* %8, align 4
  %22 = and i32 %21, -12289
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %8, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %8, align 4
  br label %26

26:                                               ; preds = %20, %3
  %27 = load %struct.mvs_info*, %struct.mvs_info** %4, align 8
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @mvs_write_phy_ctl(%struct.mvs_info* %27, i32 %28, i32 %29)
  %31 = load %struct.mvs_info*, %struct.mvs_info** %4, align 8
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @PHY_RST_HARD, align 4
  %34 = call i32 @mvs_94xx_phy_reset(%struct.mvs_info* %31, i32 %32, i32 %33)
  ret void
}

declare dso_local i32 @mvs_read_phy_ctl(%struct.mvs_info*, i32) #1

declare dso_local i32 @mvs_write_phy_ctl(%struct.mvs_info*, i32, i32) #1

declare dso_local i32 @mvs_94xx_phy_reset(%struct.mvs_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
