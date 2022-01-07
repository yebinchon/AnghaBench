; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_qman.c_qm_eqcr_cce_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_qman.c_qm_eqcr_cce_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qm_portal = type { %struct.qm_eqcr }
%struct.qm_eqcr = type { i32, i32 }

@QM_CL_EQCR_CI_CENA = common dso_local global i32 0, align 4
@QM_EQCR_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qm_portal*)* @qm_eqcr_cce_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qm_eqcr_cce_update(%struct.qm_portal* %0) #0 {
  %2 = alloca %struct.qm_portal*, align 8
  %3 = alloca %struct.qm_eqcr*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.qm_portal* %0, %struct.qm_portal** %2, align 8
  %6 = load %struct.qm_portal*, %struct.qm_portal** %2, align 8
  %7 = getelementptr inbounds %struct.qm_portal, %struct.qm_portal* %6, i32 0, i32 0
  store %struct.qm_eqcr* %7, %struct.qm_eqcr** %3, align 8
  %8 = load %struct.qm_eqcr*, %struct.qm_eqcr** %3, align 8
  %9 = getelementptr inbounds %struct.qm_eqcr, %struct.qm_eqcr* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %5, align 4
  %11 = load %struct.qm_portal*, %struct.qm_portal** %2, align 8
  %12 = load i32, i32* @QM_CL_EQCR_CI_CENA, align 4
  %13 = call i32 @qm_ce_in(%struct.qm_portal* %11, i32 %12)
  %14 = load i32, i32* @QM_EQCR_SIZE, align 4
  %15 = sub nsw i32 %14, 1
  %16 = and i32 %13, %15
  %17 = load %struct.qm_eqcr*, %struct.qm_eqcr** %3, align 8
  %18 = getelementptr inbounds %struct.qm_eqcr, %struct.qm_eqcr* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load %struct.qm_portal*, %struct.qm_portal** %2, align 8
  %20 = load i32, i32* @QM_CL_EQCR_CI_CENA, align 4
  %21 = call i32 @qm_cl_invalidate(%struct.qm_portal* %19, i32 %20)
  %22 = load i32, i32* @QM_EQCR_SIZE, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.qm_eqcr*, %struct.qm_eqcr** %3, align 8
  %25 = getelementptr inbounds %struct.qm_eqcr, %struct.qm_eqcr* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @dpaa_cyc_diff(i32 %22, i32 %23, i32 %26)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = load %struct.qm_eqcr*, %struct.qm_eqcr** %3, align 8
  %30 = getelementptr inbounds %struct.qm_eqcr, %struct.qm_eqcr* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, %28
  store i32 %32, i32* %30, align 4
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

declare dso_local i32 @qm_ce_in(%struct.qm_portal*, i32) #1

declare dso_local i32 @qm_cl_invalidate(%struct.qm_portal*, i32) #1

declare dso_local i32 @dpaa_cyc_diff(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
