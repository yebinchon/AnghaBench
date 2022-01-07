; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-davinci.c_davinci_spi_request_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-davinci.c_davinci_spi_request_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.davinci_spi = type { i8*, i8*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.device* }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"rx\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"tx\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.davinci_spi*)* @davinci_spi_request_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @davinci_spi_request_dma(%struct.davinci_spi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.davinci_spi*, align 8
  %4 = alloca %struct.device*, align 8
  store %struct.davinci_spi* %0, %struct.davinci_spi** %3, align 8
  %5 = load %struct.davinci_spi*, %struct.davinci_spi** %3, align 8
  %6 = getelementptr inbounds %struct.davinci_spi, %struct.davinci_spi* %5, i32 0, i32 2
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.device*, %struct.device** %10, align 8
  store %struct.device* %11, %struct.device** %4, align 8
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = call i8* @dma_request_chan(%struct.device* %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.davinci_spi*, %struct.davinci_spi** %3, align 8
  %15 = getelementptr inbounds %struct.davinci_spi, %struct.davinci_spi* %14, i32 0, i32 1
  store i8* %13, i8** %15, align 8
  %16 = load %struct.davinci_spi*, %struct.davinci_spi** %3, align 8
  %17 = getelementptr inbounds %struct.davinci_spi, %struct.davinci_spi* %16, i32 0, i32 1
  %18 = load i8*, i8** %17, align 8
  %19 = call i64 @IS_ERR(i8* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %1
  %22 = load %struct.davinci_spi*, %struct.davinci_spi** %3, align 8
  %23 = getelementptr inbounds %struct.davinci_spi, %struct.davinci_spi* %22, i32 0, i32 1
  %24 = load i8*, i8** %23, align 8
  %25 = call i32 @PTR_ERR(i8* %24)
  store i32 %25, i32* %2, align 4
  br label %46

26:                                               ; preds = %1
  %27 = load %struct.device*, %struct.device** %4, align 8
  %28 = call i8* @dma_request_chan(%struct.device* %27, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %29 = load %struct.davinci_spi*, %struct.davinci_spi** %3, align 8
  %30 = getelementptr inbounds %struct.davinci_spi, %struct.davinci_spi* %29, i32 0, i32 0
  store i8* %28, i8** %30, align 8
  %31 = load %struct.davinci_spi*, %struct.davinci_spi** %3, align 8
  %32 = getelementptr inbounds %struct.davinci_spi, %struct.davinci_spi* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = call i64 @IS_ERR(i8* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %26
  %37 = load %struct.davinci_spi*, %struct.davinci_spi** %3, align 8
  %38 = getelementptr inbounds %struct.davinci_spi, %struct.davinci_spi* %37, i32 0, i32 1
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 @dma_release_channel(i8* %39)
  %41 = load %struct.davinci_spi*, %struct.davinci_spi** %3, align 8
  %42 = getelementptr inbounds %struct.davinci_spi, %struct.davinci_spi* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 @PTR_ERR(i8* %43)
  store i32 %44, i32* %2, align 4
  br label %46

45:                                               ; preds = %26
  store i32 0, i32* %2, align 4
  br label %46

46:                                               ; preds = %45, %36, %21
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i8* @dma_request_chan(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @dma_release_channel(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
