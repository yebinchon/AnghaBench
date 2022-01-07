; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/mvsas/extr_mv_94xx.c_set_phy_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/mvsas/extr_mv_94xx.c_set_phy_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvs_info = type { i32 }
%union.reg_phy_cfg = type { i64, [32 x i8] }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@VSR_PHY_MODE2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mvs_info*, i32, i32)* @set_phy_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_phy_rate(%struct.mvs_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mvs_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %union.reg_phy_cfg, align 8
  %8 = alloca %union.reg_phy_cfg, align 8
  store %struct.mvs_info* %0, %struct.mvs_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.mvs_info*, %struct.mvs_info** %4, align 8
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @VSR_PHY_MODE2, align 4
  %12 = call i32 @mvs_write_port_vsr_addr(%struct.mvs_info* %9, i32 %10, i32 %11)
  %13 = load %struct.mvs_info*, %struct.mvs_info** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i64 @mvs_read_port_vsr_data(%struct.mvs_info* %13, i32 %14)
  %16 = bitcast %union.reg_phy_cfg* %8 to i64*
  store i64 %15, i64* %16, align 8
  %17 = bitcast %union.reg_phy_cfg* %7 to i64*
  store i64 0, i64* %17, align 8
  %18 = bitcast %union.reg_phy_cfg* %8 to %struct.TYPE_2__*
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 8
  %20 = load i32, i32* %19, align 8
  %21 = bitcast %union.reg_phy_cfg* %7 to %struct.TYPE_2__*
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 8
  store i32 %20, i32* %22, align 8
  %23 = bitcast %union.reg_phy_cfg* %7 to %struct.TYPE_2__*
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i32 1, i32* %24, align 8
  %25 = bitcast %union.reg_phy_cfg* %7 to %struct.TYPE_2__*
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  store i32 1, i32* %26, align 4
  %27 = bitcast %union.reg_phy_cfg* %7 to %struct.TYPE_2__*
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 2
  store i32 1, i32* %28, align 8
  %29 = load i32, i32* %6, align 4
  switch i32 %29, label %47 [
    i32 0, label %30
    i32 1, label %39
    i32 2, label %46
  ]

30:                                               ; preds = %3
  %31 = bitcast %union.reg_phy_cfg* %7 to %struct.TYPE_2__*
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 3
  store i32 1, i32* %32, align 4
  %33 = bitcast %union.reg_phy_cfg* %7 to %struct.TYPE_2__*
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 4
  store i32 0, i32* %34, align 8
  %35 = bitcast %union.reg_phy_cfg* %7 to %struct.TYPE_2__*
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 5
  store i32 1, i32* %36, align 4
  %37 = bitcast %union.reg_phy_cfg* %7 to %struct.TYPE_2__*
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 6
  store i32 48, i32* %38, align 8
  br label %58

39:                                               ; preds = %3
  %40 = bitcast %union.reg_phy_cfg* %7 to %struct.TYPE_2__*
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 3
  store i32 3, i32* %41, align 4
  %42 = bitcast %union.reg_phy_cfg* %7 to %struct.TYPE_2__*
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 6
  store i32 60, i32* %43, align 8
  %44 = bitcast %union.reg_phy_cfg* %7 to %struct.TYPE_2__*
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 7
  store i32 8, i32* %45, align 4
  br label %58

46:                                               ; preds = %3
  br label %47

47:                                               ; preds = %3, %46
  %48 = bitcast %union.reg_phy_cfg* %7 to %struct.TYPE_2__*
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 3
  store i32 7, i32* %49, align 4
  %50 = bitcast %union.reg_phy_cfg* %7 to %struct.TYPE_2__*
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 4
  store i32 1, i32* %51, align 8
  %52 = bitcast %union.reg_phy_cfg* %7 to %struct.TYPE_2__*
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 5
  store i32 1, i32* %53, align 4
  %54 = bitcast %union.reg_phy_cfg* %7 to %struct.TYPE_2__*
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 6
  store i32 63, i32* %55, align 8
  %56 = bitcast %union.reg_phy_cfg* %7 to %struct.TYPE_2__*
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 7
  store i32 9, i32* %57, align 4
  br label %58

58:                                               ; preds = %47, %39, %30
  %59 = load %struct.mvs_info*, %struct.mvs_info** %4, align 8
  %60 = load i32, i32* %5, align 4
  %61 = bitcast %union.reg_phy_cfg* %7 to i64*
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @mvs_write_port_vsr_data(%struct.mvs_info* %59, i32 %60, i64 %62)
  ret void
}

declare dso_local i32 @mvs_write_port_vsr_addr(%struct.mvs_info*, i32, i32) #1

declare dso_local i64 @mvs_read_port_vsr_data(%struct.mvs_info*, i32) #1

declare dso_local i32 @mvs_write_port_vsr_data(%struct.mvs_info*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
