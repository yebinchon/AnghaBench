; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/pcie/extr_pearl_pcie.c_qtnf_dbg_hdp_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/pcie/extr_pearl_pcie.c_qtnf_dbg_hdp_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.qtnf_bus = type { i32 }
%struct.qtnf_pcie_pearl_state = type { i32, %struct.qtnf_pcie_bus_priv }
%struct.qtnf_pcie_bus_priv = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"tx_full_count(%u)\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"tx_done_count(%u)\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"tx_reclaim_done(%u)\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"tx_reclaim_req(%u)\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"tx_bd_r_index(%u)\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"tx_bd_p_index(%u)\0A\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"tx_bd_w_index(%u)\0A\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"tx queue len(%u)\0A\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"rx_bd_r_index(%u)\0A\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"rx_bd_p_index(%u)\0A\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"rx_bd_w_index(%u)\0A\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"rx alloc queue len(%u)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @qtnf_dbg_hdp_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qtnf_dbg_hdp_stats(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.qtnf_bus*, align 8
  %6 = alloca %struct.qtnf_pcie_pearl_state*, align 8
  %7 = alloca %struct.qtnf_pcie_bus_priv*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %9 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.qtnf_bus* @dev_get_drvdata(i32 %10)
  store %struct.qtnf_bus* %11, %struct.qtnf_bus** %5, align 8
  %12 = load %struct.qtnf_bus*, %struct.qtnf_bus** %5, align 8
  %13 = call %struct.qtnf_pcie_pearl_state* @get_bus_priv(%struct.qtnf_bus* %12)
  store %struct.qtnf_pcie_pearl_state* %13, %struct.qtnf_pcie_pearl_state** %6, align 8
  %14 = load %struct.qtnf_pcie_pearl_state*, %struct.qtnf_pcie_pearl_state** %6, align 8
  %15 = getelementptr inbounds %struct.qtnf_pcie_pearl_state, %struct.qtnf_pcie_pearl_state* %14, i32 0, i32 1
  store %struct.qtnf_pcie_bus_priv* %15, %struct.qtnf_pcie_bus_priv** %7, align 8
  %16 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %17 = load %struct.qtnf_pcie_bus_priv*, %struct.qtnf_pcie_bus_priv** %7, align 8
  %18 = getelementptr inbounds %struct.qtnf_pcie_bus_priv, %struct.qtnf_pcie_bus_priv* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @seq_printf(%struct.seq_file* %16, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %22 = load %struct.qtnf_pcie_bus_priv*, %struct.qtnf_pcie_bus_priv** %7, align 8
  %23 = getelementptr inbounds %struct.qtnf_pcie_bus_priv, %struct.qtnf_pcie_bus_priv* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @seq_printf(%struct.seq_file* %21, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  %26 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %27 = load %struct.qtnf_pcie_bus_priv*, %struct.qtnf_pcie_bus_priv** %7, align 8
  %28 = getelementptr inbounds %struct.qtnf_pcie_bus_priv, %struct.qtnf_pcie_bus_priv* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @seq_printf(%struct.seq_file* %26, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %29)
  %31 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %32 = load %struct.qtnf_pcie_bus_priv*, %struct.qtnf_pcie_bus_priv** %7, align 8
  %33 = getelementptr inbounds %struct.qtnf_pcie_bus_priv, %struct.qtnf_pcie_bus_priv* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @seq_printf(%struct.seq_file* %31, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %34)
  %36 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %37 = load %struct.qtnf_pcie_bus_priv*, %struct.qtnf_pcie_bus_priv** %7, align 8
  %38 = getelementptr inbounds %struct.qtnf_pcie_bus_priv, %struct.qtnf_pcie_bus_priv* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @seq_printf(%struct.seq_file* %36, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32 %39)
  %41 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %42 = load %struct.qtnf_pcie_pearl_state*, %struct.qtnf_pcie_pearl_state** %6, align 8
  %43 = getelementptr inbounds %struct.qtnf_pcie_pearl_state, %struct.qtnf_pcie_pearl_state* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @PCIE_HDP_RX0DMA_CNT(i32 %44)
  %46 = call i32 @readl(i32 %45)
  %47 = load %struct.qtnf_pcie_bus_priv*, %struct.qtnf_pcie_bus_priv** %7, align 8
  %48 = getelementptr inbounds %struct.qtnf_pcie_bus_priv, %struct.qtnf_pcie_bus_priv* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 4
  %50 = sub nsw i32 %49, 1
  %51 = and i32 %46, %50
  %52 = call i32 @seq_printf(%struct.seq_file* %41, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32 %51)
  %53 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %54 = load %struct.qtnf_pcie_bus_priv*, %struct.qtnf_pcie_bus_priv** %7, align 8
  %55 = getelementptr inbounds %struct.qtnf_pcie_bus_priv, %struct.qtnf_pcie_bus_priv* %54, i32 0, i32 6
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @seq_printf(%struct.seq_file* %53, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i32 %56)
  %58 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %59 = load %struct.qtnf_pcie_bus_priv*, %struct.qtnf_pcie_bus_priv** %7, align 8
  %60 = getelementptr inbounds %struct.qtnf_pcie_bus_priv, %struct.qtnf_pcie_bus_priv* %59, i32 0, i32 6
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.qtnf_pcie_bus_priv*, %struct.qtnf_pcie_bus_priv** %7, align 8
  %63 = getelementptr inbounds %struct.qtnf_pcie_bus_priv, %struct.qtnf_pcie_bus_priv* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.qtnf_pcie_bus_priv*, %struct.qtnf_pcie_bus_priv** %7, align 8
  %66 = getelementptr inbounds %struct.qtnf_pcie_bus_priv, %struct.qtnf_pcie_bus_priv* %65, i32 0, i32 5
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @CIRC_CNT(i32 %61, i32 %64, i32 %67)
  %69 = call i32 @seq_printf(%struct.seq_file* %58, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i32 %68)
  %70 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %71 = load %struct.qtnf_pcie_bus_priv*, %struct.qtnf_pcie_bus_priv** %7, align 8
  %72 = getelementptr inbounds %struct.qtnf_pcie_bus_priv, %struct.qtnf_pcie_bus_priv* %71, i32 0, i32 7
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @seq_printf(%struct.seq_file* %70, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i32 %73)
  %75 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %76 = load %struct.qtnf_pcie_pearl_state*, %struct.qtnf_pcie_pearl_state** %6, align 8
  %77 = getelementptr inbounds %struct.qtnf_pcie_pearl_state, %struct.qtnf_pcie_pearl_state* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @PCIE_HDP_TX0DMA_CNT(i32 %78)
  %80 = call i32 @readl(i32 %79)
  %81 = load %struct.qtnf_pcie_bus_priv*, %struct.qtnf_pcie_bus_priv** %7, align 8
  %82 = getelementptr inbounds %struct.qtnf_pcie_bus_priv, %struct.qtnf_pcie_bus_priv* %81, i32 0, i32 8
  %83 = load i32, i32* %82, align 4
  %84 = sub nsw i32 %83, 1
  %85 = and i32 %80, %84
  %86 = call i32 @seq_printf(%struct.seq_file* %75, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0), i32 %85)
  %87 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %88 = load %struct.qtnf_pcie_bus_priv*, %struct.qtnf_pcie_bus_priv** %7, align 8
  %89 = getelementptr inbounds %struct.qtnf_pcie_bus_priv, %struct.qtnf_pcie_bus_priv* %88, i32 0, i32 9
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @seq_printf(%struct.seq_file* %87, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0), i32 %90)
  %92 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %93 = load %struct.qtnf_pcie_bus_priv*, %struct.qtnf_pcie_bus_priv** %7, align 8
  %94 = getelementptr inbounds %struct.qtnf_pcie_bus_priv, %struct.qtnf_pcie_bus_priv* %93, i32 0, i32 9
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.qtnf_pcie_bus_priv*, %struct.qtnf_pcie_bus_priv** %7, align 8
  %97 = getelementptr inbounds %struct.qtnf_pcie_bus_priv, %struct.qtnf_pcie_bus_priv* %96, i32 0, i32 7
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.qtnf_pcie_bus_priv*, %struct.qtnf_pcie_bus_priv** %7, align 8
  %100 = getelementptr inbounds %struct.qtnf_pcie_bus_priv, %struct.qtnf_pcie_bus_priv* %99, i32 0, i32 8
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @CIRC_SPACE(i32 %95, i32 %98, i32 %101)
  %103 = call i32 @seq_printf(%struct.seq_file* %92, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0), i32 %102)
  ret i32 0
}

declare dso_local %struct.qtnf_bus* @dev_get_drvdata(i32) #1

declare dso_local %struct.qtnf_pcie_pearl_state* @get_bus_priv(%struct.qtnf_bus*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @PCIE_HDP_RX0DMA_CNT(i32) #1

declare dso_local i32 @CIRC_CNT(i32, i32, i32) #1

declare dso_local i32 @PCIE_HDP_TX0DMA_CNT(i32) #1

declare dso_local i32 @CIRC_SPACE(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
