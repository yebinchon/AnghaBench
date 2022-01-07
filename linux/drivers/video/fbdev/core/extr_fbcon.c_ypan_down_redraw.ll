; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/core/extr_fbcon.c_ypan_down_redraw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/core/extr_fbcon.c_ypan_down_redraw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.fbcon_ops* }
%struct.fbcon_ops = type { i32 (%struct.fb_info.0*)*, %struct.TYPE_4__ }
%struct.fb_info.0 = type opaque
%struct.TYPE_4__ = type { i32, i32, i64 }
%struct.fbcon_display = type { i32, i64 }
%struct.vc_data = type { i64, %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { i32 }

@registered_fb = common dso_local global %struct.fb_info** null, align 8
@con2fb_map = common dso_local global i64* null, align 8
@fb_display = common dso_local global %struct.fbcon_display* null, align 8
@FB_VMODE_YWRAP = common dso_local global i32 0, align 4
@scrollback_max = common dso_local global i64 0, align 8
@scrollback_current = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vc_data*, i32, i32)* @ypan_down_redraw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ypan_down_redraw(%struct.vc_data* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.vc_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.fb_info*, align 8
  %8 = alloca %struct.fbcon_ops*, align 8
  %9 = alloca %struct.fbcon_display*, align 8
  store %struct.vc_data* %0, %struct.vc_data** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.fb_info**, %struct.fb_info*** @registered_fb, align 8
  %11 = load i64*, i64** @con2fb_map, align 8
  %12 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %13 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds i64, i64* %11, i64 %14
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds %struct.fb_info*, %struct.fb_info** %10, i64 %16
  %18 = load %struct.fb_info*, %struct.fb_info** %17, align 8
  store %struct.fb_info* %18, %struct.fb_info** %7, align 8
  %19 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %20 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %19, i32 0, i32 0
  %21 = load %struct.fbcon_ops*, %struct.fbcon_ops** %20, align 8
  store %struct.fbcon_ops* %21, %struct.fbcon_ops** %8, align 8
  %22 = load %struct.fbcon_display*, %struct.fbcon_display** @fb_display, align 8
  %23 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %24 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds %struct.fbcon_display, %struct.fbcon_display* %22, i64 %25
  store %struct.fbcon_display* %26, %struct.fbcon_display** %9, align 8
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.fbcon_display*, %struct.fbcon_display** %9, align 8
  %29 = getelementptr inbounds %struct.fbcon_display, %struct.fbcon_display* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = sub nsw i32 %30, %27
  store i32 %31, i32* %29, align 8
  %32 = load %struct.fbcon_display*, %struct.fbcon_display** %9, align 8
  %33 = getelementptr inbounds %struct.fbcon_display, %struct.fbcon_display* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %63

36:                                               ; preds = %3
  %37 = load %struct.fbcon_display*, %struct.fbcon_display** %9, align 8
  %38 = getelementptr inbounds %struct.fbcon_display, %struct.fbcon_display* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %41 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = sub nsw i64 %39, %42
  %44 = load %struct.fbcon_display*, %struct.fbcon_display** %9, align 8
  %45 = getelementptr inbounds %struct.fbcon_display, %struct.fbcon_display* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = sext i32 %46 to i64
  %48 = add nsw i64 %47, %43
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %45, align 8
  %50 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %51 = load %struct.fbcon_display*, %struct.fbcon_display** %9, align 8
  %52 = load i32, i32* %5, align 4
  %53 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %54 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = sub nsw i64 %55, %57
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* %6, align 4
  %61 = add nsw i32 %59, %60
  %62 = call i32 @fbcon_redraw_move(%struct.vc_data* %50, %struct.fbcon_display* %51, i32 %52, i64 %58, i32 %61)
  br label %63

63:                                               ; preds = %36, %3
  %64 = load %struct.fbcon_ops*, %struct.fbcon_ops** %8, align 8
  %65 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 2
  store i64 0, i64* %66, align 8
  %67 = load %struct.fbcon_display*, %struct.fbcon_display** %9, align 8
  %68 = getelementptr inbounds %struct.fbcon_display, %struct.fbcon_display* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %71 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = mul nsw i32 %69, %73
  %75 = load %struct.fbcon_ops*, %struct.fbcon_ops** %8, align 8
  %76 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  store i32 %74, i32* %77, align 8
  %78 = load i32, i32* @FB_VMODE_YWRAP, align 4
  %79 = xor i32 %78, -1
  %80 = load %struct.fbcon_ops*, %struct.fbcon_ops** %8, align 8
  %81 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = and i32 %83, %79
  store i32 %84, i32* %82, align 4
  %85 = load %struct.fbcon_ops*, %struct.fbcon_ops** %8, align 8
  %86 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %85, i32 0, i32 0
  %87 = load i32 (%struct.fb_info.0*)*, i32 (%struct.fb_info.0*)** %86, align 8
  %88 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %89 = bitcast %struct.fb_info* %88 to %struct.fb_info.0*
  %90 = call i32 %87(%struct.fb_info.0* %89)
  %91 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %92 = call i32 @fbcon_clear_margins(%struct.vc_data* %91, i32 1)
  %93 = load i32, i32* %6, align 4
  %94 = sext i32 %93 to i64
  %95 = load i64, i64* @scrollback_max, align 8
  %96 = sub nsw i64 %95, %94
  store i64 %96, i64* @scrollback_max, align 8
  %97 = load i64, i64* @scrollback_max, align 8
  %98 = icmp slt i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %63
  store i64 0, i64* @scrollback_max, align 8
  br label %100

100:                                              ; preds = %99, %63
  store i64 0, i64* @scrollback_current, align 8
  ret void
}

declare dso_local i32 @fbcon_redraw_move(%struct.vc_data*, %struct.fbcon_display*, i32, i64, i32) #1

declare dso_local i32 @fbcon_clear_margins(%struct.vc_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
