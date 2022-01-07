; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/mvsas/extr_mv_94xx.c_mvs_94xx_phy_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/mvsas/extr_mv_94xx.c_mvs_94xx_phy_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvs_info = type { i32 }

@MVS_PHY_TUNE = common dso_local global i32 0, align 4
@PHYR_SATA_CTL = common dso_local global i32 0, align 4
@PHYEV_RDY_CH = common dso_local global i32 0, align 4
@PHY_RST_HARD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"phy hard reset failed.\0A\00", align 1
@PHY_RST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mvs_info*, i32, i32)* @mvs_94xx_phy_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvs_94xx_phy_reset(%struct.mvs_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mvs_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mvs_info* %0, %struct.mvs_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 5000, i32* %8, align 4
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* @MVS_PHY_TUNE, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %30

12:                                               ; preds = %3
  %13 = load %struct.mvs_info*, %struct.mvs_info** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @PHYR_SATA_CTL, align 4
  %16 = call i32 @mvs_write_port_cfg_addr(%struct.mvs_info* %13, i32 %14, i32 %15)
  %17 = load %struct.mvs_info*, %struct.mvs_info** %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @mvs_read_port_cfg_data(%struct.mvs_info* %17, i32 %18)
  store i32 %19, i32* %7, align 4
  %20 = load %struct.mvs_info*, %struct.mvs_info** %4, align 8
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* %7, align 4
  %23 = or i32 %22, 536870912
  %24 = call i32 @mvs_write_port_cfg_data(%struct.mvs_info* %20, i32 %21, i32 %23)
  %25 = load %struct.mvs_info*, %struct.mvs_info** %4, align 8
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* %7, align 4
  %28 = or i32 %27, 1048576
  %29 = call i32 @mvs_write_port_cfg_data(%struct.mvs_info* %25, i32 %26, i32 %28)
  br label %89

30:                                               ; preds = %3
  %31 = load %struct.mvs_info*, %struct.mvs_info** %4, align 8
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @mvs_read_port_irq_stat(%struct.mvs_info* %31, i32 %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* @PHYEV_RDY_CH, align 4
  %35 = xor i32 %34, -1
  %36 = load i32, i32* %7, align 4
  %37 = and i32 %36, %35
  store i32 %37, i32* %7, align 4
  %38 = load %struct.mvs_info*, %struct.mvs_info** %4, align 8
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @mvs_write_port_irq_stat(%struct.mvs_info* %38, i32 %39, i32 %40)
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %78

44:                                               ; preds = %30
  %45 = load %struct.mvs_info*, %struct.mvs_info** %4, align 8
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @mvs_read_phy_ctl(%struct.mvs_info* %45, i32 %46)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* @PHY_RST_HARD, align 4
  %49 = load i32, i32* %7, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %7, align 4
  %51 = load %struct.mvs_info*, %struct.mvs_info** %4, align 8
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @mvs_write_phy_ctl(%struct.mvs_info* %51, i32 %52, i32 %53)
  br label %55

55:                                               ; preds = %70, %44
  %56 = load %struct.mvs_info*, %struct.mvs_info** %4, align 8
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @mvs_read_phy_ctl(%struct.mvs_info* %56, i32 %57)
  store i32 %58, i32* %7, align 4
  %59 = call i32 @udelay(i32 10)
  %60 = load i32, i32* %8, align 4
  %61 = add nsw i32 %60, -1
  store i32 %61, i32* %8, align 4
  br label %62

62:                                               ; preds = %55
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* @PHY_RST_HARD, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %62
  %68 = load i32, i32* %8, align 4
  %69 = icmp ne i32 %68, 0
  br label %70

70:                                               ; preds = %67, %62
  %71 = phi i1 [ false, %62 ], [ %69, %67 ]
  br i1 %71, label %55, label %72

72:                                               ; preds = %70
  %73 = load i32, i32* %8, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %77, label %75

75:                                               ; preds = %72
  %76 = call i32 @mv_dprintk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %77

77:                                               ; preds = %75, %72
  br label %89

78:                                               ; preds = %30
  %79 = load %struct.mvs_info*, %struct.mvs_info** %4, align 8
  %80 = load i32, i32* %5, align 4
  %81 = call i32 @mvs_read_phy_ctl(%struct.mvs_info* %79, i32 %80)
  store i32 %81, i32* %7, align 4
  %82 = load i32, i32* @PHY_RST, align 4
  %83 = load i32, i32* %7, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %7, align 4
  %85 = load %struct.mvs_info*, %struct.mvs_info** %4, align 8
  %86 = load i32, i32* %5, align 4
  %87 = load i32, i32* %7, align 4
  %88 = call i32 @mvs_write_phy_ctl(%struct.mvs_info* %85, i32 %86, i32 %87)
  br label %89

89:                                               ; preds = %12, %78, %77
  ret void
}

declare dso_local i32 @mvs_write_port_cfg_addr(%struct.mvs_info*, i32, i32) #1

declare dso_local i32 @mvs_read_port_cfg_data(%struct.mvs_info*, i32) #1

declare dso_local i32 @mvs_write_port_cfg_data(%struct.mvs_info*, i32, i32) #1

declare dso_local i32 @mvs_read_port_irq_stat(%struct.mvs_info*, i32) #1

declare dso_local i32 @mvs_write_port_irq_stat(%struct.mvs_info*, i32, i32) #1

declare dso_local i32 @mvs_read_phy_ctl(%struct.mvs_info*, i32) #1

declare dso_local i32 @mvs_write_phy_ctl(%struct.mvs_info*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @mv_dprintk(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
