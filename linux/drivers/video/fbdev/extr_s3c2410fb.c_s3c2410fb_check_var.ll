; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_s3c2410fb.c_s3c2410fb_check_var.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_s3c2410fb.c_s3c2410fb_check_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_var_screeninfo = type { i64, i64, i64, i64, i64, %struct.TYPE_6__, %struct.TYPE_6__, %struct.TYPE_6__, %struct.TYPE_5__, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i64 }
%struct.TYPE_5__ = type { i64, i64 }
%struct.fb_info = type { %struct.s3c2410fb_info* }
%struct.s3c2410fb_info = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.s3c2410fb_mach_info = type { i32, %struct.s3c2410fb_display*, i32 }
%struct.s3c2410fb_display = type { i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"check_var(var=%p, info=%p)\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"wrong resolution or depth %dx%d at %d bpp\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@S3C2410_LCDCON1_TFT = common dso_local global i32 0, align 4
@S3C2410_LCDCON5_FRM565 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_var_screeninfo*, %struct.fb_info*)* @s3c2410fb_check_var to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c2410fb_check_var(%struct.fb_var_screeninfo* %0, %struct.fb_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fb_var_screeninfo*, align 8
  %5 = alloca %struct.fb_info*, align 8
  %6 = alloca %struct.s3c2410fb_info*, align 8
  %7 = alloca %struct.s3c2410fb_mach_info*, align 8
  %8 = alloca %struct.s3c2410fb_display*, align 8
  %9 = alloca %struct.s3c2410fb_display*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.fb_var_screeninfo* %0, %struct.fb_var_screeninfo** %4, align 8
  store %struct.fb_info* %1, %struct.fb_info** %5, align 8
  %12 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %13 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %12, i32 0, i32 0
  %14 = load %struct.s3c2410fb_info*, %struct.s3c2410fb_info** %13, align 8
  store %struct.s3c2410fb_info* %14, %struct.s3c2410fb_info** %6, align 8
  %15 = load %struct.s3c2410fb_info*, %struct.s3c2410fb_info** %6, align 8
  %16 = getelementptr inbounds %struct.s3c2410fb_info, %struct.s3c2410fb_info* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.s3c2410fb_mach_info* @dev_get_platdata(i32 %17)
  store %struct.s3c2410fb_mach_info* %18, %struct.s3c2410fb_mach_info** %7, align 8
  store %struct.s3c2410fb_display* null, %struct.s3c2410fb_display** %8, align 8
  %19 = load %struct.s3c2410fb_mach_info*, %struct.s3c2410fb_mach_info** %7, align 8
  %20 = getelementptr inbounds %struct.s3c2410fb_mach_info, %struct.s3c2410fb_mach_info* %19, i32 0, i32 1
  %21 = load %struct.s3c2410fb_display*, %struct.s3c2410fb_display** %20, align 8
  %22 = load %struct.s3c2410fb_mach_info*, %struct.s3c2410fb_mach_info** %7, align 8
  %23 = getelementptr inbounds %struct.s3c2410fb_mach_info, %struct.s3c2410fb_mach_info* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.s3c2410fb_display, %struct.s3c2410fb_display* %21, i64 %25
  store %struct.s3c2410fb_display* %26, %struct.s3c2410fb_display** %9, align 8
  %27 = load %struct.s3c2410fb_display*, %struct.s3c2410fb_display** %9, align 8
  %28 = getelementptr inbounds %struct.s3c2410fb_display, %struct.s3c2410fb_display* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %10, align 4
  %30 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %31 = ptrtoint %struct.fb_var_screeninfo* %30 to i64
  %32 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %33 = ptrtoint %struct.fb_info* %32 to i64
  %34 = call i32 (i8*, i64, i64, ...) @dprintk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %31, i64 %33)
  %35 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %36 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.s3c2410fb_display*, %struct.s3c2410fb_display** %9, align 8
  %39 = getelementptr inbounds %struct.s3c2410fb_display, %struct.s3c2410fb_display* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %37, %40
  br i1 %41, label %42, label %60

