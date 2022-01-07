; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/pcie/extr_pearl_pcie.c_pearl_alloc_bd_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/pcie/extr_pearl_pcie.c_pearl_alloc_bd_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qtnf_pcie_pearl_state = type { i32, i32, i32, i32, i32, i8*, i8*, i8*, %struct.qtnf_pcie_bus_priv }
%struct.qtnf_pcie_bus_priv = type { i32, i32, i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.qtnf_pearl_tx_bd = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"TX descriptor table: vaddr=0x%p paddr=%pad\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"RX descriptor table: vaddr=0x%p paddr=%pad\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qtnf_pcie_pearl_state*)* @pearl_alloc_bd_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pearl_alloc_bd_table(%struct.qtnf_pcie_pearl_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qtnf_pcie_pearl_state*, align 8
  %4 = alloca %struct.qtnf_pcie_bus_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.qtnf_pcie_pearl_state* %0, %struct.qtnf_pcie_pearl_state** %3, align 8
  %8 = load %struct.qtnf_pcie_pearl_state*, %struct.qtnf_pcie_pearl_state** %3, align 8
  %9 = getelementptr inbounds %struct.qtnf_pcie_pearl_state, %struct.qtnf_pcie_pearl_state* %8, i32 0, i32 8
  store %struct.qtnf_pcie_bus_priv* %9, %struct.qtnf_pcie_bus_priv** %4, align 8
  %10 = load %struct.qtnf_pcie_bus_priv*, %struct.qtnf_pcie_bus_priv** %4, align 8
  %11 = getelementptr inbounds %struct.qtnf_pcie_bus_priv, %struct.qtnf_pcie_bus_priv* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = sext i32 %12 to i64
  %14 = mul i64 %13, 4
  %15 = load %struct.qtnf_pcie_bus_priv*, %struct.qtnf_pcie_bus_priv** %4, align 8
  %16 = getelementptr inbounds %struct.qtnf_pcie_bus_priv, %struct.qtnf_pcie_bus_priv* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = sext i32 %17 to i64
  %19 = mul i64 %18, 4
  %20 = add i64 %14, %19
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %7, align 4
  %22 = load %struct.qtnf_pcie_bus_priv*, %struct.qtnf_pcie_bus_priv** %4, align 8
  %23 = getelementptr inbounds %struct.qtnf_pcie_bus_priv, %struct.qtnf_pcie_bus_priv* %22, i32 0, i32 4
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call i8* @dmam_alloc_coherent(i32* %25, i32 %26, i32* %5, i32 %27)
  store i8* %28, i8** %6, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %1
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %102

34:                                               ; preds = %1
  %35 = load i8*, i8** %6, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @memset(i8* %35, i32 0, i32 %36)
  %38 = load i8*, i8** %6, align 8
  %39 = load %struct.qtnf_pcie_pearl_state*, %struct.qtnf_pcie_pearl_state** %3, align 8
  %40 = getelementptr inbounds %struct.qtnf_pcie_pearl_state, %struct.qtnf_pcie_pearl_state* %39, i32 0, i32 7
  store i8* %38, i8** %40, align 8
  %41 = load i32, i32* %5, align 4
  %42 = load %struct.qtnf_pcie_pearl_state*, %struct.qtnf_pcie_pearl_state** %3, align 8
  %43 = getelementptr inbounds %struct.qtnf_pcie_pearl_state, %struct.qtnf_pcie_pearl_state* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load i32, i32* %7, align 4
  %45 = load %struct.qtnf_pcie_pearl_state*, %struct.qtnf_pcie_pearl_state** %3, align 8
  %46 = getelementptr inbounds %struct.qtnf_pcie_pearl_state, %struct.qtnf_pcie_pearl_state* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load i8*, i8** %6, align 8
  %48 = load %struct.qtnf_pcie_pearl_state*, %struct.qtnf_pcie_pearl_state** %3, align 8
  %49 = getelementptr inbounds %struct.qtnf_pcie_pearl_state, %struct.qtnf_pcie_pearl_state* %48, i32 0, i32 6
  store i8* %47, i8** %49, align 8
  %50 = load i32, i32* %5, align 4
  %51 = load %struct.qtnf_pcie_pearl_state*, %struct.qtnf_pcie_pearl_state** %3, align 8
  %52 = getelementptr inbounds %struct.qtnf_pcie_pearl_state, %struct.qtnf_pcie_pearl_state* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 8
  %53 = load i8*, i8** %6, align 8
  %54 = call i32 @pr_debug(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i8* %53, i32* %5)
  %55 = load %struct.qtnf_pcie_bus_priv*, %struct.qtnf_pcie_bus_priv** %4, align 8
  %56 = getelementptr inbounds %struct.qtnf_pcie_bus_priv, %struct.qtnf_pcie_bus_priv* %55, i32 0, i32 3
  store i64 0, i64* %56, align 8
  %57 = load %struct.qtnf_pcie_bus_priv*, %struct.qtnf_pcie_bus_priv** %4, align 8
  %58 = getelementptr inbounds %struct.qtnf_pcie_bus_priv, %struct.qtnf_pcie_bus_priv* %57, i32 0, i32 2
  store i64 0, i64* %58, align 8
  %59 = load i8*, i8** %6, align 8
  %60 = bitcast i8* %59 to %struct.qtnf_pearl_tx_bd*
  %61 = load %struct.qtnf_pcie_bus_priv*, %struct.qtnf_pcie_bus_priv** %4, align 8
  %62 = getelementptr inbounds %struct.qtnf_pcie_bus_priv, %struct.qtnf_pcie_bus_priv* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.qtnf_pearl_tx_bd, %struct.qtnf_pearl_tx_bd* %60, i64 %64
  %66 = bitcast %struct.qtnf_pearl_tx_bd* %65 to i8*
  store i8* %66, i8** %6, align 8
  %67 = load %struct.qtnf_pcie_bus_priv*, %struct.qtnf_pcie_bus_priv** %4, align 8
  %68 = getelementptr inbounds %struct.qtnf_pcie_bus_priv, %struct.qtnf_pcie_bus_priv* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = sext i32 %69 to i64
  %71 = mul i64 %70, 4
  %72 = load i32, i32* %5, align 4
  %73 = sext i32 %72 to i64
  %74 = add i64 %73, %71
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %5, align 4
  %76 = load i8*, i8** %6, align 8
  %77 = load %struct.qtnf_pcie_pearl_state*, %struct.qtnf_pcie_pearl_state** %3, align 8
  %78 = getelementptr inbounds %struct.qtnf_pcie_pearl_state, %struct.qtnf_pcie_pearl_state* %77, i32 0, i32 5
  store i8* %76, i8** %78, align 8
  %79 = load i32, i32* %5, align 4
  %80 = load %struct.qtnf_pcie_pearl_state*, %struct.qtnf_pcie_pearl_state** %3, align 8
  %81 = getelementptr inbounds %struct.qtnf_pcie_pearl_state, %struct.qtnf_pcie_pearl_state* %80, i32 0, i32 3
  store i32 %79, i32* %81, align 4
  %82 = load i32, i32* %5, align 4
  %83 = call i32 @QTN_HOST_LO32(i32 %82)
  %84 = load %struct.qtnf_pcie_pearl_state*, %struct.qtnf_pcie_pearl_state** %3, align 8
  %85 = getelementptr inbounds %struct.qtnf_pcie_pearl_state, %struct.qtnf_pcie_pearl_state* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @PCIE_HDP_TX_HOST_Q_BASE_L(i32 %86)
  %88 = call i32 @writel(i32 %83, i32 %87)
  %89 = load %struct.qtnf_pcie_bus_priv*, %struct.qtnf_pcie_bus_priv** %4, align 8
  %90 = getelementptr inbounds %struct.qtnf_pcie_bus_priv, %struct.qtnf_pcie_bus_priv* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = sext i32 %91 to i64
  %93 = or i64 %92, 262144
  %94 = trunc i64 %93 to i32
  %95 = load %struct.qtnf_pcie_pearl_state*, %struct.qtnf_pcie_pearl_state** %3, align 8
  %96 = getelementptr inbounds %struct.qtnf_pcie_pearl_state, %struct.qtnf_pcie_pearl_state* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @PCIE_HDP_TX_HOST_Q_SZ_CTRL(i32 %97)
  %99 = call i32 @writel(i32 %94, i32 %98)
  %100 = load i8*, i8** %6, align 8
  %101 = call i32 @pr_debug(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i8* %100, i32* %5)
  store i32 0, i32* %2, align 4
  br label %102

102:                                              ; preds = %34, %31
  %103 = load i32, i32* %2, align 4
  ret i32 %103
}

declare dso_local i8* @dmam_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @pr_debug(i8*, i8*, i32*) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @QTN_HOST_LO32(i32) #1

declare dso_local i32 @PCIE_HDP_TX_HOST_Q_BASE_L(i32) #1

declare dso_local i32 @PCIE_HDP_TX_HOST_Q_SZ_CTRL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
