; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/class/extr_usblp.c_usblp_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/class/extr_usblp.c_usblp_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.usblp* }
%struct.usblp = type { i32, i32, i64, i64, i32, i32 }
%struct.usb_interface = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@usblp_mutex = common dso_local global i32 0, align 4
@usblp_driver = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @usblp_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usblp_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.usblp*, align 8
  %8 = alloca %struct.usb_interface*, align 8
  %9 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %10 = load %struct.inode*, %struct.inode** %4, align 8
  %11 = call i32 @iminor(%struct.inode* %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @ENODEV, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %84

17:                                               ; preds = %2
  %18 = call i32 @mutex_lock(i32* @usblp_mutex)
  %19 = load i32, i32* @ENODEV, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call %struct.usb_interface* @usb_find_interface(i32* @usblp_driver, i32 %21)
  store %struct.usb_interface* %22, %struct.usb_interface** %8, align 8
  %23 = load %struct.usb_interface*, %struct.usb_interface** %8, align 8
  %24 = icmp ne %struct.usb_interface* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %17
  br label %81

26:                                               ; preds = %17
  %27 = load %struct.usb_interface*, %struct.usb_interface** %8, align 8
  %28 = call %struct.usblp* @usb_get_intfdata(%struct.usb_interface* %27)
  store %struct.usblp* %28, %struct.usblp** %7, align 8
  %29 = load %struct.usblp*, %struct.usblp** %7, align 8
  %30 = icmp ne %struct.usblp* %29, null
  br i1 %30, label %31, label %41

31:                                               ; preds = %26
  %32 = load %struct.usblp*, %struct.usblp** %7, align 8
  %33 = getelementptr inbounds %struct.usblp, %struct.usblp* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = load %struct.usblp*, %struct.usblp** %7, align 8
  %38 = getelementptr inbounds %struct.usblp, %struct.usblp* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %36, %31, %26
  br label %81

42:                                               ; preds = %36
  %43 = load i32, i32* @EBUSY, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %9, align 4
  %45 = load %struct.usblp*, %struct.usblp** %7, align 8
  %46 = getelementptr inbounds %struct.usblp, %struct.usblp* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %42
  br label %81

50:                                               ; preds = %42
  %51 = load %struct.usb_interface*, %struct.usb_interface** %8, align 8
  %52 = call i32 @usb_autopm_get_interface(%struct.usb_interface* %51)
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %9, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  br label %81

56:                                               ; preds = %50
  %57 = load %struct.usblp*, %struct.usblp** %7, align 8
  %58 = getelementptr inbounds %struct.usblp, %struct.usblp* %57, i32 0, i32 0
  store i32 1, i32* %58, align 8
  %59 = load %struct.usblp*, %struct.usblp** %7, align 8
  %60 = load %struct.file*, %struct.file** %5, align 8
  %61 = getelementptr inbounds %struct.file, %struct.file* %60, i32 0, i32 0
  store %struct.usblp* %59, %struct.usblp** %61, align 8
  %62 = load %struct.usblp*, %struct.usblp** %7, align 8
  %63 = getelementptr inbounds %struct.usblp, %struct.usblp* %62, i32 0, i32 1
  store i32 1, i32* %63, align 4
  %64 = load %struct.usblp*, %struct.usblp** %7, align 8
  %65 = getelementptr inbounds %struct.usblp, %struct.usblp* %64, i32 0, i32 3
  store i64 0, i64* %65, align 8
  %66 = load %struct.usblp*, %struct.usblp** %7, align 8
  %67 = getelementptr inbounds %struct.usblp, %struct.usblp* %66, i32 0, i32 2
  store i64 0, i64* %67, align 8
  %68 = load %struct.usblp*, %struct.usblp** %7, align 8
  %69 = call i64 @handle_bidir(%struct.usblp* %68)
  %70 = icmp slt i64 %69, 0
  br i1 %70, label %71, label %80

71:                                               ; preds = %56
  %72 = load %struct.usb_interface*, %struct.usb_interface** %8, align 8
  %73 = call i32 @usb_autopm_put_interface(%struct.usb_interface* %72)
  %74 = load %struct.usblp*, %struct.usblp** %7, align 8
  %75 = getelementptr inbounds %struct.usblp, %struct.usblp* %74, i32 0, i32 0
  store i32 0, i32* %75, align 8
  %76 = load %struct.file*, %struct.file** %5, align 8
  %77 = getelementptr inbounds %struct.file, %struct.file* %76, i32 0, i32 0
  store %struct.usblp* null, %struct.usblp** %77, align 8
  %78 = load i32, i32* @EIO, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %9, align 4
  br label %80

80:                                               ; preds = %71, %56
  br label %81

81:                                               ; preds = %80, %55, %49, %41, %25
  %82 = call i32 @mutex_unlock(i32* @usblp_mutex)
  %83 = load i32, i32* %9, align 4
  store i32 %83, i32* %3, align 4
  br label %84

84:                                               ; preds = %81, %14
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local i32 @iminor(%struct.inode*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.usb_interface* @usb_find_interface(i32*, i32) #1

declare dso_local %struct.usblp* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @usb_autopm_get_interface(%struct.usb_interface*) #1

declare dso_local i64 @handle_bidir(%struct.usblp*) #1

declare dso_local i32 @usb_autopm_put_interface(%struct.usb_interface*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
