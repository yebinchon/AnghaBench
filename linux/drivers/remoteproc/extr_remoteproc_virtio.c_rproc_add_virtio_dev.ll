; ModuleID = '/home/carl/AnghaBench/linux/drivers/remoteproc/extr_remoteproc_virtio.c_rproc_add_virtio_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/remoteproc/extr_remoteproc_virtio.c_rproc_add_virtio_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rproc_vdev = type { i32, i32, %struct.device, %struct.rproc* }
%struct.device = type { i32 }
%struct.rproc = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.virtio_device = type { %struct.TYPE_8__, i32*, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32, %struct.device* }
%struct.TYPE_7__ = type { i32 }
%struct.rproc_mem_entry = type { i32, i32, i32, i64, i64 }

@.str = private unnamed_addr constant [13 x i8] c"vdev%dbuffer\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Can't associate reserved memory\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"vdev %d buffer already mapped\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"Failed to associate buffer\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@rproc_virtio_config_ops = common dso_local global i32 0, align 4
@rproc_virtio_dev_release = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"failed to register vdev: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"registered %s (type %d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rproc_add_virtio_dev(%struct.rproc_vdev* %0, i32 %1) #0 {
  %3 = alloca %struct.rproc_vdev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rproc*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.virtio_device*, align 8
  %8 = alloca %struct.rproc_mem_entry*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.device_node*, align 8
  store %struct.rproc_vdev* %0, %struct.rproc_vdev** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.rproc_vdev*, %struct.rproc_vdev** %3, align 8
  %13 = getelementptr inbounds %struct.rproc_vdev, %struct.rproc_vdev* %12, i32 0, i32 3
  %14 = load %struct.rproc*, %struct.rproc** %13, align 8
  store %struct.rproc* %14, %struct.rproc** %5, align 8
  %15 = load %struct.rproc_vdev*, %struct.rproc_vdev** %3, align 8
  %16 = getelementptr inbounds %struct.rproc_vdev, %struct.rproc_vdev* %15, i32 0, i32 2
  store %struct.device* %16, %struct.device** %6, align 8
  %17 = load %struct.rproc*, %struct.rproc** %5, align 8
  %18 = load %struct.rproc_vdev*, %struct.rproc_vdev** %3, align 8
  %19 = getelementptr inbounds %struct.rproc_vdev, %struct.rproc_vdev* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.rproc_mem_entry* @rproc_find_carveout_by_name(%struct.rproc* %17, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %20)
  store %struct.rproc_mem_entry* %21, %struct.rproc_mem_entry** %8, align 8
  %22 = load %struct.rproc_mem_entry*, %struct.rproc_mem_entry** %8, align 8
  %23 = icmp ne %struct.rproc_mem_entry* %22, null
  br i1 %23, label %24, label %84

24:                                               ; preds = %2
  %25 = load %struct.rproc_mem_entry*, %struct.rproc_mem_entry** %8, align 8
  %26 = getelementptr inbounds %struct.rproc_mem_entry, %struct.rproc_mem_entry* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, -1
  br i1 %28, label %29, label %48

29:                                               ; preds = %24
  %30 = load %struct.rproc*, %struct.rproc** %5, align 8
  %31 = getelementptr inbounds %struct.rproc, %struct.rproc* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load %struct.device_node*, %struct.device_node** %34, align 8
  store %struct.device_node* %35, %struct.device_node** %11, align 8
  %36 = load %struct.device*, %struct.device** %6, align 8
  %37 = load %struct.device_node*, %struct.device_node** %11, align 8
  %38 = load %struct.rproc_mem_entry*, %struct.rproc_mem_entry** %8, align 8
  %39 = getelementptr inbounds %struct.rproc_mem_entry, %struct.rproc_mem_entry* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @of_reserved_mem_device_init_by_idx(%struct.device* %36, %struct.device_node* %37, i32 %40)
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %29
  %45 = load %struct.device*, %struct.device** %6, align 8
  %46 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %45, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %131

47:                                               ; preds = %29
  br label %83

48:                                               ; preds = %24
  %49 = load %struct.rproc_mem_entry*, %struct.rproc_mem_entry** %8, align 8
  %50 = getelementptr inbounds %struct.rproc_mem_entry, %struct.rproc_mem_entry* %49, i32 0, i32 4
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %63

53:                                               ; preds = %48
  %54 = load %struct.device*, %struct.device** %6, align 8
  %55 = load %struct.rproc_vdev*, %struct.rproc_vdev** %3, align 8
  %56 = getelementptr inbounds %struct.rproc_vdev, %struct.rproc_vdev* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @dev_warn(%struct.device* %54, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %57)
  %59 = load %struct.rproc_mem_entry*, %struct.rproc_mem_entry** %8, align 8
  %60 = getelementptr inbounds %struct.rproc_mem_entry, %struct.rproc_mem_entry* %59, i32 0, i32 4
  %61 = load i64, i64* %60, align 8
  %62 = call i64 @rproc_va_to_pa(i64 %61)
  store i64 %62, i64* %10, align 8
  br label %67

63:                                               ; preds = %48
  %64 = load %struct.rproc_mem_entry*, %struct.rproc_mem_entry** %8, align 8
  %65 = getelementptr inbounds %struct.rproc_mem_entry, %struct.rproc_mem_entry* %64, i32 0, i32 3
  %66 = load i64, i64* %65, align 8
  store i64 %66, i64* %10, align 8
  br label %67

67:                                               ; preds = %63, %53
  %68 = load %struct.device*, %struct.device** %6, align 8
  %69 = load i64, i64* %10, align 8
  %70 = load %struct.rproc_mem_entry*, %struct.rproc_mem_entry** %8, align 8
  %71 = getelementptr inbounds %struct.rproc_mem_entry, %struct.rproc_mem_entry* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.rproc_mem_entry*, %struct.rproc_mem_entry** %8, align 8
  %74 = getelementptr inbounds %struct.rproc_mem_entry, %struct.rproc_mem_entry* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @dma_declare_coherent_memory(%struct.device* %68, i64 %69, i32 %72, i32 %75)
  store i32 %76, i32* %9, align 4
  %77 = load i32, i32* %9, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %67
  %80 = load %struct.device*, %struct.device** %6, align 8
  %81 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %80, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  br label %131

82:                                               ; preds = %67
  br label %83

83:                                               ; preds = %82, %47
  br label %84

84:                                               ; preds = %83, %2
  %85 = load i32, i32* @GFP_KERNEL, align 4
  %86 = call %struct.virtio_device* @kzalloc(i32 32, i32 %85)
  store %struct.virtio_device* %86, %struct.virtio_device** %7, align 8
  %87 = load %struct.virtio_device*, %struct.virtio_device** %7, align 8
  %88 = icmp ne %struct.virtio_device* %87, null
  br i1 %88, label %92, label %89

89:                                               ; preds = %84
  %90 = load i32, i32* @ENOMEM, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %9, align 4
  br label %131

92:                                               ; preds = %84
  %93 = load i32, i32* %4, align 4
  %94 = load %struct.virtio_device*, %struct.virtio_device** %7, align 8
  %95 = getelementptr inbounds %struct.virtio_device, %struct.virtio_device* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 0
  store i32 %93, i32* %96, align 8
  %97 = load %struct.virtio_device*, %struct.virtio_device** %7, align 8
  %98 = getelementptr inbounds %struct.virtio_device, %struct.virtio_device* %97, i32 0, i32 1
  store i32* @rproc_virtio_config_ops, i32** %98, align 8
  %99 = load %struct.device*, %struct.device** %6, align 8
  %100 = load %struct.virtio_device*, %struct.virtio_device** %7, align 8
  %101 = getelementptr inbounds %struct.virtio_device, %struct.virtio_device* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 1
  store %struct.device* %99, %struct.device** %102, align 8
  %103 = load i32, i32* @rproc_virtio_dev_release, align 4
  %104 = load %struct.virtio_device*, %struct.virtio_device** %7, align 8
  %105 = getelementptr inbounds %struct.virtio_device, %struct.virtio_device* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 0
  store i32 %103, i32* %106, align 8
  %107 = load %struct.rproc*, %struct.rproc** %5, align 8
  %108 = getelementptr inbounds %struct.rproc, %struct.rproc* %107, i32 0, i32 0
  %109 = call i32 @get_device(%struct.TYPE_9__* %108)
  %110 = load %struct.rproc_vdev*, %struct.rproc_vdev** %3, align 8
  %111 = getelementptr inbounds %struct.rproc_vdev, %struct.rproc_vdev* %110, i32 0, i32 0
  %112 = call i32 @kref_get(i32* %111)
  %113 = load %struct.virtio_device*, %struct.virtio_device** %7, align 8
  %114 = call i32 @register_virtio_device(%struct.virtio_device* %113)
  store i32 %114, i32* %9, align 4
  %115 = load i32, i32* %9, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %124

117:                                              ; preds = %92
  %118 = load %struct.virtio_device*, %struct.virtio_device** %7, align 8
  %119 = getelementptr inbounds %struct.virtio_device, %struct.virtio_device* %118, i32 0, i32 0
  %120 = call i32 @put_device(%struct.TYPE_8__* %119)
  %121 = load %struct.device*, %struct.device** %6, align 8
  %122 = load i32, i32* %9, align 4
  %123 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %121, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %122)
  br label %131

