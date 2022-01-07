; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_sc27xx_fuel_gauge.c_sc27xx_fgu_calibration.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_sc27xx_fuel_gauge.c_sc27xx_fgu_calibration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc27xx_fgu_data = type { i32, i32, i32 }
%struct.nvmem_cell = type opaque

@.str = private unnamed_addr constant [10 x i8] c"fgu_calib\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sc27xx_fgu_data*)* @sc27xx_fgu_calibration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sc27xx_fgu_calibration(%struct.sc27xx_fgu_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sc27xx_fgu_data*, align 8
  %4 = alloca %struct.nvmem_cell*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store %struct.sc27xx_fgu_data* %0, %struct.sc27xx_fgu_data** %3, align 8
  %9 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %3, align 8
  %10 = getelementptr inbounds %struct.sc27xx_fgu_data, %struct.sc27xx_fgu_data* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = call i8* @nvmem_cell_get(i32 %11, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %13 = bitcast i8* %12 to %struct.nvmem_cell*
  store %struct.nvmem_cell* %13, %struct.nvmem_cell** %4, align 8
  %14 = load %struct.nvmem_cell*, %struct.nvmem_cell** %4, align 8
  %15 = bitcast %struct.nvmem_cell* %14 to i8*
  %16 = call i64 @IS_ERR(i8* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = load %struct.nvmem_cell*, %struct.nvmem_cell** %4, align 8
  %20 = bitcast %struct.nvmem_cell* %19 to i8*
  %21 = call i32 @PTR_ERR(i8* %20)
  store i32 %21, i32* %2, align 4
  br label %58

22:                                               ; preds = %1
  %23 = load %struct.nvmem_cell*, %struct.nvmem_cell** %4, align 8
  %24 = bitcast %struct.nvmem_cell* %23 to i8*
  %25 = call i8* @nvmem_cell_read(i8* %24, i64* %8)
  store i8* %25, i8** %7, align 8
  %26 = load %struct.nvmem_cell*, %struct.nvmem_cell** %4, align 8
  %27 = bitcast %struct.nvmem_cell* %26 to i8*
  %28 = call i32 @nvmem_cell_put(i8* %27)
  %29 = load i8*, i8** %7, align 8
  %30 = call i64 @IS_ERR(i8* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %22
  %33 = load i8*, i8** %7, align 8
  %34 = call i32 @PTR_ERR(i8* %33)
  store i32 %34, i32* %2, align 4
  br label %58

35:                                               ; preds = %22
  %36 = load i8*, i8** %7, align 8
  %37 = load i64, i64* %8, align 8
  %38 = call i32 @min(i64 %37, i32 4)
  %39 = call i32 @memcpy(i32* %5, i8* %36, i32 %38)
  %40 = load i32, i32* %5, align 4
  %41 = and i32 %40, 511
  %42 = add nsw i32 %41, 6963
  %43 = sub nsw i32 %42, 4096
  %44 = sub nsw i32 %43, 256
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = mul nsw i32 %45, 10
  %47 = call i32 @DIV_ROUND_CLOSEST(i32 %46, i32 42)
  %48 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %3, align 8
  %49 = getelementptr inbounds %struct.sc27xx_fgu_data, %struct.sc27xx_fgu_data* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  %50 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %3, align 8
  %51 = getelementptr inbounds %struct.sc27xx_fgu_data, %struct.sc27xx_fgu_data* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = mul nsw i32 %52, 4
  %54 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %3, align 8
  %55 = getelementptr inbounds %struct.sc27xx_fgu_data, %struct.sc27xx_fgu_data* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = load i8*, i8** %7, align 8
  %57 = call i32 @kfree(i8* %56)
  store i32 0, i32* %2, align 4
  br label %58

58:                                               ; preds = %35, %32, %18
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i8* @nvmem_cell_get(i32, i8*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i8* @nvmem_cell_read(i8*, i64*) #1

declare dso_local i32 @nvmem_cell_put(i8*) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i32 @min(i64, i32) #1

declare dso_local i32 @DIV_ROUND_CLOSEST(i32, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
