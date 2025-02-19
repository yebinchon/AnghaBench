; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_smscufx.c_ufx_ops_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_smscufx.c_ufx_ops_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i32, %struct.TYPE_2__*, i32*, %struct.ufx_data* }
%struct.TYPE_2__ = type { i32 }
%struct.ufx_data = type { i64, i32, i32, i64 }

@HZ = common dso_local global i32 0, align 4
@ufx_ops_mmap = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"released /dev/fb%d user=%d count=%d\00", align 1
@ufx_free = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*, i32)* @ufx_ops_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ufx_ops_release(%struct.fb_info* %0, i32 %1) #0 {
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ufx_data*, align 8
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %7 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %6, i32 0, i32 3
  %8 = load %struct.ufx_data*, %struct.ufx_data** %7, align 8
  store %struct.ufx_data* %8, %struct.ufx_data** %5, align 8
  %9 = load %struct.ufx_data*, %struct.ufx_data** %5, align 8
  %10 = getelementptr inbounds %struct.ufx_data, %struct.ufx_data* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = add nsw i64 %11, -1
  store i64 %12, i64* %10, align 8
  %13 = load %struct.ufx_data*, %struct.ufx_data** %5, align 8
  %14 = getelementptr inbounds %struct.ufx_data, %struct.ufx_data* %13, i32 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %2
  %18 = load %struct.ufx_data*, %struct.ufx_data** %5, align 8
  %19 = getelementptr inbounds %struct.ufx_data, %struct.ufx_data* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %17
  %23 = load %struct.ufx_data*, %struct.ufx_data** %5, align 8
  %24 = getelementptr inbounds %struct.ufx_data, %struct.ufx_data* %23, i32 0, i32 2
  %25 = load i32, i32* @HZ, align 4
  %26 = call i32 @schedule_delayed_work(i32* %24, i32 %25)
  br label %27

27:                                               ; preds = %22, %17, %2
  %28 = load %struct.ufx_data*, %struct.ufx_data** %5, align 8
  %29 = getelementptr inbounds %struct.ufx_data, %struct.ufx_data* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %51

32:                                               ; preds = %27
  %33 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %34 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %33, i32 0, i32 2
  %35 = load i32*, i32** %34, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %51

37:                                               ; preds = %32
  %38 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %39 = call i32 @fb_deferred_io_cleanup(%struct.fb_info* %38)
  %40 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %41 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = call i32 @kfree(i32* %42)
  %44 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %45 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %44, i32 0, i32 2
  store i32* null, i32** %45, align 8
  %46 = load i32, i32* @ufx_ops_mmap, align 4
  %47 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %48 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %47, i32 0, i32 1
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  store i32 %46, i32* %50, align 4
  br label %51

51:                                               ; preds = %37, %32, %27
  %52 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %53 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* %4, align 4
  %56 = load %struct.ufx_data*, %struct.ufx_data** %5, align 8
  %57 = getelementptr inbounds %struct.ufx_data, %struct.ufx_data* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @pr_debug(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %54, i32 %55, i64 %58)
  %60 = load %struct.ufx_data*, %struct.ufx_data** %5, align 8
  %61 = getelementptr inbounds %struct.ufx_data, %struct.ufx_data* %60, i32 0, i32 1
  %62 = load i32, i32* @ufx_free, align 4
  %63 = call i32 @kref_put(i32* %61, i32 %62)
  ret i32 0
}

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @fb_deferred_io_cleanup(%struct.fb_info*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i64) #1

declare dso_local i32 @kref_put(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
