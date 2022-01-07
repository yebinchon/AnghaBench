; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/misc/extr_legousbtower.c_tower_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/misc/extr_legousbtower.c_tower_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.lego_usb_tower* }
%struct.lego_usb_tower = type { i32, i32, i32, %struct.TYPE_6__*, i32, i64, i32, %struct.TYPE_7__*, i32, i64, i64 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.usb_interface = type { i32 }
%struct.tower_reset_reply = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@tower_driver = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"error, can't find device for minor %d\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@LEGO_USB_TOWER_REQUEST_RESET = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@USB_RECIP_DEVICE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"LEGO USB Tower reset control request failed\0A\00", align 1
@tower_interrupt_in_callback = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"Couldn't submit interrupt_in_urb %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @tower_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tower_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.lego_usb_tower*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.usb_interface*, align 8
  %9 = alloca %struct.tower_reset_reply*, align 8
  %10 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  store %struct.lego_usb_tower* null, %struct.lego_usb_tower** %5, align 8
  store i32 0, i32* %7, align 4
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.tower_reset_reply* @kmalloc(i32 4, i32 %11)
  store %struct.tower_reset_reply* %12, %struct.tower_reset_reply** %9, align 8
  %13 = load %struct.tower_reset_reply*, %struct.tower_reset_reply** %9, align 8
  %14 = icmp ne %struct.tower_reset_reply* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %7, align 4
  br label %146

18:                                               ; preds = %2
  %19 = load %struct.inode*, %struct.inode** %3, align 8
  %20 = load %struct.file*, %struct.file** %4, align 8
  %21 = call i32 @nonseekable_open(%struct.inode* %19, %struct.file* %20)
  %22 = load %struct.inode*, %struct.inode** %3, align 8
  %23 = call i32 @iminor(%struct.inode* %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call %struct.usb_interface* @usb_find_interface(i32* @tower_driver, i32 %24)
  store %struct.usb_interface* %25, %struct.usb_interface** %8, align 8
  %26 = load %struct.usb_interface*, %struct.usb_interface** %8, align 8
  %27 = icmp ne %struct.usb_interface* %26, null
  br i1 %27, label %33, label %28

28:                                               ; preds = %18
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* @ENODEV, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %7, align 4
  br label %146

33:                                               ; preds = %18
  %34 = load %struct.usb_interface*, %struct.usb_interface** %8, align 8
  %35 = call %struct.lego_usb_tower* @usb_get_intfdata(%struct.usb_interface* %34)
  store %struct.lego_usb_tower* %35, %struct.lego_usb_tower** %5, align 8
  %36 = load %struct.lego_usb_tower*, %struct.lego_usb_tower** %5, align 8
  %37 = icmp ne %struct.lego_usb_tower* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %33
  %39 = load i32, i32* @ENODEV, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %7, align 4
  br label %146

41:                                               ; preds = %33
  %42 = load %struct.lego_usb_tower*, %struct.lego_usb_tower** %5, align 8
  %43 = getelementptr inbounds %struct.lego_usb_tower, %struct.lego_usb_tower* %42, i32 0, i32 2
  %44 = call i64 @mutex_lock_interruptible(i32* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load i32, i32* @ERESTARTSYS, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %7, align 4
  br label %146

49:                                               ; preds = %41
  %50 = load %struct.lego_usb_tower*, %struct.lego_usb_tower** %5, align 8
  %51 = getelementptr inbounds %struct.lego_usb_tower, %struct.lego_usb_tower* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load i32, i32* @EBUSY, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %7, align 4
  br label %142

57:                                               ; preds = %49
  %58 = load %struct.lego_usb_tower*, %struct.lego_usb_tower** %5, align 8
  %59 = getelementptr inbounds %struct.lego_usb_tower, %struct.lego_usb_tower* %58, i32 0, i32 3
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = load %struct.lego_usb_tower*, %struct.lego_usb_tower** %5, align 8
  %62 = getelementptr inbounds %struct.lego_usb_tower, %struct.lego_usb_tower* %61, i32 0, i32 3
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = call i32 @usb_rcvctrlpipe(%struct.TYPE_6__* %63, i32 0)
  %65 = load i32, i32* @LEGO_USB_TOWER_REQUEST_RESET, align 4
  %66 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %67 = load i32, i32* @USB_DIR_IN, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @USB_RECIP_DEVICE, align 4
  %70 = or i32 %68, %69
  %71 = load %struct.tower_reset_reply*, %struct.tower_reset_reply** %9, align 8
  %72 = call i32 @usb_control_msg(%struct.TYPE_6__* %60, i32 %64, i32 %65, i32 %70, i32 0, i32 0, %struct.tower_reset_reply* %71, i32 4, i32 1000)
  store i32 %72, i32* %10, align 4
  %73 = load i32, i32* %10, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %57
  %76 = load %struct.lego_usb_tower*, %struct.lego_usb_tower** %5, align 8
  %77 = getelementptr inbounds %struct.lego_usb_tower, %struct.lego_usb_tower* %76, i32 0, i32 3
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = call i32 (i32*, i8*, ...) @dev_err(i32* %79, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %81 = load i32, i32* %10, align 4
  store i32 %81, i32* %7, align 4
  br label %142

82:                                               ; preds = %57
  %83 = load %struct.lego_usb_tower*, %struct.lego_usb_tower** %5, align 8
  %84 = getelementptr inbounds %struct.lego_usb_tower, %struct.lego_usb_tower* %83, i32 0, i32 10
  store i64 0, i64* %84, align 8
  %85 = load %struct.lego_usb_tower*, %struct.lego_usb_tower** %5, align 8
  %86 = getelementptr inbounds %struct.lego_usb_tower, %struct.lego_usb_tower* %85, i32 0, i32 9
  store i64 0, i64* %86, align 8
  %87 = load %struct.lego_usb_tower*, %struct.lego_usb_tower** %5, align 8
  %88 = getelementptr inbounds %struct.lego_usb_tower, %struct.lego_usb_tower* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.lego_usb_tower*, %struct.lego_usb_tower** %5, align 8
  %91 = getelementptr inbounds %struct.lego_usb_tower, %struct.lego_usb_tower* %90, i32 0, i32 3
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %91, align 8
  %93 = load %struct.lego_usb_tower*, %struct.lego_usb_tower** %5, align 8
  %94 = getelementptr inbounds %struct.lego_usb_tower, %struct.lego_usb_tower* %93, i32 0, i32 3
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %94, align 8
  %96 = load %struct.lego_usb_tower*, %struct.lego_usb_tower** %5, align 8
  %97 = getelementptr inbounds %struct.lego_usb_tower, %struct.lego_usb_tower* %96, i32 0, i32 7
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @usb_rcvintpipe(%struct.TYPE_6__* %95, i32 %100)
  %102 = load %struct.lego_usb_tower*, %struct.lego_usb_tower** %5, align 8
  %103 = getelementptr inbounds %struct.lego_usb_tower, %struct.lego_usb_tower* %102, i32 0, i32 8
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.lego_usb_tower*, %struct.lego_usb_tower** %5, align 8
  %106 = getelementptr inbounds %struct.lego_usb_tower, %struct.lego_usb_tower* %105, i32 0, i32 7
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %106, align 8
  %108 = call i32 @usb_endpoint_maxp(%struct.TYPE_7__* %107)
  %109 = load i32, i32* @tower_interrupt_in_callback, align 4
  %110 = load %struct.lego_usb_tower*, %struct.lego_usb_tower** %5, align 8
  %111 = load %struct.lego_usb_tower*, %struct.lego_usb_tower** %5, align 8
  %112 = getelementptr inbounds %struct.lego_usb_tower, %struct.lego_usb_tower* %111, i32 0, i32 6
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @usb_fill_int_urb(i32 %89, %struct.TYPE_6__* %92, i32 %101, i32 %104, i32 %108, i32 %109, %struct.lego_usb_tower* %110, i32 %113)
  %115 = load %struct.lego_usb_tower*, %struct.lego_usb_tower** %5, align 8
  %116 = getelementptr inbounds %struct.lego_usb_tower, %struct.lego_usb_tower* %115, i32 0, i32 1
  store i32 1, i32* %116, align 4
  %117 = load %struct.lego_usb_tower*, %struct.lego_usb_tower** %5, align 8
  %118 = getelementptr inbounds %struct.lego_usb_tower, %struct.lego_usb_tower* %117, i32 0, i32 5
  store i64 0, i64* %118, align 8
  %119 = call i32 (...) @mb()
  %120 = load %struct.lego_usb_tower*, %struct.lego_usb_tower** %5, align 8
  %121 = getelementptr inbounds %struct.lego_usb_tower, %struct.lego_usb_tower* %120, i32 0, i32 4
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* @GFP_KERNEL, align 4
  %124 = call i32 @usb_submit_urb(i32 %122, i32 %123)
  store i32 %124, i32* %7, align 4
  %125 = load i32, i32* %7, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %136

127:                                              ; preds = %82
  %128 = load %struct.lego_usb_tower*, %struct.lego_usb_tower** %5, align 8
  %129 = getelementptr inbounds %struct.lego_usb_tower, %struct.lego_usb_tower* %128, i32 0, i32 3
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 0
  %132 = load i32, i32* %7, align 4
  %133 = call i32 (i32*, i8*, ...) @dev_err(i32* %131, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %132)
  %134 = load %struct.lego_usb_tower*, %struct.lego_usb_tower** %5, align 8
  %135 = getelementptr inbounds %struct.lego_usb_tower, %struct.lego_usb_tower* %134, i32 0, i32 1
  store i32 0, i32* %135, align 4
  br label %142

136:                                              ; preds = %82
  %137 = load %struct.lego_usb_tower*, %struct.lego_usb_tower** %5, align 8
  %138 = load %struct.file*, %struct.file** %4, align 8
  %139 = getelementptr inbounds %struct.file, %struct.file* %138, i32 0, i32 0
  store %struct.lego_usb_tower* %137, %struct.lego_usb_tower** %139, align 8
  %140 = load %struct.lego_usb_tower*, %struct.lego_usb_tower** %5, align 8
  %141 = getelementptr inbounds %struct.lego_usb_tower, %struct.lego_usb_tower* %140, i32 0, i32 0
  store i32 1, i32* %141, align 8
  br label %142

142:                                              ; preds = %136, %127, %75, %54
  %143 = load %struct.lego_usb_tower*, %struct.lego_usb_tower** %5, align 8
  %144 = getelementptr inbounds %struct.lego_usb_tower, %struct.lego_usb_tower* %143, i32 0, i32 2
  %145 = call i32 @mutex_unlock(i32* %144)
  br label %146

146:                                              ; preds = %142, %46, %38, %28, %15
  %147 = load %struct.tower_reset_reply*, %struct.tower_reset_reply** %9, align 8
  %148 = call i32 @kfree(%struct.tower_reset_reply* %147)
  %149 = load i32, i32* %7, align 4
  ret i32 %149
}

declare dso_local %struct.tower_reset_reply* @kmalloc(i32, i32) #1

declare dso_local i32 @nonseekable_open(%struct.inode*, %struct.file*) #1

declare dso_local i32 @iminor(%struct.inode*) #1

declare dso_local %struct.usb_interface* @usb_find_interface(i32*, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local %struct.lego_usb_tower* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @usb_control_msg(%struct.TYPE_6__*, i32, i32, i32, i32, i32, %struct.tower_reset_reply*, i32, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @usb_fill_int_urb(i32, %struct.TYPE_6__*, i32, i32, i32, i32, %struct.lego_usb_tower*, i32) #1

declare dso_local i32 @usb_rcvintpipe(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @usb_endpoint_maxp(%struct.TYPE_7__*) #1

declare dso_local i32 @mb(...) #1

declare dso_local i32 @usb_submit_urb(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.tower_reset_reply*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
