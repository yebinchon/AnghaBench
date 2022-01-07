; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/class/extr_usbtmc.c_usbtmc_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/class/extr_usbtmc.c_usbtmc_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.usbtmc_file_data* }
%struct.usbtmc_file_data = type { i8, i32, i32, i64, i64, i32, i32, %struct.usbtmc_device_data*, i32, i32, i32, i32, i32 }
%struct.usbtmc_device_data = type { i32, i32, i32, i32 }
%struct.usb_interface = type { i32 }

@usbtmc_driver = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"can not find device for minor %d\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MAX_URBS_IN_FLIGHT = common dso_local global i32 0, align 4
@USBTMC_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @usbtmc_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbtmc_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.usb_interface*, align 8
  %7 = alloca %struct.usbtmc_device_data*, align 8
  %8 = alloca %struct.usbtmc_file_data*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %9 = load %struct.inode*, %struct.inode** %4, align 8
  %10 = call i32 @iminor(%struct.inode* %9)
  %11 = call %struct.usb_interface* @usb_find_interface(i32* @usbtmc_driver, i32 %10)
  store %struct.usb_interface* %11, %struct.usb_interface** %6, align 8
  %12 = load %struct.usb_interface*, %struct.usb_interface** %6, align 8
  %13 = icmp ne %struct.usb_interface* %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %2
  %15 = load %struct.inode*, %struct.inode** %4, align 8
  %16 = call i32 @iminor(%struct.inode* %15)
  %17 = call i32 @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* @ENODEV, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %90

20:                                               ; preds = %2
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.usbtmc_file_data* @kzalloc(i32 72, i32 %21)
  store %struct.usbtmc_file_data* %22, %struct.usbtmc_file_data** %8, align 8
  %23 = load %struct.usbtmc_file_data*, %struct.usbtmc_file_data** %8, align 8
  %24 = icmp ne %struct.usbtmc_file_data* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %90

