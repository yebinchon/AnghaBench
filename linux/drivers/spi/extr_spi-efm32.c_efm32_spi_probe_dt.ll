; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-efm32.c_efm32_spi_probe_dt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-efm32.c_efm32_spi_probe_dt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.spi_master = type { i32 }
%struct.efm32_spi_ddata = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"energymicro,location\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"efm32,location\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"location\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"using location %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"fall back to location %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.platform_device*, %struct.spi_master*, %struct.efm32_spi_ddata*)* @efm32_spi_probe_dt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @efm32_spi_probe_dt(%struct.platform_device* %0, %struct.spi_master* %1, %struct.efm32_spi_ddata* %2) #0 {
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.spi_master*, align 8
  %6 = alloca %struct.efm32_spi_ddata*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store %struct.spi_master* %1, %struct.spi_master** %5, align 8
  store %struct.efm32_spi_ddata* %2, %struct.efm32_spi_ddata** %6, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load %struct.device_node*, %struct.device_node** %12, align 8
  store %struct.device_node* %13, %struct.device_node** %7, align 8
  %14 = load %struct.device_node*, %struct.device_node** %7, align 8
  %15 = call i32 @of_property_read_u32(%struct.device_node* %14, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32* %8)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load %struct.device_node*, %struct.device_node** %7, align 8
  %20 = call i32 @of_property_read_u32(%struct.device_node* %19, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32* %8)
  store i32 %20, i32* %9, align 4
  br label %21

21:                                               ; preds = %18, %3
  %22 = load i32, i32* %9, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load %struct.device_node*, %struct.device_node** %7, align 8
  %26 = call i32 @of_property_read_u32(%struct.device_node* %25, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32* %8)
  store i32 %26, i32* %9, align 4
  br label %27

27:                                               ; preds = %24, %21
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %27
  %31 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %32 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %31, i32 0, i32 0
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @dev_dbg(%struct.TYPE_5__* %32, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %33)
  br label %42

35:                                               ; preds = %27
  %36 = load %struct.efm32_spi_ddata*, %struct.efm32_spi_ddata** %6, align 8
  %37 = call i32 @efm32_spi_get_configured_location(%struct.efm32_spi_ddata* %36)
  store i32 %37, i32* %8, align 4
  %38 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %39 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %38, i32 0, i32 0
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @dev_info(%struct.TYPE_5__* %39, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %40)
  br label %42

42:                                               ; preds = %35, %30
  %43 = load i32, i32* %8, align 4
  %44 = load %struct.efm32_spi_ddata*, %struct.efm32_spi_ddata** %6, align 8
  %45 = getelementptr inbounds %struct.efm32_spi_ddata, %struct.efm32_spi_ddata* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  store i32 %43, i32* %46, align 4
  ret void
}

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_5__*, i8*, i32) #1

declare dso_local i32 @efm32_spi_get_configured_location(%struct.efm32_spi_ddata*) #1

declare dso_local i32 @dev_info(%struct.TYPE_5__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
