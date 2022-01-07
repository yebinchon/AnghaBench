; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/pcie/extr_pearl_pcie.c_qtnf_dbg_irq_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/pcie/extr_pearl_pcie.c_qtnf_dbg_irq_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.qtnf_bus = type { i32 }
%struct.qtnf_pcie_pearl_state = type { i8*, i8*, i8*, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i8* }

@.str = private unnamed_addr constant [20 x i8] c"pcie_irq_count(%u)\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"pcie_irq_tx_count(%u)\0A\00", align 1
@PCIE_HDP_INT_TX_BITS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"pcie_irq_tx_status(%s)\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"EN\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"DIS\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"pcie_irq_rx_count(%u)\0A\00", align 1
@PCIE_HDP_INT_RX_BITS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [24 x i8] c"pcie_irq_rx_status(%s)\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"pcie_irq_uf_count(%u)\0A\00", align 1
@PCIE_HDP_INT_HHBM_UF = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [29 x i8] c"pcie_irq_hhbm_uf_status(%s)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @qtnf_dbg_irq_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qtnf_dbg_irq_stats(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.qtnf_bus*, align 8
  %6 = alloca %struct.qtnf_pcie_pearl_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %10 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.qtnf_bus* @dev_get_drvdata(i32 %11)
  store %struct.qtnf_bus* %12, %struct.qtnf_bus** %5, align 8
  %13 = load %struct.qtnf_bus*, %struct.qtnf_bus** %5, align 8
  %14 = call %struct.qtnf_pcie_pearl_state* @get_bus_priv(%struct.qtnf_bus* %13)
  store %struct.qtnf_pcie_pearl_state* %14, %struct.qtnf_pcie_pearl_state** %6, align 8
  %15 = load %struct.qtnf_pcie_pearl_state*, %struct.qtnf_pcie_pearl_state** %6, align 8
  %16 = getelementptr inbounds %struct.qtnf_pcie_pearl_state, %struct.qtnf_pcie_pearl_state* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @PCIE_HDP_INT_EN(i32 %17)
  %19 = call i32 @readl(i32 %18)
  store i32 %19, i32* %7, align 4
  %20 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %21 = load %struct.qtnf_pcie_pearl_state*, %struct.qtnf_pcie_pearl_state** %6, align 8
  %22 = getelementptr inbounds %struct.qtnf_pcie_pearl_state, %struct.qtnf_pcie_pearl_state* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = call i32 @seq_printf(%struct.seq_file* %20, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %24)
  %26 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %27 = load %struct.qtnf_pcie_pearl_state*, %struct.qtnf_pcie_pearl_state** %6, align 8
  %28 = getelementptr inbounds %struct.qtnf_pcie_pearl_state, %struct.qtnf_pcie_pearl_state* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 @seq_printf(%struct.seq_file* %26, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* %29)
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @PCIE_HDP_INT_TX_BITS, align 4
  %33 = and i32 %31, %32
  store i32 %33, i32* %8, align 4
  %34 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @PCIE_HDP_INT_TX_BITS, align 4
  %37 = icmp eq i32 %35, %36
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)
  %40 = call i32 @seq_printf(%struct.seq_file* %34, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i8* %39)
  %41 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %42 = load %struct.qtnf_pcie_pearl_state*, %struct.qtnf_pcie_pearl_state** %6, align 8
  %43 = getelementptr inbounds %struct.qtnf_pcie_pearl_state, %struct.qtnf_pcie_pearl_state* %42, i32 0, i32 1
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 @seq_printf(%struct.seq_file* %41, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i8* %44)
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @PCIE_HDP_INT_RX_BITS, align 4
  %48 = and i32 %46, %47
  store i32 %48, i32* %8, align 4
  %49 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* @PCIE_HDP_INT_RX_BITS, align 4
  %52 = icmp eq i32 %50, %51
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)
  %55 = call i32 @seq_printf(%struct.seq_file* %49, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i8* %54)
  %56 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %57 = load %struct.qtnf_pcie_pearl_state*, %struct.qtnf_pcie_pearl_state** %6, align 8
  %58 = getelementptr inbounds %struct.qtnf_pcie_pearl_state, %struct.qtnf_pcie_pearl_state* %57, i32 0, i32 2
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 @seq_printf(%struct.seq_file* %56, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i8* %59)
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* @PCIE_HDP_INT_HHBM_UF, align 4
  %63 = and i32 %61, %62
  store i32 %63, i32* %8, align 4
  %64 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* @PCIE_HDP_INT_HHBM_UF, align 4
  %67 = icmp eq i32 %65, %66
  %68 = zext i1 %67 to i64
  %69 = select i1 %67, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)
  %70 = call i32 @seq_printf(%struct.seq_file* %64, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), i8* %69)
  ret i32 0
}

declare dso_local %struct.qtnf_bus* @dev_get_drvdata(i32) #1

declare dso_local %struct.qtnf_pcie_pearl_state* @get_bus_priv(%struct.qtnf_bus*) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @PCIE_HDP_INT_EN(i32) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
