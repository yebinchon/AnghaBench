; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/misc/extr_chaoskey.c_chaoskey_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/misc/extr_chaoskey.c_chaoskey_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.chaoskey* }
%struct.chaoskey = type { i64, i32, i32, %struct.usb_interface* }
%struct.usb_interface = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"release\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"open count at release is %d\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"invalid open count (%d)\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"release success\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @chaoskey_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chaoskey_release(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.chaoskey*, align 8
  %7 = alloca %struct.usb_interface*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %8 = load %struct.file*, %struct.file** %5, align 8
  %9 = getelementptr inbounds %struct.file, %struct.file* %8, i32 0, i32 0
  %10 = load %struct.chaoskey*, %struct.chaoskey** %9, align 8
  store %struct.chaoskey* %10, %struct.chaoskey** %6, align 8
  %11 = load %struct.chaoskey*, %struct.chaoskey** %6, align 8
  %12 = icmp eq %struct.chaoskey* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @ENODEV, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %77

16:                                               ; preds = %2
  %17 = load %struct.chaoskey*, %struct.chaoskey** %6, align 8
  %18 = getelementptr inbounds %struct.chaoskey, %struct.chaoskey* %17, i32 0, i32 3
  %19 = load %struct.usb_interface*, %struct.usb_interface** %18, align 8
  store %struct.usb_interface* %19, %struct.usb_interface** %7, align 8
  %20 = load %struct.usb_interface*, %struct.usb_interface** %7, align 8
  %21 = call i32 (%struct.usb_interface*, i8*, ...) @usb_dbg(%struct.usb_interface* %20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.chaoskey*, %struct.chaoskey** %6, align 8
  %23 = getelementptr inbounds %struct.chaoskey, %struct.chaoskey* %22, i32 0, i32 1
  %24 = call i32 @mutex_lock(i32* %23)
  %25 = load %struct.usb_interface*, %struct.usb_interface** %7, align 8
  %26 = load %struct.chaoskey*, %struct.chaoskey** %6, align 8
  %27 = getelementptr inbounds %struct.chaoskey, %struct.chaoskey* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i32 (%struct.usb_interface*, i8*, ...) @usb_dbg(%struct.usb_interface* %25, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i64 %28)
  %30 = load %struct.chaoskey*, %struct.chaoskey** %6, align 8
  %31 = getelementptr inbounds %struct.chaoskey, %struct.chaoskey* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp sle i64 %32, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %16
  %35 = load %struct.usb_interface*, %struct.usb_interface** %7, align 8
  %36 = load %struct.chaoskey*, %struct.chaoskey** %6, align 8
  %37 = getelementptr inbounds %struct.chaoskey, %struct.chaoskey* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i32 (%struct.usb_interface*, i8*, ...) @usb_dbg(%struct.usb_interface* %35, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i64 %38)
  %40 = load %struct.chaoskey*, %struct.chaoskey** %6, align 8
  %41 = getelementptr inbounds %struct.chaoskey, %struct.chaoskey* %40, i32 0, i32 1
  %42 = call i32 @mutex_unlock(i32* %41)
  %43 = load i32, i32* @ENODEV, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %77

45:                                               ; preds = %16
  %46 = load %struct.chaoskey*, %struct.chaoskey** %6, align 8
  %47 = getelementptr inbounds %struct.chaoskey, %struct.chaoskey* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %48, -1
  store i64 %49, i64* %47, align 8
  %50 = load %struct.chaoskey*, %struct.chaoskey** %6, align 8
  %51 = getelementptr inbounds %struct.chaoskey, %struct.chaoskey* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %70, label %54

54:                                               ; preds = %45
  %55 = load %struct.chaoskey*, %struct.chaoskey** %6, align 8
  %56 = getelementptr inbounds %struct.chaoskey, %struct.chaoskey* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %54
  %60 = load %struct.chaoskey*, %struct.chaoskey** %6, align 8
  %61 = getelementptr inbounds %struct.chaoskey, %struct.chaoskey* %60, i32 0, i32 1
  %62 = call i32 @mutex_unlock(i32* %61)
  %63 = load %struct.chaoskey*, %struct.chaoskey** %6, align 8
  %64 = call i32 @chaoskey_free(%struct.chaoskey* %63)
  br label %69

65:                                               ; preds = %54
  %66 = load %struct.chaoskey*, %struct.chaoskey** %6, align 8
  %67 = getelementptr inbounds %struct.chaoskey, %struct.chaoskey* %66, i32 0, i32 1
  %68 = call i32 @mutex_unlock(i32* %67)
  br label %69

69:                                               ; preds = %65, %59
  br label %74

70:                                               ; preds = %45
  %71 = load %struct.chaoskey*, %struct.chaoskey** %6, align 8
  %72 = getelementptr inbounds %struct.chaoskey, %struct.chaoskey* %71, i32 0, i32 1
  %73 = call i32 @mutex_unlock(i32* %72)
  br label %74

74:                                               ; preds = %70, %69
  %75 = load %struct.usb_interface*, %struct.usb_interface** %7, align 8
  %76 = call i32 (%struct.usb_interface*, i8*, ...) @usb_dbg(%struct.usb_interface* %75, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %77

77:                                               ; preds = %74, %34, %13
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i32 @usb_dbg(%struct.usb_interface*, i8*, ...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @chaoskey_free(%struct.chaoskey*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
