; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_qman.c_qm_eqcr_set_ithresh.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_qman.c_qm_eqcr_set_ithresh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qm_portal = type { %struct.qm_eqcr }
%struct.qm_eqcr = type { i32 }

@QM_REG_EQCR_ITR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qm_portal*, i32)* @qm_eqcr_set_ithresh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qm_eqcr_set_ithresh(%struct.qm_portal* %0, i32 %1) #0 {
  %3 = alloca %struct.qm_portal*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.qm_eqcr*, align 8
  store %struct.qm_portal* %0, %struct.qm_portal** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.qm_portal*, %struct.qm_portal** %3, align 8
  %7 = getelementptr inbounds %struct.qm_portal, %struct.qm_portal* %6, i32 0, i32 0
  store %struct.qm_eqcr* %7, %struct.qm_eqcr** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.qm_eqcr*, %struct.qm_eqcr** %5, align 8
  %10 = getelementptr inbounds %struct.qm_eqcr, %struct.qm_eqcr* %9, i32 0, i32 0
  store i32 %8, i32* %10, align 4
  %11 = load %struct.qm_portal*, %struct.qm_portal** %3, align 8
  %12 = load i32, i32* @QM_REG_EQCR_ITR, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @qm_out(%struct.qm_portal* %11, i32 %12, i32 %13)
  ret void
}

declare dso_local i32 @qm_out(%struct.qm_portal*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
