; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_spilib.c_gb_spi_setup_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_spilib.c_gb_spi_setup_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_spilib = type { i32 }
%struct.spi_master = type { i32 }
%struct.gb_spi_device_config_request = type { i64 }
%struct.gb_spi_device_config_response = type { i64, i32, i32, i32 }
%struct.spi_board_info = type { i32, i64, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.spi_device = type { i32 }

@GB_SPI_TYPE_DEVICE_CONFIG = common dso_local global i32 0, align 4
@GB_SPI_SPI_DEV = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"spidev\00", align 1
@GB_SPI_SPI_NOR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"spi-nor\00", align 1
@GB_SPI_SPI_MODALIAS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gb_spilib*, i64)* @gb_spi_setup_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gb_spi_setup_device(%struct.gb_spilib* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gb_spilib*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.spi_master*, align 8
  %7 = alloca %struct.gb_spi_device_config_request, align 8
  %8 = alloca %struct.gb_spi_device_config_response, align 8
  %9 = alloca %struct.spi_board_info, align 8
  %10 = alloca %struct.spi_device*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.gb_spilib* %0, %struct.gb_spilib** %4, align 8
  store i64 %1, i64* %5, align 8
  %13 = load %struct.gb_spilib*, %struct.gb_spilib** %4, align 8
  %14 = call %struct.spi_master* @get_master_from_spi(%struct.gb_spilib* %13)
  store %struct.spi_master* %14, %struct.spi_master** %6, align 8
  %15 = bitcast %struct.spi_board_info* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %15, i8 0, i64 32, i1 false)
  %16 = load i64, i64* %5, align 8
  %17 = getelementptr inbounds %struct.gb_spi_device_config_request, %struct.gb_spi_device_config_request* %7, i32 0, i32 0
  store i64 %16, i64* %17, align 8
  %18 = load %struct.gb_spilib*, %struct.gb_spilib** %4, align 8
  %19 = getelementptr inbounds %struct.gb_spilib, %struct.gb_spilib* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @GB_SPI_TYPE_DEVICE_CONFIG, align 4
  %22 = call i32 @gb_operation_sync(i32 %20, i32 %21, %struct.gb_spi_device_config_request* %7, i32 8, %struct.gb_spi_device_config_response* %8, i32 24)
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %11, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %2
  %26 = load i32, i32* %11, align 4
  store i32 %26, i32* %3, align 4
  br label %83

27:                                               ; preds = %2
  %28 = getelementptr inbounds %struct.gb_spi_device_config_response, %struct.gb_spi_device_config_response* %8, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %12, align 8
  %30 = load i64, i64* %12, align 8
  %31 = load i64, i64* @GB_SPI_SPI_DEV, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.spi_board_info, %struct.spi_board_info* %9, i32 0, i32 4
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @strlcpy(i32 %35, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 4)
  br label %60

37:                                               ; preds = %27
  %38 = load i64, i64* %12, align 8
  %39 = load i64, i64* @GB_SPI_SPI_NOR, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.spi_board_info, %struct.spi_board_info* %9, i32 0, i32 4
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @strlcpy(i32 %43, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 4)
  br label %59

45:                                               ; preds = %37
  %46 = load i64, i64* %12, align 8
  %47 = load i64, i64* @GB_SPI_SPI_MODALIAS, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.spi_board_info, %struct.spi_board_info* %9, i32 0, i32 4
  %51 = load i32, i32* %50, align 8
  %52 = getelementptr inbounds %struct.gb_spi_device_config_response, %struct.gb_spi_device_config_response* %8, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @memcpy(i32 %51, i32 %53, i32 4)
  br label %58

55:                                               ; preds = %45
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  br label %83

58:                                               ; preds = %49
  br label %59

59:                                               ; preds = %58, %41
  br label %60

60:                                               ; preds = %59, %33
  %61 = getelementptr inbounds %struct.gb_spi_device_config_response, %struct.gb_spi_device_config_response* %8, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @le16_to_cpu(i32 %62)
  %64 = getelementptr inbounds %struct.spi_board_info, %struct.spi_board_info* %9, i32 0, i32 3
  store i32 %63, i32* %64, align 4
  %65 = load %struct.spi_master*, %struct.spi_master** %6, align 8
  %66 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = getelementptr inbounds %struct.spi_board_info, %struct.spi_board_info* %9, i32 0, i32 2
  store i32 %67, i32* %68, align 8
  %69 = load i64, i64* %5, align 8
  %70 = getelementptr inbounds %struct.spi_board_info, %struct.spi_board_info* %9, i32 0, i32 1
  store i64 %69, i64* %70, align 8
  %71 = getelementptr inbounds %struct.gb_spi_device_config_response, %struct.gb_spi_device_config_response* %8, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @le32_to_cpu(i32 %72)
  %74 = getelementptr inbounds %struct.spi_board_info, %struct.spi_board_info* %9, i32 0, i32 0
  store i32 %73, i32* %74, align 8
  %75 = load %struct.spi_master*, %struct.spi_master** %6, align 8
  %76 = call %struct.spi_device* @spi_new_device(%struct.spi_master* %75, %struct.spi_board_info* %9)
  store %struct.spi_device* %76, %struct.spi_device** %10, align 8
  %77 = load %struct.spi_device*, %struct.spi_device** %10, align 8
  %78 = icmp ne %struct.spi_device* %77, null
  br i1 %78, label %82, label %79

79:                                               ; preds = %60
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %3, align 4
  br label %83

82:                                               ; preds = %60
  store i32 0, i32* %3, align 4
  br label %83

83:                                               ; preds = %82, %79, %55, %25
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local %struct.spi_master* @get_master_from_spi(%struct.gb_spilib*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @gb_operation_sync(i32, i32, %struct.gb_spi_device_config_request*, i32, %struct.gb_spi_device_config_response*, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local %struct.spi_device* @spi_new_device(%struct.spi_master*, %struct.spi_board_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
