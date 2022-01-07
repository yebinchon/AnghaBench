; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_au1200fb.c_au1200fb_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_au1200fb.c_au1200fb_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8* }
%struct.au1200fb_platdata = type { i32 (...)* }

@known_lcd_panels = common dso_local global %struct.TYPE_4__* null, align 8
@DRIVER_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"panel:\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"bs\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"Panel %s not supported!\00", align 1
@panel_index = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"nohwcursor\00", align 1
@nohwcursor = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [9 x i8] c"devices:\00", align 1
@device_count = common dso_local global i64 0, align 8
@MAX_DEVICE_COUNT = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [8 x i8] c"wincfg:\00", align 1
@window_index = common dso_local global i32 0, align 4
@windows = common dso_local global %struct.TYPE_4__* null, align 8
@DEFAULT_WINDOW_INDEX = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"Unsupported option \22%s\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.au1200fb_platdata*)* @au1200fb_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @au1200fb_setup(%struct.au1200fb_platdata* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.au1200fb_platdata*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  store %struct.au1200fb_platdata* %0, %struct.au1200fb_platdata** %3, align 8
  store i8* null, i8** %4, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** @known_lcd_panels, align 8
  %13 = call i32 @ARRAY_SIZE(%struct.TYPE_4__* %12)
  store i32 %13, i32* %7, align 4
  store i32 -1, i32* %8, align 4
  %14 = load i32, i32* @DRIVER_NAME, align 4
  %15 = call i32 @fb_get_options(i32 %14, i8** %4)
  %16 = load i8*, i8** %4, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %1
  br label %143

19:                                               ; preds = %1
  br label %20

