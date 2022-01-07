; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/core/extr_fb_defio.c_fb_deferred_io_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/core/extr_fb_defio.c_fb_deferred_io_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i32, %struct.TYPE_2__*, %struct.fb_deferred_io* }
%struct.TYPE_2__ = type { i32 }
%struct.fb_deferred_io = type { i64, i32, i32 }

@fb_deferred_io_mmap = common dso_local global i32 0, align 4
@fb_deferred_io_work = common dso_local global i32 0, align 4
@HZ = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fb_deferred_io_init(%struct.fb_info* %0) #0 {
  %2 = alloca %struct.fb_info*, align 8
  %3 = alloca %struct.fb_deferred_io*, align 8
  store %struct.fb_info* %0, %struct.fb_info** %2, align 8
  %4 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %5 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %4, i32 0, i32 2
  %6 = load %struct.fb_deferred_io*, %struct.fb_deferred_io** %5, align 8
  store %struct.fb_deferred_io* %6, %struct.fb_deferred_io** %3, align 8
  %7 = load %struct.fb_deferred_io*, %struct.fb_deferred_io** %3, align 8
  %8 = icmp ne %struct.fb_deferred_io* %7, null
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i32 @BUG_ON(i32 %10)
  %12 = load %struct.fb_deferred_io*, %struct.fb_deferred_io** %3, align 8
  %13 = getelementptr inbounds %struct.fb_deferred_io, %struct.fb_deferred_io* %12, i32 0, i32 2
  %14 = call i32 @mutex_init(i32* %13)
  %15 = load i32, i32* @fb_deferred_io_mmap, align 4
  %16 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %17 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store i32 %15, i32* %19, align 4
  %20 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %21 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %20, i32 0, i32 0
  %22 = load i32, i32* @fb_deferred_io_work, align 4
  %23 = call i32 @INIT_DELAYED_WORK(i32* %21, i32 %22)
  %24 = load %struct.fb_deferred_io*, %struct.fb_deferred_io** %3, align 8
  %25 = getelementptr inbounds %struct.fb_deferred_io, %struct.fb_deferred_io* %24, i32 0, i32 1
  %26 = call i32 @INIT_LIST_HEAD(i32* %25)
  %27 = load %struct.fb_deferred_io*, %struct.fb_deferred_io** %3, align 8
  %28 = getelementptr inbounds %struct.fb_deferred_io, %struct.fb_deferred_io* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %1
  %32 = load i64, i64* @HZ, align 8
  %33 = load %struct.fb_deferred_io*, %struct.fb_deferred_io** %3, align 8
  %34 = getelementptr inbounds %struct.fb_deferred_io, %struct.fb_deferred_io* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  br label %35

35:                                               ; preds = %31, %1
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
