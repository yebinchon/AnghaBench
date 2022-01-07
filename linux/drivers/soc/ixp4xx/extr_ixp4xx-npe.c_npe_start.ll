; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/ixp4xx/extr_ixp4xx-npe.c_npe_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/ixp4xx/extr_ixp4xx-npe.c_npe_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.npe = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ECS_PRI_1_CTXT_REG_0 = common dso_local global i32 0, align 4
@ECS_PRI_2_CTXT_REG_0 = common dso_local global i32 0, align 4
@ECS_DBG_CTXT_REG_0 = common dso_local global i32 0, align 4
@CMD_NPE_CLR_PIPE = common dso_local global i32 0, align 4
@CMD_NPE_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.npe*)* @npe_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @npe_start(%struct.npe* %0) #0 {
  %2 = alloca %struct.npe*, align 8
  store %struct.npe* %0, %struct.npe** %2, align 8
  %3 = load %struct.npe*, %struct.npe** %2, align 8
  %4 = load i32, i32* @ECS_PRI_1_CTXT_REG_0, align 4
  %5 = call i32 @npe_clear_active(%struct.npe* %3, i32 %4)
  %6 = load %struct.npe*, %struct.npe** %2, align 8
  %7 = load i32, i32* @ECS_PRI_2_CTXT_REG_0, align 4
  %8 = call i32 @npe_clear_active(%struct.npe* %6, i32 %7)
  %9 = load %struct.npe*, %struct.npe** %2, align 8
  %10 = load i32, i32* @ECS_DBG_CTXT_REG_0, align 4
  %11 = call i32 @npe_clear_active(%struct.npe* %9, i32 %10)
  %12 = load i32, i32* @CMD_NPE_CLR_PIPE, align 4
  %13 = load %struct.npe*, %struct.npe** %2, align 8
  %14 = getelementptr inbounds %struct.npe, %struct.npe* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = call i32 @__raw_writel(i32 %12, i32* %16)
  %18 = load i32, i32* @CMD_NPE_START, align 4
  %19 = load %struct.npe*, %struct.npe** %2, align 8
  %20 = getelementptr inbounds %struct.npe, %struct.npe* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = call i32 @__raw_writel(i32 %18, i32* %22)
  ret void
}

declare dso_local i32 @npe_clear_active(%struct.npe*, i32) #1

declare dso_local i32 @__raw_writel(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
