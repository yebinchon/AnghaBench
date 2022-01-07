; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/core/extr_fbcon.c_fbcon_putcs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/core/extr_fbcon.c_fbcon_putcs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.fbcon_ops* }
%struct.fbcon_ops = type { i32 (%struct.vc_data*, %struct.fb_info.0*, i16*, i32, i32, i32, i32, i32)* }
%struct.vc_data = type { i64 }
%struct.fb_info.0 = type opaque
%struct.fbcon_display = type { i32 }

@registered_fb = common dso_local global %struct.fb_info** null, align 8
@con2fb_map = common dso_local global i64* null, align 8
@fb_display = common dso_local global %struct.fbcon_display* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vc_data*, i16*, i32, i32, i32)* @fbcon_putcs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fbcon_putcs(%struct.vc_data* %0, i16* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.vc_data*, align 8
  %7 = alloca i16*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.fb_info*, align 8
  %12 = alloca %struct.fbcon_display*, align 8
  %13 = alloca %struct.fbcon_ops*, align 8
  store %struct.vc_data* %0, %struct.vc_data** %6, align 8
  store i16* %1, i16** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load %struct.fb_info**, %struct.fb_info*** @registered_fb, align 8
  %15 = load i64*, i64** @con2fb_map, align 8
  %16 = load %struct.vc_data*, %struct.vc_data** %6, align 8
  %17 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds i64, i64* %15, i64 %18
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.fb_info*, %struct.fb_info** %14, i64 %20
  %22 = load %struct.fb_info*, %struct.fb_info** %21, align 8
  store %struct.fb_info* %22, %struct.fb_info** %11, align 8
  %23 = load %struct.fbcon_display*, %struct.fbcon_display** @fb_display, align 8
  %24 = load %struct.vc_data*, %struct.vc_data** %6, align 8
  %25 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds %struct.fbcon_display, %struct.fbcon_display* %23, i64 %26
  store %struct.fbcon_display* %27, %struct.fbcon_display** %12, align 8
  %28 = load %struct.fb_info*, %struct.fb_info** %11, align 8
  %29 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %28, i32 0, i32 0
  %30 = load %struct.fbcon_ops*, %struct.fbcon_ops** %29, align 8
  store %struct.fbcon_ops* %30, %struct.fbcon_ops** %13, align 8
  %31 = load %struct.vc_data*, %struct.vc_data** %6, align 8
  %32 = load %struct.fb_info*, %struct.fb_info** %11, align 8
  %33 = call i32 @fbcon_is_inactive(%struct.vc_data* %31, %struct.fb_info* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %59, label %35

35:                                               ; preds = %5
  %36 = load %struct.fbcon_ops*, %struct.fbcon_ops** %13, align 8
  %37 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %36, i32 0, i32 0
  %38 = load i32 (%struct.vc_data*, %struct.fb_info.0*, i16*, i32, i32, i32, i32, i32)*, i32 (%struct.vc_data*, %struct.fb_info.0*, i16*, i32, i32, i32, i32, i32)** %37, align 8
  %39 = load %struct.vc_data*, %struct.vc_data** %6, align 8
  %40 = load %struct.fb_info*, %struct.fb_info** %11, align 8
  %41 = bitcast %struct.fb_info* %40 to %struct.fb_info.0*
  %42 = load i16*, i16** %7, align 8
  %43 = load i32, i32* %8, align 4
  %44 = load %struct.fbcon_display*, %struct.fbcon_display** %12, align 8
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @real_y(%struct.fbcon_display* %44, i32 %45)
  %47 = load i32, i32* %10, align 4
  %48 = load %struct.vc_data*, %struct.vc_data** %6, align 8
  %49 = load %struct.fb_info*, %struct.fb_info** %11, align 8
  %50 = load i16*, i16** %7, align 8
  %51 = call i32 @scr_readw(i16* %50)
  %52 = call i32 @get_color(%struct.vc_data* %48, %struct.fb_info* %49, i32 %51, i32 1)
  %53 = load %struct.vc_data*, %struct.vc_data** %6, align 8
  %54 = load %struct.fb_info*, %struct.fb_info** %11, align 8
  %55 = load i16*, i16** %7, align 8
  %56 = call i32 @scr_readw(i16* %55)
  %57 = call i32 @get_color(%struct.vc_data* %53, %struct.fb_info* %54, i32 %56, i32 0)
  %58 = call i32 %38(%struct.vc_data* %39, %struct.fb_info.0* %41, i16* %42, i32 %43, i32 %46, i32 %47, i32 %52, i32 %57)
  br label %59

59:                                               ; preds = %35, %5
  ret void
}

declare dso_local i32 @fbcon_is_inactive(%struct.vc_data*, %struct.fb_info*) #1

declare dso_local i32 @real_y(%struct.fbcon_display*, i32) #1

declare dso_local i32 @get_color(%struct.vc_data*, %struct.fb_info*, i32, i32) #1

declare dso_local i32 @scr_readw(i16*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
