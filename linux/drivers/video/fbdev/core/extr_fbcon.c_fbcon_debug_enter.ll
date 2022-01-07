; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/core/extr_fbcon.c_fbcon_debug_enter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/core/extr_fbcon.c_fbcon_debug_enter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.TYPE_2__*, %struct.fbcon_ops* }
%struct.TYPE_2__ = type { i32 (%struct.fb_info*)* }
%struct.fbcon_ops = type { i64, i64 }
%struct.vc_data = type { i64 }

@registered_fb = common dso_local global %struct.fb_info** null, align 8
@con2fb_map = common dso_local global i64* null, align 8
@color_table = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vc_data*)* @fbcon_debug_enter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fbcon_debug_enter(%struct.vc_data* %0) #0 {
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
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.fbcon_ops*, %struct.fbcon_ops** %4, align 8
  %21 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %20, i32 0, i32 1
  store i64 %19, i64* %21, align 8
  %22 = load %struct.fbcon_ops*, %struct.fbcon_ops** %4, align 8
  %23 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %22, i32 0, i32 0
  store i64 0, i64* %23, align 8
  %24 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %25 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32 (%struct.fb_info*)*, i32 (%struct.fb_info*)** %27, align 8
  %29 = icmp ne i32 (%struct.fb_info*)* %28, null
  br i1 %29, label %30, label %38

30:                                               ; preds = %1
  %31 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %32 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32 (%struct.fb_info*)*, i32 (%struct.fb_info*)** %34, align 8
  %36 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %37 = call i32 %35(%struct.fb_info* %36)
  br label %38

38:                                               ; preds = %30, %1
  %39 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %40 = load i32, i32* @color_table, align 4
  %41 = call i32 @fbcon_set_palette(%struct.vc_data* %39, i32 %40)
  ret i32 0
}

declare dso_local i32 @fbcon_set_palette(%struct.vc_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
