; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_spilib.c_gb_spi_get_master_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_spilib.c_gb_spi_get_master_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_spilib = type { i8*, i8*, i32, i8*, i32, i32, i32 }
%struct.gb_spi_master_config_response = type { i32, i32, i32, i32, i32, i32 }

@GB_SPI_TYPE_MASTER_CONFIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gb_spilib*)* @gb_spi_get_master_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gb_spi_get_master_config(%struct.gb_spilib* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gb_spilib*, align 8
  %4 = alloca %struct.gb_spi_master_config_response, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.gb_spilib* %0, %struct.gb_spilib** %3, align 8
  %8 = load %struct.gb_spilib*, %struct.gb_spilib** %3, align 8
  %9 = getelementptr inbounds %struct.gb_spilib, %struct.gb_spilib* %8, i32 0, i32 6
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @GB_SPI_TYPE_MASTER_CONFIG, align 4
  %12 = call i32 @gb_operation_sync(i32 %10, i32 %11, i32* null, i32 0, %struct.gb_spi_master_config_response* %4, i32 24)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %7, align 4
  store i32 %16, i32* %2, align 4
  br label %51

17:                                               ; preds = %1
  %18 = getelementptr inbounds %struct.gb_spi_master_config_response, %struct.gb_spi_master_config_response* %4, i32 0, i32 5
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @le16_to_cpu(i32 %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @gb_spi_mode_map(i32 %21)
  %23 = load %struct.gb_spilib*, %struct.gb_spilib** %3, align 8
  %24 = getelementptr inbounds %struct.gb_spilib, %struct.gb_spilib* %23, i32 0, i32 5
  store i32 %22, i32* %24, align 4
  %25 = getelementptr inbounds %struct.gb_spi_master_config_response, %struct.gb_spi_master_config_response* %4, i32 0, i32 4
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @le16_to_cpu(i32 %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @gb_spi_flags_map(i32 %28)
  %30 = load %struct.gb_spilib*, %struct.gb_spilib** %3, align 8
  %31 = getelementptr inbounds %struct.gb_spilib, %struct.gb_spilib* %30, i32 0, i32 4
  store i32 %29, i32* %31, align 8
  %32 = getelementptr inbounds %struct.gb_spi_master_config_response, %struct.gb_spi_master_config_response* %4, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = call i8* @le32_to_cpu(i32 %33)
  %35 = load %struct.gb_spilib*, %struct.gb_spilib** %3, align 8
  %36 = getelementptr inbounds %struct.gb_spilib, %struct.gb_spilib* %35, i32 0, i32 3
  store i8* %34, i8** %36, align 8
  %37 = getelementptr inbounds %struct.gb_spi_master_config_response, %struct.gb_spi_master_config_response* %4, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.gb_spilib*, %struct.gb_spilib** %3, align 8
  %40 = getelementptr inbounds %struct.gb_spilib, %struct.gb_spilib* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 8
  %41 = getelementptr inbounds %struct.gb_spi_master_config_response, %struct.gb_spi_master_config_response* %4, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i8* @le32_to_cpu(i32 %42)
  %44 = load %struct.gb_spilib*, %struct.gb_spilib** %3, align 8
  %45 = getelementptr inbounds %struct.gb_spilib, %struct.gb_spilib* %44, i32 0, i32 1
  store i8* %43, i8** %45, align 8
  %46 = getelementptr inbounds %struct.gb_spi_master_config_response, %struct.gb_spi_master_config_response* %4, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i8* @le32_to_cpu(i32 %47)
  %49 = load %struct.gb_spilib*, %struct.gb_spilib** %3, align 8
  %50 = getelementptr inbounds %struct.gb_spilib, %struct.gb_spilib* %49, i32 0, i32 0
  store i8* %48, i8** %50, align 8
  store i32 0, i32* %2, align 4
  br label %51

51:                                               ; preds = %17, %15
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i32 @gb_operation_sync(i32, i32, i32*, i32, %struct.gb_spi_master_config_response*, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @gb_spi_mode_map(i32) #1

declare dso_local i32 @gb_spi_flags_map(i32) #1

declare dso_local i8* @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
