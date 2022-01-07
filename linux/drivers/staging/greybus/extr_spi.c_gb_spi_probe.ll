; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_spi.c_gb_spi_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_spi.c_gb_spi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gbphy_device = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.gbphy_device_id = type { i32 }
%struct.gb_connection = type { i32 }

@spilib_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gbphy_device*, %struct.gbphy_device_id*)* @gb_spi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gb_spi_probe(%struct.gbphy_device* %0, %struct.gbphy_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gbphy_device*, align 8
  %5 = alloca %struct.gbphy_device_id*, align 8
  %6 = alloca %struct.gb_connection*, align 8
  %7 = alloca i32, align 4
  store %struct.gbphy_device* %0, %struct.gbphy_device** %4, align 8
  store %struct.gbphy_device_id* %1, %struct.gbphy_device_id** %5, align 8
  %8 = load %struct.gbphy_device*, %struct.gbphy_device** %4, align 8
  %9 = getelementptr inbounds %struct.gbphy_device, %struct.gbphy_device* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.gbphy_device*, %struct.gbphy_device** %4, align 8
  %12 = getelementptr inbounds %struct.gbphy_device, %struct.gbphy_device* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @le16_to_cpu(i32 %15)
  %17 = call %struct.gb_connection* @gb_connection_create(i32 %10, i32 %16, i32* null)
  store %struct.gb_connection* %17, %struct.gb_connection** %6, align 8
  %18 = load %struct.gb_connection*, %struct.gb_connection** %6, align 8
  %19 = call i64 @IS_ERR(%struct.gb_connection* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load %struct.gb_connection*, %struct.gb_connection** %6, align 8
  %23 = call i32 @PTR_ERR(%struct.gb_connection* %22)
  store i32 %23, i32* %3, align 4
  br label %52

24:                                               ; preds = %2
  %25 = load %struct.gb_connection*, %struct.gb_connection** %6, align 8
  %26 = call i32 @gb_connection_enable(%struct.gb_connection* %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  br label %48

30:                                               ; preds = %24
  %31 = load %struct.gb_connection*, %struct.gb_connection** %6, align 8
  %32 = load %struct.gbphy_device*, %struct.gbphy_device** %4, align 8
  %33 = getelementptr inbounds %struct.gbphy_device, %struct.gbphy_device* %32, i32 0, i32 0
  %34 = load i32, i32* @spilib_ops, align 4
  %35 = call i32 @gb_spilib_master_init(%struct.gb_connection* %31, i32* %33, i32 %34)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %30
  br label %45

39:                                               ; preds = %30
  %40 = load %struct.gbphy_device*, %struct.gbphy_device** %4, align 8
  %41 = load %struct.gb_connection*, %struct.gb_connection** %6, align 8
  %42 = call i32 @gb_gbphy_set_data(%struct.gbphy_device* %40, %struct.gb_connection* %41)
  %43 = load %struct.gbphy_device*, %struct.gbphy_device** %4, align 8
  %44 = call i32 @gbphy_runtime_put_autosuspend(%struct.gbphy_device* %43)
  store i32 0, i32* %3, align 4
  br label %52

45:                                               ; preds = %38
  %46 = load %struct.gb_connection*, %struct.gb_connection** %6, align 8
  %47 = call i32 @gb_connection_disable(%struct.gb_connection* %46)
  br label %48

48:                                               ; preds = %45, %29
  %49 = load %struct.gb_connection*, %struct.gb_connection** %6, align 8
  %50 = call i32 @gb_connection_destroy(%struct.gb_connection* %49)
  %51 = load i32, i32* %7, align 4
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %48, %39, %21
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local %struct.gb_connection* @gb_connection_create(i32, i32, i32*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i64 @IS_ERR(%struct.gb_connection*) #1

declare dso_local i32 @PTR_ERR(%struct.gb_connection*) #1

declare dso_local i32 @gb_connection_enable(%struct.gb_connection*) #1

declare dso_local i32 @gb_spilib_master_init(%struct.gb_connection*, i32*, i32) #1

declare dso_local i32 @gb_gbphy_set_data(%struct.gbphy_device*, %struct.gb_connection*) #1

declare dso_local i32 @gbphy_runtime_put_autosuspend(%struct.gbphy_device*) #1

declare dso_local i32 @gb_connection_disable(%struct.gb_connection*) #1

declare dso_local i32 @gb_connection_destroy(%struct.gb_connection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
