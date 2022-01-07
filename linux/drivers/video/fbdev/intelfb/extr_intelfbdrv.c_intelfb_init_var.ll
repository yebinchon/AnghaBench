; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/intelfb/extr_intelfbdrv.c_intelfb_init_var.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/intelfb/extr_intelfbdrv.c_intelfb_init_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intelfb_info = type { i64, %struct.TYPE_6__, %struct.TYPE_7__*, %struct.TYPE_5__*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_8__, %struct.fb_var_screeninfo }
%struct.TYPE_8__ = type { i32, i32* }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"intelfb_init_var\0A\00", align 1
@EDID_LENGTH = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@mode = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [47 x i8] c"intelfb: Looking for mode in private database\0A\00", align 1
@.str.2 = private unnamed_addr constant [84 x i8] c"intelfb: No mode in private database, intelfb: looking for mode in global database \00", align 1
@PREFERRED_MODE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [36 x i8] c"Cannot find a suitable video mode.\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"Initial video mode is %dx%d-%d@%d.\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"Initial video mode is from %d.\0A\00", align 1
@FB_ACCELF_TEXT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intelfb_info*)* @intelfb_init_var to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intelfb_init_var(%struct.intelfb_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intelfb_info*, align 8
  %4 = alloca %struct.fb_var_screeninfo*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store %struct.intelfb_info* %0, %struct.intelfb_info** %3, align 8
  store i32 0, i32* %5, align 4
  %8 = call i32 (i8*, ...) @DBG_MSG(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.intelfb_info*, %struct.intelfb_info** %3, align 8
  %10 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %9, i32 0, i32 2
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 1
  store %struct.fb_var_screeninfo* %12, %struct.fb_var_screeninfo** %4, align 8
  %13 = load %struct.intelfb_info*, %struct.intelfb_info** %3, align 8
  %14 = call i64 @FIXED_MODE(%struct.intelfb_info* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %18 = load %struct.intelfb_info*, %struct.intelfb_info** %3, align 8
  %19 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %18, i32 0, i32 4
  %20 = call i32 @memcpy(%struct.fb_var_screeninfo* %17, i32* %19, i32 24)
  store i32 5, i32* %5, align 4
  br label %100

21:                                               ; preds = %1
  %22 = load %struct.intelfb_info*, %struct.intelfb_info** %3, align 8
  %23 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %22, i32 0, i32 3
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = call i32* @fb_firmware_edid(i32* %25)
  store i32* %26, i32** %6, align 8
  store i32* null, i32** %7, align 8
  %27 = load i32*, i32** %6, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %46

29:                                               ; preds = %21
  %30 = load i32*, i32** %6, align 8
  %31 = load i32, i32* @EDID_LENGTH, align 4
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call i32* @kmemdup(i32* %30, i32 %31, i32 %32)
  store i32* %33, i32** %7, align 8
  %34 = load i32*, i32** %7, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %45

36:                                               ; preds = %29
  %37 = load i32*, i32** %7, align 8
  %38 = load %struct.intelfb_info*, %struct.intelfb_info** %3, align 8
  %39 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %38, i32 0, i32 2
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = call i32 @fb_edid_to_monspecs(i32* %37, %struct.TYPE_8__* %41)
  %43 = load i32*, i32** %7, align 8
  %44 = call i32 @kfree(i32* %43)
  br label %45

45:                                               ; preds = %36, %29
  br label %46

46:                                               ; preds = %45, %21
  %47 = load i64, i64* @mode, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %89

49:                                               ; preds = %46
  %50 = call i32 @printk(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %51 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %52 = load %struct.intelfb_info*, %struct.intelfb_info** %3, align 8
  %53 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %52, i32 0, i32 2
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %53, align 8
  %55 = load i64, i64* @mode, align 8
  %56 = load %struct.intelfb_info*, %struct.intelfb_info** %3, align 8
  %57 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %56, i32 0, i32 2
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = load %struct.intelfb_info*, %struct.intelfb_info** %3, align 8
  %63 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %62, i32 0, i32 2
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @fb_find_mode(%struct.fb_var_screeninfo* %51, %struct.TYPE_7__* %54, i64 %55, i32* %61, i32 %67, i32* null, i32 0)
  store i32 %68, i32* %5, align 4
  %69 = load i32, i32* %5, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %88

71:                                               ; preds = %49
  %72 = load i32, i32* %5, align 4
  %73 = icmp sgt i32 %72, 1
  br i1 %73, label %74, label %88

74:                                               ; preds = %71
  %75 = call i32 @printk(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.2, i64 0, i64 0))
  %76 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %77 = load %struct.intelfb_info*, %struct.intelfb_info** %3, align 8
  %78 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %77, i32 0, i32 2
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %78, align 8
  %80 = load i64, i64* @mode, align 8
  %81 = call i32 @fb_find_mode(%struct.fb_var_screeninfo* %76, %struct.TYPE_7__* %79, i64 %80, i32* null, i32 0, i32* null, i32 0)
  store i32 %81, i32* %5, align 4
  %82 = load i32, i32* %5, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %74
  %85 = load i32, i32* %5, align 4
  %86 = or i32 %85, 8
  store i32 %86, i32* %5, align 4
  br label %87

87:                                               ; preds = %84, %74
  br label %88

88:                                               ; preds = %87, %71, %49
  br label %89

89:                                               ; preds = %88, %46
  %90 = load i32, i32* %5, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %99, label %92

92:                                               ; preds = %89
  %93 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %94 = load %struct.intelfb_info*, %struct.intelfb_info** %3, align 8
  %95 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %94, i32 0, i32 2
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %95, align 8
  %97 = load i64, i64* @PREFERRED_MODE, align 8
  %98 = call i32 @fb_find_mode(%struct.fb_var_screeninfo* %93, %struct.TYPE_7__* %96, i64 %97, i32* null, i32 0, i32* null, i32 0)
  store i32 %98, i32* %5, align 4
  br label %99

99:                                               ; preds = %92, %89
  br label %100

100:                                              ; preds = %99, %16
  %101 = load i32, i32* %5, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %105, label %103

103:                                              ; preds = %100
  %104 = call i32 @ERR_MSG(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %143

105:                                              ; preds = %100
  %106 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %107 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %110 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %113 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %116 = call i32 @var_to_refresh(%struct.fb_var_screeninfo* %115)
  %117 = call i32 @INF_MSG(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %108, i32 %111, i32 %114, i32 %116)
  %118 = load i32, i32* %5, align 4
  %119 = call i32 (i8*, ...) @DBG_MSG(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32 %118)
  %120 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %121 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %124 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %123, i32 0, i32 4
  store i32 %122, i32* %124, align 4
  %125 = load %struct.intelfb_info*, %struct.intelfb_info** %3, align 8
  %126 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %135

129:                                              ; preds = %105
  %130 = load i32, i32* @FB_ACCELF_TEXT, align 4
  %131 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %132 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %131, i32 0, i32 5
  %133 = load i32, i32* %132, align 4
  %134 = or i32 %133, %130
  store i32 %134, i32* %132, align 4
  br label %142

135:                                              ; preds = %105
  %136 = load i32, i32* @FB_ACCELF_TEXT, align 4
  %137 = xor i32 %136, -1
  %138 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %139 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %138, i32 0, i32 5
  %140 = load i32, i32* %139, align 4
  %141 = and i32 %140, %137
  store i32 %141, i32* %139, align 4
  br label %142

142:                                              ; preds = %135, %129
  store i32 0, i32* %2, align 4
  br label %143

143:                                              ; preds = %142, %103
  %144 = load i32, i32* %2, align 4
  ret i32 %144
}

declare dso_local i32 @DBG_MSG(i8*, ...) #1

declare dso_local i64 @FIXED_MODE(%struct.intelfb_info*) #1

declare dso_local i32 @memcpy(%struct.fb_var_screeninfo*, i32*, i32) #1

declare dso_local i32* @fb_firmware_edid(i32*) #1

declare dso_local i32* @kmemdup(i32*, i32, i32) #1

declare dso_local i32 @fb_edid_to_monspecs(i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @fb_find_mode(%struct.fb_var_screeninfo*, %struct.TYPE_7__*, i64, i32*, i32, i32*, i32) #1

declare dso_local i32 @ERR_MSG(i8*) #1

declare dso_local i32 @INF_MSG(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @var_to_refresh(%struct.fb_var_screeninfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
