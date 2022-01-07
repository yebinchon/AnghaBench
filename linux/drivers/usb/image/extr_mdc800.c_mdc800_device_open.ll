; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/image/extr_mdc800.c_mdc800_device_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/image/extr_mdc800.c_mdc800_device_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, i32, i32, %struct.TYPE_4__*, %struct.TYPE_5__*, i64, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.inode = type { i32 }
%struct.file = type { i32 }

@mdc800 = common dso_local global %struct.TYPE_6__* null, align 8
@NOT_CONNECTED = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"request USB irq fails (submit_retval=%i).\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Mustek MDC800 device opened.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @mdc800_device_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mdc800_device_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mdc800, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 3
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mdc800, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @NOT_CONNECTED, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @EBUSY, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %6, align 4
  br label %74

18:                                               ; preds = %2
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mdc800, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load i32, i32* @EBUSY, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %6, align 4
  br label %74

26:                                               ; preds = %18
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mdc800, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 12
  store i64 0, i64* %28, align 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mdc800, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 11
  store i64 0, i64* %30, align 8
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mdc800, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 10
  store i64 0, i64* %32, align 8
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mdc800, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 9
  store i64 0, i64* %34, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mdc800, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 2
  store i32 -1, i32* %36, align 4
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mdc800, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 8
  store i64 0, i64* %38, align 8
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mdc800, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 7
  store i64 0, i64* %40, align 8
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mdc800, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 6
  store i64 0, i64* %42, align 8
  store i32 0, i32* %5, align 4
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mdc800, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 4
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mdc800, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 5
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  store %struct.TYPE_4__* %45, %struct.TYPE_4__** %49, align 8
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mdc800, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 5
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = load i32, i32* @GFP_KERNEL, align 4
  %54 = call i32 @usb_submit_urb(%struct.TYPE_5__* %52, i32 %53)
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* %5, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %26
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mdc800, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 4
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32, i32* %5, align 4
  %63 = call i32 @dev_err(i32* %61, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* @EIO, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %6, align 4
  br label %74

66:                                               ; preds = %26
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mdc800, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 1
  store i32 1, i32* %68, align 8
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mdc800, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 4
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = call i32 @dev_dbg(i32* %72, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %74

74:                                               ; preds = %66, %57, %23, %15
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mdc800, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 3
  %77 = call i32 @mutex_unlock(i32* %76)
  %78 = load i32, i32* %6, align 4
  ret i32 %78
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @usb_submit_urb(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
