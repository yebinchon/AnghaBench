; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_qman.c_qman_destroy_portal.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_qman.c_qman_destroy_portal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qman_portal = type { %struct.qm_portal_config*, i32, i32 }
%struct.qm_portal_config = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qman_portal*)* @qman_destroy_portal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qman_destroy_portal(%struct.qman_portal* %0) #0 {
  %2 = alloca %struct.qman_portal*, align 8
  %3 = alloca %struct.qm_portal_config*, align 8
  store %struct.qman_portal* %0, %struct.qman_portal** %2, align 8
  %4 = load %struct.qman_portal*, %struct.qman_portal** %2, align 8
  %5 = getelementptr inbounds %struct.qman_portal, %struct.qman_portal* %4, i32 0, i32 1
  %6 = call i32 @qm_dqrr_sdqcr_set(i32* %5, i32 0)
  %7 = load %struct.qman_portal*, %struct.qman_portal** %2, align 8
  %8 = getelementptr inbounds %struct.qman_portal, %struct.qman_portal* %7, i32 0, i32 1
  %9 = call i32 @qm_eqcr_cce_update(i32* %8)
  %10 = load %struct.qman_portal*, %struct.qman_portal** %2, align 8
  %11 = getelementptr inbounds %struct.qman_portal, %struct.qman_portal* %10, i32 0, i32 1
  %12 = call i32 @qm_eqcr_cce_update(i32* %11)
  %13 = load %struct.qman_portal*, %struct.qman_portal** %2, align 8
  %14 = getelementptr inbounds %struct.qman_portal, %struct.qman_portal* %13, i32 0, i32 0
  %15 = load %struct.qm_portal_config*, %struct.qm_portal_config** %14, align 8
  store %struct.qm_portal_config* %15, %struct.qm_portal_config** %3, align 8
  %16 = load %struct.qm_portal_config*, %struct.qm_portal_config** %3, align 8
  %17 = getelementptr inbounds %struct.qm_portal_config, %struct.qm_portal_config* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.qman_portal*, %struct.qman_portal** %2, align 8
  %20 = call i32 @free_irq(i32 %18, %struct.qman_portal* %19)
  %21 = load %struct.qman_portal*, %struct.qman_portal** %2, align 8
  %22 = getelementptr inbounds %struct.qman_portal, %struct.qman_portal* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @kfree(i32 %23)
  %25 = load %struct.qman_portal*, %struct.qman_portal** %2, align 8
  %26 = getelementptr inbounds %struct.qman_portal, %struct.qman_portal* %25, i32 0, i32 1
  %27 = call i32 @qm_mc_finish(i32* %26)
  %28 = load %struct.qman_portal*, %struct.qman_portal** %2, align 8
  %29 = getelementptr inbounds %struct.qman_portal, %struct.qman_portal* %28, i32 0, i32 1
  %30 = call i32 @qm_mr_finish(i32* %29)
  %31 = load %struct.qman_portal*, %struct.qman_portal** %2, align 8
  %32 = getelementptr inbounds %struct.qman_portal, %struct.qman_portal* %31, i32 0, i32 1
  %33 = call i32 @qm_dqrr_finish(i32* %32)
  %34 = load %struct.qman_portal*, %struct.qman_portal** %2, align 8
  %35 = getelementptr inbounds %struct.qman_portal, %struct.qman_portal* %34, i32 0, i32 1
  %36 = call i32 @qm_eqcr_finish(i32* %35)
  %37 = load %struct.qman_portal*, %struct.qman_portal** %2, align 8
  %38 = getelementptr inbounds %struct.qman_portal, %struct.qman_portal* %37, i32 0, i32 0
  store %struct.qm_portal_config* null, %struct.qm_portal_config** %38, align 8
  ret void
}

declare dso_local i32 @qm_dqrr_sdqcr_set(i32*, i32) #1

declare dso_local i32 @qm_eqcr_cce_update(i32*) #1

declare dso_local i32 @free_irq(i32, %struct.qman_portal*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @qm_mc_finish(i32*) #1

declare dso_local i32 @qm_mr_finish(i32*) #1

declare dso_local i32 @qm_dqrr_finish(i32*) #1

declare dso_local i32 @qm_eqcr_finish(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
