; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_rf_cfg.c_rtl88eu_phy_rf_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_rf_cfg.c_rtl88eu_phy_rf_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.hal_data_8188e* }
%struct.hal_data_8188e = type { %struct.bb_reg_def* }
%struct.bb_reg_def = type { i32, i32, i32, i32 }

@RF90_PATH_A = common dso_local global i64 0, align 8
@BRFSI_RFENV = common dso_local global i32 0, align 4
@B3WIREADDREAALENGTH = common dso_local global i32 0, align 4
@B3WIREDATALENGTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtl88eu_phy_rf_config(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca %struct.hal_data_8188e*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.bb_reg_def*, align 8
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %7 = load %struct.adapter*, %struct.adapter** %2, align 8
  %8 = getelementptr inbounds %struct.adapter, %struct.adapter* %7, i32 0, i32 0
  %9 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %8, align 8
  store %struct.hal_data_8188e* %9, %struct.hal_data_8188e** %3, align 8
  store i32 0, i32* %4, align 4
  %10 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %3, align 8
  %11 = getelementptr inbounds %struct.hal_data_8188e, %struct.hal_data_8188e* %10, i32 0, i32 0
  %12 = load %struct.bb_reg_def*, %struct.bb_reg_def** %11, align 8
  %13 = load i64, i64* @RF90_PATH_A, align 8
  %14 = getelementptr inbounds %struct.bb_reg_def, %struct.bb_reg_def* %12, i64 %13
  store %struct.bb_reg_def* %14, %struct.bb_reg_def** %6, align 8
  %15 = load %struct.adapter*, %struct.adapter** %2, align 8
  %16 = load %struct.bb_reg_def*, %struct.bb_reg_def** %6, align 8
  %17 = getelementptr inbounds %struct.bb_reg_def, %struct.bb_reg_def* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @BRFSI_RFENV, align 4
  %20 = call i32 @phy_query_bb_reg(%struct.adapter* %15, i32 %18, i32 %19)
  store i32 %20, i32* %4, align 4
  %21 = load %struct.adapter*, %struct.adapter** %2, align 8
  %22 = load %struct.bb_reg_def*, %struct.bb_reg_def** %6, align 8
  %23 = getelementptr inbounds %struct.bb_reg_def, %struct.bb_reg_def* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @BRFSI_RFENV, align 4
  %26 = shl i32 %25, 16
  %27 = call i32 @phy_set_bb_reg(%struct.adapter* %21, i32 %24, i32 %26, i32 1)
  %28 = call i32 @udelay(i32 1)
  %29 = load %struct.adapter*, %struct.adapter** %2, align 8
  %30 = load %struct.bb_reg_def*, %struct.bb_reg_def** %6, align 8
  %31 = getelementptr inbounds %struct.bb_reg_def, %struct.bb_reg_def* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @BRFSI_RFENV, align 4
  %34 = call i32 @phy_set_bb_reg(%struct.adapter* %29, i32 %32, i32 %33, i32 1)
  %35 = call i32 @udelay(i32 1)
  %36 = load %struct.adapter*, %struct.adapter** %2, align 8
  %37 = load %struct.bb_reg_def*, %struct.bb_reg_def** %6, align 8
  %38 = getelementptr inbounds %struct.bb_reg_def, %struct.bb_reg_def* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @B3WIREADDREAALENGTH, align 4
  %41 = call i32 @phy_set_bb_reg(%struct.adapter* %36, i32 %39, i32 %40, i32 0)
  %42 = call i32 @udelay(i32 1)
  %43 = load %struct.adapter*, %struct.adapter** %2, align 8
  %44 = load %struct.bb_reg_def*, %struct.bb_reg_def** %6, align 8
  %45 = getelementptr inbounds %struct.bb_reg_def, %struct.bb_reg_def* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @B3WIREDATALENGTH, align 4
  %48 = call i32 @phy_set_bb_reg(%struct.adapter* %43, i32 %46, i32 %47, i32 0)
  %49 = call i32 @udelay(i32 1)
  %50 = load %struct.adapter*, %struct.adapter** %2, align 8
  %51 = call i32 @rtl88e_phy_config_rf_with_headerfile(%struct.adapter* %50)
  store i32 %51, i32* %5, align 4
  %52 = load %struct.adapter*, %struct.adapter** %2, align 8
  %53 = load %struct.bb_reg_def*, %struct.bb_reg_def** %6, align 8
  %54 = getelementptr inbounds %struct.bb_reg_def, %struct.bb_reg_def* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @BRFSI_RFENV, align 4
  %57 = load i32, i32* %4, align 4
  %58 = call i32 @phy_set_bb_reg(%struct.adapter* %52, i32 %55, i32 %56, i32 %57)
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local i32 @phy_query_bb_reg(%struct.adapter*, i32, i32) #1

declare dso_local i32 @phy_set_bb_reg(%struct.adapter*, i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @rtl88e_phy_config_rf_with_headerfile(%struct.adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
