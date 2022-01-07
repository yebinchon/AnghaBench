; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/core/extr_devio.c_usbdev_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/core/extr_devio.c_usbdev_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.inode = type { i32 }
%struct.file = type { %struct.usb_dev_state* }
%struct.usb_dev_state = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.file*, %struct.usb_device* }
%struct.usb_device = type { i64, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@USB_DEVICE_MAJOR = common dso_local global i64 0, align 8
@USB_STATE_NOTATTACHED = common dso_local global i64 0, align 8
@current = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [26 x i8] c"opened by process %d: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @usbdev_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbdev_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.usb_device*, align 8
  %7 = alloca %struct.usb_dev_state*, align 8
  %8 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  store %struct.usb_device* null, %struct.usb_device** %6, align 8
  %9 = load i32, i32* @ENOMEM, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.usb_dev_state* @kzalloc(i32 56, i32 %11)
  store %struct.usb_dev_state* %12, %struct.usb_dev_state** %7, align 8
  %13 = load %struct.usb_dev_state*, %struct.usb_dev_state** %7, align 8
  %14 = icmp ne %struct.usb_dev_state* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  br label %110

16:                                               ; preds = %2
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %8, align 4
  %19 = load %struct.inode*, %struct.inode** %4, align 8
  %20 = call i64 @imajor(%struct.inode* %19)
  %21 = load i64, i64* @USB_DEVICE_MAJOR, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %16
  %24 = load %struct.inode*, %struct.inode** %4, align 8
  %25 = getelementptr inbounds %struct.inode, %struct.inode* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call %struct.usb_device* @usbdev_lookup_by_devt(i32 %26)
  store %struct.usb_device* %27, %struct.usb_device** %6, align 8
  br label %28

28:                                               ; preds = %23, %16
  %29 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %30 = icmp ne %struct.usb_device* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %28
  br label %110

32:                                               ; preds = %28
  %33 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %34 = call i32 @usb_lock_device(%struct.usb_device* %33)
  %35 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %36 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @USB_STATE_NOTATTACHED, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  br label %105

41:                                               ; preds = %32
  %42 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %43 = call i32 @usb_autoresume_device(%struct.usb_device* %42)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  br label %105

47:                                               ; preds = %41
  %48 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %49 = load %struct.usb_dev_state*, %struct.usb_dev_state** %7, align 8
  %50 = getelementptr inbounds %struct.usb_dev_state, %struct.usb_dev_state* %49, i32 0, i32 11
  store %struct.usb_device* %48, %struct.usb_device** %50, align 8
  %51 = load %struct.file*, %struct.file** %5, align 8
  %52 = load %struct.usb_dev_state*, %struct.usb_dev_state** %7, align 8
  %53 = getelementptr inbounds %struct.usb_dev_state, %struct.usb_dev_state* %52, i32 0, i32 10
  store %struct.file* %51, %struct.file** %53, align 8
  %54 = load %struct.usb_dev_state*, %struct.usb_dev_state** %7, align 8
  %55 = getelementptr inbounds %struct.usb_dev_state, %struct.usb_dev_state* %54, i32 0, i32 0
  store i32 -1, i32* %55, align 8
  %56 = load %struct.usb_dev_state*, %struct.usb_dev_state** %7, align 8
  %57 = getelementptr inbounds %struct.usb_dev_state, %struct.usb_dev_state* %56, i32 0, i32 9
  %58 = call i32 @spin_lock_init(i32* %57)
  %59 = load %struct.usb_dev_state*, %struct.usb_dev_state** %7, align 8
  %60 = getelementptr inbounds %struct.usb_dev_state, %struct.usb_dev_state* %59, i32 0, i32 1
  %61 = call i32 @INIT_LIST_HEAD(i32* %60)
  %62 = load %struct.usb_dev_state*, %struct.usb_dev_state** %7, align 8
  %63 = getelementptr inbounds %struct.usb_dev_state, %struct.usb_dev_state* %62, i32 0, i32 8
  %64 = call i32 @INIT_LIST_HEAD(i32* %63)
  %65 = load %struct.usb_dev_state*, %struct.usb_dev_state** %7, align 8
  %66 = getelementptr inbounds %struct.usb_dev_state, %struct.usb_dev_state* %65, i32 0, i32 7
  %67 = call i32 @INIT_LIST_HEAD(i32* %66)
  %68 = load %struct.usb_dev_state*, %struct.usb_dev_state** %7, align 8
  %69 = getelementptr inbounds %struct.usb_dev_state, %struct.usb_dev_state* %68, i32 0, i32 6
  %70 = call i32 @INIT_LIST_HEAD(i32* %69)
  %71 = load %struct.usb_dev_state*, %struct.usb_dev_state** %7, align 8
  %72 = getelementptr inbounds %struct.usb_dev_state, %struct.usb_dev_state* %71, i32 0, i32 5
  %73 = call i32 @init_waitqueue_head(i32* %72)
  %74 = load %struct.usb_dev_state*, %struct.usb_dev_state** %7, align 8
  %75 = getelementptr inbounds %struct.usb_dev_state, %struct.usb_dev_state* %74, i32 0, i32 4
  %76 = call i32 @init_waitqueue_head(i32* %75)
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %78 = call i32 @task_pid(%struct.TYPE_4__* %77)
  %79 = call i32 @get_pid(i32 %78)
  %80 = load %struct.usb_dev_state*, %struct.usb_dev_state** %7, align 8
  %81 = getelementptr inbounds %struct.usb_dev_state, %struct.usb_dev_state* %80, i32 0, i32 3
  store i32 %79, i32* %81, align 4
  %82 = call i32 (...) @get_current_cred()
  %83 = load %struct.usb_dev_state*, %struct.usb_dev_state** %7, align 8
  %84 = getelementptr inbounds %struct.usb_dev_state, %struct.usb_dev_state* %83, i32 0, i32 2
  store i32 %82, i32* %84, align 8
  %85 = call i32 (...) @smp_wmb()
  %86 = load %struct.usb_dev_state*, %struct.usb_dev_state** %7, align 8
  %87 = getelementptr inbounds %struct.usb_dev_state, %struct.usb_dev_state* %86, i32 0, i32 1
  %88 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %89 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %88, i32 0, i32 2
  %90 = call i32 @list_add_tail(i32* %87, i32* %89)
  %91 = load %struct.usb_dev_state*, %struct.usb_dev_state** %7, align 8
  %92 = load %struct.file*, %struct.file** %5, align 8
  %93 = getelementptr inbounds %struct.file, %struct.file* %92, i32 0, i32 0
  store %struct.usb_dev_state* %91, %struct.usb_dev_state** %93, align 8
  %94 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %95 = call i32 @usb_unlock_device(%struct.usb_device* %94)
  %96 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %97 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %96, i32 0, i32 1
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %99 = call i32 @task_pid_nr(%struct.TYPE_4__* %98)
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @snoop(i32* %97, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %99, i32 %102)
  %104 = load i32, i32* %8, align 4
  store i32 %104, i32* %3, align 4
  br label %114

105:                                              ; preds = %46, %40
  %106 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %107 = call i32 @usb_unlock_device(%struct.usb_device* %106)
  %108 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %109 = call i32 @usb_put_dev(%struct.usb_device* %108)
  br label %110

110:                                              ; preds = %105, %31, %15
  %111 = load %struct.usb_dev_state*, %struct.usb_dev_state** %7, align 8
  %112 = call i32 @kfree(%struct.usb_dev_state* %111)
  %113 = load i32, i32* %8, align 4
  store i32 %113, i32* %3, align 4
  br label %114

114:                                              ; preds = %110, %47
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

declare dso_local %struct.usb_dev_state* @kzalloc(i32, i32) #1

declare dso_local i64 @imajor(%struct.inode*) #1

declare dso_local %struct.usb_device* @usbdev_lookup_by_devt(i32) #1

declare dso_local i32 @usb_lock_device(%struct.usb_device*) #1

declare dso_local i32 @usb_autoresume_device(%struct.usb_device*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @get_pid(i32) #1

declare dso_local i32 @task_pid(%struct.TYPE_4__*) #1

declare dso_local i32 @get_current_cred(...) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @usb_unlock_device(%struct.usb_device*) #1

declare dso_local i32 @snoop(i32*, i8*, i32, i32) #1

declare dso_local i32 @task_pid_nr(%struct.TYPE_4__*) #1

declare dso_local i32 @usb_put_dev(%struct.usb_device*) #1

declare dso_local i32 @kfree(%struct.usb_dev_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
