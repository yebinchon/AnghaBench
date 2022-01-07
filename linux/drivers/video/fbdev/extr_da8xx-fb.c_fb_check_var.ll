; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_da8xx-fb.c_fb_check_var.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_da8xx-fb.c_fb_check_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_var_screeninfo = type { i32, i32, i64, i64, i32, i32, i64, i32, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__, i32 }
%struct.TYPE_8__ = type { i32, i32, i64 }
%struct.TYPE_7__ = type { i32, i64, i32 }
%struct.TYPE_6__ = type { i32, i32, i64 }
%struct.TYPE_5__ = type { i32, i32, i64 }
%struct.fb_info = type { %struct.da8xx_fb_par* }
%struct.da8xx_fb_par = type { i64 }

@lcd_revision = common dso_local global i64 0, align 8
@LCD_VERSION_1 = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@FB_NONSTD_REV_PIX_IN_B = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_var_screeninfo*, %struct.fb_info*)* @fb_check_var to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fb_check_var(%struct.fb_var_screeninfo* %0, %struct.fb_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fb_var_screeninfo*, align 8
  %5 = alloca %struct.fb_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.da8xx_fb_par*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.fb_var_screeninfo* %0, %struct.fb_var_screeninfo** %4, align 8
  store %struct.fb_info* %1, %struct.fb_info** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %11 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %10, i32 0, i32 0
  %12 = load %struct.da8xx_fb_par*, %struct.da8xx_fb_par** %11, align 8
  store %struct.da8xx_fb_par* %12, %struct.da8xx_fb_par** %7, align 8
  %13 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %14 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = ashr i32 %15, 3
  store i32 %16, i32* %8, align 4
  %17 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %18 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %8, align 4
  %21 = mul nsw i32 %19, %20
  %22 = sext i32 %21 to i64
  store i64 %22, i64* %9, align 8
  %23 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %24 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp sgt i32 %25, 16
  br i1 %26, label %27, label %34

27:                                               ; preds = %2
  %28 = load i64, i64* @lcd_revision, align 8
  %29 = load i64, i64* @LCD_VERSION_1, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %282

34:                                               ; preds = %27, %2
  %35 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %36 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  switch i32 %37, label %168 [
    i32 1, label %38
    i32 8, label %38
    i32 4, label %65
    i32 16, label %93
    i32 24, label %120
    i32 32, label %141
  ]

38:                                               ; preds = %34, %34
  %39 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %40 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %39, i32 0, i32 11
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  store i32 0, i32* %41, align 8
  %42 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %43 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %42, i32 0, i32 11
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  store i32 8, i32* %44, align 4
  %45 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %46 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %45, i32 0, i32 10
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  store i32 0, i32* %47, align 8
  %48 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %49 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %48, i32 0, i32 10
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  store i32 8, i32* %50, align 4
  %51 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %52 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %51, i32 0, i32 9
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 2
  store i32 0, i32* %53, align 8
  %54 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %55 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %54, i32 0, i32 9
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  store i32 8, i32* %56, align 8
  %57 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %58 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %57, i32 0, i32 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  store i32 0, i32* %59, align 8
  %60 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %61 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %60, i32 0, i32 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 1
  store i32 0, i32* %62, align 4
  %63 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %64 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %63, i32 0, i32 12
  store i32 0, i32* %64, align 8
  br label %171

65:                                               ; preds = %34
  %66 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %67 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %66, i32 0, i32 11
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  store i32 0, i32* %68, align 8
  %69 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %70 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %69, i32 0, i32 11
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 1
  store i32 4, i32* %71, align 4
  %72 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %73 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %72, i32 0, i32 10
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  store i32 0, i32* %74, align 8
  %75 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %76 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %75, i32 0, i32 10
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 1
  store i32 4, i32* %77, align 4
  %78 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %79 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %78, i32 0, i32 9
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 2
  store i32 0, i32* %80, align 8
  %81 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %82 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %81, i32 0, i32 9
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  store i32 4, i32* %83, align 8
  %84 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %85 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %84, i32 0, i32 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  store i32 0, i32* %86, align 8
  %87 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %88 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %87, i32 0, i32 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 1
  store i32 0, i32* %89, align 4
  %90 = load i32, i32* @FB_NONSTD_REV_PIX_IN_B, align 4
  %91 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %92 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %91, i32 0, i32 12
  store i32 %90, i32* %92, align 8
  br label %171

93:                                               ; preds = %34
  %94 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %95 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %94, i32 0, i32 11
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  store i32 11, i32* %96, align 8
  %97 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %98 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %97, i32 0, i32 11
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 1
  store i32 5, i32* %99, align 4
  %100 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %101 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %100, i32 0, i32 10
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  store i32 5, i32* %102, align 8
  %103 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %104 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %103, i32 0, i32 10
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 1
  store i32 6, i32* %105, align 4
  %106 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %107 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %106, i32 0, i32 9
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 2
  store i32 0, i32* %108, align 8
  %109 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %110 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %109, i32 0, i32 9
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 0
  store i32 5, i32* %111, align 8
  %112 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %113 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %112, i32 0, i32 8
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 0
  store i32 0, i32* %114, align 8
  %115 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %116 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %115, i32 0, i32 8
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 1
  store i32 0, i32* %117, align 4
  %118 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %119 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %118, i32 0, i32 12
  store i32 0, i32* %119, align 8
  br label %171

120:                                              ; preds = %34
  %121 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %122 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %121, i32 0, i32 11
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 0
  store i32 16, i32* %123, align 8
  %124 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %125 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %124, i32 0, i32 11
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 1
  store i32 8, i32* %126, align 4
  %127 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %128 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %127, i32 0, i32 10
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 0
  store i32 8, i32* %129, align 8
  %130 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %131 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %130, i32 0, i32 10
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 1
  store i32 8, i32* %132, align 4
  %133 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %134 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %133, i32 0, i32 9
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 2
  store i32 0, i32* %135, align 8
  %136 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %137 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %136, i32 0, i32 9
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 0
  store i32 8, i32* %138, align 8
  %139 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %140 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %139, i32 0, i32 12
  store i32 0, i32* %140, align 8
  br label %171

141:                                              ; preds = %34
  %142 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %143 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %142, i32 0, i32 8
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 0
  store i32 24, i32* %144, align 8
  %145 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %146 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %145, i32 0, i32 8
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 1
  store i32 8, i32* %147, align 4
  %148 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %149 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %148, i32 0, i32 11
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i32 0, i32 0
  store i32 16, i32* %150, align 8
  %151 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %152 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %151, i32 0, i32 11
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 1
  store i32 8, i32* %153, align 4
  %154 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %155 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %154, i32 0, i32 10
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 0
  store i32 8, i32* %156, align 8
  %157 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %158 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %157, i32 0, i32 10
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 1
  store i32 8, i32* %159, align 4
  %160 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %161 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %160, i32 0, i32 9
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i32 0, i32 2
  store i32 0, i32* %162, align 8
  %163 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %164 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %163, i32 0, i32 9
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i32 0, i32 0
  store i32 8, i32* %165, align 8
  %166 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %167 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %166, i32 0, i32 12
  store i32 0, i32* %167, align 8
  br label %171

168:                                              ; preds = %34
  %169 = load i32, i32* @EINVAL, align 4
  %170 = sub nsw i32 0, %169
  store i32 %170, i32* %6, align 4
  br label %171

171:                                              ; preds = %168, %141, %120, %93, %65, %38
  %172 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %173 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %172, i32 0, i32 11
  %174 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %173, i32 0, i32 2
  store i64 0, i64* %174, align 8
  %175 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %176 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %175, i32 0, i32 10
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i32 0, i32 2
  store i64 0, i64* %177, align 8
  %178 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %179 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %178, i32 0, i32 9
  %180 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %179, i32 0, i32 1
  store i64 0, i64* %180, align 8
  %181 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %182 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %181, i32 0, i32 8
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %182, i32 0, i32 2
  store i64 0, i64* %183, align 8
  %184 = load i64, i64* %9, align 8
  %185 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %186 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %185, i32 0, i32 2
  %187 = load i64, i64* %186, align 8
  %188 = mul i64 %184, %187
  %189 = load %struct.da8xx_fb_par*, %struct.da8xx_fb_par** %7, align 8
  %190 = getelementptr inbounds %struct.da8xx_fb_par, %struct.da8xx_fb_par* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = icmp ugt i64 %188, %191
  br i1 %192, label %193, label %201

193:                                              ; preds = %171
  %194 = load %struct.da8xx_fb_par*, %struct.da8xx_fb_par** %7, align 8
  %195 = getelementptr inbounds %struct.da8xx_fb_par, %struct.da8xx_fb_par* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = load i64, i64* %9, align 8
  %198 = udiv i64 %196, %197
  %199 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %200 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %199, i32 0, i32 2
  store i64 %198, i64* %200, align 8
  br label %201

201:                                              ; preds = %193, %171
  %202 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %203 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %202, i32 0, i32 3
  %204 = load i64, i64* %203, align 8
  %205 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %206 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %205, i32 0, i32 2
  %207 = load i64, i64* %206, align 8
  %208 = icmp ugt i64 %204, %207
  br i1 %208, label %209, label %215

209:                                              ; preds = %201
  %210 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %211 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %210, i32 0, i32 2
  %212 = load i64, i64* %211, align 8
  %213 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %214 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %213, i32 0, i32 3
  store i64 %212, i64* %214, align 8
  br label %215

215:                                              ; preds = %209, %201
  %216 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %217 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %216, i32 0, i32 4
  %218 = load i32, i32* %217, align 8
  %219 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %220 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 4
  %222 = icmp sgt i32 %218, %221
  br i1 %222, label %223, label %229

223:                                              ; preds = %215
  %224 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %225 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 4
  %227 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %228 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %227, i32 0, i32 4
  store i32 %226, i32* %228, align 8
  br label %229

229:                                              ; preds = %223, %215
  %230 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %231 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %230, i32 0, i32 4
  %232 = load i32, i32* %231, align 8
  %233 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %234 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %233, i32 0, i32 5
  %235 = load i32, i32* %234, align 4
  %236 = add nsw i32 %232, %235
  %237 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %238 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 4
  %240 = icmp sgt i32 %236, %239
  br i1 %240, label %241, label %251

241:                                              ; preds = %229
  %242 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %243 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %242, i32 0, i32 1
  %244 = load i32, i32* %243, align 4
  %245 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %246 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %245, i32 0, i32 4
  %247 = load i32, i32* %246, align 8
  %248 = sub nsw i32 %244, %247
  %249 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %250 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %249, i32 0, i32 5
  store i32 %248, i32* %250, align 4
  br label %251

251:                                              ; preds = %241, %229
  %252 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %253 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %252, i32 0, i32 3
  %254 = load i64, i64* %253, align 8
  %255 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %256 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %255, i32 0, i32 6
  %257 = load i64, i64* %256, align 8
  %258 = add i64 %254, %257
  %259 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %260 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %259, i32 0, i32 2
  %261 = load i64, i64* %260, align 8
  %262 = icmp ugt i64 %258, %261
  br i1 %262, label %263, label %273

263:                                              ; preds = %251
  %264 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %265 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %264, i32 0, i32 2
  %266 = load i64, i64* %265, align 8
  %267 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %268 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %267, i32 0, i32 3
  %269 = load i64, i64* %268, align 8
  %270 = sub i64 %266, %269
  %271 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %272 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %271, i32 0, i32 6
  store i64 %270, i64* %272, align 8
  br label %273

273:                                              ; preds = %263, %251
  %274 = load %struct.da8xx_fb_par*, %struct.da8xx_fb_par** %7, align 8
  %275 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %276 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %275, i32 0, i32 7
  %277 = load i32, i32* %276, align 8
  %278 = call i32 @da8xx_fb_round_clk(%struct.da8xx_fb_par* %274, i32 %277)
  %279 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %280 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %279, i32 0, i32 7
  store i32 %278, i32* %280, align 8
  %281 = load i32, i32* %6, align 4
  store i32 %281, i32* %3, align 4
  br label %282

282:                                              ; preds = %273, %31
  %283 = load i32, i32* %3, align 4
  ret i32 %283
}

declare dso_local i32 @da8xx_fb_round_clk(%struct.da8xx_fb_par*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
