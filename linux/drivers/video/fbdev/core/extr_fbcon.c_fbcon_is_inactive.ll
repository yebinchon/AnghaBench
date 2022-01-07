; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/core/extr_fbcon.c_fbcon_is_inactive.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/core/extr_fbcon.c_fbcon_is_inactive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc_data = type { i64 }
%struct.fb_info = type { i64, %struct.fbcon_ops* }
%struct.fbcon_ops = type { i64 }

@FBINFO_STATE_RUNNING = common dso_local global i64 0, align 8
@KD_TEXT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vc_data*, %struct.fb_info*)* @fbcon_is_inactive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fbcon_is_inactive(%struct.vc_data* %0, %struct.fb_info* %1) #0 {
  %3 = alloca %struct.vc_data*, align 8
  %4 = alloca %struct.fb_info*, align 8
  %5 = alloca %struct.fbcon_ops*, align 8
  store %struct.vc_data* %0, %struct.vc_data** %3, align 8
  store %struct.fb_info* %1, %struct.fb_info** %4, align 8
  %6 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %7 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %6, i32 0, i32 1
  %8 = load %struct.fbcon_ops*, %struct.fbcon_ops** %7, align 8
  store %struct.fbcon_ops* %8, %struct.fbcon_ops** %5, align 8
  %9 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %10 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @FBINFO_STATE_RUNNING, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %25, label %14

14:                                               ; preds = %2
  %15 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %16 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @KD_TEXT, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %25, label %20

20:                                               ; preds = %14
  %21 = load %struct.fbcon_ops*, %struct.fbcon_ops** %5, align 8
  %22 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br label %25

25:                                               ; preds = %20, %14, %2
  %26 = phi i1 [ true, %14 ], [ true, %2 ], [ %24, %20 ]
  %27 = zext i1 %26 to i32
  ret i32 %27
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
