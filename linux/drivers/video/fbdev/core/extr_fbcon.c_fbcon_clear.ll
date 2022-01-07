; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/core/extr_fbcon.c_fbcon_clear.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/core/extr_fbcon.c_fbcon_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.fbcon_ops* }
%struct.fbcon_ops = type { i32 (%struct.vc_data*, %struct.fb_info.0*, i32, i32, i32, i32)* }
%struct.vc_data = type { i64, i32 }
%struct.fb_info.0 = type opaque
%struct.fbcon_display = type { i32, i32 }

@registered_fb = common dso_local global %struct.fb_info** null, align 8
@con2fb_map = common dso_local global i64* null, align 8
@fb_display = common dso_local global %struct.fbcon_display* null, align 8
@logo_lines = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vc_data*, i32, i32, i32, i32)* @fbcon_clear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fbcon_clear(%struct.vc_data* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.vc_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.fb_info*, align 8
  %12 = alloca %struct.fbcon_ops*, align 8
  %13 = alloca %struct.fbcon_display*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.vc_data* %0, %struct.vc_data** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %16 = load %struct.fb_info**, %struct.fb_info*** @registered_fb, align 8
  %17 = load i64*, i64** @con2fb_map, align 8
  %18 = load %struct.vc_data*, %struct.vc_data** %6, align 8
  %19 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds i64, i64* %17, i64 %20
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds %struct.fb_info*, %struct.fb_info** %16, i64 %22
  %24 = load %struct.fb_info*, %struct.fb_info** %23, align 8
  store %struct.fb_info* %24, %struct.fb_info** %11, align 8
  %25 = load %struct.fb_info*, %struct.fb_info** %11, align 8
  %26 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %25, i32 0, i32 0
  %27 = load %struct.fbcon_ops*, %struct.fbcon_ops** %26, align 8
  store %struct.fbcon_ops* %27, %struct.fbcon_ops** %12, align 8
  %28 = load %struct.fbcon_display*, %struct.fbcon_display** @fb_display, align 8
  %29 = load %struct.vc_data*, %struct.vc_data** %6, align 8
  %30 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds %struct.fbcon_display, %struct.fbcon_display* %28, i64 %31
  store %struct.fbcon_display* %32, %struct.fbcon_display** %13, align 8
  %33 = load %struct.vc_data*, %struct.vc_data** %6, align 8
  %34 = load %struct.fb_info*, %struct.fb_info** %11, align 8
  %35 = call i64 @fbcon_is_inactive(%struct.vc_data* %33, %struct.fb_info* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %5
  br label %128

38:                                               ; preds = %5
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load i32, i32* %10, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %41, %38
  br label %128

45:                                               ; preds = %41
  %46 = load i32, i32* %7, align 4
  %47 = load %struct.vc_data*, %struct.vc_data** %6, align 8
  %48 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = icmp slt i32 %46, %49
  br i1 %50, label %51, label %62

51:                                               ; preds = %45
  %52 = load %struct.vc_data*, %struct.vc_data** %6, align 8
  %53 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @logo_lines, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %51
  %58 = load %struct.vc_data*, %struct.vc_data** %6, align 8
  %59 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %58, i32 0, i32 1
  store i32 0, i32* %59, align 8
  %60 = load %struct.vc_data*, %struct.vc_data** %6, align 8
  %61 = call i32 @fbcon_clear_margins(%struct.vc_data* %60, i32 0)
  br label %62

62:                                               ; preds = %57, %51, %45
  %63 = load %struct.fbcon_display*, %struct.fbcon_display** %13, align 8
  %64 = getelementptr inbounds %struct.fbcon_display, %struct.fbcon_display* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.fbcon_display*, %struct.fbcon_display** %13, align 8
  %67 = getelementptr inbounds %struct.fbcon_display, %struct.fbcon_display* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = sub nsw i32 %65, %68
  store i32 %69, i32* %14, align 4
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* %14, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %114

73:                                               ; preds = %62
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* %9, align 4
  %76 = add nsw i32 %74, %75
  %77 = sub nsw i32 %76, 1
  %78 = load i32, i32* %14, align 4
  %79 = icmp sge i32 %77, %78
  br i1 %79, label %80, label %114

80:                                               ; preds = %73
  %81 = load i32, i32* %14, align 4
  %82 = load i32, i32* %7, align 4
  %83 = sub nsw i32 %81, %82
  store i32 %83, i32* %15, align 4
  %84 = load %struct.fbcon_ops*, %struct.fbcon_ops** %12, align 8
  %85 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %84, i32 0, i32 0
  %86 = load i32 (%struct.vc_data*, %struct.fb_info.0*, i32, i32, i32, i32)*, i32 (%struct.vc_data*, %struct.fb_info.0*, i32, i32, i32, i32)** %85, align 8
  %87 = load %struct.vc_data*, %struct.vc_data** %6, align 8
  %88 = load %struct.fb_info*, %struct.fb_info** %11, align 8
  %89 = bitcast %struct.fb_info* %88 to %struct.fb_info.0*
  %90 = load %struct.fbcon_display*, %struct.fbcon_display** %13, align 8
  %91 = load i32, i32* %7, align 4
  %92 = call i32 @real_y(%struct.fbcon_display* %90, i32 %91)
  %93 = load i32, i32* %8, align 4
  %94 = load i32, i32* %15, align 4
  %95 = load i32, i32* %10, align 4
  %96 = call i32 %86(%struct.vc_data* %87, %struct.fb_info.0* %89, i32 %92, i32 %93, i32 %94, i32 %95)
  %97 = load %struct.fbcon_ops*, %struct.fbcon_ops** %12, align 8
  %98 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %97, i32 0, i32 0
  %99 = load i32 (%struct.vc_data*, %struct.fb_info.0*, i32, i32, i32, i32)*, i32 (%struct.vc_data*, %struct.fb_info.0*, i32, i32, i32, i32)** %98, align 8
  %100 = load %struct.vc_data*, %struct.vc_data** %6, align 8
  %101 = load %struct.fb_info*, %struct.fb_info** %11, align 8
  %102 = bitcast %struct.fb_info* %101 to %struct.fb_info.0*
  %103 = load %struct.fbcon_display*, %struct.fbcon_display** %13, align 8
  %104 = load i32, i32* %7, align 4
  %105 = load i32, i32* %15, align 4
  %106 = add nsw i32 %104, %105
  %107 = call i32 @real_y(%struct.fbcon_display* %103, i32 %106)
  %108 = load i32, i32* %8, align 4
  %109 = load i32, i32* %9, align 4
  %110 = load i32, i32* %15, align 4
  %111 = sub nsw i32 %109, %110
  %112 = load i32, i32* %10, align 4
  %113 = call i32 %99(%struct.vc_data* %100, %struct.fb_info.0* %102, i32 %107, i32 %108, i32 %111, i32 %112)
  br label %128

114:                                              ; preds = %73, %62
  %115 = load %struct.fbcon_ops*, %struct.fbcon_ops** %12, align 8
  %116 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %115, i32 0, i32 0
  %117 = load i32 (%struct.vc_data*, %struct.fb_info.0*, i32, i32, i32, i32)*, i32 (%struct.vc_data*, %struct.fb_info.0*, i32, i32, i32, i32)** %116, align 8
  %118 = load %struct.vc_data*, %struct.vc_data** %6, align 8
  %119 = load %struct.fb_info*, %struct.fb_info** %11, align 8
  %120 = bitcast %struct.fb_info* %119 to %struct.fb_info.0*
  %121 = load %struct.fbcon_display*, %struct.fbcon_display** %13, align 8
  %122 = load i32, i32* %7, align 4
  %123 = call i32 @real_y(%struct.fbcon_display* %121, i32 %122)
  %124 = load i32, i32* %8, align 4
  %125 = load i32, i32* %9, align 4
  %126 = load i32, i32* %10, align 4
  %127 = call i32 %117(%struct.vc_data* %118, %struct.fb_info.0* %120, i32 %123, i32 %124, i32 %125, i32 %126)
  br label %128

128:                                              ; preds = %37, %44, %114, %80
  ret void
}

declare dso_local i64 @fbcon_is_inactive(%struct.vc_data*, %struct.fb_info*) #1

declare dso_local i32 @fbcon_clear_margins(%struct.vc_data*, i32) #1

declare dso_local i32 @real_y(%struct.fbcon_display*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
