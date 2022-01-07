; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/fsl/qe/extr_qe_common.c_cpm_muram_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/fsl/qe/extr_qe_common.c_cpm_muram_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.genpool_data_align = type { i64 }

@cpm_muram_lock = common dso_local global i32 0, align 4
@gen_pool_first_fit_align = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @cpm_muram_alloc(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.genpool_data_align, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load i64, i64* %6, align 8
  %9 = call i32 @spin_lock_irqsave(i32* @cpm_muram_lock, i64 %8)
  %10 = load i64, i64* %4, align 8
  %11 = getelementptr inbounds %struct.genpool_data_align, %struct.genpool_data_align* %7, i32 0, i32 0
  store i64 %10, i64* %11, align 8
  %12 = load i64, i64* %3, align 8
  %13 = load i32, i32* @gen_pool_first_fit_align, align 4
  %14 = call i64 @cpm_muram_alloc_common(i64 %12, i32 %13, %struct.genpool_data_align* %7)
  store i64 %14, i64* %5, align 8
  %15 = load i64, i64* %6, align 8
  %16 = call i32 @spin_unlock_irqrestore(i32* @cpm_muram_lock, i64 %15)
  %17 = load i64, i64* %5, align 8
  ret i64 %17
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @cpm_muram_alloc_common(i64, i32, %struct.genpool_data_align*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
