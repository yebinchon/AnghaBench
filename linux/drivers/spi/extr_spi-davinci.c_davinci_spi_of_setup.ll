; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-davinci.c_davinci_spi_of_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-davinci.c_davinci_spi_of_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.davinci_spi_config = type { i32, i64 }
%struct.spi_device = type { %struct.davinci_spi_config*, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.davinci_spi = type { i64, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@davinci_spi_default_cfg = common dso_local global %struct.davinci_spi_config zeroinitializer, align 8
@.str = private unnamed_addr constant [14 x i8] c"ti,spi-wdelay\00", align 1
@SPI_IO_TYPE_DMA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @davinci_spi_of_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @davinci_spi_of_setup(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.davinci_spi_config*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.davinci_spi*, align 8
  %7 = alloca i64, align 8
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %8 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %9 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %8, i32 0, i32 0
  %10 = load %struct.davinci_spi_config*, %struct.davinci_spi_config** %9, align 8
  store %struct.davinci_spi_config* %10, %struct.davinci_spi_config** %4, align 8
  %11 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %12 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.device_node*, %struct.device_node** %13, align 8
  store %struct.device_node* %14, %struct.device_node** %5, align 8
  %15 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %16 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call %struct.davinci_spi* @spi_master_get_devdata(i32 %17)
  store %struct.davinci_spi* %18, %struct.davinci_spi** %6, align 8
  %19 = load %struct.davinci_spi_config*, %struct.davinci_spi_config** %4, align 8
  %20 = icmp eq %struct.davinci_spi_config* %19, null
  br i1 %20, label %21, label %60

21:                                               ; preds = %1
  %22 = load %struct.device_node*, %struct.device_node** %5, align 8
  %23 = icmp ne %struct.device_node* %22, null
  br i1 %23, label %24, label %60

24:                                               ; preds = %21
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.davinci_spi_config* @kzalloc(i32 16, i32 %25)
  store %struct.davinci_spi_config* %26, %struct.davinci_spi_config** %4, align 8
  %27 = load %struct.davinci_spi_config*, %struct.davinci_spi_config** %4, align 8
  %28 = icmp ne %struct.davinci_spi_config* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %24
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %61

32:                                               ; preds = %24
  %33 = load %struct.davinci_spi_config*, %struct.davinci_spi_config** %4, align 8
  %34 = bitcast %struct.davinci_spi_config* %33 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %34, i8* align 8 bitcast (%struct.davinci_spi_config* @davinci_spi_default_cfg to i8*), i64 16, i1 false)
  %35 = load %struct.device_node*, %struct.device_node** %5, align 8
  %36 = call i32 @of_property_read_u32(%struct.device_node* %35, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i64* %7)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %32
  %39 = load i64, i64* %7, align 8
  %40 = load %struct.davinci_spi_config*, %struct.davinci_spi_config** %4, align 8
  %41 = getelementptr inbounds %struct.davinci_spi_config, %struct.davinci_spi_config* %40, i32 0, i32 1
  store i64 %39, i64* %41, align 8
  br label %42

42:                                               ; preds = %38, %32
  %43 = load %struct.davinci_spi_config*, %struct.davinci_spi_config** %4, align 8
  %44 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %45 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %44, i32 0, i32 0
  store %struct.davinci_spi_config* %43, %struct.davinci_spi_config** %45, align 8
  %46 = load %struct.davinci_spi*, %struct.davinci_spi** %6, align 8
  %47 = getelementptr inbounds %struct.davinci_spi, %struct.davinci_spi* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %42
  %51 = load %struct.davinci_spi*, %struct.davinci_spi** %6, align 8
  %52 = getelementptr inbounds %struct.davinci_spi, %struct.davinci_spi* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %50
  %56 = load i32, i32* @SPI_IO_TYPE_DMA, align 4
  %57 = load %struct.davinci_spi_config*, %struct.davinci_spi_config** %4, align 8
  %58 = getelementptr inbounds %struct.davinci_spi_config, %struct.davinci_spi_config* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  br label %59

59:                                               ; preds = %55, %50, %42
  br label %60

60:                                               ; preds = %59, %21, %1
  store i32 0, i32* %2, align 4
  br label %61

61:                                               ; preds = %60, %29
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local %struct.davinci_spi* @spi_master_get_devdata(i32) #1

declare dso_local %struct.davinci_spi_config* @kzalloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
