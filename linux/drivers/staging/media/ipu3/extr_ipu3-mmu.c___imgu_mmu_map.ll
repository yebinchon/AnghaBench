; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/ipu3/extr_ipu3-mmu.c___imgu_mmu_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/ipu3/extr_ipu3-mmu.c___imgu_mmu_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imgu_mmu = type { i64, i32 }

@ENODEV = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.imgu_mmu*, i64, i32)* @__imgu_mmu_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__imgu_mmu_map(%struct.imgu_mmu* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.imgu_mmu*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  store %struct.imgu_mmu* %0, %struct.imgu_mmu** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.imgu_mmu*, %struct.imgu_mmu** %5, align 8
  %13 = icmp ne %struct.imgu_mmu* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @ENODEV, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %58

17:                                               ; preds = %3
  %18 = load i64, i64* %6, align 8
  %19 = call i32 @address_to_pte_idx(i64 %18, i64* %8, i64* %9)
  %20 = load %struct.imgu_mmu*, %struct.imgu_mmu** %5, align 8
  %21 = load i64, i64* %8, align 8
  %22 = call i64* @imgu_mmu_get_l2pt(%struct.imgu_mmu* %20, i64 %21)
  store i64* %22, i64** %11, align 8
  %23 = load i64*, i64** %11, align 8
  %24 = icmp ne i64* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %17
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %58

28:                                               ; preds = %17
  %29 = load %struct.imgu_mmu*, %struct.imgu_mmu** %5, align 8
  %30 = getelementptr inbounds %struct.imgu_mmu, %struct.imgu_mmu* %29, i32 0, i32 1
  %31 = load i64, i64* %10, align 8
  %32 = call i32 @spin_lock_irqsave(i32* %30, i64 %31)
  %33 = load i64*, i64** %11, align 8
  %34 = load i64, i64* %9, align 8
  %35 = getelementptr inbounds i64, i64* %33, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.imgu_mmu*, %struct.imgu_mmu** %5, align 8
  %38 = getelementptr inbounds %struct.imgu_mmu, %struct.imgu_mmu* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %36, %39
  br i1 %40, label %41, label %48

41:                                               ; preds = %28
  %42 = load %struct.imgu_mmu*, %struct.imgu_mmu** %5, align 8
  %43 = getelementptr inbounds %struct.imgu_mmu, %struct.imgu_mmu* %42, i32 0, i32 1
  %44 = load i64, i64* %10, align 8
  %45 = call i32 @spin_unlock_irqrestore(i32* %43, i64 %44)
  %46 = load i32, i32* @EBUSY, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %58

48:                                               ; preds = %28
  %49 = load i32, i32* %7, align 4
  %50 = call i64 @IPU3_ADDR2PTE(i32 %49)
  %51 = load i64*, i64** %11, align 8
  %52 = load i64, i64* %9, align 8
  %53 = getelementptr inbounds i64, i64* %51, i64 %52
  store i64 %50, i64* %53, align 8
  %54 = load %struct.imgu_mmu*, %struct.imgu_mmu** %5, align 8
  %55 = getelementptr inbounds %struct.imgu_mmu, %struct.imgu_mmu* %54, i32 0, i32 1
  %56 = load i64, i64* %10, align 8
  %57 = call i32 @spin_unlock_irqrestore(i32* %55, i64 %56)
  store i32 0, i32* %4, align 4
  br label %58

58:                                               ; preds = %48, %41, %25, %14
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i32 @address_to_pte_idx(i64, i64*, i64*) #1

declare dso_local i64* @imgu_mmu_get_l2pt(%struct.imgu_mmu*, i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @IPU3_ADDR2PTE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
