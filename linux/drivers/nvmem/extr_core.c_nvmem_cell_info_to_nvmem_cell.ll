; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvmem/extr_core.c_nvmem_cell_info_to_nvmem_cell.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvmem/extr_core.c_nvmem_cell_info_to_nvmem_cell.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvmem_device = type { i32, i32 }
%struct.nvmem_cell_info = type { i64, i64, i32, i32, i32 }
%struct.nvmem_cell = type { i32, i32, i64, i64, i32, %struct.nvmem_device* }

@BITS_PER_BYTE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"cell %s unaligned to nvmem stride %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvmem_device*, %struct.nvmem_cell_info*, %struct.nvmem_cell*)* @nvmem_cell_info_to_nvmem_cell to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvmem_cell_info_to_nvmem_cell(%struct.nvmem_device* %0, %struct.nvmem_cell_info* %1, %struct.nvmem_cell* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvmem_device*, align 8
  %6 = alloca %struct.nvmem_cell_info*, align 8
  %7 = alloca %struct.nvmem_cell*, align 8
  store %struct.nvmem_device* %0, %struct.nvmem_device** %5, align 8
  store %struct.nvmem_cell_info* %1, %struct.nvmem_cell_info** %6, align 8
  store %struct.nvmem_cell* %2, %struct.nvmem_cell** %7, align 8
  %8 = load %struct.nvmem_device*, %struct.nvmem_device** %5, align 8
  %9 = load %struct.nvmem_cell*, %struct.nvmem_cell** %7, align 8
  %10 = getelementptr inbounds %struct.nvmem_cell, %struct.nvmem_cell* %9, i32 0, i32 5
  store %struct.nvmem_device* %8, %struct.nvmem_device** %10, align 8
  %11 = load %struct.nvmem_cell_info*, %struct.nvmem_cell_info** %6, align 8
  %12 = getelementptr inbounds %struct.nvmem_cell_info, %struct.nvmem_cell_info* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.nvmem_cell*, %struct.nvmem_cell** %7, align 8
  %15 = getelementptr inbounds %struct.nvmem_cell, %struct.nvmem_cell* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 4
  %16 = load %struct.nvmem_cell_info*, %struct.nvmem_cell_info** %6, align 8
  %17 = getelementptr inbounds %struct.nvmem_cell_info, %struct.nvmem_cell_info* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.nvmem_cell*, %struct.nvmem_cell** %7, align 8
  %20 = getelementptr inbounds %struct.nvmem_cell, %struct.nvmem_cell* %19, i32 0, i32 4
  store i32 %18, i32* %20, align 8
  %21 = load %struct.nvmem_cell_info*, %struct.nvmem_cell_info** %6, align 8
  %22 = getelementptr inbounds %struct.nvmem_cell_info, %struct.nvmem_cell_info* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.nvmem_cell*, %struct.nvmem_cell** %7, align 8
  %25 = getelementptr inbounds %struct.nvmem_cell, %struct.nvmem_cell* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load %struct.nvmem_cell_info*, %struct.nvmem_cell_info** %6, align 8
  %27 = getelementptr inbounds %struct.nvmem_cell_info, %struct.nvmem_cell_info* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.nvmem_cell*, %struct.nvmem_cell** %7, align 8
  %30 = getelementptr inbounds %struct.nvmem_cell, %struct.nvmem_cell* %29, i32 0, i32 2
  store i64 %28, i64* %30, align 8
  %31 = load %struct.nvmem_cell_info*, %struct.nvmem_cell_info** %6, align 8
  %32 = getelementptr inbounds %struct.nvmem_cell_info, %struct.nvmem_cell_info* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.nvmem_cell*, %struct.nvmem_cell** %7, align 8
  %35 = getelementptr inbounds %struct.nvmem_cell, %struct.nvmem_cell* %34, i32 0, i32 3
  store i64 %33, i64* %35, align 8
  %36 = load %struct.nvmem_cell*, %struct.nvmem_cell** %7, align 8
  %37 = getelementptr inbounds %struct.nvmem_cell, %struct.nvmem_cell* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %52

40:                                               ; preds = %3
  %41 = load %struct.nvmem_cell*, %struct.nvmem_cell** %7, align 8
  %42 = getelementptr inbounds %struct.nvmem_cell, %struct.nvmem_cell* %41, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.nvmem_cell*, %struct.nvmem_cell** %7, align 8
  %45 = getelementptr inbounds %struct.nvmem_cell, %struct.nvmem_cell* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %43, %46
  %48 = load i32, i32* @BITS_PER_BYTE, align 4
  %49 = call i32 @DIV_ROUND_UP(i64 %47, i32 %48)
  %50 = load %struct.nvmem_cell*, %struct.nvmem_cell** %7, align 8
  %51 = getelementptr inbounds %struct.nvmem_cell, %struct.nvmem_cell* %50, i32 0, i32 4
  store i32 %49, i32* %51, align 8
  br label %52

52:                                               ; preds = %40, %3
  %53 = load %struct.nvmem_cell*, %struct.nvmem_cell** %7, align 8
  %54 = getelementptr inbounds %struct.nvmem_cell, %struct.nvmem_cell* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.nvmem_device*, %struct.nvmem_device** %5, align 8
  %57 = getelementptr inbounds %struct.nvmem_device, %struct.nvmem_device* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @IS_ALIGNED(i32 %55, i32 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %73, label %61

61:                                               ; preds = %52
  %62 = load %struct.nvmem_device*, %struct.nvmem_device** %5, align 8
  %63 = getelementptr inbounds %struct.nvmem_device, %struct.nvmem_device* %62, i32 0, i32 1
  %64 = load %struct.nvmem_cell*, %struct.nvmem_cell** %7, align 8
  %65 = getelementptr inbounds %struct.nvmem_cell, %struct.nvmem_cell* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.nvmem_device*, %struct.nvmem_device** %5, align 8
  %68 = getelementptr inbounds %struct.nvmem_device, %struct.nvmem_device* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @dev_err(i32* %63, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %66, i32 %69)
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %4, align 4
  br label %74

73:                                               ; preds = %52
  store i32 0, i32* %4, align 4
  br label %74

74:                                               ; preds = %73, %61
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local i32 @DIV_ROUND_UP(i64, i32) #1

declare dso_local i32 @IS_ALIGNED(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
