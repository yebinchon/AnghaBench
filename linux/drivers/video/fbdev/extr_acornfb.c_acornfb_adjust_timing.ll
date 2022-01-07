; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_acornfb.c_acornfb_adjust_timing.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_acornfb.c_acornfb_adjust_timing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64, i64 }
%struct.fb_info = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64 }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }

@current_par = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@EINVAL = common dso_local global i32 0, align 4
@FB_ACCELF_TEXT = common dso_local global i32 0, align 4
@FB_VMODE_YWRAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*, %struct.fb_var_screeninfo*, i32)* @acornfb_adjust_timing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acornfb_adjust_timing(%struct.fb_info* %0, %struct.fb_var_screeninfo* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.fb_info*, align 8
  %6 = alloca %struct.fb_var_screeninfo*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %5, align 8
  store %struct.fb_var_screeninfo* %1, %struct.fb_var_screeninfo** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %6, align 8
  %14 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = add nsw i32 %15, 1
  %17 = and i32 %16, -2
  %18 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %6, align 8
  %19 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %6, align 8
  %21 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %6, align 8
  %24 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %6, align 8
  %26 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %25, i32 0, i32 12
  store i64 0, i64* %26, align 8
  %27 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @current_par, i32 0, i32 2), align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %3
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @current_par, i32 0, i32 0), align 8
  %31 = mul nsw i32 %30, 2
  store i32 %31, i32* %9, align 4
  br label %33

32:                                               ; preds = %3
  store i32 16, i32* %9, align 4
  br label %33

33:                                               ; preds = %32, %29
  %34 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %6, align 8
  %35 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %6, align 8
  %38 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = mul nsw i32 %36, %39
  %41 = load i32, i32* %7, align 4
  %42 = mul nsw i32 %40, %41
  %43 = sdiv i32 %42, 8
  store i32 %43, i32* %8, align 4
  %44 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %6, align 8
  %45 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %6, align 8
  %48 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = mul nsw i32 %46, %49
  %51 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %6, align 8
  %52 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = mul nsw i32 %50, %53
  %55 = sdiv i32 %54, 8
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %10, align 4
  %57 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %58 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp sgt i32 %56, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %33
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %4, align 4
  br label %213

65:                                               ; preds = %33
  %66 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %67 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  store i32 %69, i32* %11, align 4
  br label %70

70:                                               ; preds = %85, %65
  %71 = load i32, i32* %11, align 4
  %72 = load i32, i32* %8, align 4
  %73 = sdiv i32 %71, %72
  store i32 %73, i32* %12, align 4
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* %11, align 4
  %76 = icmp sle i32 %74, %75
  br i1 %76, label %77, label %89

77:                                               ; preds = %70
  %78 = load i32, i32* %12, align 4
  %79 = load i32, i32* %8, align 4
  %80 = mul nsw i32 %78, %79
  %81 = load i32, i32* %11, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %77
  br label %89

84:                                               ; preds = %77
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %9, align 4
  %87 = load i32, i32* %11, align 4
  %88 = sub nsw i32 %87, %86
  store i32 %88, i32* %11, align 4
  br label %70

89:                                               ; preds = %83, %70
  %90 = load i32, i32* %7, align 4
  %91 = load i32, i32* %12, align 4
  %92 = mul nsw i32 %91, %90
  store i32 %92, i32* %12, align 4
  %93 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %6, align 8
  %94 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @FB_ACCELF_TEXT, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %120

99:                                               ; preds = %89
  %100 = load i32, i32* %10, align 4
  %101 = load i32, i32* %11, align 4
  %102 = icmp sgt i32 %100, %101
  br i1 %102, label %103, label %115

103:                                              ; preds = %99
  %104 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %105 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  store i32 %107, i32* %11, align 4
  %108 = load i32, i32* %11, align 4
  %109 = load i32, i32* %8, align 4
  %110 = load i32, i32* %7, align 4
  %111 = sdiv i32 %109, %110
  %112 = sdiv i32 %108, %111
  %113 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %6, align 8
  %114 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %113, i32 0, i32 5
  store i32 %112, i32* %114, align 4
  br label %119

