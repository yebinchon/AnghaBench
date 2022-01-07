; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvmem/extr_core.c_nvmem_device_cell_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvmem/extr_core.c_nvmem_device_cell_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvmem_device = type { i32 }
%struct.nvmem_cell_info = type { i32 }
%struct.nvmem_cell = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvmem_device_cell_read(%struct.nvmem_device* %0, %struct.nvmem_cell_info* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvmem_device*, align 8
  %6 = alloca %struct.nvmem_cell_info*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.nvmem_cell, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.nvmem_device* %0, %struct.nvmem_device** %5, align 8
  store %struct.nvmem_cell_info* %1, %struct.nvmem_cell_info** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load %struct.nvmem_device*, %struct.nvmem_device** %5, align 8
  %12 = icmp ne %struct.nvmem_device* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %34

16:                                               ; preds = %3
  %17 = load %struct.nvmem_device*, %struct.nvmem_device** %5, align 8
  %18 = load %struct.nvmem_cell_info*, %struct.nvmem_cell_info** %6, align 8
  %19 = call i32 @nvmem_cell_info_to_nvmem_cell(%struct.nvmem_device* %17, %struct.nvmem_cell_info* %18, %struct.nvmem_cell* %8)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = load i32, i32* %9, align 4
  store i32 %23, i32* %4, align 4
  br label %34

24:                                               ; preds = %16
  %25 = load %struct.nvmem_device*, %struct.nvmem_device** %5, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = call i32 @__nvmem_cell_read(%struct.nvmem_device* %25, %struct.nvmem_cell* %8, i8* %26, i32* %10)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load i32, i32* %9, align 4
  store i32 %31, i32* %4, align 4
  br label %34

32:                                               ; preds = %24
  %33 = load i32, i32* %10, align 4
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %32, %30, %22, %13
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local i32 @nvmem_cell_info_to_nvmem_cell(%struct.nvmem_device*, %struct.nvmem_cell_info*, %struct.nvmem_cell*) #1

declare dso_local i32 @__nvmem_cell_read(%struct.nvmem_device*, %struct.nvmem_cell*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
