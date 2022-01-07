; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-dw.c_spi_hw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-dw.c_spi_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.dw_spi = type { i32, i64 }

@DW_SPI_TXFLTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Detected FIFO size: %u bytes\0A\00", align 1
@DW_SPI_CS_OVERRIDE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, %struct.dw_spi*)* @spi_hw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spi_hw_init(%struct.device* %0, %struct.dw_spi* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.dw_spi*, align 8
  %5 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.dw_spi* %1, %struct.dw_spi** %4, align 8
  %6 = load %struct.dw_spi*, %struct.dw_spi** %4, align 8
  %7 = call i32 @spi_reset_chip(%struct.dw_spi* %6)
  %8 = load %struct.dw_spi*, %struct.dw_spi** %4, align 8
  %9 = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %49, label %12

12:                                               ; preds = %2
  store i32 1, i32* %5, align 4
  br label %13

13:                                               ; preds = %28, %12
  %14 = load i32, i32* %5, align 4
  %15 = icmp slt i32 %14, 256
  br i1 %15, label %16, label %31

16:                                               ; preds = %13
  %17 = load %struct.dw_spi*, %struct.dw_spi** %4, align 8
  %18 = load i32, i32* @DW_SPI_TXFLTR, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @dw_writel(%struct.dw_spi* %17, i32 %18, i32 %19)
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.dw_spi*, %struct.dw_spi** %4, align 8
  %23 = load i32, i32* @DW_SPI_TXFLTR, align 4
  %24 = call i32 @dw_readl(%struct.dw_spi* %22, i32 %23)
  %25 = icmp ne i32 %21, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %16
  br label %31

27:                                               ; preds = %16
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* %5, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %5, align 4
  br label %13

31:                                               ; preds = %26, %13
  %32 = load %struct.dw_spi*, %struct.dw_spi** %4, align 8
  %33 = load i32, i32* @DW_SPI_TXFLTR, align 4
  %34 = call i32 @dw_writel(%struct.dw_spi* %32, i32 %33, i32 0)
  %35 = load i32, i32* %5, align 4
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  br label %40

38:                                               ; preds = %31
  %39 = load i32, i32* %5, align 4
  br label %40

40:                                               ; preds = %38, %37
  %41 = phi i32 [ 0, %37 ], [ %39, %38 ]
  %42 = load %struct.dw_spi*, %struct.dw_spi** %4, align 8
  %43 = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load %struct.device*, %struct.device** %3, align 8
  %45 = load %struct.dw_spi*, %struct.dw_spi** %4, align 8
  %46 = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @dev_dbg(%struct.device* %44, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %47)
  br label %49

49:                                               ; preds = %40, %2
  %50 = load %struct.dw_spi*, %struct.dw_spi** %4, align 8
  %51 = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %49
  %55 = load %struct.dw_spi*, %struct.dw_spi** %4, align 8
  %56 = load i32, i32* @DW_SPI_CS_OVERRIDE, align 4
  %57 = call i32 @dw_writel(%struct.dw_spi* %55, i32 %56, i32 15)
  br label %58

58:                                               ; preds = %54, %49
  ret void
}

declare dso_local i32 @spi_reset_chip(%struct.dw_spi*) #1

declare dso_local i32 @dw_writel(%struct.dw_spi*, i32, i32) #1

declare dso_local i32 @dw_readl(%struct.dw_spi*, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
