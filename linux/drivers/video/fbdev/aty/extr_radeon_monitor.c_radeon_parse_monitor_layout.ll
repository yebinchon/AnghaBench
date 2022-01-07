; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/aty/extr_radeon_monitor.c_radeon_parse_monitor_layout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/aty/extr_radeon_monitor.c_radeon_parse_monitor_layout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeonfb_info = type { i8*, i8* }

@.str = private unnamed_addr constant [4 x i8] c"CRT\00", align 1
@MT_CRT = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"TMDS\00", align 1
@MT_DFP = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"LVDS\00", align 1
@MT_LCD = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeonfb_info*, i8*)* @radeon_parse_monitor_layout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radeon_parse_monitor_layout(%struct.radeonfb_info* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.radeonfb_info*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [5 x i8], align 1
  %7 = alloca [5 x i8], align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.radeonfb_info* %0, %struct.radeonfb_info** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %11 = load i8*, i8** %5, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %122

14:                                               ; preds = %2
  %15 = load i8*, i8** %5, align 8
  store i8* %15, i8** %10, align 8
  br label %16

16:                                               ; preds = %52, %14
  %17 = load i8*, i8** %10, align 8
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  switch i32 %19, label %25 [
    i32 44, label %20
    i32 32, label %24
    i32 0, label %24
  ]

20:                                               ; preds = %16
  %21 = load i32, i32* %8, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [5 x i8], [5 x i8]* %6, i64 0, i64 %22
  store i8 0, i8* %23, align 1
  store i32 0, i32* %8, align 4
  store i32 1, i32* %9, align 4
  br label %47

24:                                               ; preds = %16, %16
  br label %47

25:                                               ; preds = %16
  %26 = load i32, i32* %8, align 4
  %27 = icmp sgt i32 %26, 4
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  br label %47

29:                                               ; preds = %25
  %30 = load i32, i32* %9, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %29
  %33 = load i8*, i8** %10, align 8
  %34 = load i8, i8* %33, align 1
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 %36
  store i8 %34, i8* %37, align 1
  br label %44

38:                                               ; preds = %29
  %39 = load i8*, i8** %10, align 8
  %40 = load i8, i8* %39, align 1
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [5 x i8], [5 x i8]* %6, i64 0, i64 %42
  store i8 %40, i8* %43, align 1
  br label %44

44:                                               ; preds = %38, %32
  %45 = load i32, i32* %8, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %8, align 4
  br label %47

47:                                               ; preds = %44, %28, %24, %20
  %48 = load i32, i32* %8, align 4
  %49 = icmp sgt i32 %48, 4
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  store i32 4, i32* %8, align 4
  br label %51

51:                                               ; preds = %50, %47
  br label %52

52:                                               ; preds = %51
  %53 = load i8*, i8** %10, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** %10, align 8
  %55 = load i8, i8* %53, align 1
  %56 = icmp ne i8 %55, 0
  br i1 %56, label %16, label %57

57:                                               ; preds = %52
  %58 = load i32, i32* %9, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %57
  %61 = load i32, i32* %8, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 %62
  store i8 0, i8* %63, align 1
  br label %69

64:                                               ; preds = %57
  %65 = load i32, i32* %8, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [5 x i8], [5 x i8]* %6, i64 0, i64 %66
  store i8 0, i8* %67, align 1
  %68 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 0
  store i8 0, i8* %68, align 1
  br label %69

69:                                               ; preds = %64, %60
  %70 = getelementptr inbounds [5 x i8], [5 x i8]* %6, i64 0, i64 0
  %71 = call i64 @strcmp(i8* %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %69
  %74 = load i8*, i8** @MT_CRT, align 8
  %75 = load %struct.radeonfb_info*, %struct.radeonfb_info** %4, align 8
  %76 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %75, i32 0, i32 1
  store i8* %74, i8** %76, align 8
  br label %95

77:                                               ; preds = %69
  %78 = getelementptr inbounds [5 x i8], [5 x i8]* %6, i64 0, i64 0
  %79 = call i64 @strcmp(i8* %78, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %77
  %82 = load i8*, i8** @MT_DFP, align 8
  %83 = load %struct.radeonfb_info*, %struct.radeonfb_info** %4, align 8
  %84 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %83, i32 0, i32 1
  store i8* %82, i8** %84, align 8
  br label %94

85:                                               ; preds = %77
  %86 = getelementptr inbounds [5 x i8], [5 x i8]* %6, i64 0, i64 0
  %87 = call i64 @strcmp(i8* %86, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %85
  %90 = load i8*, i8** @MT_LCD, align 8
  %91 = load %struct.radeonfb_info*, %struct.radeonfb_info** %4, align 8
  %92 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %91, i32 0, i32 1
  store i8* %90, i8** %92, align 8
  br label %93

93:                                               ; preds = %89, %85
  br label %94

94:                                               ; preds = %93, %81
  br label %95

95:                                               ; preds = %94, %73
  %96 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 0
  %97 = call i64 @strcmp(i8* %96, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %95
  %100 = load i8*, i8** @MT_CRT, align 8
  %101 = load %struct.radeonfb_info*, %struct.radeonfb_info** %4, align 8
  %102 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %101, i32 0, i32 0
  store i8* %100, i8** %102, align 8
  br label %121

103:                                              ; preds = %95
  %104 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 0
  %105 = call i64 @strcmp(i8* %104, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %103
  %108 = load i8*, i8** @MT_DFP, align 8
  %109 = load %struct.radeonfb_info*, %struct.radeonfb_info** %4, align 8
  %110 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %109, i32 0, i32 0
  store i8* %108, i8** %110, align 8
  br label %120

111:                                              ; preds = %103
  %112 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 0
  %113 = call i64 @strcmp(i8* %112, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %114 = icmp eq i64 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %111
  %116 = load i8*, i8** @MT_LCD, align 8
  %117 = load %struct.radeonfb_info*, %struct.radeonfb_info** %4, align 8
  %118 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %117, i32 0, i32 0
  store i8* %116, i8** %118, align 8
  br label %119

119:                                              ; preds = %115, %111
  br label %120

120:                                              ; preds = %119, %107
  br label %121

121:                                              ; preds = %120, %99
  store i32 1, i32* %3, align 4
  br label %122

122:                                              ; preds = %121, %13
  %123 = load i32, i32* %3, align 4
  ret i32 %123
}

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
