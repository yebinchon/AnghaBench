; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_qman.c_qman_p_irqsource_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_qman.c_qman_p_irqsource_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qman_portal = type { i32, i32 }

@QM_PIRQ_VISIBLE = common dso_local global i32 0, align 4
@QM_REG_IER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qman_p_irqsource_add(%struct.qman_portal* %0, i32 %1) #0 {
  %3 = alloca %struct.qman_portal*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.qman_portal* %0, %struct.qman_portal** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i64, i64* %5, align 8
  %7 = call i32 @local_irq_save(i64 %6)
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @QM_PIRQ_VISIBLE, align 4
  %10 = and i32 %8, %9
  %11 = load %struct.qman_portal*, %struct.qman_portal** %3, align 8
  %12 = getelementptr inbounds %struct.qman_portal, %struct.qman_portal* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = or i32 %13, %10
  store i32 %14, i32* %12, align 4
  %15 = load %struct.qman_portal*, %struct.qman_portal** %3, align 8
  %16 = getelementptr inbounds %struct.qman_portal, %struct.qman_portal* %15, i32 0, i32 1
  %17 = load i32, i32* @QM_REG_IER, align 4
  %18 = load %struct.qman_portal*, %struct.qman_portal** %3, align 8
  %19 = getelementptr inbounds %struct.qman_portal, %struct.qman_portal* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @qm_out(i32* %16, i32 %17, i32 %20)
  %22 = load i64, i64* %5, align 8
  %23 = call i32 @local_irq_restore(i64 %22)
  ret void
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @qm_out(i32*, i32, i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