42:                                               ; preds = %2
  %43 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %44 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.s3c2410fb_display*, %struct.s3c2410fb_display** %9, align 8
  %47 = getelementptr inbounds %struct.s3c2410fb_display, %struct.s3c2410fb_display* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = icmp eq i64 %45, %48
  br i1 %49, label %50, label %60

50:                                               ; preds = %42
  %51 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %52 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.s3c2410fb_display*, %struct.s3c2410fb_display** %9, align 8
  %55 = getelementptr inbounds %struct.s3c2410fb_display, %struct.s3c2410fb_display* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = icmp eq i64 %53, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %50
  %59 = load %struct.s3c2410fb_display*, %struct.s3c2410fb_display** %9, align 8
  store %struct.s3c2410fb_display* %59, %struct.s3c2410fb_display** %8, align 8
  br label %129

60:                                               ; preds = %50, %42, %2
  store i32 0, i32* %11, align 4
  br label %61

61:                                               ; preds = %125, %60
  %62 = load i32, i32* %11, align 4
  %63 = load %struct.s3c2410fb_mach_info*, %struct.s3c2410fb_mach_info** %7, align 8
  %64 = getelementptr inbounds %struct.s3c2410fb_mach_info, %struct.s3c2410fb_mach_info* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp ult i32 %62, %65
  br i1 %66, label %67, label %128

67:                                               ; preds = %61
  %68 = load i32, i32* %10, align 4
  %69 = load %struct.s3c2410fb_mach_info*, %struct.s3c2410fb_mach_info** %7, align 8
  %70 = getelementptr inbounds %struct.s3c2410fb_mach_info, %struct.s3c2410fb_mach_info* %69, i32 0, i32 1
  %71 = load %struct.s3c2410fb_display*, %struct.s3c2410fb_display** %70, align 8
  %72 = load i32, i32* %11, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds %struct.s3c2410fb_display, %struct.s3c2410fb_display* %71, i64 %73
  %75 = getelementptr inbounds %struct.s3c2410fb_display, %struct.s3c2410fb_display* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp eq i32 %68, %76
  br i1 %77, label %78, label %124

78:                                               ; preds = %67
  %79 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %80 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.s3c2410fb_mach_info*, %struct.s3c2410fb_mach_info** %7, align 8
  %83 = getelementptr inbounds %struct.s3c2410fb_mach_info, %struct.s3c2410fb_mach_info* %82, i32 0, i32 1
  %84 = load %struct.s3c2410fb_display*, %struct.s3c2410fb_display** %83, align 8
  %85 = load i32, i32* %11, align 4
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds %struct.s3c2410fb_display, %struct.s3c2410fb_display* %84, i64 %86
  %88 = getelementptr inbounds %struct.s3c2410fb_display, %struct.s3c2410fb_display* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = icmp eq i64 %81, %89
  br i1 %90, label %91, label %124

91:                                               ; preds = %78
  %92 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %93 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.s3c2410fb_mach_info*, %struct.s3c2410fb_mach_info** %7, align 8
  %96 = getelementptr inbounds %struct.s3c2410fb_mach_info, %struct.s3c2410fb_mach_info* %95, i32 0, i32 1
  %97 = load %struct.s3c2410fb_display*, %struct.s3c2410fb_display** %96, align 8
  %98 = load i32, i32* %11, align 4
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds %struct.s3c2410fb_display, %struct.s3c2410fb_display* %97, i64 %99
  %101 = getelementptr inbounds %struct.s3c2410fb_display, %struct.s3c2410fb_display* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = icmp eq i64 %94, %102
  br i1 %103, label %104, label %124

