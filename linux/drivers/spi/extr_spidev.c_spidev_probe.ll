; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spidev.c_spidev_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spidev.c_spidev_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, %struct.TYPE_5__, i32, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32 }
%struct.spidev_data = type { i32, i32, i32, i32, i32, %struct.spi_device* }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"spidev\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"%pOF: buggy DT: spidev listed directly in DT\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@device_list_lock = common dso_local global i32 0, align 4
@minors = common dso_local global i32 0, align 4
@N_SPI_MINORS = common dso_local global i64 0, align 8
@SPIDEV_MAJOR = common dso_local global i32 0, align 4
@spidev_class = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"spidev%d.%d\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"no minor number available!\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@device_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @spidev_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spidev_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.spidev_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.device*, align 8
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %8 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %9 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %1
  %14 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %15 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = call i64 @of_device_is_compatible(i64 %17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %19 = icmp ne i64 %18, 0
  br label %20

20:                                               ; preds = %13, %1
  %21 = phi i1 [ false, %1 ], [ %19, %13 ]
  %22 = zext i1 %21 to i32
  %23 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %24 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @WARN(i32 %22, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i64 %26)
  %28 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %29 = call i32 @spidev_probe_acpi(%struct.spi_device* %28)
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call %struct.spidev_data* @kzalloc(i32 32, i32 %30)
  store %struct.spidev_data* %31, %struct.spidev_data** %4, align 8
  %32 = load %struct.spidev_data*, %struct.spidev_data** %4, align 8
  %33 = icmp ne %struct.spidev_data* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %20
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %115

37:                                               ; preds = %20
  %38 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %39 = load %struct.spidev_data*, %struct.spidev_data** %4, align 8
  %40 = getelementptr inbounds %struct.spidev_data, %struct.spidev_data* %39, i32 0, i32 5
  store %struct.spi_device* %38, %struct.spi_device** %40, align 8
  %41 = load %struct.spidev_data*, %struct.spidev_data** %4, align 8
  %42 = getelementptr inbounds %struct.spidev_data, %struct.spidev_data* %41, i32 0, i32 4
  %43 = call i32 @spin_lock_init(i32* %42)
  %44 = load %struct.spidev_data*, %struct.spidev_data** %4, align 8
  %45 = getelementptr inbounds %struct.spidev_data, %struct.spidev_data* %44, i32 0, i32 3
  %46 = call i32 @mutex_init(i32* %45)
  %47 = load %struct.spidev_data*, %struct.spidev_data** %4, align 8
  %48 = getelementptr inbounds %struct.spidev_data, %struct.spidev_data* %47, i32 0, i32 1
  %49 = call i32 @INIT_LIST_HEAD(i32* %48)
  %50 = call i32 @mutex_lock(i32* @device_list_lock)
  %51 = load i32, i32* @minors, align 4
  %52 = load i64, i64* @N_SPI_MINORS, align 8
  %53 = call i64 @find_first_zero_bit(i32 %51, i64 %52)
  store i64 %53, i64* %6, align 8
  %54 = load i64, i64* %6, align 8
  %55 = load i64, i64* @N_SPI_MINORS, align 8
  %56 = icmp ult i64 %54, %55
  br i1 %56, label %57, label %81

57:                                               ; preds = %37
  %58 = load i32, i32* @SPIDEV_MAJOR, align 4
  %59 = load i64, i64* %6, align 8
  %60 = call i32 @MKDEV(i32 %58, i64 %59)
  %61 = load %struct.spidev_data*, %struct.spidev_data** %4, align 8
  %62 = getelementptr inbounds %struct.spidev_data, %struct.spidev_data* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 8
  %63 = load i32, i32* @spidev_class, align 4
  %64 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %65 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %64, i32 0, i32 1
  %66 = load %struct.spidev_data*, %struct.spidev_data** %4, align 8
  %67 = getelementptr inbounds %struct.spidev_data, %struct.spidev_data* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.spidev_data*, %struct.spidev_data** %4, align 8
  %70 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %71 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %70, i32 0, i32 3
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %76 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = call %struct.device* @device_create(i32 %63, %struct.TYPE_5__* %65, i32 %68, %struct.spidev_data* %69, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %74, i32 %77)
  store %struct.device* %78, %struct.device** %7, align 8
  %79 = load %struct.device*, %struct.device** %7, align 8
  %80 = call i32 @PTR_ERR_OR_ZERO(%struct.device* %79)
  store i32 %80, i32* %5, align 4
  br label %87

81:                                               ; preds = %37
  %82 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %83 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %82, i32 0, i32 1
  %84 = call i32 @dev_dbg(%struct.TYPE_5__* %83, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %85 = load i32, i32* @ENODEV, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %5, align 4
  br label %87

87:                                               ; preds = %81, %57
  %88 = load i32, i32* %5, align 4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %97

90:                                               ; preds = %87
  %91 = load i64, i64* %6, align 8
  %92 = load i32, i32* @minors, align 4
  %93 = call i32 @set_bit(i64 %91, i32 %92)
  %94 = load %struct.spidev_data*, %struct.spidev_data** %4, align 8
  %95 = getelementptr inbounds %struct.spidev_data, %struct.spidev_data* %94, i32 0, i32 1
  %96 = call i32 @list_add(i32* %95, i32* @device_list)
  br label %97

97:                                               ; preds = %90, %87
  %98 = call i32 @mutex_unlock(i32* @device_list_lock)
  %99 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %100 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.spidev_data*, %struct.spidev_data** %4, align 8
  %103 = getelementptr inbounds %struct.spidev_data, %struct.spidev_data* %102, i32 0, i32 0
  store i32 %101, i32* %103, align 8
  %104 = load i32, i32* %5, align 4
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %97
  %107 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %108 = load %struct.spidev_data*, %struct.spidev_data** %4, align 8
  %109 = call i32 @spi_set_drvdata(%struct.spi_device* %107, %struct.spidev_data* %108)
  br label %113

110:                                              ; preds = %97
  %111 = load %struct.spidev_data*, %struct.spidev_data** %4, align 8
  %112 = call i32 @kfree(%struct.spidev_data* %111)
  br label %113

113:                                              ; preds = %110, %106
  %114 = load i32, i32* %5, align 4
  store i32 %114, i32* %2, align 4
  br label %115

115:                                              ; preds = %113, %34
  %116 = load i32, i32* %2, align 4
  ret i32 %116
}

declare dso_local i32 @WARN(i32, i8*, i64) #1

declare dso_local i64 @of_device_is_compatible(i64, i8*) #1

declare dso_local i32 @spidev_probe_acpi(%struct.spi_device*) #1

declare dso_local %struct.spidev_data* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @find_first_zero_bit(i32, i64) #1

declare dso_local i32 @MKDEV(i32, i64) #1

declare dso_local %struct.device* @device_create(i32, %struct.TYPE_5__*, i32, %struct.spidev_data*, i8*, i32, i32) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(%struct.device*) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_5__*, i8*) #1

declare dso_local i32 @set_bit(i64, i32) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.spidev_data*) #1

declare dso_local i32 @kfree(%struct.spidev_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
