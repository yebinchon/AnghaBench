; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel_cht_int33fe.c_cht_int33fe_register_max17047.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel_cht_int33fe.c_cht_int33fe_register_max17047.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.cht_int33fe_data = type { i32 }
%struct.i2c_client = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.fwnode_handle* }
%struct.fwnode_handle = type { i32 }
%struct.i2c_board_info = type { i8*, %struct.fwnode_handle*, i32 }

@nodes = common dso_local global i32* null, align 8
@INT33FE_NODE_MAX17047 = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@cht_int33fe_check_for_max17047 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Reprobing max17047 error: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"max17047\00", align 1
@I2C_NAME_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.cht_int33fe_data*)* @cht_int33fe_register_max17047 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cht_int33fe_register_max17047(%struct.device* %0, %struct.cht_int33fe_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.cht_int33fe_data*, align 8
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca %struct.i2c_board_info, align 8
  %8 = alloca %struct.fwnode_handle*, align 8
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.cht_int33fe_data* %1, %struct.cht_int33fe_data** %5, align 8
  store %struct.i2c_client* null, %struct.i2c_client** %6, align 8
  %10 = load i32*, i32** @nodes, align 8
  %11 = load i64, i64* @INT33FE_NODE_MAX17047, align 8
  %12 = getelementptr inbounds i32, i32* %10, i64 %11
  %13 = call %struct.fwnode_handle* @software_node_fwnode(i32* %12)
  store %struct.fwnode_handle* %13, %struct.fwnode_handle** %8, align 8
  %14 = load %struct.fwnode_handle*, %struct.fwnode_handle** %8, align 8
  %15 = icmp ne %struct.fwnode_handle* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %63

19:                                               ; preds = %2
  %20 = load i32, i32* @cht_int33fe_check_for_max17047, align 4
  %21 = call i32 @i2c_for_each_dev(%struct.i2c_client** %6, i32 %20)
  %22 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %23 = icmp ne %struct.i2c_client* %22, null
  br i1 %23, label %24, label %46

24:                                               ; preds = %19
  %25 = load i32, i32* @ENODEV, align 4
  %26 = sub nsw i32 0, %25
  %27 = call i32 @ERR_PTR(i32 %26)
  %28 = load %struct.fwnode_handle*, %struct.fwnode_handle** %8, align 8
  %29 = getelementptr inbounds %struct.fwnode_handle, %struct.fwnode_handle* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load %struct.fwnode_handle*, %struct.fwnode_handle** %8, align 8
  %31 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %32 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  store %struct.fwnode_handle* %30, %struct.fwnode_handle** %35, align 8
  %36 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %37 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %36, i32 0, i32 0
  %38 = call i32 @device_reprobe(%struct.TYPE_4__* %37)
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %24
  %42 = load %struct.device*, %struct.device** %4, align 8
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @dev_warn(%struct.device* %42, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %43)
  br label %45

45:                                               ; preds = %41, %24
  store i32 0, i32* %3, align 4
  br label %63

46:                                               ; preds = %19
  %47 = call i32 @memset(%struct.i2c_board_info* %7, i32 0, i32 24)
  %48 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %7, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @I2C_NAME_SIZE, align 4
  %51 = call i32 @strlcpy(i32 %49, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  %52 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %7, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8** %52, align 8
  %53 = load %struct.fwnode_handle*, %struct.fwnode_handle** %8, align 8
  %54 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %7, i32 0, i32 1
  store %struct.fwnode_handle* %53, %struct.fwnode_handle** %54, align 8
  %55 = load %struct.device*, %struct.device** %4, align 8
  %56 = call i32 @i2c_acpi_new_device(%struct.device* %55, i32 1, %struct.i2c_board_info* %7)
  %57 = load %struct.cht_int33fe_data*, %struct.cht_int33fe_data** %5, align 8
  %58 = getelementptr inbounds %struct.cht_int33fe_data, %struct.cht_int33fe_data* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 4
  %59 = load %struct.cht_int33fe_data*, %struct.cht_int33fe_data** %5, align 8
  %60 = getelementptr inbounds %struct.cht_int33fe_data, %struct.cht_int33fe_data* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @PTR_ERR_OR_ZERO(i32 %61)
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %46, %45, %16
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local %struct.fwnode_handle* @software_node_fwnode(i32*) #1

declare dso_local i32 @i2c_for_each_dev(%struct.i2c_client**, i32) #1

declare dso_local i32 @ERR_PTR(i32) #1

declare dso_local i32 @device_reprobe(%struct.TYPE_4__*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32) #1

declare dso_local i32 @memset(%struct.i2c_board_info*, i32, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @i2c_acpi_new_device(%struct.device*, i32, %struct.i2c_board_info*) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
