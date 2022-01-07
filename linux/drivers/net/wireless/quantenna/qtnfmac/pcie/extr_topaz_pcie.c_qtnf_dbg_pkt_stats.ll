; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/pcie/extr_topaz_pcie.c_qtnf_dbg_pkt_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/pcie/extr_topaz_pcie.c_qtnf_dbg_pkt_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.qtnf_bus = type { i32 }
%struct.qtnf_pcie_topaz_state = type { i32, %struct.qtnf_pcie_bus_priv }
%struct.qtnf_pcie_bus_priv = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"tx_full_count(%u)\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"tx_done_count(%u)\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"tx_reclaim_done(%u)\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"tx_reclaim_req(%u)\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"tx_eapol(%u)\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"tx_bd_r_index(%u)\0A\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"tx_done_index(%u)\0A\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"tx_bd_w_index(%u)\0A\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"tx host queue len(%u)\0A\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"tx reclaim queue len(%u)\0A\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"tx card queue len(%u)\0A\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"rx_bd_r_index(%u)\0A\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"rx_bd_w_index(%u)\0A\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"rx alloc queue len(%u)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @qtnf_dbg_pkt_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qtnf_dbg_pkt_stats(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.qtnf_bus*, align 8
  %6 = alloca %struct.qtnf_pcie_topaz_state*, align 8
  %7 = alloca %struct.qtnf_pcie_bus_priv*, align 8
  %8 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %10 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.qtnf_bus* @dev_get_drvdata(i32 %11)
  store %struct.qtnf_bus* %12, %struct.qtnf_bus** %5, align 8
  %13 = load %struct.qtnf_bus*, %struct.qtnf_bus** %5, align 8
  %14 = call %struct.qtnf_pcie_topaz_state* @get_bus_priv(%struct.qtnf_bus* %13)
  store %struct.qtnf_pcie_topaz_state* %14, %struct.qtnf_pcie_topaz_state** %6, align 8
  %15 = load %struct.qtnf_pcie_topaz_state*, %struct.qtnf_pcie_topaz_state** %6, align 8
  %16 = getelementptr inbounds %struct.qtnf_pcie_topaz_state, %struct.qtnf_pcie_topaz_state* %15, i32 0, i32 1
  store %struct.qtnf_pcie_bus_priv* %16, %struct.qtnf_pcie_bus_priv** %7, align 8
  %17 = load %struct.qtnf_pcie_topaz_state*, %struct.qtnf_pcie_topaz_state** %6, align 8
  %18 = getelementptr inbounds %struct.qtnf_pcie_topaz_state, %struct.qtnf_pcie_topaz_state* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @readl(i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %22 = load %struct.qtnf_pcie_bus_priv*, %struct.qtnf_pcie_bus_priv** %7, align 8
  %23 = getelementptr inbounds %struct.qtnf_pcie_bus_priv, %struct.qtnf_pcie_bus_priv* %22, i32 0, i32 10
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @seq_printf(%struct.seq_file* %21, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %27 = load %struct.qtnf_pcie_bus_priv*, %struct.qtnf_pcie_bus_priv** %7, align 8
  %28 = getelementptr inbounds %struct.qtnf_pcie_bus_priv, %struct.qtnf_pcie_bus_priv* %27, i32 0, i32 9
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @seq_printf(%struct.seq_file* %26, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  %31 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %32 = load %struct.qtnf_pcie_bus_priv*, %struct.qtnf_pcie_bus_priv** %7, align 8
  %33 = getelementptr inbounds %struct.qtnf_pcie_bus_priv, %struct.qtnf_pcie_bus_priv* %32, i32 0, i32 8
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @seq_printf(%struct.seq_file* %31, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %34)
  %36 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %37 = load %struct.qtnf_pcie_bus_priv*, %struct.qtnf_pcie_bus_priv** %7, align 8
  %38 = getelementptr inbounds %struct.qtnf_pcie_bus_priv, %struct.qtnf_pcie_bus_priv* %37, i32 0, i32 7
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @seq_printf(%struct.seq_file* %36, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %39)
  %41 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %42 = load %struct.qtnf_pcie_bus_priv*, %struct.qtnf_pcie_bus_priv** %7, align 8
  %43 = getelementptr inbounds %struct.qtnf_pcie_bus_priv, %struct.qtnf_pcie_bus_priv* %42, i32 0, i32 6
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @seq_printf(%struct.seq_file* %41, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %44)
  %46 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %47 = load %struct.qtnf_pcie_bus_priv*, %struct.qtnf_pcie_bus_priv** %7, align 8
  %48 = getelementptr inbounds %struct.qtnf_pcie_bus_priv, %struct.qtnf_pcie_bus_priv* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @seq_printf(%struct.seq_file* %46, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32 %49)
  %51 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @seq_printf(%struct.seq_file* %51, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i32 %52)
  %54 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %55 = load %struct.qtnf_pcie_bus_priv*, %struct.qtnf_pcie_bus_priv** %7, align 8
  %56 = getelementptr inbounds %struct.qtnf_pcie_bus_priv, %struct.qtnf_pcie_bus_priv* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @seq_printf(%struct.seq_file* %54, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i32 %57)
  %59 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %60 = load %struct.qtnf_pcie_bus_priv*, %struct.qtnf_pcie_bus_priv** %7, align 8
  %61 = getelementptr inbounds %struct.qtnf_pcie_bus_priv, %struct.qtnf_pcie_bus_priv* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.qtnf_pcie_bus_priv*, %struct.qtnf_pcie_bus_priv** %7, align 8
  %64 = getelementptr inbounds %struct.qtnf_pcie_bus_priv, %struct.qtnf_pcie_bus_priv* %63, i32 0, i32 5
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.qtnf_pcie_bus_priv*, %struct.qtnf_pcie_bus_priv** %7, align 8
  %67 = getelementptr inbounds %struct.qtnf_pcie_bus_priv, %struct.qtnf_pcie_bus_priv* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @CIRC_CNT(i32 %62, i32 %65, i32 %68)
  %70 = call i32 @seq_printf(%struct.seq_file* %59, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), i32 %69)
  %71 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %72 = load i32, i32* %8, align 4
  %73 = load %struct.qtnf_pcie_bus_priv*, %struct.qtnf_pcie_bus_priv** %7, align 8
  %74 = getelementptr inbounds %struct.qtnf_pcie_bus_priv, %struct.qtnf_pcie_bus_priv* %73, i32 0, i32 5
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.qtnf_pcie_bus_priv*, %struct.qtnf_pcie_bus_priv** %7, align 8
  %77 = getelementptr inbounds %struct.qtnf_pcie_bus_priv, %struct.qtnf_pcie_bus_priv* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @CIRC_CNT(i32 %72, i32 %75, i32 %78)
  %80 = call i32 @seq_printf(%struct.seq_file* %71, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0), i32 %79)
  %81 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %82 = load %struct.qtnf_pcie_bus_priv*, %struct.qtnf_pcie_bus_priv** %7, align 8
  %83 = getelementptr inbounds %struct.qtnf_pcie_bus_priv, %struct.qtnf_pcie_bus_priv* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %8, align 4
  %86 = load %struct.qtnf_pcie_bus_priv*, %struct.qtnf_pcie_bus_priv** %7, align 8
  %87 = getelementptr inbounds %struct.qtnf_pcie_bus_priv, %struct.qtnf_pcie_bus_priv* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @CIRC_CNT(i32 %84, i32 %85, i32 %88)
  %90 = call i32 @seq_printf(%struct.seq_file* %81, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0), i32 %89)
  %91 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %92 = load %struct.qtnf_pcie_bus_priv*, %struct.qtnf_pcie_bus_priv** %7, align 8
  %93 = getelementptr inbounds %struct.qtnf_pcie_bus_priv, %struct.qtnf_pcie_bus_priv* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @seq_printf(%struct.seq_file* %91, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0), i32 %94)
  %96 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %97 = load %struct.qtnf_pcie_bus_priv*, %struct.qtnf_pcie_bus_priv** %7, align 8
  %98 = getelementptr inbounds %struct.qtnf_pcie_bus_priv, %struct.qtnf_pcie_bus_priv* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @seq_printf(%struct.seq_file* %96, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0), i32 %99)
  %101 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %102 = load %struct.qtnf_pcie_bus_priv*, %struct.qtnf_pcie_bus_priv** %7, align 8
  %103 = getelementptr inbounds %struct.qtnf_pcie_bus_priv, %struct.qtnf_pcie_bus_priv* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.qtnf_pcie_bus_priv*, %struct.qtnf_pcie_bus_priv** %7, align 8
  %106 = getelementptr inbounds %struct.qtnf_pcie_bus_priv, %struct.qtnf_pcie_bus_priv* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.qtnf_pcie_bus_priv*, %struct.qtnf_pcie_bus_priv** %7, align 8
  %109 = getelementptr inbounds %struct.qtnf_pcie_bus_priv, %struct.qtnf_pcie_bus_priv* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @CIRC_SPACE(i32 %104, i32 %107, i32 %110)
  %112 = call i32 @seq_printf(%struct.seq_file* %101, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0), i32 %111)
  ret i32 0
}

declare dso_local %struct.qtnf_bus* @dev_get_drvdata(i32) #1

declare dso_local %struct.qtnf_pcie_topaz_state* @get_bus_priv(%struct.qtnf_bus*) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32) #1

declare dso_local i32 @CIRC_CNT(i32, i32, i32) #1

declare dso_local i32 @CIRC_SPACE(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
