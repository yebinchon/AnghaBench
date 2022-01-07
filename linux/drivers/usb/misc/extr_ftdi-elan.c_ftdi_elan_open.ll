; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/misc/extr_ftdi-elan.c_ftdi_elan_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/misc/extr_ftdi-elan.c_ftdi_elan_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.usb_ftdi* }
%struct.usb_ftdi = type { i32 }
%struct.usb_interface = type { i32 }

@ftdi_elan_driver = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"can't find device for minor %d\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @ftdi_elan_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ftdi_elan_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.usb_interface*, align 8
  %8 = alloca %struct.usb_ftdi*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %9 = load %struct.inode*, %struct.inode** %4, align 8
  %10 = call i32 @iminor(%struct.inode* %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = call %struct.usb_interface* @usb_find_interface(i32* @ftdi_elan_driver, i32 %11)
  store %struct.usb_interface* %12, %struct.usb_interface** %7, align 8
  %13 = load %struct.usb_interface*, %struct.usb_interface** %7, align 8
  %14 = icmp ne %struct.usb_interface* %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* @ENODEV, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %42

20:                                               ; preds = %2
  %21 = load %struct.usb_interface*, %struct.usb_interface** %7, align 8
  %22 = call %struct.usb_ftdi* @usb_get_intfdata(%struct.usb_interface* %21)
  store %struct.usb_ftdi* %22, %struct.usb_ftdi** %8, align 8
  %23 = load %struct.usb_ftdi*, %struct.usb_ftdi** %8, align 8
  %24 = icmp ne %struct.usb_ftdi* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* @ENODEV, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %42

28:                                               ; preds = %20
  %29 = load %struct.usb_ftdi*, %struct.usb_ftdi** %8, align 8
  %30 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %29, i32 0, i32 0
  %31 = call i64 @down_interruptible(i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load i32, i32* @EINTR, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %42

36:                                               ; preds = %28
  %37 = load %struct.usb_ftdi*, %struct.usb_ftdi** %8, align 8
  %38 = call i32 @ftdi_elan_get_kref(%struct.usb_ftdi* %37)
  %39 = load %struct.usb_ftdi*, %struct.usb_ftdi** %8, align 8
  %40 = load %struct.file*, %struct.file** %5, align 8
  %41 = getelementptr inbounds %struct.file, %struct.file* %40, i32 0, i32 0
  store %struct.usb_ftdi* %39, %struct.usb_ftdi** %41, align 8
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %36, %33, %25, %15
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @iminor(%struct.inode*) #1

declare dso_local %struct.usb_interface* @usb_find_interface(i32*, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local %struct.usb_ftdi* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i64 @down_interruptible(i32*) #1

declare dso_local i32 @ftdi_elan_get_kref(%struct.usb_ftdi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
