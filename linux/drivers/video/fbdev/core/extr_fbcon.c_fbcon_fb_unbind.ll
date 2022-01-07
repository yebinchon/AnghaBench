; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/core/extr_fbcon.c_fbcon_fb_unbind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/core/extr_fbcon.c_fbcon_fb_unbind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i32 }
%struct.TYPE_2__ = type { i32 }

@fbcon_has_console_bind = common dso_local global i32 0, align 4
@first_fb_vc = common dso_local global i32 0, align 4
@last_fb_vc = common dso_local global i32 0, align 4
@con2fb_map = common dso_local global i32* null, align 8
@registered_fb = common dso_local global %struct.fb_info** null, align 8
@vc_cons = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fbcon_fb_unbind(%struct.fb_info* %0) #0 {
  %2 = alloca %struct.fb_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.fb_info*, align 8
  store %struct.fb_info* %0, %struct.fb_info** %2, align 8
  store i32 -1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %8 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %9 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %6, align 4
  %11 = call i32 (...) @WARN_CONSOLE_UNLOCKED()
  %12 = load i32, i32* @fbcon_has_console_bind, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %126

15:                                               ; preds = %1
  %16 = load i32, i32* @first_fb_vc, align 4
  store i32 %16, i32* %3, align 4
  br label %17

17:                                               ; preds = %43, %15
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @last_fb_vc, align 4
  %20 = icmp sle i32 %18, %19
  br i1 %20, label %21, label %46

21:                                               ; preds = %17
  %22 = load i32*, i32** @con2fb_map, align 8
  %23 = load i32, i32* %3, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %42

29:                                               ; preds = %21
  %30 = load i32*, i32** @con2fb_map, align 8
  %31 = load i32, i32* %3, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, -1
  br i1 %35, label %36, label %42

36:                                               ; preds = %29
  %37 = load i32*, i32** @con2fb_map, align 8
  %38 = load i32, i32* %3, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %4, align 4
  br label %46

42:                                               ; preds = %29, %21
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %3, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %3, align 4
  br label %17

46:                                               ; preds = %36, %17
  %47 = load i32, i32* %4, align 4
  %48 = icmp ne i32 %47, -1
  br i1 %48, label %49, label %72

49:                                               ; preds = %46
  %50 = load i32, i32* @first_fb_vc, align 4
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %68, %49
  %52 = load i32, i32* %3, align 4
  %53 = load i32, i32* @last_fb_vc, align 4
  %54 = icmp sle i32 %52, %53
  br i1 %54, label %55, label %71

55:                                               ; preds = %51
  %56 = load i32*, i32** @con2fb_map, align 8
  %57 = load i32, i32* %3, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %6, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %55
  %64 = load i32, i32* %3, align 4
  %65 = load i32, i32* %4, align 4
  %66 = call i32 @set_con2fb_map(i32 %64, i32 %65, i32 0)
  br label %67

67:                                               ; preds = %63, %55
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %3, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %3, align 4
  br label %51

71:                                               ; preds = %51
  br label %126

72:                                               ; preds = %46
  %73 = load %struct.fb_info**, %struct.fb_info*** @registered_fb, align 8
  %74 = load i32, i32* %6, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.fb_info*, %struct.fb_info** %73, i64 %75
  %77 = load %struct.fb_info*, %struct.fb_info** %76, align 8
  store %struct.fb_info* %77, %struct.fb_info** %7, align 8
  %78 = load i32, i32* @first_fb_vc, align 4
  store i32 %78, i32* %3, align 4
  br label %79

79:                                               ; preds = %121, %72
  %80 = load i32, i32* %3, align 4
  %81 = load i32, i32* @last_fb_vc, align 4
  %82 = icmp sle i32 %80, %81
  br i1 %82, label %83, label %124

83:                                               ; preds = %79
  %84 = load i32*, i32** @con2fb_map, align 8
  %85 = load i32, i32* %3, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %6, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %120

91:                                               ; preds = %83
  %92 = load i32*, i32** @con2fb_map, align 8
  %93 = load i32, i32* %3, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  store i32 -1, i32* %95, align 4
  %96 = load i32, i32* %6, align 4
  %97 = call i32 @search_fb_in_map(i32 %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %119, label %99

99:                                               ; preds = %91
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vc_cons, align 8
  %101 = load i32, i32* %3, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %107 = load i32, i32* %3, align 4
  %108 = load i32, i32* %6, align 4
  %109 = call i32 @con2fb_release_oldinfo(i32 %105, %struct.fb_info* %106, i32* null, i32 %107, i32 %108, i32 0)
  store i32 %109, i32* %5, align 4
  %110 = load i32, i32* %5, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %118

112:                                              ; preds = %99
  %113 = load i32, i32* %6, align 4
  %114 = load i32*, i32** @con2fb_map, align 8
  %115 = load i32, i32* %3, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  store i32 %113, i32* %117, align 4
  br label %126

118:                                              ; preds = %99
  br label %119

119:                                              ; preds = %118, %91
  br label %120

120:                                              ; preds = %119, %83
  br label %121

121:                                              ; preds = %120
  %122 = load i32, i32* %3, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %3, align 4
  br label %79

124:                                              ; preds = %79
  %125 = call i32 (...) @fbcon_unbind()
  br label %126

126:                                              ; preds = %14, %112, %124, %71
  ret void
}

declare dso_local i32 @WARN_CONSOLE_UNLOCKED(...) #1

declare dso_local i32 @set_con2fb_map(i32, i32, i32) #1

declare dso_local i32 @search_fb_in_map(i32) #1

declare dso_local i32 @con2fb_release_oldinfo(i32, %struct.fb_info*, i32*, i32, i32, i32) #1

declare dso_local i32 @fbcon_unbind(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
