; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/misc/sisusbvga/extr_sisusb.c_sisusb_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/misc/sisusbvga/extr_sisusb.c_sisusb_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.sisusb_usb_data* }
%struct.sisusb_usb_data = type { i32, i32, i32, %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i64, i32 }
%struct.usb_interface = type { i32 }

@sisusb_driver = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@USB_SPEED_HIGH = common dso_local global i64 0, align 8
@USB_SPEED_SUPER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"Failed to initialize device\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Device not attached to USB 2.0 hub\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @sisusb_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sisusb_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.sisusb_usb_data*, align 8
  %7 = alloca %struct.usb_interface*, align 8
  %8 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %9 = load %struct.inode*, %struct.inode** %4, align 8
  %10 = call i32 @iminor(%struct.inode* %9)
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = call %struct.usb_interface* @usb_find_interface(i32* @sisusb_driver, i32 %11)
  store %struct.usb_interface* %12, %struct.usb_interface** %7, align 8
  %13 = load %struct.usb_interface*, %struct.usb_interface** %7, align 8
  %14 = icmp ne %struct.usb_interface* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %117

18:                                               ; preds = %2
  %19 = load %struct.usb_interface*, %struct.usb_interface** %7, align 8
  %20 = call %struct.sisusb_usb_data* @usb_get_intfdata(%struct.usb_interface* %19)
  store %struct.sisusb_usb_data* %20, %struct.sisusb_usb_data** %6, align 8
  %21 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %6, align 8
  %22 = icmp ne %struct.sisusb_usb_data* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %18
  %24 = load i32, i32* @ENODEV, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %117

26:                                               ; preds = %18
  %27 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %6, align 8
  %28 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %27, i32 0, i32 1
  %29 = call i32 @mutex_lock(i32* %28)
  %30 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %6, align 8
  %31 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %30, i32 0, i32 6
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %26
  %35 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %6, align 8
  %36 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %34, %26
  %40 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %6, align 8
  %41 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %40, i32 0, i32 1
  %42 = call i32 @mutex_unlock(i32* %41)
  %43 = load i32, i32* @ENODEV, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %117

45:                                               ; preds = %34
  %46 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %6, align 8
  %47 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %45
  %51 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %6, align 8
  %52 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %51, i32 0, i32 1
  %53 = call i32 @mutex_unlock(i32* %52)
  %54 = load i32, i32* @EBUSY, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %117

56:                                               ; preds = %45
  %57 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %6, align 8
  %58 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %105, label %61

61:                                               ; preds = %56
  %62 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %6, align 8
  %63 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %62, i32 0, i32 3
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @USB_SPEED_HIGH, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %77, label %69

69:                                               ; preds = %61
  %70 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %6, align 8
  %71 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %70, i32 0, i32 3
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @USB_SPEED_SUPER, align 8
  %76 = icmp sge i64 %74, %75
  br i1 %76, label %77, label %93

77:                                               ; preds = %69, %61
  %78 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %6, align 8
  %79 = call i64 @sisusb_init_gfxdevice(%struct.sisusb_usb_data* %78, i32 0)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %92

81:                                               ; preds = %77
  %82 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %6, align 8
  %83 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %82, i32 0, i32 1
  %84 = call i32 @mutex_unlock(i32* %83)
  %85 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %6, align 8
  %86 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %85, i32 0, i32 3
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 1
  %89 = call i32 @dev_err(i32* %88, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %90 = load i32, i32* @EIO, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %3, align 4
  br label %117

92:                                               ; preds = %77
  br label %104

93:                                               ; preds = %69
  %94 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %6, align 8
  %95 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %94, i32 0, i32 1
  %96 = call i32 @mutex_unlock(i32* %95)
  %97 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %6, align 8
  %98 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %97, i32 0, i32 3
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 1
  %101 = call i32 @dev_err(i32* %100, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %102 = load i32, i32* @EIO, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %3, align 4
  br label %117

104:                                              ; preds = %92
  br label %105

105:                                              ; preds = %104, %56
  %106 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %6, align 8
  %107 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %106, i32 0, i32 2
  %108 = call i32 @kref_get(i32* %107)
  %109 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %6, align 8
  %110 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %109, i32 0, i32 0
  store i32 1, i32* %110, align 8
  %111 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %6, align 8
  %112 = load %struct.file*, %struct.file** %5, align 8
  %113 = getelementptr inbounds %struct.file, %struct.file* %112, i32 0, i32 0
  store %struct.sisusb_usb_data* %111, %struct.sisusb_usb_data** %113, align 8
  %114 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %6, align 8
  %115 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %114, i32 0, i32 1
  %116 = call i32 @mutex_unlock(i32* %115)
  store i32 0, i32* %3, align 4
  br label %117

117:                                              ; preds = %105, %93, %81, %50, %39, %23, %15
  %118 = load i32, i32* %3, align 4
  ret i32 %118
}

declare dso_local i32 @iminor(%struct.inode*) #1

declare dso_local %struct.usb_interface* @usb_find_interface(i32*, i32) #1

declare dso_local %struct.sisusb_usb_data* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @sisusb_init_gfxdevice(%struct.sisusb_usb_data*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @kref_get(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
