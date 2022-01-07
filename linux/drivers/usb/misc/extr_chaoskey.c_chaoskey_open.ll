; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/misc/extr_chaoskey.c_chaoskey_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/misc/extr_chaoskey.c_chaoskey_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.chaoskey* }
%struct.chaoskey = type { i32, i32 }
%struct.usb_interface = type { i32 }

@chaoskey_driver = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"open\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"open (dev)\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"open success\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @chaoskey_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chaoskey_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.chaoskey*, align 8
  %7 = alloca %struct.usb_interface*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %8 = load %struct.inode*, %struct.inode** %4, align 8
  %9 = call i32 @iminor(%struct.inode* %8)
  %10 = call %struct.usb_interface* @usb_find_interface(i32* @chaoskey_driver, i32 %9)
  store %struct.usb_interface* %10, %struct.usb_interface** %7, align 8
  %11 = load %struct.usb_interface*, %struct.usb_interface** %7, align 8
  %12 = icmp ne %struct.usb_interface* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENODEV, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %44

16:                                               ; preds = %2
  %17 = load %struct.usb_interface*, %struct.usb_interface** %7, align 8
  %18 = call i32 @usb_dbg(%struct.usb_interface* %17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.usb_interface*, %struct.usb_interface** %7, align 8
  %20 = call %struct.chaoskey* @usb_get_intfdata(%struct.usb_interface* %19)
  store %struct.chaoskey* %20, %struct.chaoskey** %6, align 8
  %21 = load %struct.chaoskey*, %struct.chaoskey** %6, align 8
  %22 = icmp ne %struct.chaoskey* %21, null
  br i1 %22, label %28, label %23

23:                                               ; preds = %16
  %24 = load %struct.usb_interface*, %struct.usb_interface** %7, align 8
  %25 = call i32 @usb_dbg(%struct.usb_interface* %24, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %26 = load i32, i32* @ENODEV, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %44

28:                                               ; preds = %16
  %29 = load %struct.chaoskey*, %struct.chaoskey** %6, align 8
  %30 = load %struct.file*, %struct.file** %5, align 8
  %31 = getelementptr inbounds %struct.file, %struct.file* %30, i32 0, i32 0
  store %struct.chaoskey* %29, %struct.chaoskey** %31, align 8
  %32 = load %struct.chaoskey*, %struct.chaoskey** %6, align 8
  %33 = getelementptr inbounds %struct.chaoskey, %struct.chaoskey* %32, i32 0, i32 0
  %34 = call i32 @mutex_lock(i32* %33)
  %35 = load %struct.chaoskey*, %struct.chaoskey** %6, align 8
  %36 = getelementptr inbounds %struct.chaoskey, %struct.chaoskey* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %36, align 4
  %39 = load %struct.chaoskey*, %struct.chaoskey** %6, align 8
  %40 = getelementptr inbounds %struct.chaoskey, %struct.chaoskey* %39, i32 0, i32 0
  %41 = call i32 @mutex_unlock(i32* %40)
  %42 = load %struct.usb_interface*, %struct.usb_interface** %7, align 8
  %43 = call i32 @usb_dbg(%struct.usb_interface* %42, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %28, %23, %13
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local %struct.usb_interface* @usb_find_interface(i32*, i32) #1

declare dso_local i32 @iminor(%struct.inode*) #1

declare dso_local i32 @usb_dbg(%struct.usb_interface*, i8*) #1

declare dso_local %struct.chaoskey* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
