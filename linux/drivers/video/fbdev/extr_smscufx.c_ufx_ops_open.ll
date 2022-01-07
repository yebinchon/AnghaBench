; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_smscufx.c_ufx_ops_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_smscufx.c_ufx_ops_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i32, %struct.fb_deferred_io*, %struct.ufx_data* }
%struct.fb_deferred_io = type { i32, i32 }
%struct.ufx_data = type { i32, i32, i64 }

@console = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@fb_defio = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@UFX_DEFIO_WRITE_DELAY = common dso_local global i32 0, align 4
@ufx_dpy_deferred_io = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"open /dev/fb%d user=%d fb_info=%p count=%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*, i32)* @ufx_ops_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ufx_ops_open(%struct.fb_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fb_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ufx_data*, align 8
  %7 = alloca %struct.fb_deferred_io*, align 8
  store %struct.fb_info* %0, %struct.fb_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %9 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %8, i32 0, i32 2
  %10 = load %struct.ufx_data*, %struct.ufx_data** %9, align 8
  store %struct.ufx_data* %10, %struct.ufx_data** %6, align 8
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
  br label %70

19:                                               ; preds = %13, %2
  %20 = load %struct.ufx_data*, %struct.ufx_data** %6, align 8
  %21 = getelementptr inbounds %struct.ufx_data, %struct.ufx_data* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load i32, i32* @ENODEV, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %70

27:                                               ; preds = %19
  %28 = load %struct.ufx_data*, %struct.ufx_data** %6, align 8
  %29 = getelementptr inbounds %struct.ufx_data, %struct.ufx_data* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %29, align 8
  %32 = load %struct.ufx_data*, %struct.ufx_data** %6, align 8
  %33 = getelementptr inbounds %struct.ufx_data, %struct.ufx_data* %32, i32 0, i32 1
  %34 = call i32 @kref_get(i32* %33)
  %35 = load i64, i64* @fb_defio, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %60

37:                                               ; preds = %27
  %38 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %39 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %38, i32 0, i32 1
  %40 = load %struct.fb_deferred_io*, %struct.fb_deferred_io** %39, align 8
  %41 = icmp eq %struct.fb_deferred_io* %40, null
  br i1 %41, label %42, label %60

42:                                               ; preds = %37
  %43 = load i32, i32* @GFP_KERNEL, align 4
  %44 = call %struct.fb_deferred_io* @kzalloc(i32 8, i32 %43)
  store %struct.fb_deferred_io* %44, %struct.fb_deferred_io** %7, align 8
  %45 = load %struct.fb_deferred_io*, %struct.fb_deferred_io** %7, align 8
  %46 = icmp ne %struct.fb_deferred_io* %45, null
  br i1 %46, label %47, label %54

47:                                               ; preds = %42
  %48 = load i32, i32* @UFX_DEFIO_WRITE_DELAY, align 4
  %49 = load %struct.fb_deferred_io*, %struct.fb_deferred_io** %7, align 8
  %50 = getelementptr inbounds %struct.fb_deferred_io, %struct.fb_deferred_io* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* @ufx_dpy_deferred_io, align 4
  %52 = load %struct.fb_deferred_io*, %struct.fb_deferred_io** %7, align 8
  %53 = getelementptr inbounds %struct.fb_deferred_io, %struct.fb_deferred_io* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  br label %54

54:                                               ; preds = %47, %42
  %55 = load %struct.fb_deferred_io*, %struct.fb_deferred_io** %7, align 8
  %56 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %57 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %56, i32 0, i32 1
  store %struct.fb_deferred_io* %55, %struct.fb_deferred_io** %57, align 8
  %58 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %59 = call i32 @fb_deferred_io_init(%struct.fb_info* %58)
  br label %60

60:                                               ; preds = %54, %37, %27
  %61 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %62 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* %5, align 4
  %65 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %66 = load %struct.ufx_data*, %struct.ufx_data** %6, align 8
  %67 = getelementptr inbounds %struct.ufx_data, %struct.ufx_data* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @pr_debug(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %63, i32 %64, %struct.fb_info* %65, i32 %68)
  store i32 0, i32* %3, align 4
  br label %70

70:                                               ; preds = %60, %24, %16
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32 @kref_get(i32*) #1

declare dso_local %struct.fb_deferred_io* @kzalloc(i32, i32) #1

declare dso_local i32 @fb_deferred_io_init(%struct.fb_info*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, %struct.fb_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
