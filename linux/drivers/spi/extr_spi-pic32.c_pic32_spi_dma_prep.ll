; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-pic32.c_pic32_spi_dma_prep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-pic32.c_pic32_spi_dma_prep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pic32_spi = type { i32, %struct.spi_master* }
%struct.spi_master = type { i8*, i8* }
%struct.device = type { i32 }

@DMA_SLAVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"spi-rx\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"RX channel not found.\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"spi-tx\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"TX channel not found.\0A\00", align 1
@DMA_SLAVE_BUSWIDTH_1_BYTE = common dso_local global i32 0, align 4
@PIC32F_DMA_PREP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pic32_spi*, %struct.device*)* @pic32_spi_dma_prep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pic32_spi_dma_prep(%struct.pic32_spi* %0, %struct.device* %1) #0 {
  %3 = alloca %struct.pic32_spi*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.spi_master*, align 8
  %6 = alloca i32, align 4
  store %struct.pic32_spi* %0, %struct.pic32_spi** %3, align 8
  store %struct.device* %1, %struct.device** %4, align 8
  %7 = load %struct.pic32_spi*, %struct.pic32_spi** %3, align 8
  %8 = getelementptr inbounds %struct.pic32_spi, %struct.pic32_spi* %7, i32 0, i32 1
  %9 = load %struct.spi_master*, %struct.spi_master** %8, align 8
  store %struct.spi_master* %9, %struct.spi_master** %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = call i32 @dma_cap_zero(i32 %10)
  %12 = load i32, i32* @DMA_SLAVE, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @dma_cap_set(i32 %12, i32 %13)
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.device*, %struct.device** %4, align 8
  %17 = call i8* @dma_request_slave_channel_compat(i32 %15, i32* null, i32* null, %struct.device* %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %19 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %18, i32 0, i32 1
  store i8* %17, i8** %19, align 8
  %20 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %21 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %20, i32 0, i32 1
  %22 = load i8*, i8** %21, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %2
  %25 = load %struct.device*, %struct.device** %4, align 8
  %26 = call i32 @dev_warn(%struct.device* %25, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %51

27:                                               ; preds = %2
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.device*, %struct.device** %4, align 8
  %30 = call i8* @dma_request_slave_channel_compat(i32 %28, i32* null, i32* null, %struct.device* %29, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %31 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %32 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %31, i32 0, i32 0
  store i8* %30, i8** %32, align 8
  %33 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %34 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %27
  %38 = load %struct.device*, %struct.device** %4, align 8
  %39 = call i32 @dev_warn(%struct.device* %38, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  br label %51

40:                                               ; preds = %27
  %41 = load %struct.pic32_spi*, %struct.pic32_spi** %3, align 8
  %42 = load i32, i32* @DMA_SLAVE_BUSWIDTH_1_BYTE, align 4
  %43 = call i64 @pic32_spi_dma_config(%struct.pic32_spi* %41, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  br label %51

46:                                               ; preds = %40
  %47 = load i32, i32* @PIC32F_DMA_PREP, align 4
  %48 = load %struct.pic32_spi*, %struct.pic32_spi** %3, align 8
  %49 = getelementptr inbounds %struct.pic32_spi, %struct.pic32_spi* %48, i32 0, i32 0
  %50 = call i32 @set_bit(i32 %47, i32* %49)
  br label %71

51:                                               ; preds = %45, %37, %24
  %52 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %53 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %52, i32 0, i32 1
  %54 = load i8*, i8** %53, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %61

56:                                               ; preds = %51
  %57 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %58 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %57, i32 0, i32 1
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 @dma_release_channel(i8* %59)
  br label %61

61:                                               ; preds = %56, %51
  %62 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %63 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %66, label %71

66:                                               ; preds = %61
  %67 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %68 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %67, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  %70 = call i32 @dma_release_channel(i8* %69)
  br label %71

71:                                               ; preds = %46, %66, %61
  ret void
}

declare dso_local i32 @dma_cap_zero(i32) #1

declare dso_local i32 @dma_cap_set(i32, i32) #1

declare dso_local i8* @dma_request_slave_channel_compat(i32, i32*, i32*, %struct.device*, i8*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*) #1

declare dso_local i64 @pic32_spi_dma_config(%struct.pic32_spi*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @dma_release_channel(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
