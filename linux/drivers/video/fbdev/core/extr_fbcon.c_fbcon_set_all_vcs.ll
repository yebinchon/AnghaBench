; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/core/extr_fbcon.c_fbcon_set_all_vcs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/core/extr_fbcon.c_fbcon_set_all_vcs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.vc_data* }
%struct.vc_data = type { i64, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.fb_info = type { %struct.TYPE_6__, %struct.fbcon_ops* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.fbcon_ops = type { i64, i32 }
%struct.fbcon_display = type { i32 }

@first_fb_vc = common dso_local global i32 0, align 4
@last_fb_vc = common dso_local global i32 0, align 4
@vc_cons = common dso_local global %struct.TYPE_5__* null, align 8
@KD_TEXT = common dso_local global i64 0, align 8
@registered_fb = common dso_local global %struct.fb_info** null, align 8
@con2fb_map = common dso_local global i64* null, align 8
@fb_display = common dso_local global %struct.fbcon_display* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_info*)* @fbcon_set_all_vcs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fbcon_set_all_vcs(%struct.fb_info* %0) #0 {
  %2 = alloca %struct.fb_info*, align 8
  %3 = alloca %struct.fbcon_ops*, align 8
  %4 = alloca %struct.vc_data*, align 8
  %5 = alloca %struct.fbcon_display*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %2, align 8
  %10 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %11 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %10, i32 0, i32 1
  %12 = load %struct.fbcon_ops*, %struct.fbcon_ops** %11, align 8
  store %struct.fbcon_ops* %12, %struct.fbcon_ops** %3, align 8
  store i32 -1, i32* %9, align 4
  %13 = load %struct.fbcon_ops*, %struct.fbcon_ops** %3, align 8
  %14 = icmp ne %struct.fbcon_ops* %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load %struct.fbcon_ops*, %struct.fbcon_ops** %3, align 8
  %17 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15, %1
  br label %123

21:                                               ; preds = %15
  %22 = load i32, i32* @first_fb_vc, align 4
  store i32 %22, i32* %6, align 4
  br label %23

23:                                               ; preds = %114, %21
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @last_fb_vc, align 4
  %26 = icmp sle i32 %24, %25
  br i1 %26, label %27, label %117

27:                                               ; preds = %23
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** @vc_cons, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load %struct.vc_data*, %struct.vc_data** %32, align 8
  store %struct.vc_data* %33, %struct.vc_data** %4, align 8
  %34 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %35 = icmp ne %struct.vc_data* %34, null
  br i1 %35, label %36, label %53

36:                                               ; preds = %27
  %37 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %38 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @KD_TEXT, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %53, label %42

42:                                               ; preds = %36
  %43 = load %struct.fb_info**, %struct.fb_info*** @registered_fb, align 8
  %44 = load i64*, i64** @con2fb_map, align 8
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i64, i64* %44, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds %struct.fb_info*, %struct.fb_info** %43, i64 %48
  %50 = load %struct.fb_info*, %struct.fb_info** %49, align 8
  %51 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %52 = icmp ne %struct.fb_info* %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %42, %36, %27
  br label %114

54:                                               ; preds = %42
  %55 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %56 = call i64 @con_is_visible(%struct.vc_data* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = load i32, i32* %6, align 4
  store i32 %59, i32* %9, align 4
  br label %114

60:                                               ; preds = %54
  %61 = load %struct.fbcon_display*, %struct.fbcon_display** @fb_display, align 8
  %62 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %63 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds %struct.fbcon_display, %struct.fbcon_display* %61, i64 %64
  store %struct.fbcon_display* %65, %struct.fbcon_display** %5, align 8
  %66 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %67 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %68 = call i32 @set_blitting_type(%struct.vc_data* %66, %struct.fb_info* %67)
  %69 = load %struct.fbcon_display*, %struct.fbcon_display** %5, align 8
  %70 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %71 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %70, i32 0, i32 0
  %72 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %73 = call i32 @var_to_display(%struct.fbcon_display* %69, %struct.TYPE_6__* %71, %struct.fb_info* %72)
  %74 = load %struct.fbcon_ops*, %struct.fbcon_ops** %3, align 8
  %75 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %78 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %82 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @FBCON_SWAP(i32 %76, i32 %80, i32 %84)
  store i32 %85, i32* %8, align 4
  %86 = load %struct.fbcon_ops*, %struct.fbcon_ops** %3, align 8
  %87 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %90 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %94 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @FBCON_SWAP(i32 %88, i32 %92, i32 %96)
  store i32 %97, i32* %7, align 4
  %98 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %99 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* %8, align 4
  %103 = sdiv i32 %102, %101
  store i32 %103, i32* %8, align 4
  %104 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %105 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* %7, align 4
  %109 = sdiv i32 %108, %107
  store i32 %109, i32* %7, align 4
  %110 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %111 = load i32, i32* %8, align 4
  %112 = load i32, i32* %7, align 4
  %113 = call i32 @vc_resize(%struct.vc_data* %110, i32 %111, i32 %112)
  br label %114

114:                                              ; preds = %60, %58, %53
  %115 = load i32, i32* %6, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %6, align 4
  br label %23

117:                                              ; preds = %23
  %118 = load i32, i32* %9, align 4
  %119 = icmp ne i32 %118, -1
  br i1 %119, label %120, label %123

120:                                              ; preds = %117
  %121 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %122 = call i32 @fbcon_modechanged(%struct.fb_info* %121)
  br label %123

123:                                              ; preds = %20, %120, %117
  ret void
}

declare dso_local i64 @con_is_visible(%struct.vc_data*) #1

declare dso_local i32 @set_blitting_type(%struct.vc_data*, %struct.fb_info*) #1

declare dso_local i32 @var_to_display(%struct.fbcon_display*, %struct.TYPE_6__*, %struct.fb_info*) #1

declare dso_local i32 @FBCON_SWAP(i32, i32, i32) #1

declare dso_local i32 @vc_resize(%struct.vc_data*, i32, i32) #1

declare dso_local i32 @fbcon_modechanged(%struct.fb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