28:                                               ; preds = %20
  %29 = load %struct.usbtmc_file_data*, %struct.usbtmc_file_data** %8, align 8
  %30 = getelementptr inbounds %struct.usbtmc_file_data, %struct.usbtmc_file_data* %29, i32 0, i32 12
  %31 = call i32 @spin_lock_init(i32* %30)
  %32 = load %struct.usbtmc_file_data*, %struct.usbtmc_file_data** %8, align 8
  %33 = getelementptr inbounds %struct.usbtmc_file_data, %struct.usbtmc_file_data* %32, i32 0, i32 11
  %34 = load i32, i32* @MAX_URBS_IN_FLIGHT, align 4
  %35 = call i32 @sema_init(i32* %33, i32 %34)
  %36 = load %struct.usbtmc_file_data*, %struct.usbtmc_file_data** %8, align 8
  %37 = getelementptr inbounds %struct.usbtmc_file_data, %struct.usbtmc_file_data* %36, i32 0, i32 10
  %38 = call i32 @init_usb_anchor(i32* %37)
  %39 = load %struct.usbtmc_file_data*, %struct.usbtmc_file_data** %8, align 8
  %40 = getelementptr inbounds %struct.usbtmc_file_data, %struct.usbtmc_file_data* %39, i32 0, i32 9
  %41 = call i32 @init_usb_anchor(i32* %40)
  %42 = load %struct.usbtmc_file_data*, %struct.usbtmc_file_data** %8, align 8
  %43 = getelementptr inbounds %struct.usbtmc_file_data, %struct.usbtmc_file_data* %42, i32 0, i32 8
  %44 = call i32 @init_waitqueue_head(i32* %43)
  %45 = load %struct.usb_interface*, %struct.usb_interface** %6, align 8
  %46 = call %struct.usbtmc_device_data* @usb_get_intfdata(%struct.usb_interface* %45)
  store %struct.usbtmc_device_data* %46, %struct.usbtmc_device_data** %7, align 8
  %47 = load %struct.usbtmc_device_data*, %struct.usbtmc_device_data** %7, align 8
  %48 = getelementptr inbounds %struct.usbtmc_device_data, %struct.usbtmc_device_data* %47, i32 0, i32 3
  %49 = call i32 @kref_get(i32* %48)
  %50 = load %struct.usbtmc_device_data*, %struct.usbtmc_device_data** %7, align 8
  %51 = getelementptr inbounds %struct.usbtmc_device_data, %struct.usbtmc_device_data* %50, i32 0, i32 0
  %52 = call i32 @mutex_lock(i32* %51)
  %53 = load %struct.usbtmc_device_data*, %struct.usbtmc_device_data** %7, align 8
  %54 = load %struct.usbtmc_file_data*, %struct.usbtmc_file_data** %8, align 8
  %55 = getelementptr inbounds %struct.usbtmc_file_data, %struct.usbtmc_file_data* %54, i32 0, i32 7
  store %struct.usbtmc_device_data* %53, %struct.usbtmc_device_data** %55, align 8
  %56 = load %struct.usbtmc_file_data*, %struct.usbtmc_file_data** %8, align 8
  %57 = getelementptr inbounds %struct.usbtmc_file_data, %struct.usbtmc_file_data* %56, i32 0, i32 6
  %58 = call i32 @atomic_set(i32* %57, i32 0)
  %59 = load i32, i32* @USBTMC_TIMEOUT, align 4
  %60 = load %struct.usbtmc_file_data*, %struct.usbtmc_file_data** %8, align 8
  %61 = getelementptr inbounds %struct.usbtmc_file_data, %struct.usbtmc_file_data* %60, i32 0, i32 5
  store i32 %59, i32* %61, align 8
  %62 = load %struct.usbtmc_file_data*, %struct.usbtmc_file_data** %8, align 8
  %63 = getelementptr inbounds %struct.usbtmc_file_data, %struct.usbtmc_file_data* %62, i32 0, i32 0
  store i8 10, i8* %63, align 8
  %64 = load %struct.usbtmc_file_data*, %struct.usbtmc_file_data** %8, align 8
  %65 = getelementptr inbounds %struct.usbtmc_file_data, %struct.usbtmc_file_data* %64, i32 0, i32 4
  store i64 0, i64* %65, align 8
  %66 = load %struct.usbtmc_file_data*, %struct.usbtmc_file_data** %8, align 8
  %67 = getelementptr inbounds %struct.usbtmc_file_data, %struct.usbtmc_file_data* %66, i32 0, i32 3
  store i64 0, i64* %67, align 8
  %68 = load %struct.usbtmc_file_data*, %struct.usbtmc_file_data** %8, align 8
  %69 = getelementptr inbounds %struct.usbtmc_file_data, %struct.usbtmc_file_data* %68, i32 0, i32 1
  store i32 1, i32* %69, align 4
  %70 = load %struct.usbtmc_file_data*, %struct.usbtmc_file_data** %8, align 8
  %71 = getelementptr inbounds %struct.usbtmc_file_data, %struct.usbtmc_file_data* %70, i32 0, i32 2
  %72 = call i32 @INIT_LIST_HEAD(i32* %71)
  %73 = load %struct.usbtmc_device_data*, %struct.usbtmc_device_data** %7, align 8
  %74 = getelementptr inbounds %struct.usbtmc_device_data, %struct.usbtmc_device_data* %73, i32 0, i32 1
  %75 = call i32 @spin_lock_irq(i32* %74)
  %76 = load %struct.usbtmc_file_data*, %struct.usbtmc_file_data** %8, align 8
  %77 = getelementptr inbounds %struct.usbtmc_file_data, %struct.usbtmc_file_data* %76, i32 0, i32 2
  %78 = load %struct.usbtmc_device_data*, %struct.usbtmc_device_data** %7, align 8
  %79 = getelementptr inbounds %struct.usbtmc_device_data, %struct.usbtmc_device_data* %78, i32 0, i32 2
  %80 = call i32 @list_add_tail(i32* %77, i32* %79)
  %81 = load %struct.usbtmc_device_data*, %struct.usbtmc_device_data** %7, align 8
  %82 = getelementptr inbounds %struct.usbtmc_device_data, %struct.usbtmc_device_data* %81, i32 0, i32 1
  %83 = call i32 @spin_unlock_irq(i32* %82)
  %84 = load %struct.usbtmc_device_data*, %struct.usbtmc_device_data** %7, align 8
  %85 = getelementptr inbounds %struct.usbtmc_device_data, %struct.usbtmc_device_data* %84, i32 0, i32 0
  %86 = call i32 @mutex_unlock(i32* %85)
  %87 = load %struct.usbtmc_file_data*, %struct.usbtmc_file_data** %8, align 8
  %88 = load %struct.file*, %struct.file** %5, align 8
  %89 = getelementptr inbounds %struct.file, %struct.file* %88, i32 0, i32 0
  store %struct.usbtmc_file_data* %87, %struct.usbtmc_file_data** %89, align 8
  store i32 0, i32* %3, align 4
  br label %90

90:                                               ; preds = %28, %25, %14
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local %struct.usb_interface* @usb_find_interface(i32*, i32) #1

declare dso_local i32 @iminor(%struct.inode*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local %struct.usbtmc_file_data* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @sema_init(i32*, i32) #1

declare dso_local i32 @init_usb_anchor(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local %struct.usbtmc_device_data* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @kref_get(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
