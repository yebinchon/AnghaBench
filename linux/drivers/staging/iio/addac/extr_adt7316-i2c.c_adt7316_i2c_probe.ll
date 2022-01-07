; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/iio/addac/extr_adt7316-i2c.c_adt7316_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/iio/addac/extr_adt7316-i2c.c_adt7316_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32 }
%struct.i2c_device_id = type { i32 }
%struct.adt7316_bus = type { i32, i32, i32, i32, i32, %struct.i2c_client* }

@adt7316_i2c_multi_write = common dso_local global i32 0, align 4
@adt7316_i2c_multi_read = common dso_local global i32 0, align 4
@adt7316_i2c_write = common dso_local global i32 0, align 4
@adt7316_i2c_read = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @adt7316_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adt7316_i2c_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.i2c_device_id*, align 8
  %5 = alloca %struct.adt7316_bus, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %4, align 8
  %6 = getelementptr inbounds %struct.adt7316_bus, %struct.adt7316_bus* %5, i32 0, i32 0
  %7 = load i32, i32* @adt7316_i2c_multi_write, align 4
  store i32 %7, i32* %6, align 8
  %8 = getelementptr inbounds %struct.adt7316_bus, %struct.adt7316_bus* %5, i32 0, i32 1
  %9 = load i32, i32* @adt7316_i2c_multi_read, align 4
  store i32 %9, i32* %8, align 4
  %10 = getelementptr inbounds %struct.adt7316_bus, %struct.adt7316_bus* %5, i32 0, i32 2
  %11 = load i32, i32* @adt7316_i2c_write, align 4
  store i32 %11, i32* %10, align 8
  %12 = getelementptr inbounds %struct.adt7316_bus, %struct.adt7316_bus* %5, i32 0, i32 3
  %13 = load i32, i32* @adt7316_i2c_read, align 4
  store i32 %13, i32* %12, align 4
  %14 = getelementptr inbounds %struct.adt7316_bus, %struct.adt7316_bus* %5, i32 0, i32 4
  %15 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %16 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %14, align 8
  %18 = getelementptr inbounds %struct.adt7316_bus, %struct.adt7316_bus* %5, i32 0, i32 5
  %19 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  store %struct.i2c_client* %19, %struct.i2c_client** %18, align 8
  %20 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %21 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %20, i32 0, i32 0
  %22 = load %struct.i2c_device_id*, %struct.i2c_device_id** %4, align 8
  %23 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @adt7316_probe(i32* %21, %struct.adt7316_bus* %5, i32 %24)
  ret i32 %25
}

declare dso_local i32 @adt7316_probe(i32*, %struct.adt7316_bus*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
