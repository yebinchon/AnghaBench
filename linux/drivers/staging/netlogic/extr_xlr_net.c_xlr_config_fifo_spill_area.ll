; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/netlogic/extr_xlr_net.c_xlr_config_fifo_spill_area.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/netlogic/extr_xlr_net.c_xlr_config_fifo_spill_area.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xlr_net_priv = type { i8*, i8*, i8*, i8*, i8*, i8* }

@R_REG_FRIN_SPILL_MEM_START_0 = common dso_local global i32 0, align 4
@R_REG_FRIN_SPILL_MEM_START_1 = common dso_local global i32 0, align 4
@R_REG_FRIN_SPILL_MEM_SIZE = common dso_local global i32 0, align 4
@MAX_FRIN_SPILL = common dso_local global i32 0, align 4
@R_FROUT_SPILL_MEM_START_0 = common dso_local global i32 0, align 4
@R_FROUT_SPILL_MEM_START_1 = common dso_local global i32 0, align 4
@R_FROUT_SPILL_MEM_SIZE = common dso_local global i32 0, align 4
@MAX_FROUT_SPILL = common dso_local global i32 0, align 4
@R_CLASS0_SPILL_MEM_START_0 = common dso_local global i32 0, align 4
@R_CLASS0_SPILL_MEM_START_1 = common dso_local global i32 0, align 4
@R_CLASS0_SPILL_MEM_SIZE = common dso_local global i32 0, align 4
@MAX_CLASS_0_SPILL = common dso_local global i32 0, align 4
@R_CLASS1_SPILL_MEM_START_0 = common dso_local global i32 0, align 4
@R_CLASS1_SPILL_MEM_START_1 = common dso_local global i32 0, align 4
@R_CLASS1_SPILL_MEM_SIZE = common dso_local global i32 0, align 4
@MAX_CLASS_1_SPILL = common dso_local global i32 0, align 4
@R_CLASS2_SPILL_MEM_START_0 = common dso_local global i32 0, align 4
@R_CLASS2_SPILL_MEM_START_1 = common dso_local global i32 0, align 4
@R_CLASS2_SPILL_MEM_SIZE = common dso_local global i32 0, align 4
@MAX_CLASS_2_SPILL = common dso_local global i32 0, align 4
@R_CLASS3_SPILL_MEM_START_0 = common dso_local global i32 0, align 4
@R_CLASS3_SPILL_MEM_START_1 = common dso_local global i32 0, align 4
@R_CLASS3_SPILL_MEM_SIZE = common dso_local global i32 0, align 4
@MAX_CLASS_3_SPILL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xlr_net_priv*)* @xlr_config_fifo_spill_area to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xlr_config_fifo_spill_area(%struct.xlr_net_priv* %0) #0 {
  %2 = alloca %struct.xlr_net_priv*, align 8
  store %struct.xlr_net_priv* %0, %struct.xlr_net_priv** %2, align 8
  %3 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %2, align 8
  %4 = load i32, i32* @R_REG_FRIN_SPILL_MEM_START_0, align 4
  %5 = load i32, i32* @R_REG_FRIN_SPILL_MEM_START_1, align 4
  %6 = load i32, i32* @R_REG_FRIN_SPILL_MEM_SIZE, align 4
  %7 = load i32, i32* @MAX_FRIN_SPILL, align 4
  %8 = sext i32 %7 to i64
  %9 = mul i64 %8, 4
  %10 = trunc i64 %9 to i32
  %11 = call i8* @xlr_config_spill(%struct.xlr_net_priv* %3, i32 %4, i32 %5, i32 %6, i32 %10)
  %12 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %2, align 8
  %13 = getelementptr inbounds %struct.xlr_net_priv, %struct.xlr_net_priv* %12, i32 0, i32 5
  store i8* %11, i8** %13, align 8
  %14 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %2, align 8
  %15 = load i32, i32* @R_FROUT_SPILL_MEM_START_0, align 4
  %16 = load i32, i32* @R_FROUT_SPILL_MEM_START_1, align 4
  %17 = load i32, i32* @R_FROUT_SPILL_MEM_SIZE, align 4
  %18 = load i32, i32* @MAX_FROUT_SPILL, align 4
  %19 = sext i32 %18 to i64
  %20 = mul i64 %19, 4
  %21 = trunc i64 %20 to i32
  %22 = call i8* @xlr_config_spill(%struct.xlr_net_priv* %14, i32 %15, i32 %16, i32 %17, i32 %21)
  %23 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %2, align 8
  %24 = getelementptr inbounds %struct.xlr_net_priv, %struct.xlr_net_priv* %23, i32 0, i32 4
  store i8* %22, i8** %24, align 8
  %25 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %2, align 8
  %26 = load i32, i32* @R_CLASS0_SPILL_MEM_START_0, align 4
  %27 = load i32, i32* @R_CLASS0_SPILL_MEM_START_1, align 4
  %28 = load i32, i32* @R_CLASS0_SPILL_MEM_SIZE, align 4
  %29 = load i32, i32* @MAX_CLASS_0_SPILL, align 4
  %30 = sext i32 %29 to i64
  %31 = mul i64 %30, 4
  %32 = trunc i64 %31 to i32
  %33 = call i8* @xlr_config_spill(%struct.xlr_net_priv* %25, i32 %26, i32 %27, i32 %28, i32 %32)
  %34 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %2, align 8
  %35 = getelementptr inbounds %struct.xlr_net_priv, %struct.xlr_net_priv* %34, i32 0, i32 3
  store i8* %33, i8** %35, align 8
  %36 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %2, align 8
  %37 = load i32, i32* @R_CLASS1_SPILL_MEM_START_0, align 4
  %38 = load i32, i32* @R_CLASS1_SPILL_MEM_START_1, align 4
  %39 = load i32, i32* @R_CLASS1_SPILL_MEM_SIZE, align 4
  %40 = load i32, i32* @MAX_CLASS_1_SPILL, align 4
  %41 = sext i32 %40 to i64
  %42 = mul i64 %41, 4
  %43 = trunc i64 %42 to i32
  %44 = call i8* @xlr_config_spill(%struct.xlr_net_priv* %36, i32 %37, i32 %38, i32 %39, i32 %43)
  %45 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %2, align 8
  %46 = getelementptr inbounds %struct.xlr_net_priv, %struct.xlr_net_priv* %45, i32 0, i32 2
  store i8* %44, i8** %46, align 8
  %47 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %2, align 8
  %48 = load i32, i32* @R_CLASS2_SPILL_MEM_START_0, align 4
  %49 = load i32, i32* @R_CLASS2_SPILL_MEM_START_1, align 4
  %50 = load i32, i32* @R_CLASS2_SPILL_MEM_SIZE, align 4
  %51 = load i32, i32* @MAX_CLASS_2_SPILL, align 4
  %52 = sext i32 %51 to i64
  %53 = mul i64 %52, 4
  %54 = trunc i64 %53 to i32
  %55 = call i8* @xlr_config_spill(%struct.xlr_net_priv* %47, i32 %48, i32 %49, i32 %50, i32 %54)
  %56 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %2, align 8
  %57 = getelementptr inbounds %struct.xlr_net_priv, %struct.xlr_net_priv* %56, i32 0, i32 1
  store i8* %55, i8** %57, align 8
  %58 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %2, align 8
  %59 = load i32, i32* @R_CLASS3_SPILL_MEM_START_0, align 4
  %60 = load i32, i32* @R_CLASS3_SPILL_MEM_START_1, align 4
  %61 = load i32, i32* @R_CLASS3_SPILL_MEM_SIZE, align 4
  %62 = load i32, i32* @MAX_CLASS_3_SPILL, align 4
  %63 = sext i32 %62 to i64
  %64 = mul i64 %63, 4
  %65 = trunc i64 %64 to i32
  %66 = call i8* @xlr_config_spill(%struct.xlr_net_priv* %58, i32 %59, i32 %60, i32 %61, i32 %65)
  %67 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %2, align 8
  %68 = getelementptr inbounds %struct.xlr_net_priv, %struct.xlr_net_priv* %67, i32 0, i32 0
  store i8* %66, i8** %68, align 8
  ret void
}

declare dso_local i8* @xlr_config_spill(%struct.xlr_net_priv*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
