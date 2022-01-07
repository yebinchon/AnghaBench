; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_uvesafb.c_uvesafb_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_uvesafb.c_uvesafb_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"redraw\00", align 1
@ypan = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"ypan\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"ywrap\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"vgapal\00", align 1
@pmi_setpal = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"pmipal\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"mtrr:\00", align 1
@mtrr = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [7 x i8] c"nomtrr\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"nocrtc\00", align 1
@nocrtc = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [7 x i8] c"noedid\00", align 1
@noedid = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [8 x i8] c"noblank\00", align 1
@blank = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [8 x i8] c"vtotal:\00", align 1
@vram_total = common dso_local global i8* null, align 8
@.str.12 = private unnamed_addr constant [8 x i8] c"vremap:\00", align 1
@vram_remap = common dso_local global i8* null, align 8
@.str.13 = private unnamed_addr constant [7 x i8] c"maxhf:\00", align 1
@maxhf = common dso_local global i8* null, align 8
@.str.14 = private unnamed_addr constant [7 x i8] c"maxvf:\00", align 1
@maxvf = common dso_local global i8* null, align 8
@.str.15 = private unnamed_addr constant [8 x i8] c"maxclk:\00", align 1
@maxclk = common dso_local global i8* null, align 8
@.str.16 = private unnamed_addr constant [9 x i8] c"vbemode:\00", align 1
@vbemode = common dso_local global i8* null, align 8
@mode_option = common dso_local global i8* null, align 8
@.str.17 = private unnamed_addr constant [24 x i8] c"unrecognized option %s\0A\00", align 1
@.str.18 = private unnamed_addr constant [57 x i8] c"uvesafb: mtrr should be set to 0 or 3; %d is unsupported\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @uvesafb_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uvesafb_setup(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = icmp ne i8* %5, null
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = load i8*, i8** %3, align 8
  %9 = load i8, i8* %8, align 1
  %10 = icmp ne i8 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %7, %1
  store i32 0, i32* %2, align 4
  br label %167

12:                                               ; preds = %7
  br label %13

