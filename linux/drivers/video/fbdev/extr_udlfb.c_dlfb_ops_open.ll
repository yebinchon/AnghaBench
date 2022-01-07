; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_udlfb.c_dlfb_ops_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_udlfb.c_dlfb_ops_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i32, %struct.fb_deferred_io*, %struct.dlfb_data* }
%struct.fb_deferred_io = type { i32, i32 }
%struct.dlfb_data = type { i32, i64 }

@console = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@fb_defio = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@DL_DEFIO_WRITE_DELAY = common dso_local global i32 0, align 4
@dlfb_dpy_deferred_io = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"open, user=%d fb_info=%p count=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*, i32)* @dlfb_ops_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dlfb_ops_open(%struct.fb_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fb_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dlfb_data*, align 8
  %7 = alloca %struct.fb_deferred_io*, align 8
  store %struct.fb_info* %0, %struct.fb_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %9 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %8, i32 0, i32 2
  %10 = load %struct.dlfb_data*, %struct.dlfb_data** %9, align 8
  store %struct.dlfb_data* %10, %struct.dlfb_data** %6, align 8
  %11 = load i32, i32* %5, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = load i32, i32* @console, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %13
  %17 = load i32, i32* @EBUSY, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %67

19:                                               ; preds = %13, %2
  %20 = load %struct.dlfb_data*, %struct.dlfb_data** %6, align 8
  %21 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load i32, i32* @ENODEV, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %67

27:                                               ; preds = %19
  %28 = load %struct.dlfb_data*, %struct.dlfb_data** %6, align 8
  %29 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %29, align 8
  %32 = load i64, i64* @fb_defio, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %57

34:                                               ; preds = %27
  %35 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %36 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %35, i32 0, i32 1
  %37 = load %struct.fb_deferred_io*, %struct.fb_deferred_io** %36, align 8
  %38 = icmp eq %struct.fb_deferred_io* %37, null
  br i1 %38, label %39, label %57

39:                                               ; preds = %34
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = call %struct.fb_deferred_io* @kzalloc(i32 8, i32 %40)
  store %struct.fb_deferred_io* %41, %struct.fb_deferred_io** %7, align 8
  %42 = load %struct.fb_deferred_io*, %struct.fb_deferred_io** %7, align 8
  %43 = icmp ne %struct.fb_deferred_io* %42, null
  br i1 %43, label %44, label %51

44:                                               ; preds = %39
  %45 = load i32, i32* @DL_DEFIO_WRITE_DELAY, align 4
  %46 = load %struct.fb_deferred_io*, %struct.fb_deferred_io** %7, align 8
  %47 = getelementptr inbounds %struct.fb_deferred_io, %struct.fb_deferred_io* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* @dlfb_dpy_deferred_io, align 4
  %49 = load %struct.fb_deferred_io*, %struct.fb_deferred_io** %7, align 8
  %50 = getelementptr inbounds %struct.fb_deferred_io, %struct.fb_deferred_io* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  br label %51

51:                                               ; preds = %44, %39
  %52 = load %struct.fb_deferred_io*, %struct.fb_deferred_io** %7, align 8
  %53 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %54 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %53, i32 0, i32 1
  store %struct.fb_deferred_io* %52, %struct.fb_deferred_io** %54, align 8
  %55 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %56 = call i32 @fb_deferred_io_init(%struct.fb_info* %55)
  br label %57

57:                                               ; preds = %51, %34, %27
  %58 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %59 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* %5, align 4
  %62 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %63 = load %struct.dlfb_data*, %struct.dlfb_data** %6, align 8
  %64 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @dev_dbg(i32 %60, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %61, %struct.fb_info* %62, i32 %65)
  store i32 0, i32* %3, align 4
  br label %67

67:                                               ; preds = %57, %24, %16
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local %struct.fb_deferred_io* @kzalloc(i32, i32) #1

declare dso_local i32 @fb_deferred_io_init(%struct.fb_info*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, %struct.fb_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
