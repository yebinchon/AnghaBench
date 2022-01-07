; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_qman.c_eqcr_commit_checks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_qman.c_eqcr_commit_checks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qm_eqcr = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@QM_FQID_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qm_eqcr*)* @eqcr_commit_checks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eqcr_commit_checks(%struct.qm_eqcr* %0) #0 {
  %2 = alloca %struct.qm_eqcr*, align 8
  store %struct.qm_eqcr* %0, %struct.qm_eqcr** %2, align 8
  %3 = load %struct.qm_eqcr*, %struct.qm_eqcr** %2, align 8
  %4 = getelementptr inbounds %struct.qm_eqcr, %struct.qm_eqcr* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = call i32 @DPAA_ASSERT(i32 %5)
  %7 = load %struct.qm_eqcr*, %struct.qm_eqcr** %2, align 8
  %8 = getelementptr inbounds %struct.qm_eqcr, %struct.qm_eqcr* %7, i32 0, i32 2
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @be32_to_cpu(i32 %11)
  %13 = load i32, i32* @QM_FQID_MASK, align 4
  %14 = xor i32 %13, -1
  %15 = and i32 %12, %14
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i32 @DPAA_ASSERT(i32 %18)
  %20 = load %struct.qm_eqcr*, %struct.qm_eqcr** %2, align 8
  %21 = getelementptr inbounds %struct.qm_eqcr, %struct.qm_eqcr* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp sge i32 %22, 1
  %24 = zext i1 %23 to i32
  %25 = call i32 @DPAA_ASSERT(i32 %24)
  ret void
}

declare dso_local i32 @DPAA_ASSERT(i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
