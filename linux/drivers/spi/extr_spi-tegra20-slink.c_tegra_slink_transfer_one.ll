; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-tegra20-slink.c_tegra_slink_transfer_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-tegra20-slink.c_tegra_slink_transfer_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_master = type { i32 }
%struct.spi_device = type { i32 }
%struct.spi_transfer = type { i32 }
%struct.tegra_slink_data = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [36 x i8] c"spi can not start transfer, err %d\0A\00", align 1
@SLINK_DMA_TIMEOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"spi transfer timeout, err %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_master*, %struct.spi_device*, %struct.spi_transfer*)* @tegra_slink_transfer_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_slink_transfer_one(%struct.spi_master* %0, %struct.spi_device* %1, %struct.spi_transfer* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.spi_master*, align 8
  %6 = alloca %struct.spi_device*, align 8
  %7 = alloca %struct.spi_transfer*, align 8
  %8 = alloca %struct.tegra_slink_data*, align 8
  %9 = alloca i32, align 4
  store %struct.spi_master* %0, %struct.spi_master** %5, align 8
  store %struct.spi_device* %1, %struct.spi_device** %6, align 8
  store %struct.spi_transfer* %2, %struct.spi_transfer** %7, align 8
  %10 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %11 = call %struct.tegra_slink_data* @spi_master_get_devdata(%struct.spi_master* %10)
  store %struct.tegra_slink_data* %11, %struct.tegra_slink_data** %8, align 8
  %12 = load %struct.tegra_slink_data*, %struct.tegra_slink_data** %8, align 8
  %13 = getelementptr inbounds %struct.tegra_slink_data, %struct.tegra_slink_data* %12, i32 0, i32 3
  %14 = call i32 @reinit_completion(i32* %13)
  %15 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %16 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %17 = call i32 @tegra_slink_start_transfer_one(%struct.spi_device* %15, %struct.spi_transfer* %16)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %3
  %21 = load %struct.tegra_slink_data*, %struct.tegra_slink_data** %8, align 8
  %22 = getelementptr inbounds %struct.tegra_slink_data, %struct.tegra_slink_data* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @dev_err(i32 %23, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* %9, align 4
  store i32 %26, i32* %4, align 4
  br label %64

27:                                               ; preds = %3
  %28 = load %struct.tegra_slink_data*, %struct.tegra_slink_data** %8, align 8
  %29 = getelementptr inbounds %struct.tegra_slink_data, %struct.tegra_slink_data* %28, i32 0, i32 3
  %30 = load i32, i32* @SLINK_DMA_TIMEOUT, align 4
  %31 = call i32 @wait_for_completion_timeout(i32* %29, i32 %30)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp eq i32 %32, 0
  %34 = zext i1 %33 to i32
  %35 = call i64 @WARN_ON(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %27
  %38 = load %struct.tegra_slink_data*, %struct.tegra_slink_data** %8, align 8
  %39 = getelementptr inbounds %struct.tegra_slink_data, %struct.tegra_slink_data* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @dev_err(i32 %40, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* @EIO, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %64

45:                                               ; preds = %27
  %46 = load %struct.tegra_slink_data*, %struct.tegra_slink_data** %8, align 8
  %47 = getelementptr inbounds %struct.tegra_slink_data, %struct.tegra_slink_data* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %45
  %51 = load %struct.tegra_slink_data*, %struct.tegra_slink_data** %8, align 8
  %52 = getelementptr inbounds %struct.tegra_slink_data, %struct.tegra_slink_data* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %4, align 4
  br label %64

54:                                               ; preds = %45
  %55 = load %struct.tegra_slink_data*, %struct.tegra_slink_data** %8, align 8
  %56 = getelementptr inbounds %struct.tegra_slink_data, %struct.tegra_slink_data* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %54
  %60 = load %struct.tegra_slink_data*, %struct.tegra_slink_data** %8, align 8
  %61 = getelementptr inbounds %struct.tegra_slink_data, %struct.tegra_slink_data* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %4, align 4
  br label %64

63:                                               ; preds = %54
  store i32 0, i32* %4, align 4
  br label %64

64:                                               ; preds = %63, %59, %50, %37, %20
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local %struct.tegra_slink_data* @spi_master_get_devdata(%struct.spi_master*) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @tegra_slink_start_transfer_one(%struct.spi_device*, %struct.spi_transfer*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i64 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
