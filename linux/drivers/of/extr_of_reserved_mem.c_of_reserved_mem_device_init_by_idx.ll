; ModuleID = '/home/carl/AnghaBench/linux/drivers/of/extr_of_reserved_mem.c_of_reserved_mem_device_init_by_idx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/of/extr_of_reserved_mem.c_of_reserved_mem_device_init_by_idx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_node = type { i32 }
%struct.rmem_assigned_device = type { i32, %struct.reserved_mem*, %struct.device* }
%struct.reserved_mem = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.reserved_mem*, %struct.device*)* }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"memory-region\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@of_rmem_assigned_device_mutex = common dso_local global i32 0, align 4
@of_rmem_assigned_device_list = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"assigned reserved memory node %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @of_reserved_mem_device_init_by_idx(%struct.device* %0, %struct.device_node* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.rmem_assigned_device*, align 8
  %9 = alloca %struct.device_node*, align 8
  %10 = alloca %struct.reserved_mem*, align 8
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_node* %1, %struct.device_node** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.device_node*, %struct.device_node** %6, align 8
  %13 = icmp ne %struct.device_node* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load %struct.device*, %struct.device** %5, align 8
  %16 = icmp ne %struct.device* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %14, %3
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %99

20:                                               ; preds = %14
  %21 = load %struct.device_node*, %struct.device_node** %6, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call %struct.device_node* @of_parse_phandle(%struct.device_node* %21, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %22)
  store %struct.device_node* %23, %struct.device_node** %9, align 8
  %24 = load %struct.device_node*, %struct.device_node** %9, align 8
  %25 = icmp ne %struct.device_node* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %20
  %27 = load i32, i32* @ENODEV, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %99

29:                                               ; preds = %20
  %30 = load %struct.device_node*, %struct.device_node** %9, align 8
  %31 = call i32 @of_device_is_available(%struct.device_node* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %29
  %34 = load %struct.device_node*, %struct.device_node** %9, align 8
  %35 = call i32 @of_node_put(%struct.device_node* %34)
  store i32 0, i32* %4, align 4
  br label %99

36:                                               ; preds = %29
  %37 = load %struct.device_node*, %struct.device_node** %9, align 8
  %38 = call %struct.reserved_mem* @__find_rmem(%struct.device_node* %37)
  store %struct.reserved_mem* %38, %struct.reserved_mem** %10, align 8
  %39 = load %struct.device_node*, %struct.device_node** %9, align 8
  %40 = call i32 @of_node_put(%struct.device_node* %39)
  %41 = load %struct.reserved_mem*, %struct.reserved_mem** %10, align 8
  %42 = icmp ne %struct.reserved_mem* %41, null
  br i1 %42, label %43, label %55

43:                                               ; preds = %36
  %44 = load %struct.reserved_mem*, %struct.reserved_mem** %10, align 8
  %45 = getelementptr inbounds %struct.reserved_mem, %struct.reserved_mem* %44, i32 0, i32 1
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = icmp ne %struct.TYPE_2__* %46, null
  br i1 %47, label %48, label %55

48:                                               ; preds = %43
  %49 = load %struct.reserved_mem*, %struct.reserved_mem** %10, align 8
  %50 = getelementptr inbounds %struct.reserved_mem, %struct.reserved_mem* %49, i32 0, i32 1
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32 (%struct.reserved_mem*, %struct.device*)*, i32 (%struct.reserved_mem*, %struct.device*)** %52, align 8
  %54 = icmp ne i32 (%struct.reserved_mem*, %struct.device*)* %53, null
  br i1 %54, label %58, label %55

55:                                               ; preds = %48, %43, %36
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %4, align 4
  br label %99

58:                                               ; preds = %48
  %59 = load i32, i32* @GFP_KERNEL, align 4
  %60 = call %struct.rmem_assigned_device* @kmalloc(i32 24, i32 %59)
  store %struct.rmem_assigned_device* %60, %struct.rmem_assigned_device** %8, align 8
  %61 = load %struct.rmem_assigned_device*, %struct.rmem_assigned_device** %8, align 8
  %62 = icmp ne %struct.rmem_assigned_device* %61, null
  br i1 %62, label %66, label %63

63:                                               ; preds = %58
  %64 = load i32, i32* @ENOMEM, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %4, align 4
  br label %99

66:                                               ; preds = %58
  %67 = load %struct.reserved_mem*, %struct.reserved_mem** %10, align 8
  %68 = getelementptr inbounds %struct.reserved_mem, %struct.reserved_mem* %67, i32 0, i32 1
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32 (%struct.reserved_mem*, %struct.device*)*, i32 (%struct.reserved_mem*, %struct.device*)** %70, align 8
  %72 = load %struct.reserved_mem*, %struct.reserved_mem** %10, align 8
  %73 = load %struct.device*, %struct.device** %5, align 8
  %74 = call i32 %71(%struct.reserved_mem* %72, %struct.device* %73)
  store i32 %74, i32* %11, align 4
  %75 = load i32, i32* %11, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %94

77:                                               ; preds = %66
  %78 = load %struct.device*, %struct.device** %5, align 8
  %79 = load %struct.rmem_assigned_device*, %struct.rmem_assigned_device** %8, align 8
  %80 = getelementptr inbounds %struct.rmem_assigned_device, %struct.rmem_assigned_device* %79, i32 0, i32 2
  store %struct.device* %78, %struct.device** %80, align 8
  %81 = load %struct.reserved_mem*, %struct.reserved_mem** %10, align 8
  %82 = load %struct.rmem_assigned_device*, %struct.rmem_assigned_device** %8, align 8
  %83 = getelementptr inbounds %struct.rmem_assigned_device, %struct.rmem_assigned_device* %82, i32 0, i32 1
  store %struct.reserved_mem* %81, %struct.reserved_mem** %83, align 8
  %84 = call i32 @mutex_lock(i32* @of_rmem_assigned_device_mutex)
  %85 = load %struct.rmem_assigned_device*, %struct.rmem_assigned_device** %8, align 8
  %86 = getelementptr inbounds %struct.rmem_assigned_device, %struct.rmem_assigned_device* %85, i32 0, i32 0
  %87 = call i32 @list_add(i32* %86, i32* @of_rmem_assigned_device_list)
  %88 = call i32 @mutex_unlock(i32* @of_rmem_assigned_device_mutex)
  %89 = load %struct.device*, %struct.device** %5, align 8
  %90 = load %struct.reserved_mem*, %struct.reserved_mem** %10, align 8
  %91 = getelementptr inbounds %struct.reserved_mem, %struct.reserved_mem* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @dev_info(%struct.device* %89, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %92)
  br label %97

94:                                               ; preds = %66
  %95 = load %struct.rmem_assigned_device*, %struct.rmem_assigned_device** %8, align 8
  %96 = call i32 @kfree(%struct.rmem_assigned_device* %95)
  br label %97

97:                                               ; preds = %94, %77
  %98 = load i32, i32* %11, align 4
  store i32 %98, i32* %4, align 4
  br label %99

99:                                               ; preds = %97, %63, %55, %33, %26, %17
  %100 = load i32, i32* %4, align 4
  ret i32 %100
}

declare dso_local %struct.device_node* @of_parse_phandle(%struct.device_node*, i8*, i32) #1

declare dso_local i32 @of_device_is_available(%struct.device_node*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local %struct.reserved_mem* @__find_rmem(%struct.device_node*) #1

declare dso_local %struct.rmem_assigned_device* @kmalloc(i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32) #1

declare dso_local i32 @kfree(%struct.rmem_assigned_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
