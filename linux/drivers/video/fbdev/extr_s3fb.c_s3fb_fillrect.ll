; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_s3fb.c_s3fb_fillrect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_s3fb.c_s3fb_fillrect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 }
%struct.fb_fillrect = type { i32, i32 }

@FB_TYPE_INTERLEAVED_PLANES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_info*, %struct.fb_fillrect*)* @s3fb_fillrect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s3fb_fillrect(%struct.fb_info* %0, %struct.fb_fillrect* %1) #0 {
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.fb_fillrect*, align 8
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  store %struct.fb_fillrect* %1, %struct.fb_fillrect** %4, align 8
  %5 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %6 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp eq i32 %8, 4
  br i1 %9, label %10, label %33

10:                                               ; preds = %2
  %11 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %12 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = srem i32 %13, 8
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %33

16:                                               ; preds = %10
  %17 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %18 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = srem i32 %19, 8
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %16
  %23 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %24 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @FB_TYPE_INTERLEAVED_PLANES, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %22
  %30 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %31 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %32 = call i32 @s3fb_iplan_fillrect(%struct.fb_info* %30, %struct.fb_fillrect* %31)
  br label %37

33:                                               ; preds = %22, %16, %10, %2
  %34 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %35 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %36 = call i32 @cfb_fillrect(%struct.fb_info* %34, %struct.fb_fillrect* %35)
  br label %37

37:                                               ; preds = %33, %29
  ret void
}

declare dso_local i32 @s3fb_iplan_fillrect(%struct.fb_info*, %struct.fb_fillrect*) #1

declare dso_local i32 @cfb_fillrect(%struct.fb_info*, %struct.fb_fillrect*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