20:                                               ; preds = %141, %19
  %21 = call i8* @strsep(i8** %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %21, i8** %5, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %142

23:                                               ; preds = %20
  %24 = load i8*, i8** %5, align 8
  %25 = call i64 @strncmp(i8* %24, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 6)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %85, label %27

27:                                               ; preds = %23
  %28 = load i8*, i8** %5, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 6
  store i8* %29, i8** %5, align 8
  %30 = load i8*, i8** %5, align 8
  %31 = call i8* @simple_strtol(i8* %30, i8** %11, i32 0)
  %32 = ptrtoint i8* %31 to i64
  store i64 %32, i64* %10, align 8
  %33 = load i8*, i8** %11, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %27
  %38 = load i64, i64* %10, align 8
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %8, align 4
  br label %72

40:                                               ; preds = %27
  %41 = load i8*, i8** %5, align 8
  %42 = call i64 @strcmp(i8* %41, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %40
  %45 = load %struct.au1200fb_platdata*, %struct.au1200fb_platdata** %3, align 8
  %46 = getelementptr inbounds %struct.au1200fb_platdata, %struct.au1200fb_platdata* %45, i32 0, i32 0
  %47 = load i32 (...)*, i32 (...)** %46, align 8
  %48 = call i32 (...) %47()
  store i32 %48, i32* %8, align 4
  br label %71

49:                                               ; preds = %40
  store i32 0, i32* %9, align 4
  br label %50

50:                                               ; preds = %67, %49
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %70

54:                                               ; preds = %50
  %55 = load i8*, i8** %5, align 8
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** @known_lcd_panels, align 8
  %57 = load i32, i32* %9, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = call i64 @strcmp(i8* %55, i8* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %54
  %65 = load i32, i32* %9, align 4
  store i32 %65, i32* %8, align 4
  br label %70

66:                                               ; preds = %54
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %9, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %9, align 4
  br label %50

70:                                               ; preds = %64, %50
  br label %71

71:                                               ; preds = %70, %44
  br label %72

72:                                               ; preds = %71, %37
  %73 = load i32, i32* %8, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %79, label %75

75:                                               ; preds = %72
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* %7, align 4
  %78 = icmp sge i32 %76, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %75, %72
  %80 = load i8*, i8** %5, align 8
  %81 = call i32 @print_warn(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i8* %80)
  br label %84

82:                                               ; preds = %75
  %83 = load i32, i32* %8, align 4
  store i32 %83, i32* @panel_index, align 4
  br label %84

84:                                               ; preds = %82, %79
  br label %141

85:                                               ; preds = %23
  %86 = load i8*, i8** %5, align 8
  %87 = call i64 @strncmp(i8* %86, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 10)
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %85
  store i32 1, i32* @nohwcursor, align 4
  br label %140

90:                                               ; preds = %85
  %91 = load i8*, i8** %5, align 8
  %92 = call i64 @strncmp(i8* %91, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 8)
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %94, label %109

94:                                               ; preds = %90
  %95 = load i8*, i8** %5, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 8
  store i8* %96, i8** %5, align 8
  %97 = load i8*, i8** %5, align 8
  %98 = call i8* @simple_strtol(i8* %97, i8** %6, i32 0)
  %99 = ptrtoint i8* %98 to i64
  store i64 %99, i64* @device_count, align 8
  %100 = load i64, i64* @device_count, align 8
  %101 = icmp slt i64 %100, 0
  br i1 %101, label %106, label %102

102:                                              ; preds = %94
  %103 = load i64, i64* @device_count, align 8
  %104 = load i64, i64* @MAX_DEVICE_COUNT, align 8
  %105 = icmp sgt i64 %103, %104
  br i1 %105, label %106, label %108

106:                                              ; preds = %102, %94
  %107 = load i64, i64* @MAX_DEVICE_COUNT, align 8
  store i64 %107, i64* @device_count, align 8
  br label %108

108:                                              ; preds = %106, %102
  br label %139

109:                                              ; preds = %90
  %110 = load i8*, i8** %5, align 8
  %111 = call i64 @strncmp(i8* %110, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 7)
  %112 = icmp eq i64 %111, 0
  br i1 %112, label %113, label %129

113:                                              ; preds = %109
  %114 = load i8*, i8** %5, align 8
  %115 = getelementptr inbounds i8, i8* %114, i64 7
  store i8* %115, i8** %5, align 8
  %116 = load i8*, i8** %5, align 8
  %117 = call i8* @simple_strtol(i8* %116, i8** %6, i32 0)
  %118 = ptrtoint i8* %117 to i32
  store i32 %118, i32* @window_index, align 4
  %119 = load i32, i32* @window_index, align 4
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %126, label %121

121:                                              ; preds = %113
  %122 = load i32, i32* @window_index, align 4
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** @windows, align 8
  %124 = call i32 @ARRAY_SIZE(%struct.TYPE_4__* %123)
  %125 = icmp sge i32 %122, %124
  br i1 %125, label %126, label %128

126:                                              ; preds = %121, %113
  %127 = load i32, i32* @DEFAULT_WINDOW_INDEX, align 4
  store i32 %127, i32* @window_index, align 4
  br label %128

128:                                              ; preds = %126, %121
  br label %138

129:                                              ; preds = %109
  %130 = load i8*, i8** %5, align 8
  %131 = call i64 @strncmp(i8* %130, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i32 3)
  %132 = icmp eq i64 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %129
  store i32 1, i32* %2, align 4
  br label %144

134:                                              ; preds = %129
  %135 = load i8*, i8** %5, align 8
  %136 = call i32 @print_warn(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0), i8* %135)
  br label %137

137:                                              ; preds = %134
  br label %138

138:                                              ; preds = %137, %128
  br label %139

139:                                              ; preds = %138, %108
  br label %140

140:                                              ; preds = %139, %89
  br label %141

141:                                              ; preds = %140, %84
  br label %20

142:                                              ; preds = %20
  br label %143

143:                                              ; preds = %142, %18
  store i32 0, i32* %2, align 4
  br label %144

144:                                              ; preds = %143, %133
  %145 = load i32, i32* %2, align 4
  ret i32 %145
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_4__*) #1

declare dso_local i32 @fb_get_options(i32, i8**) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i8* @simple_strtol(i8*, i8**, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @print_warn(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
