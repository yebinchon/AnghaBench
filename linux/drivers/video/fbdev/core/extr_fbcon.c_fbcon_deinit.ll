; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/core/extr_fbcon.c_fbcon_deinit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/core/extr_fbcon.c_fbcon_deinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fbcon_display = type { i32 }
%struct.fb_info = type { i32, %struct.fbcon_ops* }
%struct.fbcon_ops = type { i32 }
%struct.vc_data = type { i64, i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@fb_display = common dso_local global %struct.fbcon_display* null, align 8
@con2fb_map = common dso_local global i32* null, align 8
@registered_fb = common dso_local global %struct.fb_info** null, align 8
@FBINFO_MISC_FIRMWARE = common dso_local global i32 0, align 4
@FBCON_FLAGS_INIT = common dso_local global i32 0, align 4
@fb_con = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vc_data*)* @fbcon_deinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fbcon_deinit(%struct.vc_data* %0) #0 {
  %2 = alloca %struct.vc_data*, align 8
  %3 = alloca %struct.fbcon_display*, align 8
  %4 = alloca %struct.fb_info*, align 8
  %5 = alloca %struct.fbcon_ops*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.vc_data* %0, %struct.vc_data** %2, align 8
  %8 = load %struct.fbcon_display*, %struct.fbcon_display** @fb_display, align 8
  %9 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %10 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds %struct.fbcon_display, %struct.fbcon_display* %8, i64 %11
  store %struct.fbcon_display* %12, %struct.fbcon_display** %3, align 8
  store i32 1, i32* %7, align 4
  %13 = load i32*, i32** @con2fb_map, align 8
  %14 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %15 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds i32, i32* %13, i64 %16
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  br label %60

22:                                               ; preds = %1
  %23 = load %struct.fb_info**, %struct.fb_info*** @registered_fb, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.fb_info*, %struct.fb_info** %23, i64 %25
  %27 = load %struct.fb_info*, %struct.fb_info** %26, align 8
  store %struct.fb_info* %27, %struct.fb_info** %4, align 8
  %28 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %29 = icmp ne %struct.fb_info* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %22
  br label %60

31:                                               ; preds = %22
  %32 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %33 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @FBINFO_MISC_FIRMWARE, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  store i32 0, i32* %7, align 4
  br label %39

39:                                               ; preds = %38, %31
  %40 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %41 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %40, i32 0, i32 1
  %42 = load %struct.fbcon_ops*, %struct.fbcon_ops** %41, align 8
  store %struct.fbcon_ops* %42, %struct.fbcon_ops** %5, align 8
  %43 = load %struct.fbcon_ops*, %struct.fbcon_ops** %5, align 8
  %44 = icmp ne %struct.fbcon_ops* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %39
  br label %60

46:                                               ; preds = %39
  %47 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %48 = call i64 @con_is_visible(%struct.vc_data* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %52 = call i32 @fbcon_del_cursor_timer(%struct.fb_info* %51)
  br label %53

53:                                               ; preds = %50, %46
  %54 = load i32, i32* @FBCON_FLAGS_INIT, align 4
  %55 = xor i32 %54, -1
  %56 = load %struct.fbcon_ops*, %struct.fbcon_ops** %5, align 8
  %57 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = and i32 %58, %55
  store i32 %59, i32* %57, align 4
  br label %60

60:                                               ; preds = %53, %45, %30, %21
  %61 = load %struct.fbcon_display*, %struct.fbcon_display** %3, align 8
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @fbcon_free_font(%struct.fbcon_display* %61, i32 %62)
  %64 = load i32, i32* %7, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %60
  %67 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %68 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %67, i32 0, i32 3
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  store i32* null, i32** %69, align 8
  br label %70

70:                                               ; preds = %66, %60
  %71 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %72 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %83

75:                                               ; preds = %70
  %76 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %77 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %75
  %81 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %82 = call i32 @set_vc_hi_font(%struct.vc_data* %81, i32 0)
  br label %83

83:                                               ; preds = %80, %75, %70
  %84 = call i32 @con_is_bound(i32* @fb_con)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %88, label %86

86:                                               ; preds = %83
  %87 = call i32 (...) @fbcon_exit()
  br label %88

88:                                               ; preds = %86, %83
  ret void
}

declare dso_local i64 @con_is_visible(%struct.vc_data*) #1

declare dso_local i32 @fbcon_del_cursor_timer(%struct.fb_info*) #1

declare dso_local i32 @fbcon_free_font(%struct.fbcon_display*, i32) #1

declare dso_local i32 @set_vc_hi_font(%struct.vc_data*, i32) #1

declare dso_local i32 @con_is_bound(i32*) #1

declare dso_local i32 @fbcon_exit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
