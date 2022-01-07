; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvmem/extr_core.c_nvmem_shift_read_buffer_in_place.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvmem/extr_core.c_nvmem_shift_read_buffer_in_place.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvmem_cell = type { i32, i32, i32 }

@BITS_PER_BYTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvmem_cell*, i8*)* @nvmem_shift_read_buffer_in_place to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvmem_shift_read_buffer_in_place(%struct.nvmem_cell* %0, i8* %1) #0 {
  %3 = alloca %struct.nvmem_cell*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.nvmem_cell* %0, %struct.nvmem_cell** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load %struct.nvmem_cell*, %struct.nvmem_cell** %3, align 8
  %11 = getelementptr inbounds %struct.nvmem_cell, %struct.nvmem_cell* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %9, align 4
  %13 = load i8*, i8** %4, align 8
  %14 = bitcast i8* %13 to i32*
  store i32* %14, i32** %6, align 8
  store i32* %14, i32** %5, align 8
  %15 = load i32, i32* %9, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %49

17:                                               ; preds = %2
  %18 = load i32, i32* %9, align 4
  %19 = load i32*, i32** %6, align 8
  %20 = getelementptr inbounds i32, i32* %19, i32 1
  store i32* %20, i32** %6, align 8
  %21 = load i32, i32* %19, align 4
  %22 = ashr i32 %21, %18
  store i32 %22, i32* %19, align 4
  store i32 1, i32* %7, align 4
  br label %23

23:                                               ; preds = %45, %17
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.nvmem_cell*, %struct.nvmem_cell** %3, align 8
  %26 = getelementptr inbounds %struct.nvmem_cell, %struct.nvmem_cell* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %48

29:                                               ; preds = %23
  %30 = load i32*, i32** %6, align 8
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @BITS_PER_BYTE, align 4
  %33 = load i32, i32* %9, align 4
  %34 = sub nsw i32 %32, %33
  %35 = shl i32 %31, %34
  %36 = load i32*, i32** %5, align 8
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %35
  store i32 %38, i32* %36, align 4
  %39 = load i32*, i32** %6, align 8
  store i32* %39, i32** %5, align 8
  %40 = load i32, i32* %9, align 4
  %41 = load i32*, i32** %6, align 8
  %42 = getelementptr inbounds i32, i32* %41, i32 1
  store i32* %42, i32** %6, align 8
  %43 = load i32, i32* %41, align 4
  %44 = ashr i32 %43, %40
  store i32 %44, i32* %41, align 4
  br label %45

45:                                               ; preds = %29
  %46 = load i32, i32* %7, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %7, align 4
  br label %23

48:                                               ; preds = %23
  br label %57

49:                                               ; preds = %2
  %50 = load %struct.nvmem_cell*, %struct.nvmem_cell** %3, align 8
  %51 = getelementptr inbounds %struct.nvmem_cell, %struct.nvmem_cell* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = sub nsw i32 %52, 1
  %54 = load i32*, i32** %5, align 8
  %55 = sext i32 %53 to i64
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  store i32* %56, i32** %5, align 8
  br label %57

57:                                               ; preds = %49, %48
  %58 = load %struct.nvmem_cell*, %struct.nvmem_cell** %3, align 8
  %59 = getelementptr inbounds %struct.nvmem_cell, %struct.nvmem_cell* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.nvmem_cell*, %struct.nvmem_cell** %3, align 8
  %62 = getelementptr inbounds %struct.nvmem_cell, %struct.nvmem_cell* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @BITS_PER_BYTE, align 4
  %65 = call i32 @DIV_ROUND_UP(i32 %63, i32 %64)
  %66 = sub nsw i32 %60, %65
  store i32 %66, i32* %8, align 4
  br label %67

67:                                               ; preds = %71, %57
  %68 = load i32, i32* %8, align 4
  %69 = add nsw i32 %68, -1
  store i32 %69, i32* %8, align 4
  %70 = icmp sge i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %67
  %72 = load i32*, i32** %5, align 8
  %73 = getelementptr inbounds i32, i32* %72, i32 -1
  store i32* %73, i32** %5, align 8
  store i32 0, i32* %72, align 4
  br label %67

74:                                               ; preds = %67
  %75 = load %struct.nvmem_cell*, %struct.nvmem_cell** %3, align 8
  %76 = getelementptr inbounds %struct.nvmem_cell, %struct.nvmem_cell* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @BITS_PER_BYTE, align 4
  %79 = srem i32 %77, %78
  %80 = sub nsw i32 %79, 1
  %81 = call i32 @GENMASK(i32 %80, i32 0)
  %82 = load i32*, i32** %5, align 8
  %83 = load i32, i32* %82, align 4
  %84 = and i32 %83, %81
  store i32 %84, i32* %82, align 4
  ret void
}

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @GENMASK(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