124:                                              ; preds = %92
  %125 = load %struct.device*, %struct.device** %6, align 8
  %126 = load %struct.virtio_device*, %struct.virtio_device** %7, align 8
  %127 = getelementptr inbounds %struct.virtio_device, %struct.virtio_device* %126, i32 0, i32 0
  %128 = call i32 @dev_name(%struct.TYPE_8__* %127)
  %129 = load i32, i32* %4, align 4
  %130 = call i32 @dev_info(%struct.device* %125, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i32 %128, i32 %129)
  br label %131

131:                                              ; preds = %124, %117, %89, %79, %44
  %132 = load i32, i32* %9, align 4
  ret i32 %132
}

declare dso_local %struct.rproc_mem_entry* @rproc_find_carveout_by_name(%struct.rproc*, i8*, i32) #1

declare dso_local i32 @of_reserved_mem_device_init_by_idx(%struct.device*, %struct.device_node*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32) #1

declare dso_local i64 @rproc_va_to_pa(i64) #1

declare dso_local i32 @dma_declare_coherent_memory(%struct.device*, i64, i32, i32) #1

declare dso_local %struct.virtio_device* @kzalloc(i32, i32) #1

declare dso_local i32 @get_device(%struct.TYPE_9__*) #1

declare dso_local i32 @kref_get(i32*) #1

declare dso_local i32 @register_virtio_device(%struct.virtio_device*) #1

declare dso_local i32 @put_device(%struct.TYPE_8__*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @dev_name(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
