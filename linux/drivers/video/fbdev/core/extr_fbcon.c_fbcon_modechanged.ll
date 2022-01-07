; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/core/extr_fbcon.c_fbcon_modechanged.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/core/extr_fbcon.c_fbcon_modechanged.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.vc_data* }
%struct.vc_data = type { i64, i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.fb_info = type { %struct.TYPE_8__, %struct.fbcon_ops* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.fbcon_ops = type { i64, i32 (%struct.fb_info.0*)*, %struct.TYPE_6__, i32 }
%struct.fb_info.0 = type opaque
%struct.TYPE_6__ = type { i64, i64 }
%struct.fbcon_display = type { i64 }

@vc_cons = common dso_local global %struct.TYPE_7__* null, align 8
@KD_TEXT = common dso_local global i64 0, align 8
@registered_fb = common dso_local global %struct.fb_info** null, align 8
@con2fb_map = common dso_local global i64* null, align 8
@fb_display = common dso_local global %struct.fbcon_display* null, align 8
@scrollback_max = common dso_local global i64 0, align 8
@scrollback_current = common dso_local global i64 0, align 8
@color_table = common dso_local global i32 0, align 4
@softback_buf = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_info*)* @fbcon_modechanged to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fbcon_modechanged(%struct.fb_info* %0) #0 {
  %2 = alloca %struct.fb_info*, align 8
  %3 = alloca %struct.fbcon_ops*, align 8
  %4 = alloca %struct.vc_data*, align 8
  %5 = alloca %struct.fbcon_display*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %2, align 8
  %8 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %9 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %8, i32 0, i32 1
  %10 = load %struct.fbcon_ops*, %struct.fbcon_ops** %9, align 8
  store %struct.fbcon_ops* %10, %struct.fbcon_ops** %3, align 8
  %11 = load %struct.fbcon_ops*, %struct.fbcon_ops** %3, align 8
  %12 = icmp ne %struct.fbcon_ops* %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load %struct.fbcon_ops*, %struct.fbcon_ops** %3, align 8
  %15 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ult i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13, %1
  br label %138

19:                                               ; preds = %13
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** @vc_cons, align 8
  %21 = load %struct.fbcon_ops*, %struct.fbcon_ops** %3, align 8
  %22 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load %struct.vc_data*, %struct.vc_data** %25, align 8
  store %struct.vc_data* %26, %struct.vc_data** %4, align 8
  %27 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %28 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @KD_TEXT, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %44, label %32

32:                                               ; preds = %19
  %33 = load %struct.fb_info**, %struct.fb_info*** @registered_fb, align 8
  %34 = load i64*, i64** @con2fb_map, align 8
  %35 = load %struct.fbcon_ops*, %struct.fbcon_ops** %3, align 8
  %36 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds i64, i64* %34, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds %struct.fb_info*, %struct.fb_info** %33, i64 %39
  %41 = load %struct.fb_info*, %struct.fb_info** %40, align 8
  %42 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %43 = icmp ne %struct.fb_info* %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %32, %19
  br label %138

45:                                               ; preds = %32
  %46 = load %struct.fbcon_display*, %struct.fbcon_display** @fb_display, align 8
  %47 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %48 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds %struct.fbcon_display, %struct.fbcon_display* %46, i64 %49
  store %struct.fbcon_display* %50, %struct.fbcon_display** %5, align 8
  %51 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %52 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %53 = call i32 @set_blitting_type(%struct.vc_data* %51, %struct.fb_info* %52)
  %54 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %55 = call i64 @con_is_visible(%struct.vc_data* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %138

57:                                               ; preds = %45
  %58 = load %struct.fbcon_display*, %struct.fbcon_display** %5, align 8
  %59 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %60 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %59, i32 0, i32 0
  %61 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %62 = call i32 @var_to_display(%struct.fbcon_display* %58, %struct.TYPE_8__* %60, %struct.fb_info* %61)
  %63 = load %struct.fbcon_ops*, %struct.fbcon_ops** %3, align 8
  %64 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %67 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %71 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @FBCON_SWAP(i32 %65, i32 %69, i32 %73)
  store i32 %74, i32* %7, align 4
  %75 = load %struct.fbcon_ops*, %struct.fbcon_ops** %3, align 8
  %76 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %79 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %83 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @FBCON_SWAP(i32 %77, i32 %81, i32 %85)
  store i32 %86, i32* %6, align 4
  %87 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %88 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* %7, align 4
  %92 = sdiv i32 %91, %90
  store i32 %92, i32* %7, align 4
  %93 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %94 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %6, align 4
  %98 = sdiv i32 %97, %96
  store i32 %98, i32* %6, align 4
  %99 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %100 = load i32, i32* %7, align 4
  %101 = load i32, i32* %6, align 4
  %102 = call i32 @vc_resize(%struct.vc_data* %99, i32 %100, i32 %101)
  %103 = load %struct.fbcon_display*, %struct.fbcon_display** %5, align 8
  %104 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %105 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %106 = call i32 @updatescrollmode(%struct.fbcon_display* %103, %struct.fb_info* %104, %struct.vc_data* %105)
  store i64 0, i64* @scrollback_max, align 8
  store i64 0, i64* @scrollback_current, align 8
  %107 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %108 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %109 = call i32 @fbcon_is_inactive(%struct.vc_data* %107, %struct.fb_info* %108)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %126, label %111

111:                                              ; preds = %57
  %112 = load %struct.fbcon_display*, %struct.fbcon_display** %5, align 8
  %113 = getelementptr inbounds %struct.fbcon_display, %struct.fbcon_display* %112, i32 0, i32 0
  store i64 0, i64* %113, align 8
  %114 = load %struct.fbcon_ops*, %struct.fbcon_ops** %3, align 8
  %115 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %114, i32 0, i32 2
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 0
  store i64 0, i64* %116, align 8
  %117 = load %struct.fbcon_ops*, %struct.fbcon_ops** %3, align 8
  %118 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 1
  store i64 0, i64* %119, align 8
  %120 = load %struct.fbcon_ops*, %struct.fbcon_ops** %3, align 8
  %121 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %120, i32 0, i32 1
  %122 = load i32 (%struct.fb_info.0*)*, i32 (%struct.fb_info.0*)** %121, align 8
  %123 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %124 = bitcast %struct.fb_info* %123 to %struct.fb_info.0*
  %125 = call i32 %122(%struct.fb_info.0* %124)
  br label %126

126:                                              ; preds = %111, %57
  %127 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %128 = load i32, i32* @color_table, align 4
  %129 = call i32 @fbcon_set_palette(%struct.vc_data* %127, i32 %128)
  %130 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %131 = call i32 @update_screen(%struct.vc_data* %130)
  %132 = load i64, i64* @softback_buf, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %126
  %135 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %136 = call i32 @fbcon_update_softback(%struct.vc_data* %135)
  br label %137

137:                                              ; preds = %134, %126
  br label %138

138:                                              ; preds = %18, %44, %137, %45
  ret void
}

declare dso_local i32 @set_blitting_type(%struct.vc_data*, %struct.fb_info*) #1

declare dso_local i64 @con_is_visible(%struct.vc_data*) #1

declare dso_local i32 @var_to_display(%struct.fbcon_display*, %struct.TYPE_8__*, %struct.fb_info*) #1

declare dso_local i32 @FBCON_SWAP(i32, i32, i32) #1

declare dso_local i32 @vc_resize(%struct.vc_data*, i32, i32) #1

declare dso_local i32 @updatescrollmode(%struct.fbcon_display*, %struct.fb_info*, %struct.vc_data*) #1

declare dso_local i32 @fbcon_is_inactive(%struct.vc_data*, %struct.fb_info*) #1

declare dso_local i32 @fbcon_set_palette(%struct.vc_data*, i32) #1

declare dso_local i32 @update_screen(%struct.vc_data*) #1

declare dso_local i32 @fbcon_update_softback(%struct.vc_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
