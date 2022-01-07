; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/nvidia/extr_nvidia.c_nvidiafb_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/nvidia/extr_nvidia.c_nvidiafb_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"forceCRTC\00", align 1
@forceCRTC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"flatpanel\00", align 1
@flatpanel = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"hwcur\00", align 1
@hwcur = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"noaccel\00", align 1
@noaccel = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"noscale\00", align 1
@noscale = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [12 x i8] c"reverse_i2c\00", align 1
@reverse_i2c = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [12 x i8] c"paneltweak:\00", align 1
@paneltweak = common dso_local global i8* null, align 8
@.str.8 = private unnamed_addr constant [6 x i8] c"vram:\00", align 1
@vram = common dso_local global i8* null, align 8
@.str.9 = private unnamed_addr constant [11 x i8] c"backlight:\00", align 1
@backlight = common dso_local global i8* null, align 8
@.str.10 = private unnamed_addr constant [7 x i8] c"nomtrr\00", align 1
@nomtrr = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [10 x i8] c"fpdither:\00", align 1
@fpdither = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [5 x i8] c"bpp:\00", align 1
@bpp = common dso_local global i8* null, align 8
@mode_option = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @nvidiafb_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvidiafb_setup(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %6 = call i32 (...) @NVTRACE_ENTER()
  %7 = load i8*, i8** %3, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load i8*, i8** %3, align 8
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %9, %1
  store i32 0, i32* %2, align 4
  br label %132

14:                                               ; preds = %9
  br label %15

15:                                               ; preds = %129, %33, %14
  %16 = call i8* @strsep(i8** %3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %16, i8** %4, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %130

18:                                               ; preds = %15
  %19 = load i8*, i8** %4, align 8
  %20 = call i32 @strncmp(i8* %19, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 9)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %46, label %22

22:                                               ; preds = %18
  %23 = load i8*, i8** %4, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 9
  store i8* %24, i8** %5, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = load i8, i8* %25, align 1
  %27 = icmp ne i8 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %22
  %29 = load i8*, i8** %5, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %30, i8** %5, align 8
  %31 = load i8, i8* %30, align 1
  %32 = icmp ne i8 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %28, %22
  br label %15

34:                                               ; preds = %28
  %35 = load i8*, i8** %5, align 8
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = sub nsw i32 %37, 48
  store i32 %38, i32* @forceCRTC, align 4
  %39 = load i32, i32* @forceCRTC, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %34
  %42 = load i32, i32* @forceCRTC, align 4
  %43 = icmp sgt i32 %42, 1
  br i1 %43, label %44, label %45

44:                                               ; preds = %41, %34
  store i32 -1, i32* @forceCRTC, align 4
  br label %45

45:                                               ; preds = %44, %41
  br label %129

46:                                               ; preds = %18
  %47 = load i8*, i8** %4, align 8
  %48 = call i32 @strncmp(i8* %47, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 9)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %46
  store i32 1, i32* @flatpanel, align 4
  br label %128

51:                                               ; preds = %46
  %52 = load i8*, i8** %4, align 8
  %53 = call i32 @strncmp(i8* %52, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 5)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %51
  store i32 1, i32* @hwcur, align 4
  br label %127

56:                                               ; preds = %51
  %57 = load i8*, i8** %4, align 8
  %58 = call i32 @strncmp(i8* %57, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 6)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %56
  store i32 1, i32* @noaccel, align 4
  br label %126

61:                                               ; preds = %56
  %62 = load i8*, i8** %4, align 8
  %63 = call i32 @strncmp(i8* %62, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 7)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %61
  store i32 1, i32* @noscale, align 4
  br label %125

66:                                               ; preds = %61
  %67 = load i8*, i8** %4, align 8
  %68 = call i32 @strncmp(i8* %67, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i32 11)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %66
  store i32 1, i32* @reverse_i2c, align 4
  br label %124

71:                                               ; preds = %66
  %72 = load i8*, i8** %4, align 8
  %73 = call i32 @strncmp(i8* %72, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i32 11)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %79, label %75

75:                                               ; preds = %71
  %76 = load i8*, i8** %4, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 11
  %78 = call i8* @simple_strtoul(i8* %77, i32* null, i32 0)
  store i8* %78, i8** @paneltweak, align 8
  br label %123

79:                                               ; preds = %71
  %80 = load i8*, i8** %4, align 8
  %81 = call i32 @strncmp(i8* %80, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i32 5)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %87, label %83

83:                                               ; preds = %79
  %84 = load i8*, i8** %4, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 5
  %86 = call i8* @simple_strtoul(i8* %85, i32* null, i32 0)
  store i8* %86, i8** @vram, align 8
  br label %122

87:                                               ; preds = %79
  %88 = load i8*, i8** %4, align 8
  %89 = call i32 @strncmp(i8* %88, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i32 10)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %95, label %91

91:                                               ; preds = %87
  %92 = load i8*, i8** %4, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 10
  %94 = call i8* @simple_strtoul(i8* %93, i32* null, i32 0)
  store i8* %94, i8** @backlight, align 8
  br label %121

95:                                               ; preds = %87
  %96 = load i8*, i8** %4, align 8
  %97 = call i32 @strncmp(i8* %96, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i32 6)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %95
  store i32 1, i32* @nomtrr, align 4
  br label %120

100:                                              ; preds = %95
  %101 = load i8*, i8** %4, align 8
  %102 = call i32 @strncmp(i8* %101, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i32 9)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %108, label %104

104:                                              ; preds = %100
  %105 = load i8*, i8** %4, align 8
  %106 = getelementptr inbounds i8, i8* %105, i64 9
  %107 = call i32 @simple_strtol(i8* %106, i32* null, i32 0)
  store i32 %107, i32* @fpdither, align 4
  br label %119

108:                                              ; preds = %100
  %109 = load i8*, i8** %4, align 8
  %110 = call i32 @strncmp(i8* %109, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i32 4)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %116, label %112

112:                                              ; preds = %108
  %113 = load i8*, i8** %4, align 8
  %114 = getelementptr inbounds i8, i8* %113, i64 4
  %115 = call i8* @simple_strtoul(i8* %114, i32* null, i32 0)
  store i8* %115, i8** @bpp, align 8
  br label %118

116:                                              ; preds = %108
  %117 = load i8*, i8** %4, align 8
  store i8* %117, i8** @mode_option, align 8
  br label %118

118:                                              ; preds = %116, %112
  br label %119

119:                                              ; preds = %118, %104
  br label %120

120:                                              ; preds = %119, %99
  br label %121

121:                                              ; preds = %120, %91
  br label %122

122:                                              ; preds = %121, %83
  br label %123

123:                                              ; preds = %122, %75
  br label %124

124:                                              ; preds = %123, %70
  br label %125

125:                                              ; preds = %124, %65
  br label %126

126:                                              ; preds = %125, %60
  br label %127

127:                                              ; preds = %126, %55
  br label %128

128:                                              ; preds = %127, %50
  br label %129

129:                                              ; preds = %128, %45
  br label %15

130:                                              ; preds = %15
  %131 = call i32 (...) @NVTRACE_LEAVE()
  store i32 0, i32* %2, align 4
  br label %132

132:                                              ; preds = %130, %13
  %133 = load i32, i32* %2, align 4
  ret i32 %133
}

declare dso_local i32 @NVTRACE_ENTER(...) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i8* @simple_strtoul(i8*, i32*, i32) #1

declare dso_local i32 @simple_strtol(i8*, i32*, i32) #1

declare dso_local i32 @NVTRACE_LEAVE(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
