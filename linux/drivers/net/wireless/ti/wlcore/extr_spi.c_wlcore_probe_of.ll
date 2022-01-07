; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_spi.c_wlcore_probe_of.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_spi.c_wlcore_probe_of.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.wl12xx_spi_glue = type { i32 }
%struct.wlcore_platdev_data = type { i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.of_device_id = type { %struct.TYPE_3__* }

@wlcore_spi_of_match_table = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"selected chip family is %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"clock-xtal\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"ref-clock-frequency\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"tcxo-clock-frequency\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*, %struct.wl12xx_spi_glue*, %struct.wlcore_platdev_data*)* @wlcore_probe_of to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wlcore_probe_of(%struct.spi_device* %0, %struct.wl12xx_spi_glue* %1, %struct.wlcore_platdev_data* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.spi_device*, align 8
  %6 = alloca %struct.wl12xx_spi_glue*, align 8
  %7 = alloca %struct.wlcore_platdev_data*, align 8
  %8 = alloca %struct.device_node*, align 8
  %9 = alloca %struct.of_device_id*, align 8
  store %struct.spi_device* %0, %struct.spi_device** %5, align 8
  store %struct.wl12xx_spi_glue* %1, %struct.wl12xx_spi_glue** %6, align 8
  store %struct.wlcore_platdev_data* %2, %struct.wlcore_platdev_data** %7, align 8
  %10 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %11 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.device_node*, %struct.device_node** %12, align 8
  store %struct.device_node* %13, %struct.device_node** %8, align 8
  %14 = load i32, i32* @wlcore_spi_of_match_table, align 4
  %15 = load %struct.device_node*, %struct.device_node** %8, align 8
  %16 = call %struct.of_device_id* @of_match_node(i32 %14, %struct.device_node* %15)
  store %struct.of_device_id* %16, %struct.of_device_id** %9, align 8
  %17 = load %struct.of_device_id*, %struct.of_device_id** %9, align 8
  %18 = icmp ne %struct.of_device_id* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* @ENODEV, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %51

22:                                               ; preds = %3
  %23 = load %struct.of_device_id*, %struct.of_device_id** %9, align 8
  %24 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %23, i32 0, i32 0
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = load %struct.wlcore_platdev_data*, %struct.wlcore_platdev_data** %7, align 8
  %27 = getelementptr inbounds %struct.wlcore_platdev_data, %struct.wlcore_platdev_data* %26, i32 0, i32 3
  store %struct.TYPE_3__* %25, %struct.TYPE_3__** %27, align 8
  %28 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %29 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %28, i32 0, i32 0
  %30 = load %struct.wlcore_platdev_data*, %struct.wlcore_platdev_data** %7, align 8
  %31 = getelementptr inbounds %struct.wlcore_platdev_data, %struct.wlcore_platdev_data* %30, i32 0, i32 3
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @dev_info(%struct.TYPE_4__* %29, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = load %struct.device_node*, %struct.device_node** %8, align 8
  %37 = call i64 @of_find_property(%struct.device_node* %36, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32* null)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %22
  %40 = load %struct.wlcore_platdev_data*, %struct.wlcore_platdev_data** %7, align 8
  %41 = getelementptr inbounds %struct.wlcore_platdev_data, %struct.wlcore_platdev_data* %40, i32 0, i32 0
  store i32 1, i32* %41, align 8
  br label %42

42:                                               ; preds = %39, %22
  %43 = load %struct.device_node*, %struct.device_node** %8, align 8
  %44 = load %struct.wlcore_platdev_data*, %struct.wlcore_platdev_data** %7, align 8
  %45 = getelementptr inbounds %struct.wlcore_platdev_data, %struct.wlcore_platdev_data* %44, i32 0, i32 2
  %46 = call i32 @of_property_read_u32(%struct.device_node* %43, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32* %45)
  %47 = load %struct.device_node*, %struct.device_node** %8, align 8
  %48 = load %struct.wlcore_platdev_data*, %struct.wlcore_platdev_data** %7, align 8
  %49 = getelementptr inbounds %struct.wlcore_platdev_data, %struct.wlcore_platdev_data* %48, i32 0, i32 1
  %50 = call i32 @of_property_read_u32(%struct.device_node* %47, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32* %49)
  store i32 0, i32* %4, align 4
  br label %51

51:                                               ; preds = %42, %19
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local %struct.of_device_id* @of_match_node(i32, %struct.device_node*) #1

declare dso_local i32 @dev_info(%struct.TYPE_4__*, i8*, i32) #1

declare dso_local i64 @of_find_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
