; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-fsl-qspi.c_fsl_qspi_get_name.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-fsl-qspi.c_fsl_qspi_get_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_mem = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, %struct.device, i32 }
%struct.device = type { i32 }
%struct.fsl_qspi = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s-%d\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"failed to get memory for custom flash name\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.spi_mem*)* @fsl_qspi_get_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @fsl_qspi_get_name(%struct.spi_mem* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.spi_mem*, align 8
  %4 = alloca %struct.fsl_qspi*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i8*, align 8
  store %struct.spi_mem* %0, %struct.spi_mem** %3, align 8
  %7 = load %struct.spi_mem*, %struct.spi_mem** %3, align 8
  %8 = getelementptr inbounds %struct.spi_mem, %struct.spi_mem* %7, i32 0, i32 0
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.fsl_qspi* @spi_controller_get_devdata(i32 %11)
  store %struct.fsl_qspi* %12, %struct.fsl_qspi** %4, align 8
  %13 = load %struct.spi_mem*, %struct.spi_mem** %3, align 8
  %14 = getelementptr inbounds %struct.spi_mem, %struct.spi_mem* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  store %struct.device* %16, %struct.device** %5, align 8
  %17 = load %struct.fsl_qspi*, %struct.fsl_qspi** %4, align 8
  %18 = getelementptr inbounds %struct.fsl_qspi, %struct.fsl_qspi* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @of_get_available_child_count(i32 %21)
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %24, label %29

24:                                               ; preds = %1
  %25 = load %struct.fsl_qspi*, %struct.fsl_qspi** %4, align 8
  %26 = getelementptr inbounds %struct.fsl_qspi, %struct.fsl_qspi* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = call i8* @dev_name(%struct.TYPE_4__* %27)
  store i8* %28, i8** %2, align 8
  br label %52

29:                                               ; preds = %1
  %30 = load %struct.device*, %struct.device** %5, align 8
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = load %struct.fsl_qspi*, %struct.fsl_qspi** %4, align 8
  %33 = getelementptr inbounds %struct.fsl_qspi, %struct.fsl_qspi* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = call i8* @dev_name(%struct.TYPE_4__* %34)
  %36 = load %struct.spi_mem*, %struct.spi_mem** %3, align 8
  %37 = getelementptr inbounds %struct.spi_mem, %struct.spi_mem* %36, i32 0, i32 0
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i8* @devm_kasprintf(%struct.device* %30, i32 %31, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %35, i32 %40)
  store i8* %41, i8** %6, align 8
  %42 = load i8*, i8** %6, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %50, label %44

44:                                               ; preds = %29
  %45 = load %struct.device*, %struct.device** %5, align 8
  %46 = call i32 @dev_err(%struct.device* %45, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  %49 = call i8* @ERR_PTR(i32 %48)
  store i8* %49, i8** %2, align 8
  br label %52

50:                                               ; preds = %29
  %51 = load i8*, i8** %6, align 8
  store i8* %51, i8** %2, align 8
  br label %52

52:                                               ; preds = %50, %44, %24
  %53 = load i8*, i8** %2, align 8
  ret i8* %53
}

declare dso_local %struct.fsl_qspi* @spi_controller_get_devdata(i32) #1

declare dso_local i32 @of_get_available_child_count(i32) #1

declare dso_local i8* @dev_name(%struct.TYPE_4__*) #1

declare dso_local i8* @devm_kasprintf(%struct.device*, i32, i8*, i8*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i8* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
