; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/core/extr_fb_defio.c_fb_deferred_io_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/core/extr_fb_defio.c_fb_deferred_io_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.TYPE_3__*, %struct.TYPE_4__, i32, %struct.fb_deferred_io* }
%struct.TYPE_3__ = type { i32* }
%struct.TYPE_4__ = type { i32 }
%struct.fb_deferred_io = type { i32 }
%struct.page = type { i32* }

@PAGE_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fb_deferred_io_cleanup(%struct.fb_info* %0) #0 {
  %2 = alloca %struct.fb_info*, align 8
  %3 = alloca %struct.fb_deferred_io*, align 8
  %4 = alloca %struct.page*, align 8
  %5 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %2, align 8
  %6 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %7 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %6, i32 0, i32 3
  %8 = load %struct.fb_deferred_io*, %struct.fb_deferred_io** %7, align 8
  store %struct.fb_deferred_io* %8, %struct.fb_deferred_io** %3, align 8
  %9 = load %struct.fb_deferred_io*, %struct.fb_deferred_io** %3, align 8
  %10 = icmp ne %struct.fb_deferred_io* %9, null
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i32 @BUG_ON(i32 %12)
  %14 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %15 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %14, i32 0, i32 2
  %16 = call i32 @cancel_delayed_work_sync(i32* %15)
  store i32 0, i32* %5, align 4
  br label %17

17:                                               ; preds = %30, %1
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %20 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %18, %22
  br i1 %23, label %24, label %36

24:                                               ; preds = %17
  %25 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %26 = load i32, i32* %5, align 4
  %27 = call %struct.page* @fb_deferred_io_page(%struct.fb_info* %25, i32 %26)
  store %struct.page* %27, %struct.page** %4, align 8
  %28 = load %struct.page*, %struct.page** %4, align 8
  %29 = getelementptr inbounds %struct.page, %struct.page* %28, i32 0, i32 0
  store i32* null, i32** %29, align 8
  br label %30

30:                                               ; preds = %24
  %31 = load i64, i64* @PAGE_SIZE, align 8
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = add nsw i64 %33, %31
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %5, align 4
  br label %17

36:                                               ; preds = %17
  %37 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %38 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %37, i32 0, i32 0
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  store i32* null, i32** %40, align 8
  %41 = load %struct.fb_deferred_io*, %struct.fb_deferred_io** %3, align 8
  %42 = getelementptr inbounds %struct.fb_deferred_io, %struct.fb_deferred_io* %41, i32 0, i32 0
  %43 = call i32 @mutex_destroy(i32* %42)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local %struct.page* @fb_deferred_io_page(%struct.fb_info*, i32) #1

declare dso_local i32 @mutex_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
