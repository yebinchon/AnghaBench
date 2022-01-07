; ModuleID = '/home/carl/AnghaBench/linux/drivers/soundwire/extr_slave.c_sdw_slave_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soundwire/extr_slave.c_sdw_slave_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdw_bus = type { i32, i32, i32, i32 }
%struct.sdw_slave_id = type { i32, i32, i32, i32 }
%struct.fwnode_handle = type { i32 }
%struct.sdw_slave = type { %struct.TYPE_4__, i32, i64, i32, %struct.sdw_bus*, i32 }
%struct.TYPE_4__ = type { i32, i32*, i32, %struct.fwnode_handle*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"sdw:%x:%x:%x:%x:%x\00", align 1
@sdw_slave_release = common dso_local global i32 0, align 4
@sdw_bus_type = common dso_local global i32 0, align 4
@SDW_SLAVE_UNATTACHED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Failed to add slave: ret %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sdw_bus*, %struct.sdw_slave_id*, %struct.fwnode_handle*)* @sdw_slave_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdw_slave_add(%struct.sdw_bus* %0, %struct.sdw_slave_id* %1, %struct.fwnode_handle* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sdw_bus*, align 8
  %6 = alloca %struct.sdw_slave_id*, align 8
  %7 = alloca %struct.fwnode_handle*, align 8
  %8 = alloca %struct.sdw_slave*, align 8
  %9 = alloca i32, align 4
  store %struct.sdw_bus* %0, %struct.sdw_bus** %5, align 8
  store %struct.sdw_slave_id* %1, %struct.sdw_slave_id** %6, align 8
  store %struct.fwnode_handle* %2, %struct.fwnode_handle** %7, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.sdw_slave* @kzalloc(i32 80, i32 %10)
  store %struct.sdw_slave* %11, %struct.sdw_slave** %8, align 8
  %12 = load %struct.sdw_slave*, %struct.sdw_slave** %8, align 8
  %13 = icmp ne %struct.sdw_slave* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %109

17:                                               ; preds = %3
  %18 = load %struct.sdw_slave*, %struct.sdw_slave** %8, align 8
  %19 = getelementptr inbounds %struct.sdw_slave, %struct.sdw_slave* %18, i32 0, i32 5
  %20 = load %struct.sdw_slave_id*, %struct.sdw_slave_id** %6, align 8
  %21 = call i32 @memcpy(i32* %19, %struct.sdw_slave_id* %20, i32 16)
  %22 = load %struct.sdw_bus*, %struct.sdw_bus** %5, align 8
  %23 = getelementptr inbounds %struct.sdw_bus, %struct.sdw_bus* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.sdw_slave*, %struct.sdw_slave** %8, align 8
  %26 = getelementptr inbounds %struct.sdw_slave, %struct.sdw_slave* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 4
  store i32 %24, i32* %27, align 8
  %28 = load %struct.fwnode_handle*, %struct.fwnode_handle** %7, align 8
  %29 = load %struct.sdw_slave*, %struct.sdw_slave** %8, align 8
  %30 = getelementptr inbounds %struct.sdw_slave, %struct.sdw_slave* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 3
  store %struct.fwnode_handle* %28, %struct.fwnode_handle** %31, align 8
  %32 = load %struct.sdw_slave*, %struct.sdw_slave** %8, align 8
  %33 = getelementptr inbounds %struct.sdw_slave, %struct.sdw_slave* %32, i32 0, i32 0
  %34 = load %struct.sdw_bus*, %struct.sdw_bus** %5, align 8
  %35 = getelementptr inbounds %struct.sdw_bus, %struct.sdw_bus* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.sdw_slave_id*, %struct.sdw_slave_id** %6, align 8
  %38 = getelementptr inbounds %struct.sdw_slave_id, %struct.sdw_slave_id* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.sdw_slave_id*, %struct.sdw_slave_id** %6, align 8
  %41 = getelementptr inbounds %struct.sdw_slave_id, %struct.sdw_slave_id* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.sdw_slave_id*, %struct.sdw_slave_id** %6, align 8
  %44 = getelementptr inbounds %struct.sdw_slave_id, %struct.sdw_slave_id* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.sdw_slave_id*, %struct.sdw_slave_id** %6, align 8
  %47 = getelementptr inbounds %struct.sdw_slave_id, %struct.sdw_slave_id* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @dev_set_name(%struct.TYPE_4__* %33, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %36, i32 %39, i32 %42, i32 %45, i32 %48)
  %50 = load i32, i32* @sdw_slave_release, align 4
  %51 = load %struct.sdw_slave*, %struct.sdw_slave** %8, align 8
  %52 = getelementptr inbounds %struct.sdw_slave, %struct.sdw_slave* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 2
  store i32 %50, i32* %53, align 8
  %54 = load %struct.sdw_slave*, %struct.sdw_slave** %8, align 8
  %55 = getelementptr inbounds %struct.sdw_slave, %struct.sdw_slave* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  store i32* @sdw_bus_type, i32** %56, align 8
  %57 = load %struct.fwnode_handle*, %struct.fwnode_handle** %7, align 8
  %58 = call i32 @to_of_node(%struct.fwnode_handle* %57)
  %59 = call i32 @of_node_get(i32 %58)
  %60 = load %struct.sdw_slave*, %struct.sdw_slave** %8, align 8
  %61 = getelementptr inbounds %struct.sdw_slave, %struct.sdw_slave* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  store i32 %59, i32* %62, align 8
  %63 = load %struct.sdw_bus*, %struct.sdw_bus** %5, align 8
  %64 = load %struct.sdw_slave*, %struct.sdw_slave** %8, align 8
  %65 = getelementptr inbounds %struct.sdw_slave, %struct.sdw_slave* %64, i32 0, i32 4
  store %struct.sdw_bus* %63, %struct.sdw_bus** %65, align 8
  %66 = load i32, i32* @SDW_SLAVE_UNATTACHED, align 4
  %67 = load %struct.sdw_slave*, %struct.sdw_slave** %8, align 8
  %68 = getelementptr inbounds %struct.sdw_slave, %struct.sdw_slave* %67, i32 0, i32 3
  store i32 %66, i32* %68, align 8
  %69 = load %struct.sdw_slave*, %struct.sdw_slave** %8, align 8
  %70 = getelementptr inbounds %struct.sdw_slave, %struct.sdw_slave* %69, i32 0, i32 2
  store i64 0, i64* %70, align 8
  %71 = load %struct.sdw_bus*, %struct.sdw_bus** %5, align 8
  %72 = getelementptr inbounds %struct.sdw_bus, %struct.sdw_bus* %71, i32 0, i32 0
  %73 = call i32 @mutex_lock(i32* %72)
  %74 = load %struct.sdw_slave*, %struct.sdw_slave** %8, align 8
  %75 = getelementptr inbounds %struct.sdw_slave, %struct.sdw_slave* %74, i32 0, i32 1
  %76 = load %struct.sdw_bus*, %struct.sdw_bus** %5, align 8
  %77 = getelementptr inbounds %struct.sdw_bus, %struct.sdw_bus* %76, i32 0, i32 2
  %78 = call i32 @list_add_tail(i32* %75, i32* %77)
  %79 = load %struct.sdw_bus*, %struct.sdw_bus** %5, align 8
  %80 = getelementptr inbounds %struct.sdw_bus, %struct.sdw_bus* %79, i32 0, i32 0
  %81 = call i32 @mutex_unlock(i32* %80)
  %82 = load %struct.sdw_slave*, %struct.sdw_slave** %8, align 8
  %83 = getelementptr inbounds %struct.sdw_slave, %struct.sdw_slave* %82, i32 0, i32 0
  %84 = call i32 @device_register(%struct.TYPE_4__* %83)
  store i32 %84, i32* %9, align 4
  %85 = load i32, i32* %9, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %105

87:                                               ; preds = %17
  %88 = load %struct.sdw_bus*, %struct.sdw_bus** %5, align 8
  %89 = getelementptr inbounds %struct.sdw_bus, %struct.sdw_bus* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %9, align 4
  %92 = call i32 @dev_err(i32 %90, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %91)
  %93 = load %struct.sdw_bus*, %struct.sdw_bus** %5, align 8
  %94 = getelementptr inbounds %struct.sdw_bus, %struct.sdw_bus* %93, i32 0, i32 0
  %95 = call i32 @mutex_lock(i32* %94)
  %96 = load %struct.sdw_slave*, %struct.sdw_slave** %8, align 8
  %97 = getelementptr inbounds %struct.sdw_slave, %struct.sdw_slave* %96, i32 0, i32 1
  %98 = call i32 @list_del(i32* %97)
  %99 = load %struct.sdw_bus*, %struct.sdw_bus** %5, align 8
  %100 = getelementptr inbounds %struct.sdw_bus, %struct.sdw_bus* %99, i32 0, i32 0
  %101 = call i32 @mutex_unlock(i32* %100)
  %102 = load %struct.sdw_slave*, %struct.sdw_slave** %8, align 8
  %103 = getelementptr inbounds %struct.sdw_slave, %struct.sdw_slave* %102, i32 0, i32 0
  %104 = call i32 @put_device(%struct.TYPE_4__* %103)
  br label %105

105:                                              ; preds = %87, %17
  %106 = load %struct.sdw_slave*, %struct.sdw_slave** %8, align 8
  %107 = call i32 @sdw_slave_debugfs_init(%struct.sdw_slave* %106)
  %108 = load i32, i32* %9, align 4
  store i32 %108, i32* %4, align 4
  br label %109

109:                                              ; preds = %105, %14
  %110 = load i32, i32* %4, align 4
  ret i32 %110
}

declare dso_local %struct.sdw_slave* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32*, %struct.sdw_slave_id*, i32) #1

declare dso_local i32 @dev_set_name(%struct.TYPE_4__*, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @of_node_get(i32) #1

declare dso_local i32 @to_of_node(%struct.fwnode_handle*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @device_register(%struct.TYPE_4__*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @put_device(%struct.TYPE_4__*) #1

declare dso_local i32 @sdw_slave_debugfs_init(%struct.sdw_slave*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