104:                                              ; preds = %91
  %105 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %106 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %105, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.s3c2410fb_mach_info*, %struct.s3c2410fb_mach_info** %7, align 8
  %109 = getelementptr inbounds %struct.s3c2410fb_mach_info, %struct.s3c2410fb_mach_info* %108, i32 0, i32 1
  %110 = load %struct.s3c2410fb_display*, %struct.s3c2410fb_display** %109, align 8
  %111 = load i32, i32* %11, align 4
  %112 = zext i32 %111 to i64
  %113 = getelementptr inbounds %struct.s3c2410fb_display, %struct.s3c2410fb_display* %110, i64 %112
  %114 = getelementptr inbounds %struct.s3c2410fb_display, %struct.s3c2410fb_display* %113, i32 0, i32 3
  %115 = load i64, i64* %114, align 8
  %116 = icmp eq i64 %107, %115
  br i1 %116, label %117, label %124

117:                                              ; preds = %104
  %118 = load %struct.s3c2410fb_mach_info*, %struct.s3c2410fb_mach_info** %7, align 8
  %119 = getelementptr inbounds %struct.s3c2410fb_mach_info, %struct.s3c2410fb_mach_info* %118, i32 0, i32 1
  %120 = load %struct.s3c2410fb_display*, %struct.s3c2410fb_display** %119, align 8
  %121 = load i32, i32* %11, align 4
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds %struct.s3c2410fb_display, %struct.s3c2410fb_display* %120, i64 %122
  store %struct.s3c2410fb_display* %123, %struct.s3c2410fb_display** %8, align 8
  br label %128

124:                                              ; preds = %104, %91, %78, %67
  br label %125

125:                                              ; preds = %124
  %126 = load i32, i32* %11, align 4
  %127 = add i32 %126, 1
  store i32 %127, i32* %11, align 4
  br label %61

128:                                              ; preds = %117, %61
  br label %129

129:                                              ; preds = %128, %58
  %130 = load %struct.s3c2410fb_display*, %struct.s3c2410fb_display** %8, align 8
  %131 = icmp ne %struct.s3c2410fb_display* %130, null
  br i1 %131, label %145, label %132

132:                                              ; preds = %129
  %133 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %134 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %137 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %140 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %139, i32 0, i32 2
  %141 = load i64, i64* %140, align 8
  %142 = call i32 (i8*, i64, i64, ...) @dprintk(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i64 %135, i64 %138, i64 %141)
  %143 = load i32, i32* @EINVAL, align 4
  %144 = sub nsw i32 0, %143
  store i32 %144, i32* %3, align 4
  br label %375

