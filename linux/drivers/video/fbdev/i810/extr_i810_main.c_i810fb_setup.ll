; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/i810/extr_i810_main.c_i810fb_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/i810/extr_i810_main.c_i810fb_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"mtrr\00", align 1
@mtrr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"accel\00", align 1
@accel = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"extvga\00", align 1
@extvga = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"sync\00", align 1
@sync = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"vram:\00", align 1
@vram = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [9 x i8] c"voffset:\00", align 1
@voffset = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [6 x i8] c"xres:\00", align 1
@xres = common dso_local global i8* null, align 8
@.str.8 = private unnamed_addr constant [6 x i8] c"yres:\00", align 1
@yres = common dso_local global i8* null, align 8
@.str.9 = private unnamed_addr constant [7 x i8] c"vyres:\00", align 1
@vyres = common dso_local global i8* null, align 8
@.str.10 = private unnamed_addr constant [5 x i8] c"bpp:\00", align 1
@bpp = common dso_local global i8* null, align 8
@.str.11 = private unnamed_addr constant [8 x i8] c"hsync1:\00", align 1
@hsync1 = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [2 x i8] c"H\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"hsync2:\00", align 1
@hsync2 = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [8 x i8] c"vsync1:\00", align 1
@vsync1 = common dso_local global i8* null, align 8
@.str.15 = private unnamed_addr constant [8 x i8] c"vsync2:\00", align 1
@vsync2 = common dso_local global i8* null, align 8
@.str.16 = private unnamed_addr constant [7 x i8] c"dcolor\00", align 1
@dcolor = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [5 x i8] c"ddc3\00", align 1
@ddc3 = common dso_local global i32 0, align 4
@mode_option = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @i810fb_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i810fb_setup(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* null, i8** %5, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load i8*, i8** %3, align 8
  %10 = load i8, i8* %9, align 1
  %11 = icmp ne i8 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %8, %1
  store i32 0, i32* %2, align 4
  br label %162

13:                                               ; preds = %8
  br label %14

14:                                               ; preds = %160, %13
  %15 = call i8* @strsep(i8** %3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %15, i8** %4, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %161

17:                                               ; preds = %14
  %18 = load i8*, i8** %4, align 8
  %19 = call i64 @strncmp(i8* %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  store i32 1, i32* @mtrr, align 4
  br label %160

22:                                               ; preds = %17
  %23 = load i8*, i8** %4, align 8
  %24 = call i64 @strncmp(i8* %23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 5)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %22
  store i32 1, i32* @accel, align 4
  br label %159

27:                                               ; preds = %22
  %28 = load i8*, i8** %4, align 8
  %29 = call i64 @strncmp(i8* %28, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 6)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %27
  store i32 1, i32* @extvga, align 4
  br label %158

32:                                               ; preds = %27
  %33 = load i8*, i8** %4, align 8
  %34 = call i64 @strncmp(i8* %33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 4)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %32
  store i32 1, i32* @sync, align 4
  br label %157

37:                                               ; preds = %32
  %38 = load i8*, i8** %4, align 8
  %39 = call i64 @strncmp(i8* %38, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 5)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %37
  %42 = load i8*, i8** %4, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 5
  %44 = call i8* @simple_strtoul(i8* %43, i8** null, i32 0)
  store i8* %44, i8** @vram, align 8
  br label %156

45:                                               ; preds = %37
  %46 = load i8*, i8** %4, align 8
  %47 = call i64 @strncmp(i8* %46, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32 8)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %45
  %50 = load i8*, i8** %4, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 8
  %52 = call i8* @simple_strtoul(i8* %51, i8** null, i32 0)
  store i8* %52, i8** @voffset, align 8
  br label %155

53:                                               ; preds = %45
  %54 = load i8*, i8** %4, align 8
  %55 = call i64 @strncmp(i8* %54, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 5)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %53
  %58 = load i8*, i8** %4, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 5
  %60 = call i8* @simple_strtoul(i8* %59, i8** null, i32 0)
  store i8* %60, i8** @xres, align 8
  br label %154

61:                                               ; preds = %53
  %62 = load i8*, i8** %4, align 8
  %63 = call i64 @strncmp(i8* %62, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i32 5)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %61
  %66 = load i8*, i8** %4, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 5
  %68 = call i8* @simple_strtoul(i8* %67, i8** null, i32 0)
  store i8* %68, i8** @yres, align 8
  br label %153

69:                                               ; preds = %61
  %70 = load i8*, i8** %4, align 8
  %71 = call i64 @strncmp(i8* %70, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i32 6)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %77, label %73

73:                                               ; preds = %69
  %74 = load i8*, i8** %4, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 6
  %76 = call i8* @simple_strtoul(i8* %75, i8** null, i32 0)
  store i8* %76, i8** @vyres, align 8
  br label %152

77:                                               ; preds = %69
  %78 = load i8*, i8** %4, align 8
  %79 = call i64 @strncmp(i8* %78, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32 4)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %85, label %81

81:                                               ; preds = %77
  %82 = load i8*, i8** %4, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 4
  %84 = call i8* @simple_strtoul(i8* %83, i8** null, i32 0)
  store i8* %84, i8** @bpp, align 8
  br label %151

85:                                               ; preds = %77
  %86 = load i8*, i8** %4, align 8
  %87 = call i64 @strncmp(i8* %86, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i32 7)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %101, label %89

89:                                               ; preds = %85
  %90 = load i8*, i8** %4, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 7
  %92 = call i8* @simple_strtoul(i8* %91, i8** %5, i32 0)
  %93 = ptrtoint i8* %92 to i32
  store i32 %93, i32* @hsync1, align 4
  %94 = load i8*, i8** %5, align 8
  %95 = call i64 @strncmp(i8* %94, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), i32 1)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %89
  %98 = load i32, i32* @hsync1, align 4
  %99 = mul nsw i32 %98, 1000
  store i32 %99, i32* @hsync1, align 4
  br label %100

100:                                              ; preds = %97, %89
  br label %150

101:                                              ; preds = %85
  %102 = load i8*, i8** %4, align 8
  %103 = call i64 @strncmp(i8* %102, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i32 7)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %117, label %105

105:                                              ; preds = %101
  %106 = load i8*, i8** %4, align 8
  %107 = getelementptr inbounds i8, i8* %106, i64 7
  %108 = call i8* @simple_strtoul(i8* %107, i8** %5, i32 0)
  %109 = ptrtoint i8* %108 to i32
  store i32 %109, i32* @hsync2, align 4
  %110 = load i8*, i8** %5, align 8
  %111 = call i64 @strncmp(i8* %110, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), i32 1)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %105
  %114 = load i32, i32* @hsync2, align 4
  %115 = mul nsw i32 %114, 1000
  store i32 %115, i32* @hsync2, align 4
  br label %116

116:                                              ; preds = %113, %105
  br label %149

117:                                              ; preds = %101
  %118 = load i8*, i8** %4, align 8
  %119 = call i64 @strncmp(i8* %118, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i32 7)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %125, label %121

121:                                              ; preds = %117
  %122 = load i8*, i8** %4, align 8
  %123 = getelementptr inbounds i8, i8* %122, i64 7
  %124 = call i8* @simple_strtoul(i8* %123, i8** null, i32 0)
  store i8* %124, i8** @vsync1, align 8
  br label %148

125:                                              ; preds = %117
  %126 = load i8*, i8** %4, align 8
  %127 = call i64 @strncmp(i8* %126, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0), i32 7)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %133, label %129

