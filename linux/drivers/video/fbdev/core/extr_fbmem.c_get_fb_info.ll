; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/core/extr_fbmem.c_get_fb_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/core/extr_fbmem.c_get_fb_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i32 }

@FB_MAX = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@registration_lock = common dso_local global i32 0, align 4
@registered_fb = common dso_local global %struct.fb_info** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fb_info* (i32)* @get_fb_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fb_info* @get_fb_info(i32 %0) #0 {
  %2 = alloca %struct.fb_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.fb_info*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @FB_MAX, align 4
  %7 = icmp uge i32 %5, %6
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load i32, i32* @ENODEV, align 4
  %10 = sub nsw i32 0, %9
  %11 = call %struct.fb_info* @ERR_PTR(i32 %10)
  store %struct.fb_info* %11, %struct.fb_info** %2, align 8
  br label %28

12:                                               ; preds = %1
  %13 = call i32 @mutex_lock(i32* @registration_lock)
  %14 = load %struct.fb_info**, %struct.fb_info*** @registered_fb, align 8
  %15 = load i32, i32* %3, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.fb_info*, %struct.fb_info** %14, i64 %16
  %18 = load %struct.fb_info*, %struct.fb_info** %17, align 8
  store %struct.fb_info* %18, %struct.fb_info** %4, align 8
  %19 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %20 = icmp ne %struct.fb_info* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %12
  %22 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %23 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %22, i32 0, i32 0
  %24 = call i32 @atomic_inc(i32* %23)
  br label %25

25:                                               ; preds = %21, %12
  %26 = call i32 @mutex_unlock(i32* @registration_lock)
  %27 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  store %struct.fb_info* %27, %struct.fb_info** %2, align 8
  br label %28

28:                                               ; preds = %25, %8
  %29 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  ret %struct.fb_info* %29
}

declare dso_local %struct.fb_info* @ERR_PTR(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
