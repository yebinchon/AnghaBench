; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2x00debug.c_rt2x00debug_create_file_driver.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2x00debug.c_rt2x00debug_create_file_driver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00debug_intf = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i8* }
%struct.debugfs_blob_wrapper = type { i8*, i32 }

@MAX_LINE_LENGTH = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"driver:\09%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"version:\09%s\0A\00", align 1
@DRV_VERSION = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.rt2x00debug_intf*, %struct.debugfs_blob_wrapper*)* @rt2x00debug_create_file_driver to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2x00debug_create_file_driver(i8* %0, %struct.rt2x00debug_intf* %1, %struct.debugfs_blob_wrapper* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.rt2x00debug_intf*, align 8
  %6 = alloca %struct.debugfs_blob_wrapper*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.rt2x00debug_intf* %1, %struct.rt2x00debug_intf** %5, align 8
  store %struct.debugfs_blob_wrapper* %2, %struct.debugfs_blob_wrapper** %6, align 8
  %8 = load i32, i32* @MAX_LINE_LENGTH, align 4
  %9 = mul nsw i32 3, %8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call i8* @kzalloc(i32 %9, i32 %10)
  store i8* %11, i8** %7, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  br label %49

15:                                               ; preds = %3
  %16 = load i8*, i8** %7, align 8
  %17 = load %struct.debugfs_blob_wrapper*, %struct.debugfs_blob_wrapper** %6, align 8
  %18 = getelementptr inbounds %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper* %17, i32 0, i32 0
  store i8* %16, i8** %18, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = load %struct.rt2x00debug_intf*, %struct.rt2x00debug_intf** %5, align 8
  %21 = getelementptr inbounds %struct.rt2x00debug_intf, %struct.rt2x00debug_intf* %20, i32 0, i32 1
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 @sprintf(i8* %19, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %26)
  %28 = load i8*, i8** %7, align 8
  %29 = sext i32 %27 to i64
  %30 = getelementptr inbounds i8, i8* %28, i64 %29
  store i8* %30, i8** %7, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = load i8*, i8** @DRV_VERSION, align 8
  %33 = call i32 @sprintf(i8* %31, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* %32)
  %34 = load i8*, i8** %7, align 8
  %35 = sext i32 %33 to i64
  %36 = getelementptr inbounds i8, i8* %34, i64 %35
  store i8* %36, i8** %7, align 8
  %37 = load %struct.debugfs_blob_wrapper*, %struct.debugfs_blob_wrapper** %6, align 8
  %38 = getelementptr inbounds %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 @strlen(i8* %39)
  %41 = load %struct.debugfs_blob_wrapper*, %struct.debugfs_blob_wrapper** %6, align 8
  %42 = getelementptr inbounds %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 8
  %43 = load i8*, i8** %4, align 8
  %44 = load %struct.rt2x00debug_intf*, %struct.rt2x00debug_intf** %5, align 8
  %45 = getelementptr inbounds %struct.rt2x00debug_intf, %struct.rt2x00debug_intf* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.debugfs_blob_wrapper*, %struct.debugfs_blob_wrapper** %6, align 8
  %48 = call i32 @debugfs_create_blob(i8* %43, i32 256, i32 %46, %struct.debugfs_blob_wrapper* %47)
  br label %49

49:                                               ; preds = %15, %14
  ret void
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @debugfs_create_blob(i8*, i32, i32, %struct.debugfs_blob_wrapper*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
