; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/ipu3/extr_ipu3-mmu.c_imgu_mmu_get_l2pt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/ipu3/extr_ipu3-mmu.c_imgu_mmu_get_l2pt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imgu_mmu = type { i64**, i64*, i32, i32, i32 }

@.str = private unnamed_addr constant [41 x i8] c"allocated page table %p for l1pt_idx %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64* (%struct.imgu_mmu*, i64)* @imgu_mmu_get_l2pt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64* @imgu_mmu_get_l2pt(%struct.imgu_mmu* %0, i64 %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca %struct.imgu_mmu*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  store %struct.imgu_mmu* %0, %struct.imgu_mmu** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load %struct.imgu_mmu*, %struct.imgu_mmu** %4, align 8
  %11 = getelementptr inbounds %struct.imgu_mmu, %struct.imgu_mmu* %10, i32 0, i32 2
  %12 = load i64, i64* %6, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.imgu_mmu*, %struct.imgu_mmu** %4, align 8
  %15 = getelementptr inbounds %struct.imgu_mmu, %struct.imgu_mmu* %14, i32 0, i32 0
  %16 = load i64**, i64*** %15, align 8
  %17 = load i64, i64* %5, align 8
  %18 = getelementptr inbounds i64*, i64** %16, i64 %17
  %19 = load i64*, i64** %18, align 8
  store i64* %19, i64** %7, align 8
  %20 = load i64*, i64** %7, align 8
  %21 = icmp ne i64* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  br label %74

23:                                               ; preds = %2
  %24 = load %struct.imgu_mmu*, %struct.imgu_mmu** %4, align 8
  %25 = getelementptr inbounds %struct.imgu_mmu, %struct.imgu_mmu* %24, i32 0, i32 2
  %26 = load i64, i64* %6, align 8
  %27 = call i32 @spin_unlock_irqrestore(i32* %25, i64 %26)
  %28 = load %struct.imgu_mmu*, %struct.imgu_mmu** %4, align 8
  %29 = getelementptr inbounds %struct.imgu_mmu, %struct.imgu_mmu* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 8
  %31 = call i64* @imgu_mmu_alloc_page_table(i32 %30)
  store i64* %31, i64** %8, align 8
  %32 = load i64*, i64** %8, align 8
  %33 = icmp ne i64* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %23
  store i64* null, i64** %3, align 8
  br label %80

35:                                               ; preds = %23
  %36 = load %struct.imgu_mmu*, %struct.imgu_mmu** %4, align 8
  %37 = getelementptr inbounds %struct.imgu_mmu, %struct.imgu_mmu* %36, i32 0, i32 2
  %38 = load i64, i64* %6, align 8
  %39 = call i32 @spin_lock_irqsave(i32* %37, i64 %38)
  %40 = load %struct.imgu_mmu*, %struct.imgu_mmu** %4, align 8
  %41 = getelementptr inbounds %struct.imgu_mmu, %struct.imgu_mmu* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = load i64*, i64** %8, align 8
  %44 = load i64, i64* %5, align 8
  %45 = call i32 @dev_dbg(i32 %42, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i64* %43, i64 %44)
  %46 = load %struct.imgu_mmu*, %struct.imgu_mmu** %4, align 8
  %47 = getelementptr inbounds %struct.imgu_mmu, %struct.imgu_mmu* %46, i32 0, i32 0
  %48 = load i64**, i64*** %47, align 8
  %49 = load i64, i64* %5, align 8
  %50 = getelementptr inbounds i64*, i64** %48, i64 %49
  %51 = load i64*, i64** %50, align 8
  store i64* %51, i64** %7, align 8
  %52 = load i64*, i64** %7, align 8
  %53 = icmp ne i64* %52, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %35
  %55 = load i64*, i64** %8, align 8
  %56 = call i32 @imgu_mmu_free_page_table(i64* %55)
  br label %74

57:                                               ; preds = %35
  %58 = load i64*, i64** %8, align 8
  store i64* %58, i64** %7, align 8
  %59 = load i64*, i64** %8, align 8
  %60 = load %struct.imgu_mmu*, %struct.imgu_mmu** %4, align 8
  %61 = getelementptr inbounds %struct.imgu_mmu, %struct.imgu_mmu* %60, i32 0, i32 0
  %62 = load i64**, i64*** %61, align 8
  %63 = load i64, i64* %5, align 8
  %64 = getelementptr inbounds i64*, i64** %62, i64 %63
  store i64* %59, i64** %64, align 8
  %65 = load i64*, i64** %8, align 8
  %66 = call i32 @virt_to_phys(i64* %65)
  %67 = call i64 @IPU3_ADDR2PTE(i32 %66)
  store i64 %67, i64* %9, align 8
  %68 = load i64, i64* %9, align 8
  %69 = load %struct.imgu_mmu*, %struct.imgu_mmu** %4, align 8
  %70 = getelementptr inbounds %struct.imgu_mmu, %struct.imgu_mmu* %69, i32 0, i32 1
  %71 = load i64*, i64** %70, align 8
  %72 = load i64, i64* %5, align 8
  %73 = getelementptr inbounds i64, i64* %71, i64 %72
  store i64 %68, i64* %73, align 8
  br label %74

74:                                               ; preds = %57, %54, %22
  %75 = load %struct.imgu_mmu*, %struct.imgu_mmu** %4, align 8
  %76 = getelementptr inbounds %struct.imgu_mmu, %struct.imgu_mmu* %75, i32 0, i32 2
  %77 = load i64, i64* %6, align 8
  %78 = call i32 @spin_unlock_irqrestore(i32* %76, i64 %77)
  %79 = load i64*, i64** %7, align 8
  store i64* %79, i64** %3, align 8
  br label %80

80:                                               ; preds = %74, %34
  %81 = load i64*, i64** %3, align 8
  ret i64* %81
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64* @imgu_mmu_alloc_page_table(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i64*, i64) #1

declare dso_local i32 @imgu_mmu_free_page_table(i64*) #1

declare dso_local i64 @IPU3_ADDR2PTE(i32) #1

declare dso_local i32 @virt_to_phys(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
