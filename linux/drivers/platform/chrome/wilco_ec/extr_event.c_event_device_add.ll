; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/chrome/wilco_ec/extr_event.c_event_device_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/chrome/wilco_ec/extr_event.c_event_device_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { %struct.event_device_data*, i32 }
%struct.event_device_data = type { i32, %struct.TYPE_4__, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32*, i32 }

@event_ida = common dso_local global i32 0, align 4
@EVENT_MAX_DEV = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Failed to find minor number: %d\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@queue_size = common dso_local global i32 0, align 4
@event_major = common dso_local global i32 0, align 4
@event_class = common dso_local global i32 0, align 4
@free_device_data = common dso_local global i32 0, align 4
@EVENT_DEV_NAME_FMT = common dso_local global i32 0, align 4
@event_fops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_device*)* @event_device_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @event_device_add(%struct.acpi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_device*, align 8
  %4 = alloca %struct.event_device_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.acpi_device* %0, %struct.acpi_device** %3, align 8
  %7 = load i64, i64* @EVENT_MAX_DEV, align 8
  %8 = sub nsw i64 %7, 1
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call i32 @ida_alloc_max(i32* @event_ida, i64 %8, i32 %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %1
  %14 = load i32, i32* %6, align 4
  store i32 %14, i32* %5, align 4
  %15 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %16 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %15, i32 0, i32 1
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @dev_err(i32* %16, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* %5, align 4
  store i32 %19, i32* %2, align 4
  br label %97

20:                                               ; preds = %1
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.event_device_data* @kzalloc(i32 56, i32 %21)
  store %struct.event_device_data* %22, %struct.event_device_data** %4, align 8
  %23 = load %struct.event_device_data*, %struct.event_device_data** %4, align 8
  %24 = icmp ne %struct.event_device_data* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %93

28:                                               ; preds = %20
  %29 = load %struct.event_device_data*, %struct.event_device_data** %4, align 8
  %30 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %31 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %30, i32 0, i32 0
  store %struct.event_device_data* %29, %struct.event_device_data** %31, align 8
  %32 = load i32, i32* @queue_size, align 4
  %33 = call i32 @event_queue_new(i32 %32)
  %34 = load %struct.event_device_data*, %struct.event_device_data** %4, align 8
  %35 = getelementptr inbounds %struct.event_device_data, %struct.event_device_data* %34, i32 0, i32 6
  store i32 %33, i32* %35, align 8
  %36 = load %struct.event_device_data*, %struct.event_device_data** %4, align 8
  %37 = getelementptr inbounds %struct.event_device_data, %struct.event_device_data* %36, i32 0, i32 6
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %28
  %41 = load %struct.event_device_data*, %struct.event_device_data** %4, align 8
  %42 = call i32 @kfree(%struct.event_device_data* %41)
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %5, align 4
  br label %93

45:                                               ; preds = %28
  %46 = load %struct.event_device_data*, %struct.event_device_data** %4, align 8
  %47 = getelementptr inbounds %struct.event_device_data, %struct.event_device_data* %46, i32 0, i32 5
  %48 = call i32 @spin_lock_init(i32* %47)
  %49 = load %struct.event_device_data*, %struct.event_device_data** %4, align 8
  %50 = getelementptr inbounds %struct.event_device_data, %struct.event_device_data* %49, i32 0, i32 4
  %51 = call i32 @init_waitqueue_head(i32* %50)
  %52 = load %struct.event_device_data*, %struct.event_device_data** %4, align 8
  %53 = getelementptr inbounds %struct.event_device_data, %struct.event_device_data* %52, i32 0, i32 0
  store i32 1, i32* %53, align 8
  %54 = load %struct.event_device_data*, %struct.event_device_data** %4, align 8
  %55 = getelementptr inbounds %struct.event_device_data, %struct.event_device_data* %54, i32 0, i32 3
  %56 = call i32 @atomic_set(i32* %55, i32 1)
  %57 = load i32, i32* @event_major, align 4
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @MKDEV(i32 %57, i32 %58)
  %60 = load %struct.event_device_data*, %struct.event_device_data** %4, align 8
  %61 = getelementptr inbounds %struct.event_device_data, %struct.event_device_data* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 2
  store i32 %59, i32* %62, align 8
  %63 = load %struct.event_device_data*, %struct.event_device_data** %4, align 8
  %64 = getelementptr inbounds %struct.event_device_data, %struct.event_device_data* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  store i32* @event_class, i32** %65, align 8
  %66 = load i32, i32* @free_device_data, align 4
  %67 = load %struct.event_device_data*, %struct.event_device_data** %4, align 8
  %68 = getelementptr inbounds %struct.event_device_data, %struct.event_device_data* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  store i32 %66, i32* %69, align 8
  %70 = load %struct.event_device_data*, %struct.event_device_data** %4, align 8
  %71 = getelementptr inbounds %struct.event_device_data, %struct.event_device_data* %70, i32 0, i32 1
  %72 = load i32, i32* @EVENT_DEV_NAME_FMT, align 4
  %73 = load i32, i32* %6, align 4
  %74 = call i32 @dev_set_name(%struct.TYPE_4__* %71, i32 %72, i32 %73)
  %75 = load %struct.event_device_data*, %struct.event_device_data** %4, align 8
  %76 = getelementptr inbounds %struct.event_device_data, %struct.event_device_data* %75, i32 0, i32 1
  %77 = call i32 @device_initialize(%struct.TYPE_4__* %76)
  %78 = load %struct.event_device_data*, %struct.event_device_data** %4, align 8
  %79 = getelementptr inbounds %struct.event_device_data, %struct.event_device_data* %78, i32 0, i32 2
  %80 = call i32 @cdev_init(i32* %79, i32* @event_fops)
  %81 = load %struct.event_device_data*, %struct.event_device_data** %4, align 8
  %82 = getelementptr inbounds %struct.event_device_data, %struct.event_device_data* %81, i32 0, i32 2
  %83 = load %struct.event_device_data*, %struct.event_device_data** %4, align 8
  %84 = getelementptr inbounds %struct.event_device_data, %struct.event_device_data* %83, i32 0, i32 1
  %85 = call i32 @cdev_device_add(i32* %82, %struct.TYPE_4__* %84)
  store i32 %85, i32* %5, align 4
  %86 = load i32, i32* %5, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %45
  br label %90

89:                                               ; preds = %45
  store i32 0, i32* %2, align 4
  br label %97

90:                                               ; preds = %88
  %91 = load %struct.event_device_data*, %struct.event_device_data** %4, align 8
  %92 = call i32 @hangup_device(%struct.event_device_data* %91)
  br label %93

93:                                               ; preds = %90, %40, %25
  %94 = load i32, i32* %6, align 4
  %95 = call i32 @ida_simple_remove(i32* @event_ida, i32 %94)
  %96 = load i32, i32* %5, align 4
  store i32 %96, i32* %2, align 4
  br label %97

97:                                               ; preds = %93, %89, %13
  %98 = load i32, i32* %2, align 4
  ret i32 %98
}

declare dso_local i32 @ida_alloc_max(i32*, i64, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local %struct.event_device_data* @kzalloc(i32, i32) #1

declare dso_local i32 @event_queue_new(i32) #1

declare dso_local i32 @kfree(%struct.event_device_data*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @MKDEV(i32, i32) #1

declare dso_local i32 @dev_set_name(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @device_initialize(%struct.TYPE_4__*) #1

declare dso_local i32 @cdev_init(i32*, i32*) #1

declare dso_local i32 @cdev_device_add(i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @hangup_device(%struct.event_device_data*) #1

declare dso_local i32 @ida_simple_remove(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
