; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-fsl-dspi.c_dspi_push_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-fsl-dspi.c_dspi_push_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_dspi = type { i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fsl_dspi*, i32)* @dspi_push_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dspi_push_rx(%struct.fsl_dspi* %0, i32 %1) #0 {
  %3 = alloca %struct.fsl_dspi*, align 8
  %4 = alloca i32, align 4
  store %struct.fsl_dspi* %0, %struct.fsl_dspi** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.fsl_dspi*, %struct.fsl_dspi** %3, align 8
  %6 = getelementptr inbounds %struct.fsl_dspi, %struct.fsl_dspi* %5, i32 0, i32 2
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  br label %55

10:                                               ; preds = %2
  %11 = load %struct.fsl_dspi*, %struct.fsl_dspi** %3, align 8
  %12 = getelementptr inbounds %struct.fsl_dspi, %struct.fsl_dspi* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = shl i32 1, %13
  %15 = sub nsw i32 %14, 1
  %16 = load i32, i32* %4, align 4
  %17 = and i32 %16, %15
  store i32 %17, i32* %4, align 4
  %18 = load %struct.fsl_dspi*, %struct.fsl_dspi** %3, align 8
  %19 = getelementptr inbounds %struct.fsl_dspi, %struct.fsl_dspi* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %22, label %28

22:                                               ; preds = %10
  %23 = load i32, i32* %4, align 4
  %24 = load %struct.fsl_dspi*, %struct.fsl_dspi** %3, align 8
  %25 = getelementptr inbounds %struct.fsl_dspi, %struct.fsl_dspi* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to i32*
  store i32 %23, i32* %27, align 4
  br label %46

28:                                               ; preds = %10
  %29 = load %struct.fsl_dspi*, %struct.fsl_dspi** %3, align 8
  %30 = getelementptr inbounds %struct.fsl_dspi, %struct.fsl_dspi* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %31, 2
  br i1 %32, label %33, label %39

33:                                               ; preds = %28
  %34 = load i32, i32* %4, align 4
  %35 = load %struct.fsl_dspi*, %struct.fsl_dspi** %3, align 8
  %36 = getelementptr inbounds %struct.fsl_dspi, %struct.fsl_dspi* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = inttoptr i64 %37 to i32*
  store i32 %34, i32* %38, align 4
  br label %45

39:                                               ; preds = %28
  %40 = load i32, i32* %4, align 4
  %41 = load %struct.fsl_dspi*, %struct.fsl_dspi** %3, align 8
  %42 = getelementptr inbounds %struct.fsl_dspi, %struct.fsl_dspi* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = inttoptr i64 %43 to i32*
  store i32 %40, i32* %44, align 4
  br label %45

45:                                               ; preds = %39, %33
  br label %46

46:                                               ; preds = %45, %22
  %47 = load %struct.fsl_dspi*, %struct.fsl_dspi** %3, align 8
  %48 = getelementptr inbounds %struct.fsl_dspi, %struct.fsl_dspi* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = sext i32 %49 to i64
  %51 = load %struct.fsl_dspi*, %struct.fsl_dspi** %3, align 8
  %52 = getelementptr inbounds %struct.fsl_dspi, %struct.fsl_dspi* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = add nsw i64 %53, %50
  store i64 %54, i64* %52, align 8
  br label %55

55:                                               ; preds = %46, %9
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
