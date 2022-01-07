; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/core/extr_fbcon.c_fbcon_cursor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/core/extr_fbcon.c_fbcon_cursor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.fbcon_ops* }
%struct.fbcon_ops = type { i32, i32 (%struct.vc_data*, %struct.fb_info.0*, i32, i32, i32, i32)*, i32 }
%struct.vc_data = type { i64, i32, i32, i32, i64 }
%struct.fb_info.0 = type opaque

@registered_fb = common dso_local global %struct.fb_info** null, align 8
@con2fb_map = common dso_local global i64* null, align 8
@CM_ERASE = common dso_local global i32 0, align 4
@CM_SOFTBACK = common dso_local global i32 0, align 4
@softback_lines = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vc_data*, i32)* @fbcon_cursor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fbcon_cursor(%struct.vc_data* %0, i32 %1) #0 {
  %3 = alloca %struct.vc_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.fb_info*, align 8
  %6 = alloca %struct.fbcon_ops*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.vc_data* %0, %struct.vc_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.fb_info**, %struct.fb_info*** @registered_fb, align 8
  %10 = load i64*, i64** @con2fb_map, align 8
  %11 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %12 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds i64, i64* %10, i64 %13
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds %struct.fb_info*, %struct.fb_info** %9, i64 %15
  %17 = load %struct.fb_info*, %struct.fb_info** %16, align 8
  store %struct.fb_info* %17, %struct.fb_info** %5, align 8
  %18 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %19 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %18, i32 0, i32 0
  %20 = load %struct.fbcon_ops*, %struct.fbcon_ops** %19, align 8
  store %struct.fbcon_ops* %20, %struct.fbcon_ops** %6, align 8
  %21 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %22 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %21, i32 0, i32 4
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to i32*
  %25 = call i32 @scr_readw(i32* %24)
  store i32 %25, i32* %8, align 4
  %26 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %27 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @msecs_to_jiffies(i32 %28)
  %30 = load %struct.fbcon_ops*, %struct.fbcon_ops** %6, align 8
  %31 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 8
  %32 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %33 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %34 = call i64 @fbcon_is_inactive(%struct.vc_data* %32, %struct.fb_info* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %2
  %37 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %38 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 1
  br i1 %40, label %41, label %42

41:                                               ; preds = %36, %2
  br label %97

42:                                               ; preds = %36
  %43 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %44 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, 16
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %42
  %49 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %50 = call i32 @fbcon_del_cursor_timer(%struct.fb_info* %49)
  br label %54

51:                                               ; preds = %42
  %52 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %53 = call i32 @fbcon_add_cursor_timer(%struct.fb_info* %52)
  br label %54

54:                                               ; preds = %51, %48
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* @CM_ERASE, align 4
  %57 = icmp eq i32 %55, %56
  %58 = zext i1 %57 to i64
  %59 = select i1 %57, i32 0, i32 1
  %60 = load %struct.fbcon_ops*, %struct.fbcon_ops** %6, align 8
  %61 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  %62 = load i32, i32* %4, align 4
  %63 = load i32, i32* @CM_SOFTBACK, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %54
  %67 = load i32, i32* @CM_SOFTBACK, align 4
  %68 = xor i32 %67, -1
  %69 = load i32, i32* %4, align 4
  %70 = and i32 %69, %68
  store i32 %70, i32* %4, align 4
  %71 = load i32, i32* @softback_lines, align 4
  store i32 %71, i32* %7, align 4
  br label %79

72:                                               ; preds = %54
  %73 = load i32, i32* @softback_lines, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %72
  %76 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %77 = call i32 @fbcon_set_origin(%struct.vc_data* %76)
  br label %78

78:                                               ; preds = %75, %72
  store i32 0, i32* %7, align 4
  br label %79

79:                                               ; preds = %78, %66
  %80 = load %struct.fbcon_ops*, %struct.fbcon_ops** %6, align 8
  %81 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %80, i32 0, i32 1
  %82 = load i32 (%struct.vc_data*, %struct.fb_info.0*, i32, i32, i32, i32)*, i32 (%struct.vc_data*, %struct.fb_info.0*, i32, i32, i32, i32)** %81, align 8
  %83 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %84 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %85 = bitcast %struct.fb_info* %84 to %struct.fb_info.0*
  %86 = load i32, i32* %4, align 4
  %87 = load i32, i32* %7, align 4
  %88 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %89 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %90 = load i32, i32* %8, align 4
  %91 = call i32 @get_color(%struct.vc_data* %88, %struct.fb_info* %89, i32 %90, i32 1)
  %92 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %93 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %94 = load i32, i32* %8, align 4
  %95 = call i32 @get_color(%struct.vc_data* %92, %struct.fb_info* %93, i32 %94, i32 0)
  %96 = call i32 %82(%struct.vc_data* %83, %struct.fb_info.0* %85, i32 %86, i32 %87, i32 %91, i32 %95)
  br label %97

97:                                               ; preds = %79, %41
  ret void
}

declare dso_local i32 @scr_readw(i32*) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i64 @fbcon_is_inactive(%struct.vc_data*, %struct.fb_info*) #1

declare dso_local i32 @fbcon_del_cursor_timer(%struct.fb_info*) #1

declare dso_local i32 @fbcon_add_cursor_timer(%struct.fb_info*) #1

declare dso_local i32 @fbcon_set_origin(%struct.vc_data*) #1

declare dso_local i32 @get_color(%struct.vc_data*, %struct.fb_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
