; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_sm501fb.c_sm501fb_check_var.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_sm501fb.c_sm501fb_check_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.fb_info = type { %struct.sm501fb_par* }
%struct.sm501fb_par = type { %struct.sm501fb_info* }
%struct.sm501fb_info = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@SM501_FBPD_SWAP_FB_ENDIAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_var_screeninfo*, %struct.fb_info*)* @sm501fb_check_var to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sm501fb_check_var(%struct.fb_var_screeninfo* %0, %struct.fb_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fb_var_screeninfo*, align 8
  %5 = alloca %struct.fb_info*, align 8
  %6 = alloca %struct.sm501fb_par*, align 8
  %7 = alloca %struct.sm501fb_info*, align 8
  %8 = alloca i64, align 8
  store %struct.fb_var_screeninfo* %0, %struct.fb_var_screeninfo** %4, align 8
  store %struct.fb_info* %1, %struct.fb_info** %5, align 8
  %9 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %10 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %9, i32 0, i32 0
  %11 = load %struct.sm501fb_par*, %struct.sm501fb_par** %10, align 8
  store %struct.sm501fb_par* %11, %struct.sm501fb_par** %6, align 8
  %12 = load %struct.sm501fb_par*, %struct.sm501fb_par** %6, align 8
  %13 = getelementptr inbounds %struct.sm501fb_par, %struct.sm501fb_par* %12, i32 0, i32 0
  %14 = load %struct.sm501fb_info*, %struct.sm501fb_info** %13, align 8
  store %struct.sm501fb_info* %14, %struct.sm501fb_info** %7, align 8
  %15 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %16 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp sgt i32 %17, 255
  br i1 %18, label %24, label %19

19:                                               ; preds = %2
  %20 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %21 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp sgt i32 %22, 63
  br i1 %23, label %24, label %27

24:                                               ; preds = %19, %2
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %252

27:                                               ; preds = %19
  %28 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %29 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %32 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %30, %33
  %35 = icmp sgt i32 %34, 4096
  br i1 %35, label %36, label %39

36:                                               ; preds = %27
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %252

39:                                               ; preds = %27
  %40 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %41 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %44 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %43, i32 0, i32 5
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %42, %45
  %47 = icmp sgt i32 %46, 2048
  br i1 %47, label %48, label %51

48:                                               ; preds = %39
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %252

51:                                               ; preds = %39
  %52 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %53 = call i32 @h_total(%struct.fb_var_screeninfo* %52)
  %54 = icmp sgt i32 %53, 4096
  br i1 %54, label %59, label %55

55:                                               ; preds = %51
  %56 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %57 = call i32 @v_total(%struct.fb_var_screeninfo* %56)
  %58 = icmp sgt i32 %57, 2048
  br i1 %58, label %59, label %62

59:                                               ; preds = %55, %51
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %3, align 4
  br label %252

62:                                               ; preds = %55
  %63 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %64 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %67 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %66, i32 0, i32 6
  %68 = load i32, i32* %67, align 4
  %69 = mul nsw i32 %65, %68
  %70 = sdiv i32 %69, 8
  %71 = sext i32 %70 to i64
  store i64 %71, i64* %8, align 8
  %72 = load i64, i64* %8, align 8
  %73 = and i64 %72, 15
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %62
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %3, align 4
  br label %252

78:                                               ; preds = %62
  %79 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %80 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %79, i32 0, i32 7
  %81 = load i32, i32* %80, align 4
  %82 = icmp sgt i32 %81, 4096
  br i1 %82, label %88, label %83

83:                                               ; preds = %78
  %84 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %85 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %84, i32 0, i32 8
  %86 = load i32, i32* %85, align 4
  %87 = icmp sgt i32 %86, 2048
  br i1 %87, label %88, label %91

88:                                               ; preds = %83, %78
  %89 = load i32, i32* @EINVAL, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %3, align 4
  br label %252

91:                                               ; preds = %83
  %92 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %93 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %92, i32 0, i32 6
  %94 = load i32, i32* %93, align 4
  %95 = icmp sle i32 %94, 8
  br i1 %95, label %96, label %99

96:                                               ; preds = %91
  %97 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %98 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %97, i32 0, i32 6
  store i32 8, i32* %98, align 4
  br label %117

99:                                               ; preds = %91
  %100 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %101 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %100, i32 0, i32 6
  %102 = load i32, i32* %101, align 4
  %103 = icmp sle i32 %102, 16
  br i1 %103, label %104, label %107

104:                                              ; preds = %99
  %105 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %106 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %105, i32 0, i32 6
  store i32 16, i32* %106, align 4
  br label %116

107:                                              ; preds = %99
  %108 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %109 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %108, i32 0, i32 6
  %110 = load i32, i32* %109, align 4
  %111 = icmp eq i32 %110, 24
  br i1 %111, label %112, label %115

112:                                              ; preds = %107
  %113 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %114 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %113, i32 0, i32 6
  store i32 32, i32* %114, align 4
  br label %115

115:                                              ; preds = %112, %107
  br label %116

116:                                              ; preds = %115, %104
  br label %117

117:                                              ; preds = %116, %96
  %118 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %119 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %118, i32 0, i32 6
  %120 = load i32, i32* %119, align 4
  switch i32 %120, label %248 [
    i32 8, label %121
    i32 16, label %155
    i32 32, label %200
  ]

121:                                              ; preds = %117
  %122 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %123 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %122, i32 0, i32 6
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %126 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %125, i32 0, i32 12
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 0
  store i32 %124, i32* %127, align 4
  %128 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %129 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %128, i32 0, i32 12
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 1
  store i32 0, i32* %130, align 4
  %131 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %132 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %131, i32 0, i32 6
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %135 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %134, i32 0, i32 11
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 0
  store i32 %133, i32* %136, align 4
  %137 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %138 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %137, i32 0, i32 11
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 1
  store i32 0, i32* %139, align 4
  %140 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %141 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %140, i32 0, i32 6
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %144 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %143, i32 0, i32 10
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 0
  store i32 %142, i32* %145, align 4
  %146 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %147 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %146, i32 0, i32 10
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %147, i32 0, i32 1
  store i32 0, i32* %148, align 4
  %149 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %150 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %149, i32 0, i32 9
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i32 0, i32 1
  store i32 0, i32* %151, align 4
  %152 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %153 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %152, i32 0, i32 9
  %154 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %153, i32 0, i32 0
  store i32 0, i32* %154, align 4
  br label %251

155:                                              ; preds = %117
  %156 = load %struct.sm501fb_info*, %struct.sm501fb_info** %7, align 8
  %157 = getelementptr inbounds %struct.sm501fb_info, %struct.sm501fb_info* %156, i32 0, i32 0
  %158 = load %struct.TYPE_6__*, %struct.TYPE_6__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* @SM501_FBPD_SWAP_FB_ENDIAN, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %174

164:                                              ; preds = %155
  %165 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %166 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %165, i32 0, i32 10
  %167 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %166, i32 0, i32 1
  store i32 11, i32* %167, align 4
  %168 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %169 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %168, i32 0, i32 11
  %170 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %169, i32 0, i32 1
  store i32 5, i32* %170, align 4
  %171 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %172 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %171, i32 0, i32 12
  %173 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %172, i32 0, i32 1
  store i32 0, i32* %173, align 4
  br label %184

174:                                              ; preds = %155
  %175 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %176 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %175, i32 0, i32 12
  %177 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %176, i32 0, i32 1
  store i32 11, i32* %177, align 4
  %178 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %179 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %178, i32 0, i32 11
  %180 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %179, i32 0, i32 1
  store i32 5, i32* %180, align 4
  %181 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %182 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %181, i32 0, i32 10
  %183 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %182, i32 0, i32 1
  store i32 0, i32* %183, align 4
  br label %184

184:                                              ; preds = %174, %164
  %185 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %186 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %185, i32 0, i32 9
  %187 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %186, i32 0, i32 0
  store i32 0, i32* %187, align 4
  %188 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %189 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %188, i32 0, i32 12
  %190 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %189, i32 0, i32 0
  store i32 5, i32* %190, align 4
  %191 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %192 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %191, i32 0, i32 11
  %193 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %192, i32 0, i32 0
  store i32 6, i32* %193, align 4
  %194 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %195 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %194, i32 0, i32 10
  %196 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %195, i32 0, i32 0
  store i32 5, i32* %196, align 4
  %197 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %198 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %197, i32 0, i32 9
  %199 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %198, i32 0, i32 1
  store i32 0, i32* %199, align 4
  br label %251

200:                                              ; preds = %117
  %201 = load %struct.sm501fb_info*, %struct.sm501fb_info** %7, align 8
  %202 = getelementptr inbounds %struct.sm501fb_info, %struct.sm501fb_info* %201, i32 0, i32 0
  %203 = load %struct.TYPE_6__*, %struct.TYPE_6__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = load i32, i32* @SM501_FBPD_SWAP_FB_ENDIAN, align 4
  %207 = and i32 %205, %206
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %222

209:                                              ; preds = %200
  %210 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %211 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %210, i32 0, i32 9
  %212 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %211, i32 0, i32 0
  store i32 0, i32* %212, align 4
  %213 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %214 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %213, i32 0, i32 12
  %215 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %214, i32 0, i32 1
  store i32 8, i32* %215, align 4
  %216 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %217 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %216, i32 0, i32 11
  %218 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %217, i32 0, i32 1
  store i32 16, i32* %218, align 4
  %219 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %220 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %219, i32 0, i32 10
  %221 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %220, i32 0, i32 1
  store i32 24, i32* %221, align 4
  br label %235

222:                                              ; preds = %200
  %223 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %224 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %223, i32 0, i32 9
  %225 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %224, i32 0, i32 0
  store i32 24, i32* %225, align 4
  %226 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %227 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %226, i32 0, i32 12
  %228 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %227, i32 0, i32 1
  store i32 16, i32* %228, align 4
  %229 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %230 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %229, i32 0, i32 11
  %231 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %230, i32 0, i32 1
  store i32 8, i32* %231, align 4
  %232 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %233 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %232, i32 0, i32 10
  %234 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %233, i32 0, i32 1
  store i32 0, i32* %234, align 4
  br label %235

235:                                              ; preds = %222, %209
  %236 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %237 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %236, i32 0, i32 12
  %238 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %237, i32 0, i32 0
  store i32 8, i32* %238, align 4
  %239 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %240 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %239, i32 0, i32 11
  %241 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %240, i32 0, i32 0
  store i32 8, i32* %241, align 4
  %242 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %243 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %242, i32 0, i32 10
  %244 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %243, i32 0, i32 0
  store i32 8, i32* %244, align 4
  %245 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %246 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %245, i32 0, i32 9
  %247 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %246, i32 0, i32 1
  store i32 0, i32* %247, align 4
  br label %251

248:                                              ; preds = %117
  %249 = load i32, i32* @EINVAL, align 4
  %250 = sub nsw i32 0, %249
  store i32 %250, i32* %3, align 4
  br label %252

251:                                              ; preds = %235, %184, %121
  store i32 0, i32* %3, align 4
  br label %252

252:                                              ; preds = %251, %248, %88, %75, %59, %48, %36, %24
  %253 = load i32, i32* %3, align 4
  ret i32 %253
}

declare dso_local i32 @h_total(%struct.fb_var_screeninfo*) #1

declare dso_local i32 @v_total(%struct.fb_var_screeninfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
