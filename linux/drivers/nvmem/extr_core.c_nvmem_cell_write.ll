; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvmem/extr_core.c_nvmem_cell_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvmem/extr_core.c_nvmem_cell_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvmem_cell = type { i64, i64, i64, i32, %struct.nvmem_device* }
%struct.nvmem_device = type { i64 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvmem_cell_write(%struct.nvmem_cell* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvmem_cell*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.nvmem_device*, align 8
  %9 = alloca i32, align 4
  store %struct.nvmem_cell* %0, %struct.nvmem_cell** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.nvmem_cell*, %struct.nvmem_cell** %5, align 8
  %11 = getelementptr inbounds %struct.nvmem_cell, %struct.nvmem_cell* %10, i32 0, i32 4
  %12 = load %struct.nvmem_device*, %struct.nvmem_device** %11, align 8
  store %struct.nvmem_device* %12, %struct.nvmem_device** %8, align 8
  %13 = load %struct.nvmem_device*, %struct.nvmem_device** %8, align 8
  %14 = icmp ne %struct.nvmem_device* %13, null
  br i1 %14, label %15, label %31

15:                                               ; preds = %3
  %16 = load %struct.nvmem_device*, %struct.nvmem_device** %8, align 8
  %17 = getelementptr inbounds %struct.nvmem_device, %struct.nvmem_device* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %31, label %20

20:                                               ; preds = %15
  %21 = load %struct.nvmem_cell*, %struct.nvmem_cell** %5, align 8
  %22 = getelementptr inbounds %struct.nvmem_cell, %struct.nvmem_cell* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %20
  %26 = load i64, i64* %7, align 8
  %27 = load %struct.nvmem_cell*, %struct.nvmem_cell** %5, align 8
  %28 = getelementptr inbounds %struct.nvmem_cell, %struct.nvmem_cell* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %26, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %25, %15, %3
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %86

34:                                               ; preds = %25, %20
  %35 = load %struct.nvmem_cell*, %struct.nvmem_cell** %5, align 8
  %36 = getelementptr inbounds %struct.nvmem_cell, %struct.nvmem_cell* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %34
  %40 = load %struct.nvmem_cell*, %struct.nvmem_cell** %5, align 8
  %41 = getelementptr inbounds %struct.nvmem_cell, %struct.nvmem_cell* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %56

44:                                               ; preds = %39, %34
  %45 = load %struct.nvmem_cell*, %struct.nvmem_cell** %5, align 8
  %46 = load i8*, i8** %6, align 8
  %47 = load i64, i64* %7, align 8
  %48 = call i8* @nvmem_cell_prepare_write_buffer(%struct.nvmem_cell* %45, i8* %46, i64 %47)
  store i8* %48, i8** %6, align 8
  %49 = load i8*, i8** %6, align 8
  %50 = call i64 @IS_ERR(i8* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %44
  %53 = load i8*, i8** %6, align 8
  %54 = call i32 @PTR_ERR(i8* %53)
  store i32 %54, i32* %4, align 4
  br label %86

55:                                               ; preds = %44
  br label %56

56:                                               ; preds = %55, %39
  %57 = load %struct.nvmem_device*, %struct.nvmem_device** %8, align 8
  %58 = load %struct.nvmem_cell*, %struct.nvmem_cell** %5, align 8
  %59 = getelementptr inbounds %struct.nvmem_cell, %struct.nvmem_cell* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = load i8*, i8** %6, align 8
  %62 = load %struct.nvmem_cell*, %struct.nvmem_cell** %5, align 8
  %63 = getelementptr inbounds %struct.nvmem_cell, %struct.nvmem_cell* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @nvmem_reg_write(%struct.nvmem_device* %57, i32 %60, i8* %61, i64 %64)
  store i32 %65, i32* %9, align 4
  %66 = load %struct.nvmem_cell*, %struct.nvmem_cell** %5, align 8
  %67 = getelementptr inbounds %struct.nvmem_cell, %struct.nvmem_cell* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %75, label %70

70:                                               ; preds = %56
  %71 = load %struct.nvmem_cell*, %struct.nvmem_cell** %5, align 8
  %72 = getelementptr inbounds %struct.nvmem_cell, %struct.nvmem_cell* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %70, %56
  %76 = load i8*, i8** %6, align 8
  %77 = call i32 @kfree(i8* %76)
  br label %78

78:                                               ; preds = %75, %70
  %79 = load i32, i32* %9, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %78
  %82 = load i32, i32* %9, align 4
  store i32 %82, i32* %4, align 4
  br label %86

83:                                               ; preds = %78
  %84 = load i64, i64* %7, align 8
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* %4, align 4
  br label %86

86:                                               ; preds = %83, %81, %52, %31
  %87 = load i32, i32* %4, align 4
  ret i32 %87
}

declare dso_local i8* @nvmem_cell_prepare_write_buffer(%struct.nvmem_cell*, i8*, i64) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @nvmem_reg_write(%struct.nvmem_device*, i32, i8*, i64) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