145:                                              ; preds = %129
  %146 = load %struct.s3c2410fb_display*, %struct.s3c2410fb_display** %8, align 8
  %147 = getelementptr inbounds %struct.s3c2410fb_display, %struct.s3c2410fb_display* %146, i32 0, i32 2
  %148 = load i64, i64* %147, align 8
  %149 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %150 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %149, i32 0, i32 3
  store i64 %148, i64* %150, align 8
  %151 = load %struct.s3c2410fb_display*, %struct.s3c2410fb_display** %8, align 8
  %152 = getelementptr inbounds %struct.s3c2410fb_display, %struct.s3c2410fb_display* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %155 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %154, i32 0, i32 4
  store i64 %153, i64* %155, align 8
  %156 = load %struct.s3c2410fb_display*, %struct.s3c2410fb_display** %8, align 8
  %157 = getelementptr inbounds %struct.s3c2410fb_display, %struct.s3c2410fb_display* %156, i32 0, i32 13
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %160 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %159, i32 0, i32 17
  store i32 %158, i32* %160, align 8
  %161 = load %struct.s3c2410fb_display*, %struct.s3c2410fb_display** %8, align 8
  %162 = getelementptr inbounds %struct.s3c2410fb_display, %struct.s3c2410fb_display* %161, i32 0, i32 12
  %163 = load i32, i32* %162, align 8
  %164 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %165 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %164, i32 0, i32 16
  store i32 %163, i32* %165, align 4
  %166 = load %struct.s3c2410fb_display*, %struct.s3c2410fb_display** %8, align 8
  %167 = getelementptr inbounds %struct.s3c2410fb_display, %struct.s3c2410fb_display* %166, i32 0, i32 11
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %170 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %169, i32 0, i32 15
  store i32 %168, i32* %170, align 8
  %171 = load %struct.s3c2410fb_display*, %struct.s3c2410fb_display** %8, align 8
  %172 = getelementptr inbounds %struct.s3c2410fb_display, %struct.s3c2410fb_display* %171, i32 0, i32 10
  %173 = load i32, i32* %172, align 8
  %174 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %175 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %174, i32 0, i32 14
  store i32 %173, i32* %175, align 4
  %176 = load %struct.s3c2410fb_display*, %struct.s3c2410fb_display** %8, align 8
  %177 = getelementptr inbounds %struct.s3c2410fb_display, %struct.s3c2410fb_display* %176, i32 0, i32 9
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %180 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %179, i32 0, i32 13
  store i32 %178, i32* %180, align 8
  %181 = load %struct.s3c2410fb_display*, %struct.s3c2410fb_display** %8, align 8
  %182 = getelementptr inbounds %struct.s3c2410fb_display, %struct.s3c2410fb_display* %181, i32 0, i32 8
  %183 = load i32, i32* %182, align 8
  %184 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %185 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %184, i32 0, i32 12
  store i32 %183, i32* %185, align 4
  %186 = load %struct.s3c2410fb_display*, %struct.s3c2410fb_display** %8, align 8
  %187 = getelementptr inbounds %struct.s3c2410fb_display, %struct.s3c2410fb_display* %186, i32 0, i32 7
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %190 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %189, i32 0, i32 11
  store i32 %188, i32* %190, align 8
  %191 = load %struct.s3c2410fb_display*, %struct.s3c2410fb_display** %8, align 8
  %192 = getelementptr inbounds %struct.s3c2410fb_display, %struct.s3c2410fb_display* %191, i32 0, i32 6
  %193 = load i32, i32* %192, align 8
  %194 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %195 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %194, i32 0, i32 10
  store i32 %193, i32* %195, align 4
  %196 = load %struct.s3c2410fb_display*, %struct.s3c2410fb_display** %8, align 8
  %197 = getelementptr inbounds %struct.s3c2410fb_display, %struct.s3c2410fb_display* %196, i32 0, i32 5
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %200 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %199, i32 0, i32 9
  store i32 %198, i32* %200, align 8
  %201 = load %struct.s3c2410fb_display*, %struct.s3c2410fb_display** %8, align 8
  %202 = getelementptr inbounds %struct.s3c2410fb_display, %struct.s3c2410fb_display* %201, i32 0, i32 4
  %203 = load i32, i32* %202, align 8
  %204 = load %struct.s3c2410fb_info*, %struct.s3c2410fb_info** %6, align 8
  %205 = getelementptr inbounds %struct.s3c2410fb_info, %struct.s3c2410fb_info* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %205, i32 0, i32 0
  store i32 %203, i32* %206, align 4
  %207 = load %struct.s3c2410fb_display*, %struct.s3c2410fb_display** %8, align 8
  %208 = getelementptr inbounds %struct.s3c2410fb_display, %struct.s3c2410fb_display* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = load %struct.s3c2410fb_info*, %struct.s3c2410fb_info** %6, align 8
  %211 = getelementptr inbounds %struct.s3c2410fb_info, %struct.s3c2410fb_info* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %211, i32 0, i32 1
  store i32 %209, i32* %212, align 4
  %213 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %214 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %213, i32 0, i32 8
  %215 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %214, i32 0, i32 1
  store i64 0, i64* %215, align 8
  %216 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %217 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %216, i32 0, i32 8
  %218 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %217, i32 0, i32 0
  store i64 0, i64* %218, align 8
  %219 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %220 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %219, i32 0, i32 2
  %221 = load i64, i64* %220, align 8
  switch i64 %221, label %308 [
    i64 1, label %222
    i64 2, label %222
    i64 4, label %222
    i64 8, label %244
    i64 12, label %289
    i64 16, label %309
    i64 32, label %355
  ]

