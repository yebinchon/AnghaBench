; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/ipu3/extr_ipu3-mmu.c_imgu_mmu_unmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/ipu3/extr_ipu3-mmu.c_imgu_mmu_unmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imgu_mmu_info = type { i32 }
%struct.imgu_mmu = type { i32 }

@IPU3_PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"unaligned: iova 0x%lx size 0x%zx\0A\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"unmap this: iova 0x%lx size 0x%zx\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"unmapped: iova 0x%lx size 0x%zx\0A\00", align 1
@imgu_mmu_tlb_invalidate = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @imgu_mmu_unmap(%struct.imgu_mmu_info* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.imgu_mmu_info*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.imgu_mmu*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.imgu_mmu_info* %0, %struct.imgu_mmu_info** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.imgu_mmu_info*, %struct.imgu_mmu_info** %5, align 8
  %12 = call %struct.imgu_mmu* @to_imgu_mmu(%struct.imgu_mmu_info* %11)
  store %struct.imgu_mmu* %12, %struct.imgu_mmu** %8, align 8
  store i64 0, i64* %10, align 8
  %13 = load i64, i64* %6, align 8
  %14 = load i64, i64* %7, align 8
  %15 = or i64 %13, %14
  %16 = load i32, i32* @IPU3_PAGE_SIZE, align 4
  %17 = call i32 @IS_ALIGNED(i64 %15, i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %28, label %19

19:                                               ; preds = %3
  %20 = load %struct.imgu_mmu*, %struct.imgu_mmu** %8, align 8
  %21 = getelementptr inbounds %struct.imgu_mmu, %struct.imgu_mmu* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i64, i64* %6, align 8
  %24 = load i64, i64* %7, align 8
  %25 = call i32 @dev_err(i32 %22, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 %23, i64 %24)
  %26 = load i64, i64* @EINVAL, align 8
  %27 = sub i64 0, %26
  store i64 %27, i64* %4, align 8
  br label %65

28:                                               ; preds = %3
  %29 = load %struct.imgu_mmu*, %struct.imgu_mmu** %8, align 8
  %30 = getelementptr inbounds %struct.imgu_mmu, %struct.imgu_mmu* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i64, i64* %6, align 8
  %33 = load i64, i64* %7, align 8
  %34 = call i32 @dev_dbg(i32 %31, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i64 %32, i64 %33)
  br label %35

35:                                               ; preds = %47, %28
  %36 = load i64, i64* %10, align 8
  %37 = load i64, i64* %7, align 8
  %38 = icmp ult i64 %36, %37
  br i1 %38, label %39, label %60

39:                                               ; preds = %35
  %40 = load %struct.imgu_mmu*, %struct.imgu_mmu** %8, align 8
  %41 = load i64, i64* %6, align 8
  %42 = load i32, i32* @IPU3_PAGE_SIZE, align 4
  %43 = call i64 @__imgu_mmu_unmap(%struct.imgu_mmu* %40, i64 %41, i32 %42)
  store i64 %43, i64* %9, align 8
  %44 = load i64, i64* %9, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %39
  br label %60

47:                                               ; preds = %39
  %48 = load %struct.imgu_mmu*, %struct.imgu_mmu** %8, align 8
  %49 = getelementptr inbounds %struct.imgu_mmu, %struct.imgu_mmu* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i64, i64* %6, align 8
  %52 = load i64, i64* %9, align 8
  %53 = call i32 @dev_dbg(i32 %50, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i64 %51, i64 %52)
  %54 = load i64, i64* %9, align 8
  %55 = load i64, i64* %6, align 8
  %56 = add i64 %55, %54
  store i64 %56, i64* %6, align 8
  %57 = load i64, i64* %9, align 8
  %58 = load i64, i64* %10, align 8
  %59 = add i64 %58, %57
  store i64 %59, i64* %10, align 8
  br label %35

60:                                               ; preds = %46, %35
  %61 = load %struct.imgu_mmu*, %struct.imgu_mmu** %8, align 8
  %62 = load i32, i32* @imgu_mmu_tlb_invalidate, align 4
  %63 = call i32 @call_if_imgu_is_powered(%struct.imgu_mmu* %61, i32 %62)
  %64 = load i64, i64* %10, align 8
  store i64 %64, i64* %4, align 8
  br label %65

65:                                               ; preds = %60, %19
  %66 = load i64, i64* %4, align 8
  ret i64 %66
}

declare dso_local %struct.imgu_mmu* @to_imgu_mmu(%struct.imgu_mmu_info*) #1

declare dso_local i32 @IS_ALIGNED(i64, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i64, i64) #1

declare dso_local i32 @dev_dbg(i32, i8*, i64, i64) #1

declare dso_local i64 @__imgu_mmu_unmap(%struct.imgu_mmu*, i64, i32) #1

declare dso_local i32 @call_if_imgu_is_powered(%struct.imgu_mmu*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
