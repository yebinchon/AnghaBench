; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_qman.c___poll_portal_slow.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_qman.c___poll_portal_slow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qman_portal = type { i32, i32, i32 }

@QM_PIRQ_CSCI = common dso_local global i32 0, align 4
@qm_portal_wq = common dso_local global i32 0, align 4
@QM_PIRQ_EQRI = common dso_local global i32 0, align 4
@affine_queue = common dso_local global i32 0, align 4
@QM_PIRQ_MRI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qman_portal*, i32)* @__poll_portal_slow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__poll_portal_slow(%struct.qman_portal* %0, i32 %1) #0 {
  %3 = alloca %struct.qman_portal*, align 8
  %4 = alloca i32, align 4
  store %struct.qman_portal* %0, %struct.qman_portal** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @QM_PIRQ_CSCI, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %18

9:                                                ; preds = %2
  %10 = load %struct.qman_portal*, %struct.qman_portal** %3, align 8
  %11 = load i32, i32* @QM_PIRQ_CSCI, align 4
  %12 = call i32 @qman_p_irqsource_remove(%struct.qman_portal* %10, i32 %11)
  %13 = call i32 (...) @smp_processor_id()
  %14 = load i32, i32* @qm_portal_wq, align 4
  %15 = load %struct.qman_portal*, %struct.qman_portal** %3, align 8
  %16 = getelementptr inbounds %struct.qman_portal, %struct.qman_portal* %15, i32 0, i32 2
  %17 = call i32 @queue_work_on(i32 %13, i32 %14, i32* %16)
  br label %18

18:                                               ; preds = %9, %2
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @QM_PIRQ_EQRI, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %18
  %24 = load %struct.qman_portal*, %struct.qman_portal** %3, align 8
  %25 = getelementptr inbounds %struct.qman_portal, %struct.qman_portal* %24, i32 0, i32 1
  %26 = call i32 @qm_eqcr_cce_update(i32* %25)
  %27 = load %struct.qman_portal*, %struct.qman_portal** %3, align 8
  %28 = getelementptr inbounds %struct.qman_portal, %struct.qman_portal* %27, i32 0, i32 1
  %29 = call i32 @qm_eqcr_set_ithresh(i32* %28, i32 0)
  %30 = call i32 @wake_up(i32* @affine_queue)
  br label %31

31:                                               ; preds = %23, %18
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @QM_PIRQ_MRI, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %31
  %37 = load %struct.qman_portal*, %struct.qman_portal** %3, align 8
  %38 = load i32, i32* @QM_PIRQ_MRI, align 4
  %39 = call i32 @qman_p_irqsource_remove(%struct.qman_portal* %37, i32 %38)
  %40 = call i32 (...) @smp_processor_id()
  %41 = load i32, i32* @qm_portal_wq, align 4
  %42 = load %struct.qman_portal*, %struct.qman_portal** %3, align 8
  %43 = getelementptr inbounds %struct.qman_portal, %struct.qman_portal* %42, i32 0, i32 0
  %44 = call i32 @queue_work_on(i32 %40, i32 %41, i32* %43)
  br label %45

45:                                               ; preds = %36, %31
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i32 @qman_p_irqsource_remove(%struct.qman_portal*, i32) #1

declare dso_local i32 @queue_work_on(i32, i32, i32*) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @qm_eqcr_cce_update(i32*) #1

declare dso_local i32 @qm_eqcr_set_ithresh(i32*, i32) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