222:                                              ; preds = %145, %145, %145
  %223 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %224 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %223, i32 0, i32 7
  %225 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %224, i32 0, i32 0
  store i32 0, i32* %225, align 8
  %226 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %227 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %226, i32 0, i32 2
  %228 = load i64, i64* %227, align 8
  %229 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %230 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %229, i32 0, i32 7
  %231 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %230, i32 0, i32 1
  store i64 %228, i64* %231, align 8
  %232 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %233 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %232, i32 0, i32 6
  %234 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %235 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %234, i32 0, i32 7
  %236 = bitcast %struct.TYPE_6__* %233 to i8*
  %237 = bitcast %struct.TYPE_6__* %235 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %236, i8* align 8 %237, i64 16, i1 false)
  %238 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %239 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %238, i32 0, i32 5
  %240 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %241 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %240, i32 0, i32 7
  %242 = bitcast %struct.TYPE_6__* %239 to i8*
  %243 = bitcast %struct.TYPE_6__* %241 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %242, i8* align 8 %243, i64 16, i1 false)
  br label %374

244:                                              ; preds = %145
  %245 = load %struct.s3c2410fb_display*, %struct.s3c2410fb_display** %8, align 8
  %246 = getelementptr inbounds %struct.s3c2410fb_display, %struct.s3c2410fb_display* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 8
  %248 = load i32, i32* @S3C2410_LCDCON1_TFT, align 4
  %249 = icmp ne i32 %247, %248
  br i1 %249, label %250, label %269

250:                                              ; preds = %244
  %251 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %252 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %251, i32 0, i32 7
  %253 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %252, i32 0, i32 1
  store i64 3, i64* %253, align 8
  %254 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %255 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %254, i32 0, i32 7
  %256 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %255, i32 0, i32 0
  store i32 5, i32* %256, align 8
  %257 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %258 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %257, i32 0, i32 6
  %259 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %258, i32 0, i32 1
  store i64 3, i64* %259, align 8
  %260 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %261 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %260, i32 0, i32 6
  %262 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %261, i32 0, i32 0
  store i32 2, i32* %262, align 8
  %263 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %264 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %263, i32 0, i32 5
  %265 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %264, i32 0, i32 1
  store i64 2, i64* %265, align 8
  %266 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %267 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %266, i32 0, i32 5
  %268 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %267, i32 0, i32 0
  store i32 0, i32* %268, align 8
  br label %288

269:                                              ; preds = %244
  %270 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %271 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %270, i32 0, i32 7
  %272 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %271, i32 0, i32 0
  store i32 0, i32* %272, align 8
  %273 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %274 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %273, i32 0, i32 7
  %275 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %274, i32 0, i32 1
  store i64 8, i64* %275, align 8
  %276 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %277 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %276, i32 0, i32 6
  %278 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %279 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %278, i32 0, i32 7
  %280 = bitcast %struct.TYPE_6__* %277 to i8*
  %281 = bitcast %struct.TYPE_6__* %279 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %280, i8* align 8 %281, i64 16, i1 false)
  %282 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %283 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %282, i32 0, i32 5
  %284 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %285 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %284, i32 0, i32 7
  %286 = bitcast %struct.TYPE_6__* %283 to i8*
  %287 = bitcast %struct.TYPE_6__* %285 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %286, i8* align 8 %287, i64 16, i1 false)
  br label %288

288:                                              ; preds = %269, %250
  br label %374

289:                                              ; preds = %145
  %290 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %291 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %290, i32 0, i32 7
  %292 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %291, i32 0, i32 1
  store i64 4, i64* %292, align 8
  %293 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %294 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %293, i32 0, i32 7
  %295 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %294, i32 0, i32 0
  store i32 8, i32* %295, align 8
  %296 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %297 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %296, i32 0, i32 6
  %298 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %297, i32 0, i32 1
  store i64 4, i64* %298, align 8
  %299 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %300 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %299, i32 0, i32 6
  %301 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %300, i32 0, i32 0
  store i32 4, i32* %301, align 8
  %302 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %303 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %302, i32 0, i32 5
  %304 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %303, i32 0, i32 1
  store i64 4, i64* %304, align 8
  %305 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %306 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %305, i32 0, i32 5
  %307 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %306, i32 0, i32 0
  store i32 0, i32* %307, align 8
  br label %374

