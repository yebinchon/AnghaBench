; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/fsl/qe/extr_qe_ic.c_qe_ic_get_low_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/fsl/qe/extr_qe_ic.c_qe_ic_get_low_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qe_ic = type { i32, i32 }

@QEIC_CIVEC = common dso_local global i32 0, align 4
@NO_IRQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qe_ic_get_low_irq(%struct.qe_ic* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qe_ic*, align 8
  %4 = alloca i32, align 4
  store %struct.qe_ic* %0, %struct.qe_ic** %3, align 8
  %5 = load %struct.qe_ic*, %struct.qe_ic** %3, align 8
  %6 = icmp eq %struct.qe_ic* %5, null
  %7 = zext i1 %6 to i32
  %8 = call i32 @BUG_ON(i32 %7)
  %9 = load %struct.qe_ic*, %struct.qe_ic** %3, align 8
  %10 = getelementptr inbounds %struct.qe_ic, %struct.qe_ic* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @QEIC_CIVEC, align 4
  %13 = call i32 @qe_ic_read(i32 %11, i32 %12)
  %14 = ashr i32 %13, 26
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* @NO_IRQ, align 4
  store i32 %18, i32* %2, align 4
  br label %25

19:                                               ; preds = %1
  %20 = load %struct.qe_ic*, %struct.qe_ic** %3, align 8
  %21 = getelementptr inbounds %struct.qe_ic, %struct.qe_ic* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @irq_linear_revmap(i32 %22, i32 %23)
  store i32 %24, i32* %2, align 4
  br label %25

25:                                               ; preds = %19, %17
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @qe_ic_read(i32, i32) #1

declare dso_local i32 @irq_linear_revmap(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
