; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/ipu3/extr_ipu3-mmu.c_imgu_mmu_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/ipu3/extr_ipu3-mmu.c_imgu_mmu_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imgu_mmu_info = type { i32 }
%struct.imgu_mmu = type { i32 }

@IPU3_PAGE_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"unaligned: iova 0x%lx pa %pa size 0x%zx\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"map: iova 0x%lx pa %pa size 0x%zx\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"mapping: iova 0x%lx pa %pa\0A\00", align 1
@imgu_mmu_tlb_invalidate = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @imgu_mmu_map(%struct.imgu_mmu_info* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.imgu_mmu_info*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.imgu_mmu*, align 8
  %11 = alloca i32, align 4
  store %struct.imgu_mmu_info* %0, %struct.imgu_mmu_info** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.imgu_mmu_info*, %struct.imgu_mmu_info** %6, align 8
  %13 = call %struct.imgu_mmu* @to_imgu_mmu(%struct.imgu_mmu_info* %12)
  store %struct.imgu_mmu* %13, %struct.imgu_mmu** %10, align 8
  store i32 0, i32* %11, align 4
  %14 = load i64, i64* %7, align 8
  %15 = load i64, i64* %8, align 8
  %16 = or i64 %14, %15
  %17 = load i64, i64* %9, align 8
  %18 = or i64 %16, %17
  %19 = load i64, i64* @IPU3_PAGE_SIZE, align 8
  %20 = call i32 @IS_ALIGNED(i64 %18, i64 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %31, label %22

22:                                               ; preds = %4
  %23 = load %struct.imgu_mmu*, %struct.imgu_mmu** %10, align 8
  %24 = getelementptr inbounds %struct.imgu_mmu, %struct.imgu_mmu* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i64, i64* %7, align 8
  %27 = load i64, i64* %9, align 8
  %28 = call i32 @dev_err(i32 %25, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i64 %26, i64* %8, i64 %27)
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %5, align 4
  br label %69

31:                                               ; preds = %4
  %32 = load %struct.imgu_mmu*, %struct.imgu_mmu** %10, align 8
  %33 = getelementptr inbounds %struct.imgu_mmu, %struct.imgu_mmu* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i64, i64* %7, align 8
  %36 = load i64, i64* %9, align 8
  %37 = call i32 (i32, i8*, i64, i64*, ...) @dev_dbg(i32 %34, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i64 %35, i64* %8, i64 %36)
  br label %38

38:                                               ; preds = %54, %31
  %39 = load i64, i64* %9, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %64

41:                                               ; preds = %38
  %42 = load %struct.imgu_mmu*, %struct.imgu_mmu** %10, align 8
  %43 = getelementptr inbounds %struct.imgu_mmu, %struct.imgu_mmu* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i64, i64* %7, align 8
  %46 = call i32 (i32, i8*, i64, i64*, ...) @dev_dbg(i32 %44, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i64 %45, i64* %8)
  %47 = load %struct.imgu_mmu*, %struct.imgu_mmu** %10, align 8
  %48 = load i64, i64* %7, align 8
  %49 = load i64, i64* %8, align 8
  %50 = call i32 @__imgu_mmu_map(%struct.imgu_mmu* %47, i64 %48, i64 %49)
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %11, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %41
  br label %64

54:                                               ; preds = %41
  %55 = load i64, i64* @IPU3_PAGE_SIZE, align 8
  %56 = load i64, i64* %7, align 8
  %57 = add i64 %56, %55
  store i64 %57, i64* %7, align 8
  %58 = load i64, i64* @IPU3_PAGE_SIZE, align 8
  %59 = load i64, i64* %8, align 8
  %60 = add i64 %59, %58
  store i64 %60, i64* %8, align 8
  %61 = load i64, i64* @IPU3_PAGE_SIZE, align 8
  %62 = load i64, i64* %9, align 8
  %63 = sub i64 %62, %61
  store i64 %63, i64* %9, align 8
  br label %38

64:                                               ; preds = %53, %38
  %65 = load %struct.imgu_mmu*, %struct.imgu_mmu** %10, align 8
  %66 = load i32, i32* @imgu_mmu_tlb_invalidate, align 4
  %67 = call i32 @call_if_imgu_is_powered(%struct.imgu_mmu* %65, i32 %66)
  %68 = load i32, i32* %11, align 4
  store i32 %68, i32* %5, align 4
  br label %69

69:                                               ; preds = %64, %22
  %70 = load i32, i32* %5, align 4
  ret i32 %70
}

declare dso_local %struct.imgu_mmu* @to_imgu_mmu(%struct.imgu_mmu_info*) #1

declare dso_local i32 @IS_ALIGNED(i64, i64) #1

declare dso_local i32 @dev_err(i32, i8*, i64, i64*, i64) #1

declare dso_local i32 @dev_dbg(i32, i8*, i64, i64*, ...) #1

declare dso_local i32 @__imgu_mmu_map(%struct.imgu_mmu*, i64, i64) #1

declare dso_local i32 @call_if_imgu_is_powered(%struct.imgu_mmu*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
