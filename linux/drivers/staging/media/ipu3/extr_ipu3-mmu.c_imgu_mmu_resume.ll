; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/ipu3/extr_ipu3-mmu.c_imgu_mmu_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/ipu3/extr_ipu3-mmu.c_imgu_mmu_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imgu_mmu_info = type { i32 }
%struct.imgu_mmu = type { i64, i32 }

@REG_L1_PHYS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @imgu_mmu_resume(%struct.imgu_mmu_info* %0) #0 {
  %2 = alloca %struct.imgu_mmu_info*, align 8
  %3 = alloca %struct.imgu_mmu*, align 8
  %4 = alloca i32, align 4
  store %struct.imgu_mmu_info* %0, %struct.imgu_mmu_info** %2, align 8
  %5 = load %struct.imgu_mmu_info*, %struct.imgu_mmu_info** %2, align 8
  %6 = call %struct.imgu_mmu* @to_imgu_mmu(%struct.imgu_mmu_info* %5)
  store %struct.imgu_mmu* %6, %struct.imgu_mmu** %3, align 8
  %7 = load %struct.imgu_mmu*, %struct.imgu_mmu** %3, align 8
  %8 = call i32 @imgu_mmu_set_halt(%struct.imgu_mmu* %7, i32 1)
  %9 = load %struct.imgu_mmu*, %struct.imgu_mmu** %3, align 8
  %10 = getelementptr inbounds %struct.imgu_mmu, %struct.imgu_mmu* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @virt_to_phys(i32 %11)
  %13 = call i32 @IPU3_ADDR2PTE(i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.imgu_mmu*, %struct.imgu_mmu** %3, align 8
  %16 = getelementptr inbounds %struct.imgu_mmu, %struct.imgu_mmu* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @REG_L1_PHYS, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @writel(i32 %14, i64 %19)
  %21 = load %struct.imgu_mmu*, %struct.imgu_mmu** %3, align 8
  %22 = call i32 @imgu_mmu_tlb_invalidate(%struct.imgu_mmu* %21)
  %23 = load %struct.imgu_mmu*, %struct.imgu_mmu** %3, align 8
  %24 = call i32 @imgu_mmu_set_halt(%struct.imgu_mmu* %23, i32 0)
  ret void
}

declare dso_local %struct.imgu_mmu* @to_imgu_mmu(%struct.imgu_mmu_info*) #1

declare dso_local i32 @imgu_mmu_set_halt(%struct.imgu_mmu*, i32) #1

declare dso_local i32 @IPU3_ADDR2PTE(i32) #1

declare dso_local i32 @virt_to_phys(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @imgu_mmu_tlb_invalidate(%struct.imgu_mmu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
