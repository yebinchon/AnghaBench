; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/mvsas/extr_mv_64xx.c_mvs_64xx_phy_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/mvsas/extr_mv_64xx.c_mvs_64xx_phy_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvs_info = type { i32 }

@PHYEV_RDY_CH = common dso_local global i32 0, align 4
@MVS_HARD_RESET = common dso_local global i32 0, align 4
@PHY_RST_HARD = common dso_local global i32 0, align 4
@MVS_SOFT_RESET = common dso_local global i32 0, align 4
@PHY_RST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mvs_info*, i32, i32)* @mvs_64xx_phy_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvs_64xx_phy_reset(%struct.mvs_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mvs_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mvs_info* %0, %struct.mvs_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.mvs_info*, %struct.mvs_info** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @mvs_read_port_irq_stat(%struct.mvs_info* %8, i32 %9)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* @PHYEV_RDY_CH, align 4
  %12 = xor i32 %11, -1
  %13 = load i32, i32* %7, align 4
  %14 = and i32 %13, %12
  store i32 %14, i32* %7, align 4
  %15 = load %struct.mvs_info*, %struct.mvs_info** %4, align 8
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @mvs_write_port_irq_stat(%struct.mvs_info* %15, i32 %16, i32 %17)
  %19 = load %struct.mvs_info*, %struct.mvs_info** %4, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @mvs_read_phy_ctl(%struct.mvs_info* %19, i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @MVS_HARD_RESET, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %3
  %26 = load i32, i32* @PHY_RST_HARD, align 4
  %27 = load i32, i32* %7, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %7, align 4
  br label %38

29:                                               ; preds = %3
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @MVS_SOFT_RESET, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = load i32, i32* @PHY_RST, align 4
  %35 = load i32, i32* %7, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %7, align 4
  br label %37

37:                                               ; preds = %33, %29
  br label %38

38:                                               ; preds = %37, %25
  %39 = load %struct.mvs_info*, %struct.mvs_info** %4, align 8
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @mvs_write_phy_ctl(%struct.mvs_info* %39, i32 %40, i32 %41)
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %56

45:                                               ; preds = %38
  br label %46

46:                                               ; preds = %50, %45
  %47 = load %struct.mvs_info*, %struct.mvs_info** %4, align 8
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @mvs_read_phy_ctl(%struct.mvs_info* %47, i32 %48)
  store i32 %49, i32* %7, align 4
  br label %50

50:                                               ; preds = %46
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* @PHY_RST_HARD, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %46, label %55

55:                                               ; preds = %50
  br label %56

56:                                               ; preds = %55, %38
  ret void
}

declare dso_local i32 @mvs_read_port_irq_stat(%struct.mvs_info*, i32) #1

declare dso_local i32 @mvs_write_port_irq_stat(%struct.mvs_info*, i32, i32) #1

declare dso_local i32 @mvs_read_phy_ctl(%struct.mvs_info*, i32) #1

declare dso_local i32 @mvs_write_phy_ctl(%struct.mvs_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
