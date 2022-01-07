; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_qman_ccsr.c_qm_set_wq_scheduling.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_qman_ccsr.c_qm_set_wq_scheduling.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32, i32, i32, i32, i32)* @qm_set_wq_scheduling to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qm_set_wq_scheduling(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %17 = load i32, i32* %9, align 4
  %18 = call i32 @REG_WQ_CS_CFG(i32 %17)
  %19 = load i32, i32* %10, align 4
  %20 = and i32 %19, 255
  %21 = shl i32 %20, 24
  %22 = load i32, i32* %11, align 4
  %23 = and i32 %22, 7
  %24 = shl i32 %23, 20
  %25 = or i32 %21, %24
  %26 = load i32, i32* %12, align 4
  %27 = and i32 %26, 7
  %28 = shl i32 %27, 16
  %29 = or i32 %25, %28
  %30 = load i32, i32* %13, align 4
  %31 = and i32 %30, 7
  %32 = shl i32 %31, 12
  %33 = or i32 %29, %32
  %34 = load i32, i32* %14, align 4
  %35 = and i32 %34, 7
  %36 = shl i32 %35, 8
  %37 = or i32 %33, %36
  %38 = load i32, i32* %15, align 4
  %39 = and i32 %38, 7
  %40 = shl i32 %39, 4
  %41 = or i32 %37, %40
  %42 = load i32, i32* %16, align 4
  %43 = and i32 %42, 7
  %44 = or i32 %41, %43
  %45 = call i32 @qm_ccsr_out(i32 %18, i32 %44)
  ret void
}

declare dso_local i32 @qm_ccsr_out(i32, i32) #1

declare dso_local i32 @REG_WQ_CS_CFG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
