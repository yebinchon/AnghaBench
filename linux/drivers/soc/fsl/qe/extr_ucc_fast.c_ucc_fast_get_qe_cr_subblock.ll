; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/fsl/qe/extr_ucc_fast.c_ucc_fast_get_qe_cr_subblock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/fsl/qe/extr_ucc_fast.c_ucc_fast_get_qe_cr_subblock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@QE_CR_SUBBLOCK_UCCFAST1 = common dso_local global i32 0, align 4
@QE_CR_SUBBLOCK_UCCFAST2 = common dso_local global i32 0, align 4
@QE_CR_SUBBLOCK_UCCFAST3 = common dso_local global i32 0, align 4
@QE_CR_SUBBLOCK_UCCFAST4 = common dso_local global i32 0, align 4
@QE_CR_SUBBLOCK_UCCFAST5 = common dso_local global i32 0, align 4
@QE_CR_SUBBLOCK_UCCFAST6 = common dso_local global i32 0, align 4
@QE_CR_SUBBLOCK_UCCFAST7 = common dso_local global i32 0, align 4
@QE_CR_SUBBLOCK_UCCFAST8 = common dso_local global i32 0, align 4
@QE_CR_SUBBLOCK_INVALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ucc_fast_get_qe_cr_subblock(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %21 [
    i32 0, label %5
    i32 1, label %7
    i32 2, label %9
    i32 3, label %11
    i32 4, label %13
    i32 5, label %15
    i32 6, label %17
    i32 7, label %19
  ]

5:                                                ; preds = %1
  %6 = load i32, i32* @QE_CR_SUBBLOCK_UCCFAST1, align 4
  store i32 %6, i32* %2, align 4
  br label %23

7:                                                ; preds = %1
  %8 = load i32, i32* @QE_CR_SUBBLOCK_UCCFAST2, align 4
  store i32 %8, i32* %2, align 4
  br label %23

9:                                                ; preds = %1
  %10 = load i32, i32* @QE_CR_SUBBLOCK_UCCFAST3, align 4
  store i32 %10, i32* %2, align 4
  br label %23

11:                                               ; preds = %1
  %12 = load i32, i32* @QE_CR_SUBBLOCK_UCCFAST4, align 4
  store i32 %12, i32* %2, align 4
  br label %23

13:                                               ; preds = %1
  %14 = load i32, i32* @QE_CR_SUBBLOCK_UCCFAST5, align 4
  store i32 %14, i32* %2, align 4
  br label %23

15:                                               ; preds = %1
  %16 = load i32, i32* @QE_CR_SUBBLOCK_UCCFAST6, align 4
  store i32 %16, i32* %2, align 4
  br label %23

17:                                               ; preds = %1
  %18 = load i32, i32* @QE_CR_SUBBLOCK_UCCFAST7, align 4
  store i32 %18, i32* %2, align 4
  br label %23

19:                                               ; preds = %1
  %20 = load i32, i32* @QE_CR_SUBBLOCK_UCCFAST8, align 4
  store i32 %20, i32* %2, align 4
  br label %23

21:                                               ; preds = %1
  %22 = load i32, i32* @QE_CR_SUBBLOCK_INVALID, align 4
  store i32 %22, i32* %2, align 4
  br label %23

23:                                               ; preds = %21, %19, %17, %15, %13, %11, %9, %7, %5
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
