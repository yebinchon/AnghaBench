; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_pxa168fb.c_determine_best_pix_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_pxa168fb.c_determine_best_pix_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_var_screeninfo = type { i32, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32, i64 }
%struct.TYPE_7__ = type { i32, i64 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@PIX_FMT_PSEUDOCOLOR = common dso_local global i32 0, align 4
@PIX_FMT_RGB565 = common dso_local global i32 0, align 4
@PIX_FMT_BGR565 = common dso_local global i32 0, align 4
@PIX_FMT_RGB1555 = common dso_local global i32 0, align 4
@PIX_FMT_BGR1555 = common dso_local global i32 0, align 4
@PIX_FMT_RGB888PACK = common dso_local global i32 0, align 4
@PIX_FMT_BGR888PACK = common dso_local global i32 0, align 4
@PIX_FMT_RGBA888 = common dso_local global i32 0, align 4
@PIX_FMT_BGRA888 = common dso_local global i32 0, align 4
@PIX_FMT_RGB888UNPACK = common dso_local global i32 0, align 4
@PIX_FMT_BGR888UNPACK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_var_screeninfo*)* @determine_best_pix_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @determine_best_pix_fmt(%struct.fb_var_screeninfo* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fb_var_screeninfo*, align 8
  store %struct.fb_var_screeninfo* %0, %struct.fb_var_screeninfo** %3, align 8
  %4 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %5 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = icmp eq i32 %6, 8
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load i32, i32* @PIX_FMT_PSEUDOCOLOR, align 4
  store i32 %9, i32* %2, align 4
  br label %170

10:                                               ; preds = %1
  %11 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %12 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp eq i32 %13, 16
  br i1 %14, label %15, label %80

15:                                               ; preds = %10
  %16 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %17 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp sle i32 %19, 5
  br i1 %20, label %21, label %80

21:                                               ; preds = %15
  %22 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %23 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %22, i32 0, i32 4
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp sle i32 %25, 6
  br i1 %26, label %27, label %80

27:                                               ; preds = %21
  %28 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %29 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp sle i32 %31, 5
  br i1 %32, label %33, label %80

33:                                               ; preds = %27
  %34 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %35 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %53

39:                                               ; preds = %33
  %40 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %41 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %45 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp sge i64 %43, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %39
  %50 = load i32, i32* @PIX_FMT_RGB565, align 4
  store i32 %50, i32* %2, align 4
  br label %170

51:                                               ; preds = %39
  %52 = load i32, i32* @PIX_FMT_BGR565, align 4
  store i32 %52, i32* %2, align 4
  br label %170

53:                                               ; preds = %33
  %54 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %55 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %54, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp eq i32 %57, 1
  br i1 %58, label %59, label %79

59:                                               ; preds = %53
  %60 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %61 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %60, i32 0, i32 4
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = icmp sle i32 %63, 5
  br i1 %64, label %65, label %79

65:                                               ; preds = %59
  %66 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %67 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %71 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = icmp sge i64 %69, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %65
  %76 = load i32, i32* @PIX_FMT_RGB1555, align 4
  store i32 %76, i32* %2, align 4
  br label %170

77:                                               ; preds = %65
  %78 = load i32, i32* @PIX_FMT_BGR1555, align 4
  store i32 %78, i32* %2, align 4
  br label %170

79:                                               ; preds = %59, %53
  br label %80

80:                                               ; preds = %79, %27, %21, %15, %10
  %81 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %82 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = icmp sle i32 %83, 32
  br i1 %84, label %85, label %167

85:                                               ; preds = %80
  %86 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %87 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = icmp sle i32 %89, 8
  br i1 %90, label %91, label %167

91:                                               ; preds = %85
  %92 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %93 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %92, i32 0, i32 4
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = icmp sle i32 %95, 8
  br i1 %96, label %97, label %167

97:                                               ; preds = %91
  %98 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %99 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = icmp sle i32 %101, 8
  br i1 %102, label %103, label %167

103:                                              ; preds = %97
  %104 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %105 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = icmp eq i32 %106, 24
  br i1 %107, label %108, label %128

108:                                              ; preds = %103
  %109 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %110 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %109, i32 0, i32 3
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %128

114:                                              ; preds = %108
  %115 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %116 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %120 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = icmp sge i64 %118, %122
  br i1 %123, label %124, label %126

124:                                              ; preds = %114
  %125 = load i32, i32* @PIX_FMT_RGB888PACK, align 4
  store i32 %125, i32* %2, align 4
  br label %170

126:                                              ; preds = %114
  %127 = load i32, i32* @PIX_FMT_BGR888PACK, align 4
  store i32 %127, i32* %2, align 4
  br label %170

128:                                              ; preds = %108, %103
  %129 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %130 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = icmp eq i32 %131, 32
  br i1 %132, label %133, label %153

133:                                              ; preds = %128
  %134 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %135 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %134, i32 0, i32 3
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = icmp eq i32 %137, 8
  br i1 %138, label %139, label %153

139:                                              ; preds = %133
  %140 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %141 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %140, i32 0, i32 2
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %145 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = icmp sge i64 %143, %147
  br i1 %148, label %149, label %151

149:                                              ; preds = %139
  %150 = load i32, i32* @PIX_FMT_RGBA888, align 4
  store i32 %150, i32* %2, align 4
  br label %170

151:                                              ; preds = %139
  %152 = load i32, i32* @PIX_FMT_BGRA888, align 4
  store i32 %152, i32* %2, align 4
  br label %170

153:                                              ; preds = %133, %128
  %154 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %155 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %154, i32 0, i32 2
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %159 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = icmp sge i64 %157, %161
  br i1 %162, label %163, label %165

163:                                              ; preds = %153
  %164 = load i32, i32* @PIX_FMT_RGB888UNPACK, align 4
  store i32 %164, i32* %2, align 4
  br label %170

165:                                              ; preds = %153
  %166 = load i32, i32* @PIX_FMT_BGR888UNPACK, align 4
  store i32 %166, i32* %2, align 4
  br label %170

167:                                              ; preds = %97, %91, %85, %80
  %168 = load i32, i32* @EINVAL, align 4
  %169 = sub nsw i32 0, %168
  store i32 %169, i32* %2, align 4
  br label %170

170:                                              ; preds = %167, %165, %163, %151, %149, %126, %124, %77, %75, %51, %49, %8
  %171 = load i32, i32* %2, align 4
  ret i32 %171
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
