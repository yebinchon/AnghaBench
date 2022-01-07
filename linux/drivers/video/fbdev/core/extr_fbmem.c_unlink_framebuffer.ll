; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/core/extr_fbmem.c_unlink_framebuffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/core/extr_fbmem.c_unlink_framebuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i32, i32* }

@FB_MAX = common dso_local global i32 0, align 4
@registered_fb = common dso_local global %struct.fb_info** null, align 8
@fb_class = common dso_local global i32 0, align 4
@FB_MAJOR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @unlink_framebuffer(%struct.fb_info* %0) #0 {
  %2 = alloca %struct.fb_info*, align 8
  %3 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %2, align 8
  %4 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %5 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %21, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @FB_MAX, align 4
  %12 = icmp sge i32 %10, %11
  br i1 %12, label %21, label %13

13:                                               ; preds = %9
  %14 = load %struct.fb_info**, %struct.fb_info*** @registered_fb, align 8
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.fb_info*, %struct.fb_info** %14, i64 %16
  %18 = load %struct.fb_info*, %struct.fb_info** %17, align 8
  %19 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %20 = icmp ne %struct.fb_info* %18, %19
  br label %21

21:                                               ; preds = %13, %9, %1
  %22 = phi i1 [ true, %9 ], [ true, %1 ], [ %20, %13 ]
  %23 = zext i1 %22 to i32
  %24 = call i64 @WARN_ON(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  br label %47

27:                                               ; preds = %21
  %28 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %29 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %27
  br label %47

33:                                               ; preds = %27
  %34 = load i32, i32* @fb_class, align 4
  %35 = load i32, i32* @FB_MAJOR, align 4
  %36 = load i32, i32* %3, align 4
  %37 = call i32 @MKDEV(i32 %35, i32 %36)
  %38 = call i32 @device_destroy(i32 %34, i32 %37)
  %39 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %40 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = call i32 @pm_vt_switch_unregister(i32* %41)
  %43 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %44 = call i32 @unbind_console(%struct.fb_info* %43)
  %45 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %46 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %45, i32 0, i32 1
  store i32* null, i32** %46, align 8
  br label %47

47:                                               ; preds = %33, %32, %26
  ret void
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @device_destroy(i32, i32) #1

declare dso_local i32 @MKDEV(i32, i32) #1

declare dso_local i32 @pm_vt_switch_unregister(i32*) #1

declare dso_local i32 @unbind_console(%struct.fb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
