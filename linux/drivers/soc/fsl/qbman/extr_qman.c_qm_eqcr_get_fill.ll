; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_qman.c_qm_eqcr_get_fill.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_qman.c_qm_eqcr_get_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qm_portal = type { %struct.qm_eqcr }
%struct.qm_eqcr = type { i32 }

@QM_EQCR_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qm_portal*)* @qm_eqcr_get_fill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qm_eqcr_get_fill(%struct.qm_portal* %0) #0 {
  %2 = alloca %struct.qm_portal*, align 8
  %3 = alloca %struct.qm_eqcr*, align 8
  store %struct.qm_portal* %0, %struct.qm_portal** %2, align 8
  %4 = load %struct.qm_portal*, %struct.qm_portal** %2, align 8
  %5 = getelementptr inbounds %struct.qm_portal, %struct.qm_portal* %4, i32 0, i32 0
  store %struct.qm_eqcr* %5, %struct.qm_eqcr** %3, align 8
  %6 = load i32, i32* @QM_EQCR_SIZE, align 4
  %7 = sub nsw i32 %6, 1
  %8 = load %struct.qm_eqcr*, %struct.qm_eqcr** %3, align 8
  %9 = getelementptr inbounds %struct.qm_eqcr, %struct.qm_eqcr* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = sub nsw i32 %7, %10
  ret i32 %11
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
