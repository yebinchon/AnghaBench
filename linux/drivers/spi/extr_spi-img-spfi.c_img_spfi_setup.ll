; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-img-spfi.c_img_spfi_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-img-spfi.c_img_spfi_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, i32, i32 }
%struct.img_spfi_device_data = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SPI_CS_HIGH = common dso_local global i32 0, align 4
@GPIOF_OUT_INIT_LOW = common dso_local global i32 0, align 4
@GPIOF_OUT_INIT_HIGH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"can't request chipselect gpio %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"chipselect gpio %d setup failed (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @img_spfi_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @img_spfi_setup(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.img_spfi_device_data*, align 8
  %6 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %7 = load i32, i32* @EINVAL, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %4, align 4
  %9 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %10 = call %struct.img_spfi_device_data* @spi_get_ctldata(%struct.spi_device* %9)
  store %struct.img_spfi_device_data* %10, %struct.img_spfi_device_data** %5, align 8
  %11 = load %struct.img_spfi_device_data*, %struct.img_spfi_device_data** %5, align 8
  %12 = icmp ne %struct.img_spfi_device_data* %11, null
  br i1 %12, label %27, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.img_spfi_device_data* @kzalloc(i32 4, i32 %14)
  store %struct.img_spfi_device_data* %15, %struct.img_spfi_device_data** %5, align 8
  %16 = load %struct.img_spfi_device_data*, %struct.img_spfi_device_data** %5, align 8
  %17 = icmp ne %struct.img_spfi_device_data* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %13
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %103

21:                                               ; preds = %13
  %22 = load %struct.img_spfi_device_data*, %struct.img_spfi_device_data** %5, align 8
  %23 = getelementptr inbounds %struct.img_spfi_device_data, %struct.img_spfi_device_data* %22, i32 0, i32 0
  store i32 0, i32* %23, align 4
  %24 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %25 = load %struct.img_spfi_device_data*, %struct.img_spfi_device_data** %5, align 8
  %26 = call i32 @spi_set_ctldata(%struct.spi_device* %24, %struct.img_spfi_device_data* %25)
  br label %27

27:                                               ; preds = %21, %1
  %28 = load %struct.img_spfi_device_data*, %struct.img_spfi_device_data** %5, align 8
  %29 = getelementptr inbounds %struct.img_spfi_device_data, %struct.img_spfi_device_data* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %65, label %32

32:                                               ; preds = %27
  %33 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %34 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %37 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @SPI_CS_HIGH, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %32
  %43 = load i32, i32* @GPIOF_OUT_INIT_LOW, align 4
  br label %46

44:                                               ; preds = %32
  %45 = load i32, i32* @GPIOF_OUT_INIT_HIGH, align 4
  br label %46

46:                                               ; preds = %44, %42
  %47 = phi i32 [ %43, %42 ], [ %45, %44 ]
  %48 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %49 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %48, i32 0, i32 2
  %50 = call i32 @dev_name(i32* %49)
  %51 = call i32 @gpio_request_one(i32 %35, i32 %47, i32 %50)
  store i32 %51, i32* %4, align 4
  %52 = load i32, i32* %4, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %46
  %55 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %56 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %55, i32 0, i32 2
  %57 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %58 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %56, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %59)
  br label %64

61:                                               ; preds = %46
  %62 = load %struct.img_spfi_device_data*, %struct.img_spfi_device_data** %5, align 8
  %63 = getelementptr inbounds %struct.img_spfi_device_data, %struct.img_spfi_device_data* %62, i32 0, i32 0
  store i32 1, i32* %63, align 4
  br label %64

64:                                               ; preds = %61, %54
  br label %101

65:                                               ; preds = %27
  %66 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %67 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @gpio_is_valid(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %100

71:                                               ; preds = %65
  %72 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %73 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @SPI_CS_HIGH, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %71
  %79 = load i32, i32* @GPIOF_OUT_INIT_LOW, align 4
  br label %82

80:                                               ; preds = %71
  %81 = load i32, i32* @GPIOF_OUT_INIT_HIGH, align 4
  br label %82

82:                                               ; preds = %80, %78
  %83 = phi i32 [ %79, %78 ], [ %81, %80 ]
  store i32 %83, i32* %6, align 4
  %84 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %85 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %6, align 4
  %88 = call i32 @gpio_direction_output(i32 %86, i32 %87)
  store i32 %88, i32* %4, align 4
  %89 = load i32, i32* %4, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %99

91:                                               ; preds = %82
  %92 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %93 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %92, i32 0, i32 2
  %94 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %95 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %4, align 4
  %98 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %93, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %96, i32 %97)
  br label %99

99:                                               ; preds = %91, %82
  br label %100

100:                                              ; preds = %99, %65
  br label %101

101:                                              ; preds = %100, %64
  %102 = load i32, i32* %4, align 4
  store i32 %102, i32* %2, align 4
  br label %103

103:                                              ; preds = %101, %18
  %104 = load i32, i32* %2, align 4
  ret i32 %104
}

declare dso_local %struct.img_spfi_device_data* @spi_get_ctldata(%struct.spi_device*) #1

declare dso_local %struct.img_spfi_device_data* @kzalloc(i32, i32) #1

declare dso_local i32 @spi_set_ctldata(%struct.spi_device*, %struct.img_spfi_device_data*) #1

declare dso_local i32 @gpio_request_one(i32, i32, i32) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, ...) #1

declare dso_local i64 @gpio_is_valid(i32) #1

declare dso_local i32 @gpio_direction_output(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
