; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/core/extr_fbcon.c_ypan_up.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/core/extr_fbcon.c_ypan_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.fbcon_ops* }
%struct.fbcon_ops = type { i32 (%struct.fb_info.0*)*, %struct.TYPE_4__, i32 (%struct.vc_data*, %struct.fb_info.1*, i32, i32, i32, i32, i32, i32)* }
%struct.fb_info.0 = type opaque
%struct.TYPE_4__ = type { i32, i32, i64 }
%struct.vc_data = type { i64, i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.fb_info.1 = type opaque
%struct.fbcon_display = type { i32, i32 }

@registered_fb = common dso_local global %struct.fb_info** null, align 8
@con2fb_map = common dso_local global i64* null, align 8
@fb_display = common dso_local global %struct.fbcon_display* null, align 8
@FB_VMODE_YWRAP = common dso_local global i32 0, align 4
@scrollback_max = common dso_local global i64 0, align 8
@scrollback_phys_max = common dso_local global i64 0, align 8
@scrollback_current = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vc_data*, i32)* @ypan_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ypan_up(%struct.vc_data* %0, i32 %1) #0 {
  %3 = alloca %struct.vc_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.fb_info*, align 8
  %6 = alloca %struct.fbcon_display*, align 8
  %7 = alloca %struct.fbcon_ops*, align 8
  store %struct.vc_data* %0, %struct.vc_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.fb_info**, %struct.fb_info*** @registered_fb, align 8
  %9 = load i64*, i64** @con2fb_map, align 8
  %10 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %11 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = getelementptr inbounds i64, i64* %9, i64 %12
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds %struct.fb_info*, %struct.fb_info** %8, i64 %14
  %16 = load %struct.fb_info*, %struct.fb_info** %15, align 8
  store %struct.fb_info* %16, %struct.fb_info** %5, align 8
  %17 = load %struct.fbcon_display*, %struct.fbcon_display** @fb_display, align 8
  %18 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %19 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.fbcon_display, %struct.fbcon_display* %17, i64 %20
  store %struct.fbcon_display* %21, %struct.fbcon_display** %6, align 8
  %22 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %23 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %22, i32 0, i32 0
  %24 = load %struct.fbcon_ops*, %struct.fbcon_ops** %23, align 8
  store %struct.fbcon_ops* %24, %struct.fbcon_ops** %7, align 8
  %25 = load i32, i32* %4, align 4
  %26 = load %struct.fbcon_display*, %struct.fbcon_display** %6, align 8
  %27 = getelementptr inbounds %struct.fbcon_display, %struct.fbcon_display* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, %25
  store i32 %29, i32* %27, align 4
  %30 = load %struct.fbcon_display*, %struct.fbcon_display** %6, align 8
  %31 = getelementptr inbounds %struct.fbcon_display, %struct.fbcon_display* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.fbcon_display*, %struct.fbcon_display** %6, align 8
  %34 = getelementptr inbounds %struct.fbcon_display, %struct.fbcon_display* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %37 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = sub nsw i32 %35, %38
  %40 = icmp sgt i32 %32, %39
  br i1 %40, label %41, label %73

41:                                               ; preds = %2
  %42 = load %struct.fbcon_ops*, %struct.fbcon_ops** %7, align 8
  %43 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %42, i32 0, i32 2
  %44 = load i32 (%struct.vc_data*, %struct.fb_info.1*, i32, i32, i32, i32, i32, i32)*, i32 (%struct.vc_data*, %struct.fb_info.1*, i32, i32, i32, i32, i32, i32)** %43, align 8
  %45 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %46 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %47 = bitcast %struct.fb_info* %46 to %struct.fb_info.1*
  %48 = load %struct.fbcon_display*, %struct.fbcon_display** %6, align 8
  %49 = getelementptr inbounds %struct.fbcon_display, %struct.fbcon_display* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %52 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = sub nsw i32 %50, %53
  %55 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %56 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %59 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = call i32 %44(%struct.vc_data* %45, %struct.fb_info.1* %47, i32 %54, i32 0, i32 0, i32 0, i32 %57, i32 %60)
  %62 = load %struct.fbcon_display*, %struct.fbcon_display** %6, align 8
  %63 = getelementptr inbounds %struct.fbcon_display, %struct.fbcon_display* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %66 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = sub nsw i32 %64, %67
  %69 = load %struct.fbcon_display*, %struct.fbcon_display** %6, align 8
  %70 = getelementptr inbounds %struct.fbcon_display, %struct.fbcon_display* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = sub nsw i32 %71, %68
  store i32 %72, i32* %70, align 4
  br label %73

73:                                               ; preds = %41, %2
  %74 = load %struct.fbcon_ops*, %struct.fbcon_ops** %7, align 8
  %75 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 2
  store i64 0, i64* %76, align 8
  %77 = load %struct.fbcon_display*, %struct.fbcon_display** %6, align 8
  %78 = getelementptr inbounds %struct.fbcon_display, %struct.fbcon_display* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %81 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = mul nsw i32 %79, %83
  %85 = load %struct.fbcon_ops*, %struct.fbcon_ops** %7, align 8
  %86 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  store i32 %84, i32* %87, align 8
  %88 = load i32, i32* @FB_VMODE_YWRAP, align 4
  %89 = xor i32 %88, -1
  %90 = load %struct.fbcon_ops*, %struct.fbcon_ops** %7, align 8
  %91 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = and i32 %93, %89
  store i32 %94, i32* %92, align 4
  %95 = load %struct.fbcon_ops*, %struct.fbcon_ops** %7, align 8
  %96 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %95, i32 0, i32 0
  %97 = load i32 (%struct.fb_info.0*)*, i32 (%struct.fb_info.0*)** %96, align 8
  %98 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %99 = bitcast %struct.fb_info* %98 to %struct.fb_info.0*
  %100 = call i32 %97(%struct.fb_info.0* %99)
  %101 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %102 = call i32 @fbcon_clear_margins(%struct.vc_data* %101, i32 1)
  %103 = load i32, i32* %4, align 4
  %104 = sext i32 %103 to i64
  %105 = load i64, i64* @scrollback_max, align 8
  %106 = add nsw i64 %105, %104
  store i64 %106, i64* @scrollback_max, align 8
  %107 = load i64, i64* @scrollback_max, align 8
  %108 = load i64, i64* @scrollback_phys_max, align 8
  %109 = icmp sgt i64 %107, %108
  br i1 %109, label %110, label %112

110:                                              ; preds = %73
  %111 = load i64, i64* @scrollback_phys_max, align 8
  store i64 %111, i64* @scrollback_max, align 8
  br label %112

112:                                              ; preds = %110, %73
  store i64 0, i64* @scrollback_current, align 8
  ret void
}

declare dso_local i32 @fbcon_clear_margins(%struct.vc_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