13:                                               ; preds = %156, %20, %12
  %14 = call i8* @strsep(i8** %3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %14, i8** %4, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %157

16:                                               ; preds = %13
  %17 = load i8*, i8** %4, align 8
  %18 = load i8, i8* %17, align 1
  %19 = icmp ne i8 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  br label %13

21:                                               ; preds = %16
  %22 = load i8*, i8** %4, align 8
  %23 = call i32 @strcmp(i8* %22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  store i32 0, i32* @ypan, align 4
  br label %156

26:                                               ; preds = %21
  %27 = load i8*, i8** %4, align 8
  %28 = call i32 @strcmp(i8* %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  store i32 1, i32* @ypan, align 4
  br label %155

31:                                               ; preds = %26
  %32 = load i8*, i8** %4, align 8
  %33 = call i32 @strcmp(i8* %32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %31
  store i32 2, i32* @ypan, align 4
  br label %154

36:                                               ; preds = %31
  %37 = load i8*, i8** %4, align 8
  %38 = call i32 @strcmp(i8* %37, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %36
  store i32 0, i32* @pmi_setpal, align 4
  br label %153

41:                                               ; preds = %36
  %42 = load i8*, i8** %4, align 8
  %43 = call i32 @strcmp(i8* %42, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %41
  store i32 1, i32* @pmi_setpal, align 4
  br label %152

46:                                               ; preds = %41
  %47 = load i8*, i8** %4, align 8
  %48 = call i32 @strncmp(i8* %47, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 5)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %55, label %50

50:                                               ; preds = %46
  %51 = load i8*, i8** %4, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 5
  %53 = call i8* @simple_strtoul(i8* %52, i32* null, i32 0)
  %54 = ptrtoint i8* %53 to i32
  store i32 %54, i32* @mtrr, align 4
  br label %151

55:                                               ; preds = %46
  %56 = load i8*, i8** %4, align 8
  %57 = call i32 @strcmp(i8* %56, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %55
  store i32 0, i32* @mtrr, align 4
  br label %150

60:                                               ; preds = %55
  %61 = load i8*, i8** %4, align 8
  %62 = call i32 @strcmp(i8* %61, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %60
  store i32 1, i32* @nocrtc, align 4
  br label %149

65:                                               ; preds = %60
  %66 = load i8*, i8** %4, align 8
  %67 = call i32 @strcmp(i8* %66, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %65
  store i32 1, i32* @noedid, align 4
  br label %148

70:                                               ; preds = %65
  %71 = load i8*, i8** %4, align 8
  %72 = call i32 @strcmp(i8* %71, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0))
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %70
  store i64 0, i64* @blank, align 8
  br label %147

75:                                               ; preds = %70
  %76 = load i8*, i8** %4, align 8
  %77 = call i32 @strncmp(i8* %76, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i32 7)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %83, label %79

79:                                               ; preds = %75
  %80 = load i8*, i8** %4, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 7
  %82 = call i8* @simple_strtoul(i8* %81, i32* null, i32 0)
  store i8* %82, i8** @vram_total, align 8
  br label %146

83:                                               ; preds = %75
  %84 = load i8*, i8** %4, align 8
  %85 = call i32 @strncmp(i8* %84, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i32 7)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %91, label %87

87:                                               ; preds = %83
  %88 = load i8*, i8** %4, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 7
  %90 = call i8* @simple_strtoul(i8* %89, i32* null, i32 0)
  store i8* %90, i8** @vram_remap, align 8
  br label %145

91:                                               ; preds = %83
  %92 = load i8*, i8** %4, align 8
  %93 = call i32 @strncmp(i8* %92, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i32 6)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %99, label %95

95:                                               ; preds = %91
  %96 = load i8*, i8** %4, align 8
  %97 = getelementptr inbounds i8, i8* %96, i64 6
  %98 = call i8* @simple_strtoul(i8* %97, i32* null, i32 0)
  store i8* %98, i8** @maxhf, align 8
  br label %144

99:                                               ; preds = %91
  %100 = load i8*, i8** %4, align 8
  %101 = call i32 @strncmp(i8* %100, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0), i32 6)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %107, label %103

103:                                              ; preds = %99
  %104 = load i8*, i8** %4, align 8
  %105 = getelementptr inbounds i8, i8* %104, i64 6
  %106 = call i8* @simple_strtoul(i8* %105, i32* null, i32 0)
  store i8* %106, i8** @maxvf, align 8
  br label %143

107:                                              ; preds = %99
  %108 = load i8*, i8** %4, align 8
  %109 = call i32 @strncmp(i8* %108, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0), i32 7)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %115, label %111

111:                                              ; preds = %107
  %112 = load i8*, i8** %4, align 8
  %113 = getelementptr inbounds i8, i8* %112, i64 7
  %114 = call i8* @simple_strtoul(i8* %113, i32* null, i32 0)
  store i8* %114, i8** @maxclk, align 8
  br label %142

115:                                              ; preds = %107
  %116 = load i8*, i8** %4, align 8
  %117 = call i32 @strncmp(i8* %116, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0), i32 8)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %123, label %119

119:                                              ; preds = %115
  %120 = load i8*, i8** %4, align 8
  %121 = getelementptr inbounds i8, i8* %120, i64 8
  %122 = call i8* @simple_strtoul(i8* %121, i32* null, i32 0)
  store i8* %122, i8** @vbemode, align 8
  br label %141

123:                                              ; preds = %115
  %124 = load i8*, i8** %4, align 8
  %125 = getelementptr inbounds i8, i8* %124, i64 0
  %126 = load i8, i8* %125, align 1
  %127 = sext i8 %126 to i32
  %128 = icmp sge i32 %127, 48
  br i1 %128, label %129, label %137

129:                                              ; preds = %123
  %130 = load i8*, i8** %4, align 8
  %131 = getelementptr inbounds i8, i8* %130, i64 0
  %132 = load i8, i8* %131, align 1
  %133 = sext i8 %132 to i32
  %134 = icmp sle i32 %133, 57
  br i1 %134, label %135, label %137

135:                                              ; preds = %129
  %136 = load i8*, i8** %4, align 8
  store i8* %136, i8** @mode_option, align 8
  br label %140

137:                                              ; preds = %129, %123
  %138 = load i8*, i8** %4, align 8
  %139 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.17, i64 0, i64 0), i8* %138)
  br label %140

140:                                              ; preds = %137, %135
  br label %141

141:                                              ; preds = %140, %119
  br label %142

142:                                              ; preds = %141, %111
  br label %143

143:                                              ; preds = %142, %103
  br label %144

144:                                              ; preds = %143, %95
  br label %145

145:                                              ; preds = %144, %87
  br label %146

146:                                              ; preds = %145, %79
  br label %147

147:                                              ; preds = %146, %74
  br label %148

148:                                              ; preds = %147, %69
  br label %149

149:                                              ; preds = %148, %64
  br label %150

150:                                              ; preds = %149, %59
  br label %151

151:                                              ; preds = %150, %50
  br label %152

152:                                              ; preds = %151, %45
  br label %153

153:                                              ; preds = %152, %40
  br label %154

154:                                              ; preds = %153, %35
  br label %155

155:                                              ; preds = %154, %30
  br label %156

156:                                              ; preds = %155, %25
  br label %13

157:                                              ; preds = %13
  %158 = load i32, i32* @mtrr, align 4
  %159 = icmp ne i32 %158, 3
  br i1 %159, label %160, label %166

160:                                              ; preds = %157
  %161 = load i32, i32* @mtrr, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %166

163:                                              ; preds = %160
  %164 = load i32, i32* @mtrr, align 4
  %165 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.18, i64 0, i64 0), i32 %164)
  br label %166

166:                                              ; preds = %163, %160, %157
  store i32 0, i32* %2, align 4
  br label %167

167:                                              ; preds = %166, %11
  %168 = load i32, i32* %2, align 4
  ret i32 %168
}

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i8* @simple_strtoul(i8*, i32*, i32) #1

declare dso_local i32 @pr_warn(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
