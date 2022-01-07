; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_macmodes.c_mac_var_to_vmode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_macmodes.c_mac_var_to_vmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mode_map = type { i32, %struct.fb_videomode* }
%struct.fb_videomode = type { i64, i64, i64, i32 }
%struct.fb_var_screeninfo = type { i32, i64, i64, i64, i64, i64, i32 }

@CMODE_8 = common dso_local global i32 0, align 4
@CMODE_16 = common dso_local global i32 0, align 4
@CMODE_32 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@mac_modes = common dso_local global %struct.mode_map* null, align 8
@FB_VMODE_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mac_var_to_vmode(%struct.fb_var_screeninfo* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.fb_var_screeninfo*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.mode_map*, align 8
  %9 = alloca %struct.fb_videomode*, align 8
  %10 = alloca %struct.fb_videomode*, align 8
  store %struct.fb_var_screeninfo* %0, %struct.fb_var_screeninfo** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %12 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp sle i32 %13, 8
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* @CMODE_8, align 4
  %17 = load i32*, i32** %7, align 8
  store i32 %16, i32* %17, align 4
  br label %39

18:                                               ; preds = %3
  %19 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %20 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp sle i32 %21, 16
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load i32, i32* @CMODE_16, align 4
  %25 = load i32*, i32** %7, align 8
  store i32 %24, i32* %25, align 4
  br label %38

26:                                               ; preds = %18
  %27 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %28 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp sle i32 %29, 32
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load i32, i32* @CMODE_32, align 4
  %33 = load i32*, i32** %7, align 8
  store i32 %32, i32* %33, align 4
  br label %37

34:                                               ; preds = %26
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %167

37:                                               ; preds = %31
  br label %38

38:                                               ; preds = %37, %23
  br label %39

39:                                               ; preds = %38, %15
  %40 = load %struct.mode_map*, %struct.mode_map** @mac_modes, align 8
  store %struct.mode_map* %40, %struct.mode_map** %8, align 8
  br label %41

41:                                               ; preds = %161, %39
  %42 = load %struct.mode_map*, %struct.mode_map** %8, align 8
  %43 = getelementptr inbounds %struct.mode_map, %struct.mode_map* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, -1
  br i1 %45, label %46, label %164

46:                                               ; preds = %41
  %47 = load %struct.mode_map*, %struct.mode_map** %8, align 8
  %48 = getelementptr inbounds %struct.mode_map, %struct.mode_map* %47, i32 0, i32 1
  %49 = load %struct.fb_videomode*, %struct.fb_videomode** %48, align 8
  store %struct.fb_videomode* %49, %struct.fb_videomode** %9, align 8
  %50 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %51 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.fb_videomode*, %struct.fb_videomode** %9, align 8
  %54 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp sgt i64 %52, %55
  br i1 %56, label %65, label %57

57:                                               ; preds = %46
  %58 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %59 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.fb_videomode*, %struct.fb_videomode** %9, align 8
  %62 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp sgt i64 %60, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %57, %46
  br label %161

66:                                               ; preds = %57
  %67 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %68 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.fb_videomode*, %struct.fb_videomode** %9, align 8
  %71 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp sgt i64 %69, %72
  br i1 %73, label %82, label %74

74:                                               ; preds = %66
  %75 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %76 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %75, i32 0, i32 4
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.fb_videomode*, %struct.fb_videomode** %9, align 8
  %79 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = icmp sgt i64 %77, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %74, %66
  br label %161

83:                                               ; preds = %74
  %84 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %85 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %84, i32 0, i32 5
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.fb_videomode*, %struct.fb_videomode** %9, align 8
  %88 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = icmp sgt i64 %86, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %83
  br label %161

92:                                               ; preds = %83
  %93 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %94 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %93, i32 0, i32 6
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @FB_VMODE_MASK, align 4
  %97 = and i32 %95, %96
  %98 = load %struct.fb_videomode*, %struct.fb_videomode** %9, align 8
  %99 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 8
  %101 = icmp ne i32 %97, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %92
  br label %161

103:                                              ; preds = %92
  %104 = load %struct.mode_map*, %struct.mode_map** %8, align 8
  %105 = getelementptr inbounds %struct.mode_map, %struct.mode_map* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32*, i32** %6, align 8
  store i32 %106, i32* %107, align 4
  %108 = load %struct.mode_map*, %struct.mode_map** %8, align 8
  %109 = getelementptr inbounds %struct.mode_map, %struct.mode_map* %108, i32 1
  store %struct.mode_map* %109, %struct.mode_map** %8, align 8
  br label %110

110:                                              ; preds = %153, %152, %103
  %111 = load %struct.mode_map*, %struct.mode_map** %8, align 8
  %112 = getelementptr inbounds %struct.mode_map, %struct.mode_map* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = icmp ne i32 %113, -1
  br i1 %114, label %115, label %160

115:                                              ; preds = %110
  %116 = load %struct.mode_map*, %struct.mode_map** %8, align 8
  %117 = getelementptr inbounds %struct.mode_map, %struct.mode_map* %116, i32 0, i32 1
  %118 = load %struct.fb_videomode*, %struct.fb_videomode** %117, align 8
  store %struct.fb_videomode* %118, %struct.fb_videomode** %10, align 8
  %119 = load %struct.fb_videomode*, %struct.fb_videomode** %9, align 8
  %120 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.fb_videomode*, %struct.fb_videomode** %10, align 8
  %123 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %121, %124
  br i1 %125, label %134, label %126

126:                                              ; preds = %115
  %127 = load %struct.fb_videomode*, %struct.fb_videomode** %9, align 8
  %128 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = load %struct.fb_videomode*, %struct.fb_videomode** %10, align 8
  %131 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %129, %132
  br i1 %133, label %134, label %135

134:                                              ; preds = %126, %115
  br label %160

135:                                              ; preds = %126
  %136 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %137 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %136, i32 0, i32 5
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.fb_videomode*, %struct.fb_videomode** %9, align 8
  %140 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %139, i32 0, i32 2
  %141 = load i64, i64* %140, align 8
  %142 = icmp sgt i64 %138, %141
  br i1 %142, label %143, label %144

143:                                              ; preds = %135
  br label %160

144:                                              ; preds = %135
  %145 = load %struct.fb_videomode*, %struct.fb_videomode** %9, align 8
  %146 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.fb_videomode*, %struct.fb_videomode** %10, align 8
  %149 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 8
  %151 = icmp ne i32 %147, %150
  br i1 %151, label %152, label %153

152:                                              ; preds = %144
  br label %110

153:                                              ; preds = %144
  %154 = load %struct.mode_map*, %struct.mode_map** %8, align 8
  %155 = getelementptr inbounds %struct.mode_map, %struct.mode_map* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = load i32*, i32** %6, align 8
  store i32 %156, i32* %157, align 4
  %158 = load %struct.mode_map*, %struct.mode_map** %8, align 8
  %159 = getelementptr inbounds %struct.mode_map, %struct.mode_map* %158, i32 1
  store %struct.mode_map* %159, %struct.mode_map** %8, align 8
  br label %110

160:                                              ; preds = %143, %134, %110
  store i32 0, i32* %4, align 4
  br label %167

161:                                              ; preds = %102, %91, %82, %65
  %162 = load %struct.mode_map*, %struct.mode_map** %8, align 8
  %163 = getelementptr inbounds %struct.mode_map, %struct.mode_map* %162, i32 1
  store %struct.mode_map* %163, %struct.mode_map** %8, align 8
  br label %41

164:                                              ; preds = %41
  %165 = load i32, i32* @EINVAL, align 4
  %166 = sub nsw i32 0, %165
  store i32 %166, i32* %4, align 4
  br label %167

167:                                              ; preds = %164, %160, %34
  %168 = load i32, i32* %4, align 4
  ret i32 %168
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
