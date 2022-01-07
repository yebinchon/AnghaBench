; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_qman.c_qman_p_irqsource_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_qman.c_qman_p_irqsource_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qman_portal = type { i32, i32 }

@QM_PIRQ_VISIBLE = common dso_local global i32 0, align 4
@QM_REG_IER = common dso_local global i32 0, align 4
@QM_REG_ISR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qman_p_irqsource_remove(%struct.qman_portal* %0, i32 %1) #0 {
  %3 = alloca %struct.qman_portal*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.qman_portal* %0, %struct.qman_portal** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i64, i64* %5, align 8
  %8 = call i32 @local_irq_save(i64 %7)
  %9 = load i32, i32* @QM_PIRQ_VISIBLE, align 4
  %10 = load i32, i32* %4, align 4
  %11 = and i32 %10, %9
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = xor i32 %12, -1
  %14 = load %struct.qman_portal*, %struct.qman_portal** %3, align 8
  %15 = getelementptr inbounds %struct.qman_portal, %struct.qman_portal* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = and i32 %16, %13
  store i32 %17, i32* %15, align 4
  %18 = load %struct.qman_portal*, %struct.qman_portal** %3, align 8
  %19 = getelementptr inbounds %struct.qman_portal, %struct.qman_portal* %18, i32 0, i32 0
  %20 = load i32, i32* @QM_REG_IER, align 4
  %21 = load %struct.qman_portal*, %struct.qman_portal** %3, align 8
  %22 = getelementptr inbounds %struct.qman_portal, %struct.qman_portal* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @qm_out(i32* %19, i32 %20, i32 %23)
  %25 = load %struct.qman_portal*, %struct.qman_portal** %3, align 8
  %26 = getelementptr inbounds %struct.qman_portal, %struct.qman_portal* %25, i32 0, i32 0
  %27 = load i32, i32* @QM_REG_IER, align 4
  %28 = call i32 @qm_in(i32* %26, i32 %27)
  store i32 %28, i32* %6, align 4
  %29 = load %struct.qman_portal*, %struct.qman_portal** %3, align 8
  %30 = getelementptr inbounds %struct.qman_portal, %struct.qman_portal* %29, i32 0, i32 0
  %31 = load i32, i32* @QM_REG_ISR, align 4
  %32 = load i32, i32* %6, align 4
  %33 = xor i32 %32, -1
  %34 = call i32 @qm_out(i32* %30, i32 %31, i32 %33)
  %35 = load i64, i64* %5, align 8
  %36 = call i32 @local_irq_restore(i64 %35)
  ret void
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @qm_out(i32*, i32, i32) #1

declare dso_local i32 @qm_in(i32*, i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
