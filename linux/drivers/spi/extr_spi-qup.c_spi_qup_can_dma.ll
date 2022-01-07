; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-qup.c_spi_qup_can_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-qup.c_spi_qup_can_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_master = type { i32, i32 }
%struct.spi_device = type { i32 }
%struct.spi_transfer = type { i32, i32, i64, i64 }
%struct.spi_qup = type { i32, i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_master*, %struct.spi_device*, %struct.spi_transfer*)* @spi_qup_can_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spi_qup_can_dma(%struct.spi_master* %0, %struct.spi_device* %1, %struct.spi_transfer* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.spi_master*, align 8
  %6 = alloca %struct.spi_device*, align 8
  %7 = alloca %struct.spi_transfer*, align 8
  %8 = alloca %struct.spi_qup*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.spi_master* %0, %struct.spi_master** %5, align 8
  store %struct.spi_device* %1, %struct.spi_device** %6, align 8
  store %struct.spi_transfer* %2, %struct.spi_transfer** %7, align 8
  %11 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %12 = call %struct.spi_qup* @spi_master_get_devdata(%struct.spi_master* %11)
  store %struct.spi_qup* %12, %struct.spi_qup** %8, align 8
  %13 = call i64 (...) @dma_get_cache_alignment()
  store i64 %13, i64* %9, align 8
  %14 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %15 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %14, i32 0, i32 3
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %48

18:                                               ; preds = %3
  %19 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %20 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* %9, align 8
  %23 = call i32 @IS_ALIGNED(i64 %21, i64 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %18
  %26 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %27 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @IS_ERR_OR_NULL(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %25, %18
  store i32 0, i32* %4, align 4
  br label %102

32:                                               ; preds = %25
  %33 = load %struct.spi_qup*, %struct.spi_qup** %8, align 8
  %34 = getelementptr inbounds %struct.spi_qup, %struct.spi_qup* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %32
  %38 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %39 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.spi_qup*, %struct.spi_qup** %8, align 8
  %42 = getelementptr inbounds %struct.spi_qup, %struct.spi_qup* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = srem i32 %40, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %37
  store i32 0, i32* %4, align 4
  br label %102

47:                                               ; preds = %37, %32
  br label %48

48:                                               ; preds = %47, %3
  %49 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %50 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %83

53:                                               ; preds = %48
  %54 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %55 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* %9, align 8
  %58 = call i32 @IS_ALIGNED(i64 %56, i64 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %53
  %61 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %62 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @IS_ERR_OR_NULL(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %60, %53
  store i32 0, i32* %4, align 4
  br label %102

67:                                               ; preds = %60
  %68 = load %struct.spi_qup*, %struct.spi_qup** %8, align 8
  %69 = getelementptr inbounds %struct.spi_qup, %struct.spi_qup* %68, i32 0, i32 3
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %82

72:                                               ; preds = %67
  %73 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %74 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.spi_qup*, %struct.spi_qup** %8, align 8
  %77 = getelementptr inbounds %struct.spi_qup, %struct.spi_qup* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = srem i32 %75, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %72
  store i32 0, i32* %4, align 4
  br label %102

82:                                               ; preds = %72, %67
  br label %83

83:                                               ; preds = %82, %48
  %84 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %85 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %88 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @DIV_ROUND_UP(i32 %89, i32 8)
  %91 = sdiv i32 %86, %90
  store i32 %91, i32* %10, align 4
  %92 = load i32, i32* %10, align 4
  %93 = sext i32 %92 to i64
  %94 = load %struct.spi_qup*, %struct.spi_qup** %8, align 8
  %95 = getelementptr inbounds %struct.spi_qup, %struct.spi_qup* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = sext i32 %96 to i64
  %98 = udiv i64 %97, 4
  %99 = icmp ule i64 %93, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %83
  store i32 0, i32* %4, align 4
  br label %102

101:                                              ; preds = %83
  store i32 1, i32* %4, align 4
  br label %102

102:                                              ; preds = %101, %100, %81, %66, %46, %31
  %103 = load i32, i32* %4, align 4
  ret i32 %103
}

declare dso_local %struct.spi_qup* @spi_master_get_devdata(%struct.spi_master*) #1

declare dso_local i64 @dma_get_cache_alignment(...) #1

declare dso_local i32 @IS_ALIGNED(i64, i64) #1

declare dso_local i64 @IS_ERR_OR_NULL(i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
