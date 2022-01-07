; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/core/extr_fbcon.c_fbcon_set_def_font.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/core/extr_fbcon.c_fbcon_set_def_font.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.vc_data = type { i64 }
%struct.console_font = type { i32, i32 }
%struct.font_desc = type { i32, i32, i32 }

@registered_fb = common dso_local global %struct.fb_info** null, align 8
@con2fb_map = common dso_local global i64* null, align 8
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vc_data*, %struct.console_font*, i8*)* @fbcon_set_def_font to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fbcon_set_def_font(%struct.vc_data* %0, %struct.console_font* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vc_data*, align 8
  %6 = alloca %struct.console_font*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.fb_info*, align 8
  %9 = alloca %struct.font_desc*, align 8
  store %struct.vc_data* %0, %struct.vc_data** %5, align 8
  store %struct.console_font* %1, %struct.console_font** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load %struct.fb_info**, %struct.fb_info*** @registered_fb, align 8
  %11 = load i64*, i64** @con2fb_map, align 8
  %12 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %13 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds i64, i64* %11, i64 %14
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds %struct.fb_info*, %struct.fb_info** %10, i64 %16
  %18 = load %struct.fb_info*, %struct.fb_info** %17, align 8
  store %struct.fb_info* %18, %struct.fb_info** %8, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %39, label %21

21:                                               ; preds = %3
  %22 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %23 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %27 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %31 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %35 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call %struct.font_desc* @get_default_font(i32 %25, i32 %29, i32 %33, i32 %37)
  store %struct.font_desc* %38, %struct.font_desc** %9, align 8
  br label %47

39:                                               ; preds = %3
  %40 = load i8*, i8** %7, align 8
  %41 = call %struct.font_desc* @find_font(i8* %40)
  store %struct.font_desc* %41, %struct.font_desc** %9, align 8
  %42 = icmp ne %struct.font_desc* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %39
  %44 = load i32, i32* @ENOENT, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %4, align 4
  br label %69

46:                                               ; preds = %39
  br label %47

47:                                               ; preds = %46, %21
  %48 = load %struct.font_desc*, %struct.font_desc** %9, align 8
  %49 = getelementptr inbounds %struct.font_desc, %struct.font_desc* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.console_font*, %struct.console_font** %6, align 8
  %52 = getelementptr inbounds %struct.console_font, %struct.console_font* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load %struct.font_desc*, %struct.font_desc** %9, align 8
  %54 = getelementptr inbounds %struct.font_desc, %struct.font_desc* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.console_font*, %struct.console_font** %6, align 8
  %57 = getelementptr inbounds %struct.console_font, %struct.console_font* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 4
  %58 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %59 = load %struct.font_desc*, %struct.font_desc** %9, align 8
  %60 = getelementptr inbounds %struct.font_desc, %struct.font_desc* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.font_desc*, %struct.font_desc** %9, align 8
  %63 = getelementptr inbounds %struct.font_desc, %struct.font_desc* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.font_desc*, %struct.font_desc** %9, align 8
  %66 = getelementptr inbounds %struct.font_desc, %struct.font_desc* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @fbcon_do_set_font(%struct.vc_data* %58, i32 %61, i32 %64, i32 %67, i32 0)
  store i32 %68, i32* %4, align 4
  br label %69

69:                                               ; preds = %47, %43
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local %struct.font_desc* @get_default_font(i32, i32, i32, i32) #1

declare dso_local %struct.font_desc* @find_font(i8*) #1

declare dso_local i32 @fbcon_do_set_font(%struct.vc_data*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
