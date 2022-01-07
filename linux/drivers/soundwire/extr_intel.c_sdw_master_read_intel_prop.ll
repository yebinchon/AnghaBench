; ModuleID = '/home/carl/AnghaBench/linux/drivers/soundwire/extr_intel.c_sdw_master_read_intel_prop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soundwire/extr_intel.c_sdw_master_read_intel_prop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdw_bus = type { i32, i32, %struct.sdw_master_prop }
%struct.sdw_master_prop = type { i32, i32 }
%struct.fwnode_handle = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"mipi-sdw-link-%d-subproperties\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Master node %s not found\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"intel-sdw-ip-clock\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"intel-quirk-mask\00", align 1
@SDW_INTEL_QUIRK_MASK_BUS_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sdw_bus*)* @sdw_master_read_intel_prop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdw_master_read_intel_prop(%struct.sdw_bus* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sdw_bus*, align 8
  %4 = alloca %struct.sdw_master_prop*, align 8
  %5 = alloca %struct.fwnode_handle*, align 8
  %6 = alloca [32 x i8], align 16
  %7 = alloca i32, align 4
  store %struct.sdw_bus* %0, %struct.sdw_bus** %3, align 8
  %8 = load %struct.sdw_bus*, %struct.sdw_bus** %3, align 8
  %9 = getelementptr inbounds %struct.sdw_bus, %struct.sdw_bus* %8, i32 0, i32 2
  store %struct.sdw_master_prop* %9, %struct.sdw_master_prop** %4, align 8
  %10 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %11 = load %struct.sdw_bus*, %struct.sdw_bus** %3, align 8
  %12 = getelementptr inbounds %struct.sdw_bus, %struct.sdw_bus* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @snprintf(i8* %10, i32 32, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load %struct.sdw_bus*, %struct.sdw_bus** %3, align 8
  %16 = getelementptr inbounds %struct.sdw_bus, %struct.sdw_bus* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %19 = call %struct.fwnode_handle* @device_get_named_child_node(i32 %17, i8* %18)
  store %struct.fwnode_handle* %19, %struct.fwnode_handle** %5, align 8
  %20 = load %struct.fwnode_handle*, %struct.fwnode_handle** %5, align 8
  %21 = icmp ne %struct.fwnode_handle* %20, null
  br i1 %21, label %30, label %22

22:                                               ; preds = %1
  %23 = load %struct.sdw_bus*, %struct.sdw_bus** %3, align 8
  %24 = getelementptr inbounds %struct.sdw_bus, %struct.sdw_bus* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %27 = call i32 @dev_err(i32 %25, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* %26)
  %28 = load i32, i32* @EIO, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %45

30:                                               ; preds = %1
  %31 = load %struct.fwnode_handle*, %struct.fwnode_handle** %5, align 8
  %32 = load %struct.sdw_master_prop*, %struct.sdw_master_prop** %4, align 8
  %33 = getelementptr inbounds %struct.sdw_master_prop, %struct.sdw_master_prop* %32, i32 0, i32 0
  %34 = call i32 @fwnode_property_read_u32(%struct.fwnode_handle* %31, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32* %33)
  %35 = load %struct.fwnode_handle*, %struct.fwnode_handle** %5, align 8
  %36 = call i32 @fwnode_property_read_u32(%struct.fwnode_handle* %35, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32* %7)
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @SDW_INTEL_QUIRK_MASK_BUS_DISABLE, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %30
  %42 = load %struct.sdw_master_prop*, %struct.sdw_master_prop** %4, align 8
  %43 = getelementptr inbounds %struct.sdw_master_prop, %struct.sdw_master_prop* %42, i32 0, i32 1
  store i32 1, i32* %43, align 4
  br label %44

44:                                               ; preds = %41, %30
  store i32 0, i32* %2, align 4
  br label %45

45:                                               ; preds = %44, %22
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local %struct.fwnode_handle* @device_get_named_child_node(i32, i8*) #1

declare dso_local i32 @dev_err(i32, i8*, i8*) #1

declare dso_local i32 @fwnode_property_read_u32(%struct.fwnode_handle*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
