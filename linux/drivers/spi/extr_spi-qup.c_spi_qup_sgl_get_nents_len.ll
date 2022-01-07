; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-qup.c_spi_qup_sgl_get_nents_len.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-qup.c_spi_qup_sgl_get_nents_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scatterlist = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.scatterlist*, i64, i64*)* @spi_qup_sgl_get_nents_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @spi_qup_sgl_get_nents_len(%struct.scatterlist* %0, i64 %1, i64* %2) #0 {
  %4 = alloca %struct.scatterlist*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.scatterlist*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.scatterlist* %0, %struct.scatterlist** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64* %2, i64** %6, align 8
  store i64 0, i64* %8, align 8
  %10 = load %struct.scatterlist*, %struct.scatterlist** %4, align 8
  store %struct.scatterlist* %10, %struct.scatterlist** %7, align 8
  br label %11

11:                                               ; preds = %39, %3
  %12 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %13 = icmp ne %struct.scatterlist* %12, null
  br i1 %13, label %14, label %42

14:                                               ; preds = %11
  %15 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %16 = call i32 @sg_dma_len(%struct.scatterlist* %15)
  store i32 %16, i32* %9, align 4
  %17 = load i64, i64* %8, align 8
  %18 = load i32, i32* %9, align 4
  %19 = zext i32 %18 to i64
  %20 = add nsw i64 %17, %19
  %21 = load i64, i64* %8, align 8
  %22 = icmp slt i64 %20, %21
  br i1 %22, label %30, label %23

23:                                               ; preds = %14
  %24 = load i64, i64* %8, align 8
  %25 = load i32, i32* %9, align 4
  %26 = zext i32 %25 to i64
  %27 = add nsw i64 %24, %26
  %28 = load i64, i64* %5, align 8
  %29 = icmp sgt i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %23, %14
  br label %42

31:                                               ; preds = %23
  %32 = load i32, i32* %9, align 4
  %33 = zext i32 %32 to i64
  %34 = load i64, i64* %8, align 8
  %35 = add nsw i64 %34, %33
  store i64 %35, i64* %8, align 8
  %36 = load i64*, i64** %6, align 8
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %37, 1
  store i64 %38, i64* %36, align 8
  br label %39

39:                                               ; preds = %31
  %40 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %41 = call %struct.scatterlist* @sg_next(%struct.scatterlist* %40)
  store %struct.scatterlist* %41, %struct.scatterlist** %7, align 8
  br label %11

42:                                               ; preds = %30, %11
  %43 = load i64, i64* %8, align 8
  ret i64 %43
}

declare dso_local i32 @sg_dma_len(%struct.scatterlist*) #1

declare dso_local %struct.scatterlist* @sg_next(%struct.scatterlist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
