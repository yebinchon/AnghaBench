; ModuleID = '/home/carl/AnghaBench/linux/drivers/visorbus/extr_visorbus_main.c_create_visor_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/visorbus/extr_visorbus_main.c_create_visor_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.visor_device = type { %struct.TYPE_9__, %struct.TYPE_8__, i32, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32* }
%struct.TYPE_8__ = type { i32 }

@visorbus_type = common dso_local global i32 0, align 4
@channel_groups = common dso_local global i32 0, align 4
@visorbus_release_device = common dso_local global i32 0, align 4
@dev_periodic_work = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"vbus%u:dev%u\00", align 1
@list_all_device_instances = common dso_local global i32 0, align 4
@CONTROLVM_DEVICE_CREATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Creating visor device failed. %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @create_visor_device(%struct.visor_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.visor_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.visor_device* %0, %struct.visor_device** %3, align 8
  %7 = load %struct.visor_device*, %struct.visor_device** %3, align 8
  %8 = getelementptr inbounds %struct.visor_device, %struct.visor_device* %7, i32 0, i32 6
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %5, align 4
  %10 = load %struct.visor_device*, %struct.visor_device** %3, align 8
  %11 = getelementptr inbounds %struct.visor_device, %struct.visor_device* %10, i32 0, i32 5
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %6, align 4
  %13 = load %struct.visor_device*, %struct.visor_device** %3, align 8
  %14 = getelementptr inbounds %struct.visor_device, %struct.visor_device* %13, i32 0, i32 4
  %15 = call i32 @mutex_init(i32* %14)
  %16 = load %struct.visor_device*, %struct.visor_device** %3, align 8
  %17 = getelementptr inbounds %struct.visor_device, %struct.visor_device* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 2
  store i32* @visorbus_type, i32** %18, align 8
  %19 = load i32, i32* @channel_groups, align 4
  %20 = load %struct.visor_device*, %struct.visor_device** %3, align 8
  %21 = getelementptr inbounds %struct.visor_device, %struct.visor_device* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 1
  store i32 %19, i32* %22, align 4
  %23 = load %struct.visor_device*, %struct.visor_device** %3, align 8
  %24 = getelementptr inbounds %struct.visor_device, %struct.visor_device* %23, i32 0, i32 0
  %25 = call i32 @device_initialize(%struct.TYPE_9__* %24)
  %26 = load i32, i32* @visorbus_release_device, align 4
  %27 = load %struct.visor_device*, %struct.visor_device** %3, align 8
  %28 = getelementptr inbounds %struct.visor_device, %struct.visor_device* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  store i32 %26, i32* %29, align 8
  %30 = load %struct.visor_device*, %struct.visor_device** %3, align 8
  %31 = getelementptr inbounds %struct.visor_device, %struct.visor_device* %30, i32 0, i32 0
  %32 = call i32 @get_device(%struct.TYPE_9__* %31)
  %33 = load %struct.visor_device*, %struct.visor_device** %3, align 8
  %34 = getelementptr inbounds %struct.visor_device, %struct.visor_device* %33, i32 0, i32 3
  %35 = load i32, i32* @dev_periodic_work, align 4
  %36 = call i32 @timer_setup(i32* %34, i32 %35, i32 0)
  %37 = load %struct.visor_device*, %struct.visor_device** %3, align 8
  %38 = getelementptr inbounds %struct.visor_device, %struct.visor_device* %37, i32 0, i32 0
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @dev_set_name(%struct.TYPE_9__* %38, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %40)
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* %4, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %1
  br label %63

45:                                               ; preds = %1
  %46 = load %struct.visor_device*, %struct.visor_device** %3, align 8
  %47 = getelementptr inbounds %struct.visor_device, %struct.visor_device* %46, i32 0, i32 0
  %48 = call i32 @device_add(%struct.TYPE_9__* %47)
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* %4, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  br label %63

52:                                               ; preds = %45
  %53 = load %struct.visor_device*, %struct.visor_device** %3, align 8
  %54 = getelementptr inbounds %struct.visor_device, %struct.visor_device* %53, i32 0, i32 2
  %55 = call i32 @list_add_tail(i32* %54, i32* @list_all_device_instances)
  %56 = load %struct.visor_device*, %struct.visor_device** %3, align 8
  %57 = getelementptr inbounds %struct.visor_device, %struct.visor_device* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  store i32 1, i32* %58, align 8
  %59 = load %struct.visor_device*, %struct.visor_device** %3, align 8
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* @CONTROLVM_DEVICE_CREATE, align 4
  %62 = call i32 @visorbus_response(%struct.visor_device* %59, i32 %60, i32 %61)
  store i32 0, i32* %2, align 4
  br label %72

63:                                               ; preds = %51, %44
  %64 = load %struct.visor_device*, %struct.visor_device** %3, align 8
  %65 = getelementptr inbounds %struct.visor_device, %struct.visor_device* %64, i32 0, i32 0
  %66 = call i32 @put_device(%struct.TYPE_9__* %65)
  %67 = load %struct.visor_device*, %struct.visor_device** %3, align 8
  %68 = getelementptr inbounds %struct.visor_device, %struct.visor_device* %67, i32 0, i32 0
  %69 = load i32, i32* %4, align 4
  %70 = call i32 @dev_err(%struct.TYPE_9__* %68, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %69)
  %71 = load i32, i32* %4, align 4
  store i32 %71, i32* %2, align 4
  br label %72

72:                                               ; preds = %63, %52
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @device_initialize(%struct.TYPE_9__*) #1

declare dso_local i32 @get_device(%struct.TYPE_9__*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @dev_set_name(%struct.TYPE_9__*, i8*, i32, i32) #1

declare dso_local i32 @device_add(%struct.TYPE_9__*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @visorbus_response(%struct.visor_device*, i32, i32) #1

declare dso_local i32 @put_device(%struct.TYPE_9__*) #1

declare dso_local i32 @dev_err(%struct.TYPE_9__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
