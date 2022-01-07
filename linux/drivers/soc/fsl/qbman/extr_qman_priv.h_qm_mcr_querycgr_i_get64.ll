; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_qman_priv.h_qm_mcr_querycgr_i_get64.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_qman_priv.h_qm_mcr_querycgr_i_get64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qm_mcr_querycgr = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qm_mcr_querycgr*)* @qm_mcr_querycgr_i_get64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qm_mcr_querycgr_i_get64(%struct.qm_mcr_querycgr* %0) #0 {
  %2 = alloca %struct.qm_mcr_querycgr*, align 8
  store %struct.qm_mcr_querycgr* %0, %struct.qm_mcr_querycgr** %2, align 8
  %3 = load %struct.qm_mcr_querycgr*, %struct.qm_mcr_querycgr** %2, align 8
  %4 = getelementptr inbounds %struct.qm_mcr_querycgr, %struct.qm_mcr_querycgr* %3, i32 0, i32 1
  %5 = load i64, i64* %4, align 8
  %6 = trunc i64 %5 to i32
  %7 = shl i32 %6, 32
  %8 = load %struct.qm_mcr_querycgr*, %struct.qm_mcr_querycgr** %2, align 8
  %9 = getelementptr inbounds %struct.qm_mcr_querycgr, %struct.qm_mcr_querycgr* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @be32_to_cpu(i32 %10)
  %12 = or i32 %7, %11
  ret i32 %12
}

declare dso_local i32 @be32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