308:                                              ; preds = %145
  br label %309

309:                                              ; preds = %145, %308
  %310 = load %struct.s3c2410fb_display*, %struct.s3c2410fb_display** %8, align 8
  %311 = getelementptr inbounds %struct.s3c2410fb_display, %struct.s3c2410fb_display* %310, i32 0, i32 4
  %312 = load i32, i32* %311, align 8
  %313 = load i32, i32* @S3C2410_LCDCON5_FRM565, align 4
  %314 = and i32 %312, %313
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %316, label %335

316:                                              ; preds = %309
  %317 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %318 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %317, i32 0, i32 7
  %319 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %318, i32 0, i32 0
  store i32 11, i32* %319, align 8
  %320 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %321 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %320, i32 0, i32 6
  %322 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %321, i32 0, i32 0
  store i32 5, i32* %322, align 8
  %323 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %324 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %323, i32 0, i32 5
  %325 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %324, i32 0, i32 0
  store i32 0, i32* %325, align 8
  %326 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %327 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %326, i32 0, i32 7
  %328 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %327, i32 0, i32 1
  store i64 5, i64* %328, align 8
  %329 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %330 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %329, i32 0, i32 6
  %331 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %330, i32 0, i32 1
  store i64 6, i64* %331, align 8
  %332 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %333 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %332, i32 0, i32 5
  %334 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %333, i32 0, i32 1
  store i64 5, i64* %334, align 8
  br label %354

335:                                              ; preds = %309
  %336 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %337 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %336, i32 0, i32 7
  %338 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %337, i32 0, i32 0
  store i32 11, i32* %338, align 8
  %339 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %340 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %339, i32 0, i32 6
  %341 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %340, i32 0, i32 0
  store i32 6, i32* %341, align 8
  %342 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %343 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %342, i32 0, i32 5
  %344 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %343, i32 0, i32 0
  store i32 1, i32* %344, align 8
  %345 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %346 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %345, i32 0, i32 7
  %347 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %346, i32 0, i32 1
  store i64 5, i64* %347, align 8
  %348 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %349 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %348, i32 0, i32 6
  %350 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %349, i32 0, i32 1
  store i64 5, i64* %350, align 8
  %351 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %352 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %351, i32 0, i32 5
  %353 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %352, i32 0, i32 1
  store i64 5, i64* %353, align 8
  br label %354

354:                                              ; preds = %335, %316
  br label %374

355:                                              ; preds = %145
  %356 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %357 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %356, i32 0, i32 7
  %358 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %357, i32 0, i32 1
  store i64 8, i64* %358, align 8
  %359 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %360 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %359, i32 0, i32 7
  %361 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %360, i32 0, i32 0
  store i32 16, i32* %361, align 8
  %362 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %363 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %362, i32 0, i32 6
  %364 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %363, i32 0, i32 1
  store i64 8, i64* %364, align 8
  %365 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %366 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %365, i32 0, i32 6
  %367 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %366, i32 0, i32 0
  store i32 8, i32* %367, align 8
  %368 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %369 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %368, i32 0, i32 5
  %370 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %369, i32 0, i32 1
  store i64 8, i64* %370, align 8
  %371 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %372 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %371, i32 0, i32 5
  %373 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %372, i32 0, i32 0
  store i32 0, i32* %373, align 8
  br label %374

374:                                              ; preds = %355, %354, %289, %288, %222
  store i32 0, i32* %3, align 4
  br label %375

375:                                              ; preds = %374, %132
  %376 = load i32, i32* %3, align 4
  ret i32 %376
}

declare dso_local %struct.s3c2410fb_mach_info* @dev_get_platdata(i32) #1

declare dso_local i32 @dprintk(i8*, i64, i64, ...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
