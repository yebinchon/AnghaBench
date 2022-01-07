; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-ep93xx.c_ep93xx_spi_read_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-ep93xx.c_ep93xx_spi_read_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_master = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.spi_transfer* }
%struct.spi_transfer = type { i64 }
%struct.ep93xx_spi = type { i64, i64, i64, i64 }

@SSPSR = common dso_local global i64 0, align 8
@SSPSR_RNE = common dso_local global i32 0, align 4
@SPI_FIFO_SIZE = common dso_local global i64 0, align 8
@EINPROGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_master*)* @ep93xx_spi_read_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ep93xx_spi_read_write(%struct.spi_master* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_master*, align 8
  %4 = alloca %struct.ep93xx_spi*, align 8
  %5 = alloca %struct.spi_transfer*, align 8
  store %struct.spi_master* %0, %struct.spi_master** %3, align 8
  %6 = load %struct.spi_master*, %struct.spi_master** %3, align 8
  %7 = call %struct.ep93xx_spi* @spi_master_get_devdata(%struct.spi_master* %6)
  store %struct.ep93xx_spi* %7, %struct.ep93xx_spi** %4, align 8
  %8 = load %struct.spi_master*, %struct.spi_master** %3, align 8
  %9 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.spi_transfer*, %struct.spi_transfer** %11, align 8
  store %struct.spi_transfer* %12, %struct.spi_transfer** %5, align 8
  br label %13

13:                                               ; preds = %23, %1
  %14 = load %struct.ep93xx_spi*, %struct.ep93xx_spi** %4, align 8
  %15 = getelementptr inbounds %struct.ep93xx_spi, %struct.ep93xx_spi* %14, i32 0, i32 3
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @SSPSR, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @readl(i64 %18)
  %20 = load i32, i32* @SSPSR_RNE, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %13
  %24 = load %struct.spi_master*, %struct.spi_master** %3, align 8
  %25 = call i32 @ep93xx_do_read(%struct.spi_master* %24)
  %26 = load %struct.ep93xx_spi*, %struct.ep93xx_spi** %4, align 8
  %27 = getelementptr inbounds %struct.ep93xx_spi, %struct.ep93xx_spi* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 %28, -1
  store i64 %29, i64* %27, align 8
  br label %13

30:                                               ; preds = %13
  br label %31

31:                                               ; preds = %47, %30
  %32 = load %struct.ep93xx_spi*, %struct.ep93xx_spi** %4, align 8
  %33 = getelementptr inbounds %struct.ep93xx_spi, %struct.ep93xx_spi* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @SPI_FIFO_SIZE, align 8
  %36 = icmp slt i64 %34, %35
  br i1 %36, label %37, label %45

37:                                               ; preds = %31
  %38 = load %struct.ep93xx_spi*, %struct.ep93xx_spi** %4, align 8
  %39 = getelementptr inbounds %struct.ep93xx_spi, %struct.ep93xx_spi* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %42 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp slt i64 %40, %43
  br label %45

45:                                               ; preds = %37, %31
  %46 = phi i1 [ false, %31 ], [ %44, %37 ]
  br i1 %46, label %47, label %54

47:                                               ; preds = %45
  %48 = load %struct.spi_master*, %struct.spi_master** %3, align 8
  %49 = call i32 @ep93xx_do_write(%struct.spi_master* %48)
  %50 = load %struct.ep93xx_spi*, %struct.ep93xx_spi** %4, align 8
  %51 = getelementptr inbounds %struct.ep93xx_spi, %struct.ep93xx_spi* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %52, 1
  store i64 %53, i64* %51, align 8
  br label %31

54:                                               ; preds = %45
  %55 = load %struct.ep93xx_spi*, %struct.ep93xx_spi** %4, align 8
  %56 = getelementptr inbounds %struct.ep93xx_spi, %struct.ep93xx_spi* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %59 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp eq i64 %57, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %54
  store i32 0, i32* %2, align 4
  br label %66

63:                                               ; preds = %54
  %64 = load i32, i32* @EINPROGRESS, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %2, align 4
  br label %66

66:                                               ; preds = %63, %62
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local %struct.ep93xx_spi* @spi_master_get_devdata(%struct.spi_master*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @ep93xx_do_read(%struct.spi_master*) #1

declare dso_local i32 @ep93xx_do_write(%struct.spi_master*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