129:                                              ; preds = %125
  %130 = load i8*, i8** %4, align 8
  %131 = getelementptr inbounds i8, i8* %130, i64 7
  %132 = call i8* @simple_strtoul(i8* %131, i8** null, i32 0)
  store i8* %132, i8** @vsync2, align 8
  br label %147

133:                                              ; preds = %125
  %134 = load i8*, i8** %4, align 8
  %135 = call i64 @strncmp(i8* %134, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0), i32 6)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %138, label %137

137:                                              ; preds = %133
  store i32 1, i32* @dcolor, align 4
  br label %146

138:                                              ; preds = %133
  %139 = load i8*, i8** %4, align 8
  %140 = call i64 @strncmp(i8* %139, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0), i32 4)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %143, label %142

142:                                              ; preds = %138
  store i32 1, i32* @ddc3, align 4
  br label %145

143:                                              ; preds = %138
  %144 = load i8*, i8** %4, align 8
  store i8* %144, i8** @mode_option, align 8
  br label %145

145:                                              ; preds = %143, %142
  br label %146

146:                                              ; preds = %145, %137
  br label %147

147:                                              ; preds = %146, %129
  br label %148

148:                                              ; preds = %147, %121
  br label %149

149:                                              ; preds = %148, %116
  br label %150

150:                                              ; preds = %149, %100
  br label %151

151:                                              ; preds = %150, %81
  br label %152

152:                                              ; preds = %151, %73
  br label %153

153:                                              ; preds = %152, %65
  br label %154

154:                                              ; preds = %153, %57
  br label %155

155:                                              ; preds = %154, %49
  br label %156

156:                                              ; preds = %155, %41
  br label %157

157:                                              ; preds = %156, %36
  br label %158

158:                                              ; preds = %157, %31
  br label %159

159:                                              ; preds = %158, %26
  br label %160

160:                                              ; preds = %159, %21
  br label %14

161:                                              ; preds = %14
  store i32 0, i32* %2, align 4
  br label %162

162:                                              ; preds = %161, %12
  %163 = load i32, i32* %2, align 4
  ret i32 %163
}

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i8* @simple_strtoul(i8*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
