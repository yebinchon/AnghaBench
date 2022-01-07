; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/core/extr_fbcon.h_attr_col_ec.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/core/extr_fbcon.h_attr_col_ec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc_data = type { i32, i64 }
%struct.fb_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@FB_VISUAL_MONO01 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.vc_data*, %struct.fb_info*, i32)* @attr_col_ec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @attr_col_ec(i32 %0, %struct.vc_data* %1, %struct.fb_info* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.vc_data*, align 8
  %8 = alloca %struct.fb_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.vc_data* %1, %struct.vc_data** %7, align 8
  store %struct.fb_info* %2, %struct.fb_info** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %15 = icmp ne %struct.vc_data* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %97

17:                                               ; preds = %4
  %18 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %19 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %39

22:                                               ; preds = %17
  %23 = load i32, i32* %9, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %22
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %28 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @attr_fgcol(i32 %26, i32 %29)
  br label %37

31:                                               ; preds = %22
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %34 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @attr_bgcol(i32 %32, i32 %35)
  br label %37

37:                                               ; preds = %31, %25
  %38 = phi i32 [ %30, %25 ], [ %36, %31 ]
  store i32 %38, i32* %5, align 4
  br label %97

39:                                               ; preds = %17
  %40 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %41 = icmp ne %struct.fb_info* %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %39
  store i32 0, i32* %5, align 4
  br label %97

43:                                               ; preds = %39
  %44 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %45 = call i32 @mono_col(%struct.fb_info* %44)
  store i32 %45, i32* %11, align 4
  %46 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %47 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @FB_VISUAL_MONO01, align 8
  %51 = icmp eq i64 %49, %50
  %52 = zext i1 %51 to i32
  store i32 %52, i32* %10, align 4
  %53 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %54 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i64 @attr_reverse(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %73

58:                                               ; preds = %43
  %59 = load i32, i32* %10, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %58
  %62 = load i32, i32* %11, align 4
  br label %64

63:                                               ; preds = %58
  br label %64

64:                                               ; preds = %63, %61
  %65 = phi i32 [ %62, %61 ], [ 0, %63 ]
  store i32 %65, i32* %12, align 4
  %66 = load i32, i32* %10, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  br label %71

69:                                               ; preds = %64
  %70 = load i32, i32* %11, align 4
  br label %71

71:                                               ; preds = %69, %68
  %72 = phi i32 [ 0, %68 ], [ %70, %69 ]
  store i32 %72, i32* %13, align 4
  br label %88

73:                                               ; preds = %43
  %74 = load i32, i32* %10, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %73
  br label %79

77:                                               ; preds = %73
  %78 = load i32, i32* %11, align 4
  br label %79

79:                                               ; preds = %77, %76
  %80 = phi i32 [ 0, %76 ], [ %78, %77 ]
  store i32 %80, i32* %12, align 4
  %81 = load i32, i32* %10, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %79
  %84 = load i32, i32* %11, align 4
  br label %86

85:                                               ; preds = %79
  br label %86

86:                                               ; preds = %85, %83
  %87 = phi i32 [ %84, %83 ], [ 0, %85 ]
  store i32 %87, i32* %13, align 4
  br label %88

88:                                               ; preds = %86, %71
  %89 = load i32, i32* %9, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %88
  %92 = load i32, i32* %12, align 4
  br label %95

93:                                               ; preds = %88
  %94 = load i32, i32* %13, align 4
  br label %95

95:                                               ; preds = %93, %91
  %96 = phi i32 [ %92, %91 ], [ %94, %93 ]
  store i32 %96, i32* %5, align 4
  br label %97

97:                                               ; preds = %95, %42, %37, %16
  %98 = load i32, i32* %5, align 4
  ret i32 %98
}

declare dso_local i32 @attr_fgcol(i32, i32) #1

declare dso_local i32 @attr_bgcol(i32, i32) #1

declare dso_local i32 @mono_col(%struct.fb_info*) #1

declare dso_local i64 @attr_reverse(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
