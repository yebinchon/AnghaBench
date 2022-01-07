; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvmem/extr_core.c_nvmem_cell_read_u16.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvmem/extr_core.c_nvmem_cell_read_u16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.nvmem_cell = type opaque

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvmem_cell_read_u16(%struct.device* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.nvmem_cell*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = call i8* @nvmem_cell_get(%struct.device* %11, i8* %12)
  %14 = bitcast i8* %13 to %struct.nvmem_cell*
  store %struct.nvmem_cell* %14, %struct.nvmem_cell** %8, align 8
  %15 = load %struct.nvmem_cell*, %struct.nvmem_cell** %8, align 8
  %16 = bitcast %struct.nvmem_cell* %15 to i8*
  %17 = call i64 @IS_ERR(i8* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %3
  %20 = load %struct.nvmem_cell*, %struct.nvmem_cell** %8, align 8
  %21 = bitcast %struct.nvmem_cell* %20 to i8*
  %22 = call i32 @PTR_ERR(i8* %21)
  store i32 %22, i32* %4, align 4
  br label %56

23:                                               ; preds = %3
  %24 = load %struct.nvmem_cell*, %struct.nvmem_cell** %8, align 8
  %25 = bitcast %struct.nvmem_cell* %24 to i8*
  %26 = call i8* @nvmem_cell_read(i8* %25, i64* %10)
  store i8* %26, i8** %9, align 8
  %27 = load i8*, i8** %9, align 8
  %28 = call i64 @IS_ERR(i8* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %23
  %31 = load %struct.nvmem_cell*, %struct.nvmem_cell** %8, align 8
  %32 = bitcast %struct.nvmem_cell* %31 to i8*
  %33 = call i32 @nvmem_cell_put(i8* %32)
  %34 = load i8*, i8** %9, align 8
  %35 = call i32 @PTR_ERR(i8* %34)
  store i32 %35, i32* %4, align 4
  br label %56

36:                                               ; preds = %23
  %37 = load i64, i64* %10, align 8
  %38 = icmp ne i64 %37, 4
  br i1 %38, label %39, label %47

39:                                               ; preds = %36
  %40 = load i8*, i8** %9, align 8
  %41 = call i32 @kfree(i8* %40)
  %42 = load %struct.nvmem_cell*, %struct.nvmem_cell** %8, align 8
  %43 = bitcast %struct.nvmem_cell* %42 to i8*
  %44 = call i32 @nvmem_cell_put(i8* %43)
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %4, align 4
  br label %56

47:                                               ; preds = %36
  %48 = load i32*, i32** %7, align 8
  %49 = load i8*, i8** %9, align 8
  %50 = call i32 @memcpy(i32* %48, i8* %49, i32 4)
  %51 = load i8*, i8** %9, align 8
  %52 = call i32 @kfree(i8* %51)
  %53 = load %struct.nvmem_cell*, %struct.nvmem_cell** %8, align 8
  %54 = bitcast %struct.nvmem_cell* %53 to i8*
  %55 = call i32 @nvmem_cell_put(i8* %54)
  store i32 0, i32* %4, align 4
  br label %56

56:                                               ; preds = %47, %39, %30, %19
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i8* @nvmem_cell_get(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i8* @nvmem_cell_read(i8*, i64*) #1

declare dso_local i32 @nvmem_cell_put(i8*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
