; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/ipu3/extr_ipu3-mmu.c_imgu_mmu_exit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/ipu3/extr_ipu3-mmu.c_imgu_mmu_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imgu_mmu_info = type { i32 }
%struct.imgu_mmu = type { i64, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @imgu_mmu_exit(%struct.imgu_mmu_info* %0) #0 {
  %2 = alloca %struct.imgu_mmu_info*, align 8
  %3 = alloca %struct.imgu_mmu*, align 8
  store %struct.imgu_mmu_info* %0, %struct.imgu_mmu_info** %2, align 8
  %4 = load %struct.imgu_mmu_info*, %struct.imgu_mmu_info** %2, align 8
  %5 = call %struct.imgu_mmu* @to_imgu_mmu(%struct.imgu_mmu_info* %4)
  store %struct.imgu_mmu* %5, %struct.imgu_mmu** %3, align 8
  %6 = load %struct.imgu_mmu*, %struct.imgu_mmu** %3, align 8
  %7 = call i32 @imgu_mmu_set_halt(%struct.imgu_mmu* %6, i32 1)
  %8 = load %struct.imgu_mmu*, %struct.imgu_mmu** %3, align 8
  %9 = call i32 @imgu_mmu_tlb_invalidate(%struct.imgu_mmu* %8)
  %10 = load %struct.imgu_mmu*, %struct.imgu_mmu** %3, align 8
  %11 = getelementptr inbounds %struct.imgu_mmu, %struct.imgu_mmu* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @imgu_mmu_free_page_table(i32 %12)
  %14 = load %struct.imgu_mmu*, %struct.imgu_mmu** %3, align 8
  %15 = getelementptr inbounds %struct.imgu_mmu, %struct.imgu_mmu* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @vfree(i32 %16)
  %18 = load %struct.imgu_mmu*, %struct.imgu_mmu** %3, align 8
  %19 = getelementptr inbounds %struct.imgu_mmu, %struct.imgu_mmu* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @imgu_mmu_free_page_table(i32 %20)
  %22 = load %struct.imgu_mmu*, %struct.imgu_mmu** %3, align 8
  %23 = getelementptr inbounds %struct.imgu_mmu, %struct.imgu_mmu* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @free_page(i64 %24)
  %26 = load %struct.imgu_mmu*, %struct.imgu_mmu** %3, align 8
  %27 = call i32 @kfree(%struct.imgu_mmu* %26)
  ret void
}

declare dso_local %struct.imgu_mmu* @to_imgu_mmu(%struct.imgu_mmu_info*) #1

declare dso_local i32 @imgu_mmu_set_halt(%struct.imgu_mmu*, i32) #1

declare dso_local i32 @imgu_mmu_tlb_invalidate(%struct.imgu_mmu*) #1

declare dso_local i32 @imgu_mmu_free_page_table(i32) #1

declare dso_local i32 @vfree(i32) #1

declare dso_local i32 @free_page(i64) #1

declare dso_local i32 @kfree(%struct.imgu_mmu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
