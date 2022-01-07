; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/core/extr_fbmem.c_do_unregister_framebuffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/core/extr_fbmem.c_do_unregister_framebuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }

@FB_PIXMAP_DEFAULT = common dso_local global i32 0, align 4
@registered_fb = common dso_local global i32** null, align 8
@num_registered_fb = common dso_local global i32 0, align 4
@FB_EVENT_FB_UNREGISTERED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_info*)* @do_unregister_framebuffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_unregister_framebuffer(%struct.fb_info* %0) #0 {
  %2 = alloca %struct.fb_info*, align 8
  store %struct.fb_info* %0, %struct.fb_info** %2, align 8
  %3 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %4 = call i32 @unlink_framebuffer(%struct.fb_info* %3)
  %5 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %6 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %5, i32 0, i32 2
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %24

10:                                               ; preds = %1
  %11 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %12 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @FB_PIXMAP_DEFAULT, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %10
  %19 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %20 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @kfree(i64 %22)
  br label %24

24:                                               ; preds = %18, %10, %1
  %25 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %26 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %25, i32 0, i32 1
  %27 = call i32 @fb_destroy_modelist(i32* %26)
  %28 = load i32**, i32*** @registered_fb, align 8
  %29 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %30 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds i32*, i32** %28, i64 %31
  store i32* null, i32** %32, align 8
  %33 = load i32, i32* @num_registered_fb, align 4
  %34 = add nsw i32 %33, -1
  store i32 %34, i32* @num_registered_fb, align 4
  %35 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %36 = call i32 @fb_cleanup_device(%struct.fb_info* %35)
  %37 = call i32 (...) @console_lock()
  %38 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %39 = call i32 @fbcon_fb_unregistered(%struct.fb_info* %38)
  %40 = call i32 (...) @console_unlock()
  %41 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %42 = call i32 @put_fb_info(%struct.fb_info* %41)
  ret void
}

declare dso_local i32 @unlink_framebuffer(%struct.fb_info*) #1

declare dso_local i32 @kfree(i64) #1

declare dso_local i32 @fb_destroy_modelist(i32*) #1

declare dso_local i32 @fb_cleanup_device(%struct.fb_info*) #1

declare dso_local i32 @console_lock(...) #1

declare dso_local i32 @fbcon_fb_unregistered(%struct.fb_info*) #1

declare dso_local i32 @console_unlock(...) #1

declare dso_local i32 @put_fb_info(%struct.fb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
