; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-rb4xx.c_rb4xx_transfer_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-rb4xx.c_rb4xx_transfer_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_master = type { i32 }
%struct.spi_device = type { i32 }
%struct.spi_transfer = type { i32, i64, i32*, i32* }
%struct.rb4xx_spi = type { i32 }

@AR71XX_SPI_IOC_CS0 = common dso_local global i32 0, align 4
@AR71XX_SPI_IOC_CS1 = common dso_local global i32 0, align 4
@SPI_NBITS_DUAL = common dso_local global i64 0, align 8
@AR71XX_SPI_REG_RDS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_master*, %struct.spi_device*, %struct.spi_transfer*)* @rb4xx_transfer_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rb4xx_transfer_one(%struct.spi_master* %0, %struct.spi_device* %1, %struct.spi_transfer* %2) #0 {
  %4 = alloca %struct.spi_master*, align 8
  %5 = alloca %struct.spi_device*, align 8
  %6 = alloca %struct.spi_transfer*, align 8
  %7 = alloca %struct.rb4xx_spi*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store %struct.spi_master* %0, %struct.spi_master** %4, align 8
  store %struct.spi_device* %1, %struct.spi_device** %5, align 8
  store %struct.spi_transfer* %2, %struct.spi_transfer** %6, align 8
  %12 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %13 = call %struct.rb4xx_spi* @spi_master_get_devdata(%struct.spi_master* %12)
  store %struct.rb4xx_spi* %13, %struct.rb4xx_spi** %7, align 8
  %14 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %15 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp eq i32 %16, 2
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* @AR71XX_SPI_IOC_CS0, align 4
  store i32 %19, i32* %9, align 4
  br label %22

20:                                               ; preds = %3
  %21 = load i32, i32* @AR71XX_SPI_IOC_CS1, align 4
  store i32 %21, i32* %9, align 4
  br label %22

22:                                               ; preds = %20, %18
  %23 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %24 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %23, i32 0, i32 3
  %25 = load i32*, i32** %24, align 8
  store i32* %25, i32** %11, align 8
  %26 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %27 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %26, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  store i32* %28, i32** %10, align 8
  store i32 0, i32* %8, align 4
  br label %29

29:                                               ; preds = %71, %22
  %30 = load i32, i32* %8, align 4
  %31 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %32 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp slt i32 %30, %33
  br i1 %34, label %35, label %74

35:                                               ; preds = %29
  %36 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %37 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @SPI_NBITS_DUAL, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %50

41:                                               ; preds = %35
  %42 = load %struct.rb4xx_spi*, %struct.rb4xx_spi** %7, align 8
  %43 = load i32, i32* %9, align 4
  %44 = load i32*, i32** %11, align 8
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @do_spi_byte_two(%struct.rb4xx_spi* %42, i32 %43, i32 %48)
  br label %59

50:                                               ; preds = %35
  %51 = load %struct.rb4xx_spi*, %struct.rb4xx_spi** %7, align 8
  %52 = load i32, i32* %9, align 4
  %53 = load i32*, i32** %11, align 8
  %54 = load i32, i32* %8, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @do_spi_byte(%struct.rb4xx_spi* %51, i32 %52, i32 %57)
  br label %59

59:                                               ; preds = %50, %41
  %60 = load i32*, i32** %10, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %63, label %62

62:                                               ; preds = %59
  br label %71

63:                                               ; preds = %59
  %64 = load %struct.rb4xx_spi*, %struct.rb4xx_spi** %7, align 8
  %65 = load i32, i32* @AR71XX_SPI_REG_RDS, align 4
  %66 = call i32 @rb4xx_read(%struct.rb4xx_spi* %64, i32 %65)
  %67 = load i32*, i32** %10, align 8
  %68 = load i32, i32* %8, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  store i32 %66, i32* %70, align 4
  br label %71

71:                                               ; preds = %63, %62
  %72 = load i32, i32* %8, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %8, align 4
  br label %29

74:                                               ; preds = %29
  %75 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %76 = call i32 @spi_finalize_current_transfer(%struct.spi_master* %75)
  ret i32 0
}

declare dso_local %struct.rb4xx_spi* @spi_master_get_devdata(%struct.spi_master*) #1

declare dso_local i32 @do_spi_byte_two(%struct.rb4xx_spi*, i32, i32) #1

declare dso_local i32 @do_spi_byte(%struct.rb4xx_spi*, i32, i32) #1

declare dso_local i32 @rb4xx_read(%struct.rb4xx_spi*, i32) #1

declare dso_local i32 @spi_finalize_current_transfer(%struct.spi_master*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
