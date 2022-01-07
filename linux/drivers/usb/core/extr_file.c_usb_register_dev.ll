; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/core/extr_file.c_usb_register_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/core/extr_file.c_usb_register_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.usb_interface = type { i32, i32, i32 }
%struct.usb_class_driver = type { i32, i8*, i32* }

@EINVAL = common dso_local global i32 0, align 4
@EADDRINUSE = common dso_local global i32 0, align 4
@init_usb_class_mutex = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"looking for a minor, starting at %d\0A\00", align 1
@minor_rwsem = common dso_local global i32 0, align 4
@MAX_USB_MINORS = common dso_local global i32 0, align 4
@usb_minors = common dso_local global i32** null, align 8
@EXFULL = common dso_local global i32 0, align 4
@usb_class = common dso_local global %struct.TYPE_2__* null, align 8
@USB_MAJOR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usb_register_dev(%struct.usb_interface* %0, %struct.usb_class_driver* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_class_driver*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [20 x i8], align 16
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_class_driver* %1, %struct.usb_class_driver** %5, align 8
  %10 = load %struct.usb_class_driver*, %struct.usb_class_driver** %5, align 8
  %11 = getelementptr inbounds %struct.usb_class_driver, %struct.usb_class_driver* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %7, align 4
  %13 = load %struct.usb_class_driver*, %struct.usb_class_driver** %5, align 8
  %14 = getelementptr inbounds %struct.usb_class_driver, %struct.usb_class_driver* %13, i32 0, i32 2
  %15 = load i32*, i32** %14, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %120

20:                                               ; preds = %2
  %21 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %22 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp sge i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load i32, i32* @EADDRINUSE, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %120

28:                                               ; preds = %20
  %29 = call i32 @mutex_lock(i32* @init_usb_class_mutex)
  %30 = call i32 (...) @init_usb_class()
  store i32 %30, i32* %6, align 4
  %31 = call i32 @mutex_unlock(i32* @init_usb_class_mutex)
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = load i32, i32* %6, align 4
  store i32 %35, i32* %3, align 4
  br label %120

36:                                               ; preds = %28
  %37 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %38 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %37, i32 0, i32 2
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @dev_dbg(i32* %38, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %39)
  %41 = call i32 @down_write(i32* @minor_rwsem)
  %42 = load i32, i32* %7, align 4
  store i32 %42, i32* %8, align 4
  br label %43

43:                                               ; preds = %66, %36
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* @MAX_USB_MINORS, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %69

47:                                               ; preds = %43
  %48 = load i32**, i32*** @usb_minors, align 8
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32*, i32** %48, i64 %50
  %52 = load i32*, i32** %51, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %55

54:                                               ; preds = %47
  br label %66

55:                                               ; preds = %47
  %56 = load %struct.usb_class_driver*, %struct.usb_class_driver** %5, align 8
  %57 = getelementptr inbounds %struct.usb_class_driver, %struct.usb_class_driver* %56, i32 0, i32 2
  %58 = load i32*, i32** %57, align 8
  %59 = load i32**, i32*** @usb_minors, align 8
  %60 = load i32, i32* %8, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32*, i32** %59, i64 %61
  store i32* %58, i32** %62, align 8
  %63 = load i32, i32* %8, align 4
  %64 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %65 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 4
  br label %69

66:                                               ; preds = %54
  %67 = load i32, i32* %8, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %8, align 4
  br label %43

69:                                               ; preds = %55, %43
  %70 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %71 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %69
  %75 = call i32 @up_write(i32* @minor_rwsem)
  %76 = load i32, i32* @EXFULL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %3, align 4
  br label %120

78:                                               ; preds = %69
  %79 = getelementptr inbounds [20 x i8], [20 x i8]* %9, i64 0, i64 0
  %80 = load %struct.usb_class_driver*, %struct.usb_class_driver** %5, align 8
  %81 = getelementptr inbounds %struct.usb_class_driver, %struct.usb_class_driver* %80, i32 0, i32 1
  %82 = load i8*, i8** %81, align 8
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* %7, align 4
  %85 = sub nsw i32 %83, %84
  %86 = call i32 @snprintf(i8* %79, i32 20, i8* %82, i32 %85)
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** @usb_class, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %91 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %90, i32 0, i32 2
  %92 = load i32, i32* @USB_MAJOR, align 4
  %93 = load i32, i32* %8, align 4
  %94 = call i32 @MKDEV(i32 %92, i32 %93)
  %95 = load %struct.usb_class_driver*, %struct.usb_class_driver** %5, align 8
  %96 = getelementptr inbounds [20 x i8], [20 x i8]* %9, i64 0, i64 0
  %97 = call i32 @kbasename(i8* %96)
  %98 = call i32 @device_create(i32 %89, i32* %91, i32 %94, %struct.usb_class_driver* %95, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %97)
  %99 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %100 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %99, i32 0, i32 1
  store i32 %98, i32* %100, align 4
  %101 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %102 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = call i64 @IS_ERR(i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %117

106:                                              ; preds = %78
  %107 = load i32**, i32*** @usb_minors, align 8
  %108 = load i32, i32* %8, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32*, i32** %107, i64 %109
  store i32* null, i32** %110, align 8
  %111 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %112 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %111, i32 0, i32 0
  store i32 -1, i32* %112, align 4
  %113 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %114 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @PTR_ERR(i32 %115)
  store i32 %116, i32* %6, align 4
  br label %117

117:                                              ; preds = %106, %78
  %118 = call i32 @up_write(i32* @minor_rwsem)
  %119 = load i32, i32* %6, align 4
  store i32 %119, i32* %3, align 4
  br label %120

120:                                              ; preds = %117, %74, %34, %25, %17
  %121 = load i32, i32* %3, align 4
  ret i32 %121
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @init_usb_class(...) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @device_create(i32, i32*, i32, %struct.usb_class_driver*, i8*, i32) #1

declare dso_local i32 @MKDEV(i32, i32) #1

declare dso_local i32 @kbasename(i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
