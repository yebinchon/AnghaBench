; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/core/extr_fbcon.c_fbcon_blank.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/core/extr_fbcon.c_fbcon_blank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.fb_var_screeninfo, %struct.fbcon_ops* }
%struct.fb_var_screeninfo = type { i32 }
%struct.fbcon_ops = type { i32, i32, i32, %struct.fb_var_screeninfo }
%struct.vc_data = type { i64 }

@registered_fb = common dso_local global %struct.fb_info** null, align 8
@con2fb_map = common dso_local global i64* null, align 8
@FB_ACTIVATE_NOW = common dso_local global i32 0, align 4
@FB_ACTIVATE_FORCE = common dso_local global i32 0, align 4
@CM_ERASE = common dso_local global i32 0, align 4
@CM_DRAW = common dso_local global i32 0, align 4
@FB_BLANK_UNBLANK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vc_data*, i32, i32)* @fbcon_blank to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fbcon_blank(%struct.vc_data* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.vc_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.fb_info*, align 8
  %8 = alloca %struct.fbcon_ops*, align 8
  %9 = alloca %struct.fb_var_screeninfo, align 4
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
  %20 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %19, i32 0, i32 1
  %21 = load %struct.fbcon_ops*, %struct.fbcon_ops** %20, align 8
  store %struct.fbcon_ops* %21, %struct.fbcon_ops** %8, align 8
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %49

24:                                               ; preds = %3
  %25 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %26 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %25, i32 0, i32 0
  %27 = bitcast %struct.fb_var_screeninfo* %9 to i8*
  %28 = bitcast %struct.fb_var_screeninfo* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %27, i8* align 8 %28, i64 4, i1 false)
  %29 = load %struct.fbcon_ops*, %struct.fbcon_ops** %8, align 8
  %30 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %29, i32 0, i32 0
  store i32 1, i32* %30, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %48, label %33

33:                                               ; preds = %24
  %34 = load i32, i32* @FB_ACTIVATE_NOW, align 4
  %35 = load i32, i32* @FB_ACTIVATE_FORCE, align 4
  %36 = or i32 %34, %35
  %37 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %9, i32 0, i32 0
  store i32 %36, i32* %37, align 4
  %38 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %39 = call i32 @fb_set_var(%struct.fb_info* %38, %struct.fb_var_screeninfo* %9)
  %40 = load %struct.fbcon_ops*, %struct.fbcon_ops** %8, align 8
  %41 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %40, i32 0, i32 0
  store i32 0, i32* %41, align 4
  %42 = load %struct.fbcon_ops*, %struct.fbcon_ops** %8, align 8
  %43 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %42, i32 0, i32 3
  %44 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %45 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %44, i32 0, i32 0
  %46 = bitcast %struct.fb_var_screeninfo* %43 to i8*
  %47 = bitcast %struct.fb_var_screeninfo* %45 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %46, i8* align 8 %47, i64 4, i1 false)
  br label %48

48:                                               ; preds = %33, %24
  br label %49

49:                                               ; preds = %48, %3
  %50 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %51 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %52 = call i64 @fbcon_is_inactive(%struct.vc_data* %50, %struct.fb_info* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %97, label %54

54:                                               ; preds = %49
  %55 = load %struct.fbcon_ops*, %struct.fbcon_ops** %8, align 8
  %56 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %5, align 4
  %59 = icmp ne i32 %57, %58
  br i1 %59, label %60, label %90

60:                                               ; preds = %54
  %61 = load i32, i32* %5, align 4
  %62 = load %struct.fbcon_ops*, %struct.fbcon_ops** %8, align 8
  %63 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  %64 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %65 = load i32, i32* %5, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %60
  %68 = load i32, i32* @CM_ERASE, align 4
  br label %71

69:                                               ; preds = %60
  %70 = load i32, i32* @CM_DRAW, align 4
  br label %71

71:                                               ; preds = %69, %67
  %72 = phi i32 [ %68, %67 ], [ %70, %69 ]
  %73 = call i32 @fbcon_cursor(%struct.vc_data* %64, i32 %72)
  %74 = load i32, i32* %5, align 4
  %75 = icmp ne i32 %74, 0
  %76 = xor i1 %75, true
  %77 = zext i1 %76 to i32
  %78 = load %struct.fbcon_ops*, %struct.fbcon_ops** %8, align 8
  %79 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %78, i32 0, i32 2
  store i32 %77, i32* %79, align 4
  %80 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %81 = load i32, i32* %5, align 4
  %82 = call i64 @fb_blank(%struct.fb_info* %80, i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %71
  %85 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %86 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %87 = load i32, i32* %5, align 4
  %88 = call i32 @fbcon_generic_blank(%struct.vc_data* %85, %struct.fb_info* %86, i32 %87)
  br label %89

89:                                               ; preds = %84, %71
  br label %90

90:                                               ; preds = %89, %54
  %91 = load i32, i32* %5, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %96, label %93

93:                                               ; preds = %90
  %94 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %95 = call i32 @update_screen(%struct.vc_data* %94)
  br label %96

96:                                               ; preds = %93, %90
  br label %97

97:                                               ; preds = %96, %49
  %98 = load i32, i32* %6, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %111, label %100

100:                                              ; preds = %97
  %101 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %102 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %103 = call i64 @fbcon_is_inactive(%struct.vc_data* %101, %struct.fb_info* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %111, label %105

105:                                              ; preds = %100
  %106 = load %struct.fbcon_ops*, %struct.fbcon_ops** %8, align 8
  %107 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @FB_BLANK_UNBLANK, align 4
  %110 = icmp ne i32 %108, %109
  br i1 %110, label %111, label %114

111:                                              ; preds = %105, %100, %97
  %112 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %113 = call i32 @fbcon_del_cursor_timer(%struct.fb_info* %112)
  br label %117

114:                                              ; preds = %105
  %115 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %116 = call i32 @fbcon_add_cursor_timer(%struct.fb_info* %115)
  br label %117

117:                                              ; preds = %114, %111
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @fb_set_var(%struct.fb_info*, %struct.fb_var_screeninfo*) #2

declare dso_local i64 @fbcon_is_inactive(%struct.vc_data*, %struct.fb_info*) #2

declare dso_local i32 @fbcon_cursor(%struct.vc_data*, i32) #2

declare dso_local i64 @fb_blank(%struct.fb_info*, i32) #2

declare dso_local i32 @fbcon_generic_blank(%struct.vc_data*, %struct.fb_info*, i32) #2

declare dso_local i32 @update_screen(%struct.vc_data*) #2

declare dso_local i32 @fbcon_del_cursor_timer(%struct.fb_info*) #2

declare dso_local i32 @fbcon_add_cursor_timer(%struct.fb_info*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
