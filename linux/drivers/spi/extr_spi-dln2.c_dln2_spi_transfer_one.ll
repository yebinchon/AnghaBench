; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-dln2.c_dln2_spi_transfer_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-dln2.c_dln2_spi_transfer_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_master = type { i32 }
%struct.spi_device = type { i32 }
%struct.spi_transfer = type { i32, i32, i32, i32, i32, i32 }
%struct.dln2_spi = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"Cannot setup transfer\0A\00", align 1
@DLN2_SPI_ATTR_LEAVE_SS_LOW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"write/read failed!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_master*, %struct.spi_device*, %struct.spi_transfer*)* @dln2_spi_transfer_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dln2_spi_transfer_one(%struct.spi_master* %0, %struct.spi_device* %1, %struct.spi_transfer* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.spi_master*, align 8
  %6 = alloca %struct.spi_device*, align 8
  %7 = alloca %struct.spi_transfer*, align 8
  %8 = alloca %struct.dln2_spi*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.spi_master* %0, %struct.spi_master** %5, align 8
  store %struct.spi_device* %1, %struct.spi_device** %6, align 8
  store %struct.spi_transfer* %2, %struct.spi_transfer** %7, align 8
  %11 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %12 = call %struct.dln2_spi* @spi_master_get_devdata(%struct.spi_master* %11)
  store %struct.dln2_spi* %12, %struct.dln2_spi** %8, align 8
  store i32 0, i32* %10, align 4
  %13 = load %struct.dln2_spi*, %struct.dln2_spi** %8, align 8
  %14 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %15 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %18 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %21 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @dln2_spi_transfer_setup(%struct.dln2_spi* %13, i32 %16, i32 %19, i32 %22)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %3
  %27 = load %struct.dln2_spi*, %struct.dln2_spi** %8, align 8
  %28 = getelementptr inbounds %struct.dln2_spi, %struct.dln2_spi* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = call i32 @dev_err(i32* %30, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* %9, align 4
  store i32 %32, i32* %4, align 4
  br label %68

33:                                               ; preds = %3
  %34 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %35 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %45, label %38

38:                                               ; preds = %33
  %39 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %40 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %41 = call i32 @spi_transfer_is_last(%struct.spi_master* %39, %struct.spi_transfer* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %38
  %44 = load i32, i32* @DLN2_SPI_ATTR_LEAVE_SS_LOW, align 4
  store i32 %44, i32* %10, align 4
  br label %45

45:                                               ; preds = %43, %38, %33
  %46 = load %struct.dln2_spi*, %struct.dln2_spi** %8, align 8
  %47 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %48 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %51 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %54 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %10, align 4
  %57 = call i32 @dln2_spi_rdwr(%struct.dln2_spi* %46, i32 %49, i32 %52, i32 %55, i32 %56)
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %9, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %45
  %61 = load %struct.dln2_spi*, %struct.dln2_spi** %8, align 8
  %62 = getelementptr inbounds %struct.dln2_spi, %struct.dln2_spi* %61, i32 0, i32 0
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = call i32 @dev_err(i32* %64, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %66

66:                                               ; preds = %60, %45
  %67 = load i32, i32* %9, align 4
  store i32 %67, i32* %4, align 4
  br label %68

68:                                               ; preds = %66, %26
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local %struct.dln2_spi* @spi_master_get_devdata(%struct.spi_master*) #1

declare dso_local i32 @dln2_spi_transfer_setup(%struct.dln2_spi*, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @spi_transfer_is_last(%struct.spi_master*, %struct.spi_transfer*) #1

declare dso_local i32 @dln2_spi_rdwr(%struct.dln2_spi*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
