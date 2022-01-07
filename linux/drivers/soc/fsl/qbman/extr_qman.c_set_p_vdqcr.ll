; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_qman.c_set_p_vdqcr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_qman.c_set_p_vdqcr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qman_portal = type { i32, %struct.qman_fq* }
%struct.qman_fq = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@QMAN_FQ_STATE_VDQCR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qman_portal*, %struct.qman_fq*, i32)* @set_p_vdqcr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_p_vdqcr(%struct.qman_portal* %0, %struct.qman_fq* %1, i32 %2) #0 {
  %4 = alloca %struct.qman_portal*, align 8
  %5 = alloca %struct.qman_fq*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.qman_portal* %0, %struct.qman_portal** %4, align 8
  store %struct.qman_fq* %1, %struct.qman_fq** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* @EBUSY, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %8, align 4
  %11 = load i64, i64* %7, align 8
  %12 = call i32 @local_irq_save(i64 %11)
  %13 = load %struct.qman_portal*, %struct.qman_portal** %4, align 8
  %14 = getelementptr inbounds %struct.qman_portal, %struct.qman_portal* %13, i32 0, i32 1
  %15 = load %struct.qman_fq*, %struct.qman_fq** %14, align 8
  %16 = icmp ne %struct.qman_fq* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  br label %35

18:                                               ; preds = %3
  %19 = load %struct.qman_fq*, %struct.qman_fq** %5, align 8
  %20 = load i32, i32* @QMAN_FQ_STATE_VDQCR, align 4
  %21 = call i64 @fq_isset(%struct.qman_fq* %19, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  br label %35

24:                                               ; preds = %18
  %25 = load %struct.qman_fq*, %struct.qman_fq** %5, align 8
  %26 = load i32, i32* @QMAN_FQ_STATE_VDQCR, align 4
  %27 = call i32 @fq_set(%struct.qman_fq* %25, i32 %26)
  %28 = load %struct.qman_fq*, %struct.qman_fq** %5, align 8
  %29 = load %struct.qman_portal*, %struct.qman_portal** %4, align 8
  %30 = getelementptr inbounds %struct.qman_portal, %struct.qman_portal* %29, i32 0, i32 1
  store %struct.qman_fq* %28, %struct.qman_fq** %30, align 8
  %31 = load %struct.qman_portal*, %struct.qman_portal** %4, align 8
  %32 = getelementptr inbounds %struct.qman_portal, %struct.qman_portal* %31, i32 0, i32 0
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @qm_dqrr_vdqcr_set(i32* %32, i32 %33)
  store i32 0, i32* %8, align 4
  br label %35

35:                                               ; preds = %24, %23, %17
  %36 = load i64, i64* %7, align 8
  %37 = call i32 @local_irq_restore(i64 %36)
  %38 = load i32, i32* %8, align 4
  ret i32 %38
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i64 @fq_isset(%struct.qman_fq*, i32) #1

declare dso_local i32 @fq_set(%struct.qman_fq*, i32) #1

declare dso_local i32 @qm_dqrr_vdqcr_set(i32*, i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