115:                                              ; preds = %99
  %116 = load i32, i32* %12, align 4
  %117 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %6, align 8
  %118 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %117, i32 0, i32 5
  store i32 %116, i32* %118, align 4
  br label %119

119:                                              ; preds = %115, %103
  br label %131

120:                                              ; preds = %89
  %121 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %6, align 8
  %122 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %121, i32 0, i32 5
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* %12, align 4
  %125 = icmp sgt i32 %123, %124
  br i1 %125, label %126, label %130

126:                                              ; preds = %120
  %127 = load i32, i32* %12, align 4
  %128 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %6, align 8
  %129 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %128, i32 0, i32 5
  store i32 %127, i32* %129, align 4
  br label %130

130:                                              ; preds = %126, %120
  br label %131

131:                                              ; preds = %130, %119
  %132 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %133 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = load i32, i32* %11, align 4
  %137 = sext i32 %136 to i64
  %138 = add nsw i64 %135, %137
  store i64 %138, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @current_par, i32 0, i32 1), align 8
  %139 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %6, align 8
  %140 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %6, align 8
  %143 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %142, i32 0, i32 5
  %144 = load i32, i32* %143, align 4
  %145 = icmp sgt i32 %141, %144
  br i1 %145, label %146, label %152

146:                                              ; preds = %131
  %147 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %6, align 8
  %148 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %147, i32 0, i32 5
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %6, align 8
  %151 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %150, i32 0, i32 3
  store i32 %149, i32* %151, align 4
  br label %152

152:                                              ; preds = %146, %131
  %153 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %6, align 8
  %154 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %153, i32 0, i32 6
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* @FB_VMODE_YWRAP, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %174

159:                                              ; preds = %152
  %160 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %6, align 8
  %161 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %160, i32 0, i32 7
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %6, align 8
  %164 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %163, i32 0, i32 5
  %165 = load i32, i32* %164, align 4
  %166 = icmp sgt i32 %162, %165
  br i1 %166, label %167, label %173

167:                                              ; preds = %159
  %168 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %6, align 8
  %169 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %168, i32 0, i32 5
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %6, align 8
  %172 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %171, i32 0, i32 7
  store i32 %170, i32* %172, align 4
  br label %173

173:                                              ; preds = %167, %159
  br label %197

174:                                              ; preds = %152
  %175 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %6, align 8
  %176 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %175, i32 0, i32 7
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %6, align 8
  %179 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %178, i32 0, i32 3
  %180 = load i32, i32* %179, align 4
  %181 = add nsw i32 %177, %180
  %182 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %6, align 8
  %183 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %182, i32 0, i32 5
  %184 = load i32, i32* %183, align 4
  %185 = icmp sgt i32 %181, %184
  br i1 %185, label %186, label %196

186:                                              ; preds = %174
  %187 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %6, align 8
  %188 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %187, i32 0, i32 5
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %6, align 8
  %191 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %190, i32 0, i32 3
  %192 = load i32, i32* %191, align 4
  %193 = sub nsw i32 %189, %192
  %194 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %6, align 8
  %195 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %194, i32 0, i32 7
  store i32 %193, i32* %195, align 4
  br label %196

196:                                              ; preds = %186, %174
  br label %197

197:                                              ; preds = %196, %173
  %198 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %6, align 8
  %199 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %198, i32 0, i32 8
  %200 = load i32, i32* %199, align 8
  %201 = add nsw i32 %200, 1
  %202 = and i32 %201, -2
  %203 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %6, align 8
  %204 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %203, i32 0, i32 8
  store i32 %202, i32* %204, align 8
  %205 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %6, align 8
  %206 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %205, i32 0, i32 11
  %207 = load i32, i32* %206, align 4
  %208 = icmp slt i32 %207, 1
  br i1 %208, label %209, label %212

209:                                              ; preds = %197
  %210 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %6, align 8
  %211 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %210, i32 0, i32 11
  store i32 1, i32* %211, align 4
  br label %212

212:                                              ; preds = %209, %197
  store i32 0, i32* %4, align 4
  br label %213

213:                                              ; preds = %212, %62
  %214 = load i32, i32* %4, align 4
  ret i32 %214
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
