; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvmem/extr_core.c___nvmem_cell_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvmem/extr_core.c___nvmem_cell_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvmem_device = type { i32 }
%struct.nvmem_cell = type { i64, i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvmem_device*, %struct.nvmem_cell*, i8*, i64*)* @__nvmem_cell_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__nvmem_cell_read(%struct.nvmem_device* %0, %struct.nvmem_cell* %1, i8* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvmem_device*, align 8
  %7 = alloca %struct.nvmem_cell*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  store %struct.nvmem_device* %0, %struct.nvmem_device** %6, align 8
  store %struct.nvmem_cell* %1, %struct.nvmem_cell** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64* %3, i64** %9, align 8
  %11 = load %struct.nvmem_device*, %struct.nvmem_device** %6, align 8
  %12 = load %struct.nvmem_cell*, %struct.nvmem_cell** %7, align 8
  %13 = getelementptr inbounds %struct.nvmem_cell, %struct.nvmem_cell* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = load %struct.nvmem_cell*, %struct.nvmem_cell** %7, align 8
  %17 = getelementptr inbounds %struct.nvmem_cell, %struct.nvmem_cell* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @nvmem_reg_read(%struct.nvmem_device* %11, i32 %14, i8* %15, i64 %18)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = load i32, i32* %10, align 4
  store i32 %23, i32* %5, align 4
  br label %47

24:                                               ; preds = %4
  %25 = load %struct.nvmem_cell*, %struct.nvmem_cell** %7, align 8
  %26 = getelementptr inbounds %struct.nvmem_cell, %struct.nvmem_cell* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %24
  %30 = load %struct.nvmem_cell*, %struct.nvmem_cell** %7, align 8
  %31 = getelementptr inbounds %struct.nvmem_cell, %struct.nvmem_cell* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %29, %24
  %35 = load %struct.nvmem_cell*, %struct.nvmem_cell** %7, align 8
  %36 = load i8*, i8** %8, align 8
  %37 = call i32 @nvmem_shift_read_buffer_in_place(%struct.nvmem_cell* %35, i8* %36)
  br label %38

38:                                               ; preds = %34, %29
  %39 = load i64*, i64** %9, align 8
  %40 = icmp ne i64* %39, null
  br i1 %40, label %41, label %46

41:                                               ; preds = %38
  %42 = load %struct.nvmem_cell*, %struct.nvmem_cell** %7, align 8
  %43 = getelementptr inbounds %struct.nvmem_cell, %struct.nvmem_cell* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64*, i64** %9, align 8
  store i64 %44, i64* %45, align 8
  br label %46

46:                                               ; preds = %41, %38
  store i32 0, i32* %5, align 4
  br label %47

47:                                               ; preds = %46, %22
  %48 = load i32, i32* %5, align 4
  ret i32 %48
}

declare dso_local i32 @nvmem_reg_read(%struct.nvmem_device*, i32, i8*, i64) #1

declare dso_local i32 @nvmem_shift_read_buffer_in_place(%struct.nvmem_cell*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
