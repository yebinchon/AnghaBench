; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/core/extr_fbcon.c_fbcon_debug_leave.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/core/extr_fbcon.c_fbcon_debug_leave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.TYPE_2__*, %struct.fbcon_ops* }
%struct.TYPE_2__ = type { i32 (%struct.fb_info*)* }
%struct.fbcon_ops = type { i32, i32 }
%struct.vc_data = type { i64 }

@registered_fb = common dso_local global %struct.fb_info** null, align 8
@con2fb_map = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vc_data*)* @fbcon_debug_leave to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fbcon_debug_leave(%struct.vc_data* %0) #0 {
  %2 = alloca %struct.vc_data*, align 8
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.fbcon_ops*, align 8
  store %struct.vc_data* %0, %struct.vc_data** %2, align 8
  %5 = load %struct.fb_info**, %struct.fb_info*** @registered_fb, align 8
  %6 = load i64*, i64** @con2fb_map, align 8
  %7 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %8 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = getelementptr inbounds i64, i64* %6, i64 %9
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds %struct.fb_info*, %struct.fb_info** %5, i64 %11
  %13 = load %struct.fb_info*, %struct.fb_info** %12, align 8
  store %struct.fb_info* %13, %struct.fb_info** %3, align 8
  %14 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %15 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %14, i32 0, i32 1
  %16 = load %struct.fbcon_ops*, %struct.fbcon_ops** %15, align 8
  store %struct.fbcon_ops* %16, %struct.fbcon_ops** %4, align 8
  %17 = load %struct.fbcon_ops*, %struct.fbcon_ops** %4, align 8
  %18 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.fbcon_ops*, %struct.fbcon_ops** %4, align 8
  %21 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %23 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32 (%struct.fb_info*)*, i32 (%struct.fb_info*)** %25, align 8
  %27 = icmp ne i32 (%struct.fb_info*)* %26, null
  br i1 %27, label %28, label %36

28:                                               ; preds = %1
  %29 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %30 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32 (%struct.fb_info*)*, i32 (%struct.fb_info*)** %32, align 8
  %34 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %35 = call i32 %33(%struct.fb_info* %34)
  br label %36

36:                                               ; preds = %28, %1
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
