; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_qman.c_portal_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_qman.c_portal_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qman_portal = type { i32, i32 }

@QM_REG_ISR = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@QM_PIRQ_DQRI = common dso_local global i32 0, align 4
@QMAN_POLL_LIMIT = common dso_local global i32 0, align 4
@QM_DQAVAIL_MASK = common dso_local global i32 0, align 4
@QM_PIRQ_SLOW = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @portal_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @portal_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.qman_portal*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.qman_portal*
  store %struct.qman_portal* %10, %struct.qman_portal** %6, align 8
  %11 = load %struct.qman_portal*, %struct.qman_portal** %6, align 8
  %12 = getelementptr inbounds %struct.qman_portal, %struct.qman_portal* %11, i32 0, i32 1
  %13 = load i32, i32* @QM_REG_ISR, align 4
  %14 = call i32 @qm_in(i32* %12, i32 %13)
  %15 = load %struct.qman_portal*, %struct.qman_portal** %6, align 8
  %16 = getelementptr inbounds %struct.qman_portal, %struct.qman_portal* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = and i32 %14, %17
  store i32 %18, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i64 @unlikely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %2
  %26 = load i32, i32* @IRQ_NONE, align 4
  store i32 %26, i32* %3, align 4
  br label %53

27:                                               ; preds = %2
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @QM_PIRQ_DQRI, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %27
  %33 = load %struct.qman_portal*, %struct.qman_portal** %6, align 8
  %34 = load i32, i32* @QMAN_POLL_LIMIT, align 4
  %35 = call i32 @__poll_portal_fast(%struct.qman_portal* %33, i32 %34)
  %36 = load i32, i32* @QM_DQAVAIL_MASK, align 4
  %37 = load i32, i32* @QM_PIRQ_DQRI, align 4
  %38 = or i32 %36, %37
  store i32 %38, i32* %8, align 4
  br label %39

39:                                               ; preds = %32, %27
  %40 = load %struct.qman_portal*, %struct.qman_portal** %6, align 8
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @__poll_portal_slow(%struct.qman_portal* %40, i32 %41)
  %43 = load i32, i32* @QM_PIRQ_SLOW, align 4
  %44 = and i32 %42, %43
  %45 = load i32, i32* %8, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %8, align 4
  %47 = load %struct.qman_portal*, %struct.qman_portal** %6, align 8
  %48 = getelementptr inbounds %struct.qman_portal, %struct.qman_portal* %47, i32 0, i32 1
  %49 = load i32, i32* @QM_REG_ISR, align 4
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @qm_out(i32* %48, i32 %49, i32 %50)
  %52 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %39, %25
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @qm_in(i32*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @__poll_portal_fast(%struct.qman_portal*, i32) #1

declare dso_local i32 @__poll_portal_slow(%struct.qman_portal*, i32) #1

declare dso_local i32 @qm_out(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
