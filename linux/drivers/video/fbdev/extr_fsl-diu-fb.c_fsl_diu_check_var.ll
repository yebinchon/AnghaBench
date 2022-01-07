; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_fsl-diu-fb.c_fsl_diu_check_var.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_fsl-diu-fb.c_fsl_diu_check_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_var_screeninfo = type { i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i64, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.fb_info = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i64, i64, i64 }

@default_bpp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_var_screeninfo*, %struct.fb_info*)* @fsl_diu_check_var to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_diu_check_var(%struct.fb_var_screeninfo* %0, %struct.fb_info* %1) #0 {
  %3 = alloca %struct.fb_var_screeninfo*, align 8
  %4 = alloca %struct.fb_info*, align 8
  store %struct.fb_var_screeninfo* %0, %struct.fb_var_screeninfo** %3, align 8
  store %struct.fb_info* %1, %struct.fb_info** %4, align 8
  %5 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %6 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %9 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp slt i64 %7, %10
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %14 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %17 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %16, i32 0, i32 0
  store i64 %15, i64* %17, align 8
  br label %18

18:                                               ; preds = %12, %2
  %19 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %20 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %23 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = icmp slt i64 %21, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %18
  %27 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %28 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %31 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %30, i32 0, i32 2
  store i64 %29, i64* %31, align 8
  br label %32

32:                                               ; preds = %26, %18
  %33 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %34 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %33, i32 0, i32 4
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %37 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %35, %39
  %41 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %42 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp sgt i64 %40, %44
  br i1 %45, label %46, label %58

46:                                               ; preds = %32
  %47 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %48 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %52 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = sub nsw i64 %50, %54
  %56 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %57 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %56, i32 0, i32 4
  store i64 %55, i64* %57, align 8
  br label %58

58:                                               ; preds = %46, %32
  %59 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %60 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %59, i32 0, i32 5
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %63 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = add nsw i64 %61, %65
  %67 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %68 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 3
  %70 = load i64, i64* %69, align 8
  %71 = icmp sgt i64 %66, %70
  br i1 %71, label %72, label %84

72:                                               ; preds = %58
  %73 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %74 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %78 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = sub nsw i64 %76, %80
  %82 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %83 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %82, i32 0, i32 5
  store i64 %81, i64* %83, align 8
  br label %84

84:                                               ; preds = %72, %58
  %85 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %86 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %85, i32 0, i32 6
  %87 = load i32, i32* %86, align 8
  %88 = icmp ne i32 %87, 32
  br i1 %88, label %89, label %103

89:                                               ; preds = %84
  %90 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %91 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %90, i32 0, i32 6
  %92 = load i32, i32* %91, align 8
  %93 = icmp ne i32 %92, 24
  br i1 %93, label %94, label %103

94:                                               ; preds = %89
  %95 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %96 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %95, i32 0, i32 6
  %97 = load i32, i32* %96, align 8
  %98 = icmp ne i32 %97, 16
  br i1 %98, label %99, label %103

99:                                               ; preds = %94
  %100 = load i32, i32* @default_bpp, align 4
  %101 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %102 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %101, i32 0, i32 6
  store i32 %100, i32* %102, align 8
  br label %103

103:                                              ; preds = %99, %94, %89, %84
  %104 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %105 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %104, i32 0, i32 6
  %106 = load i32, i32* %105, align 8
  switch i32 %106, label %218 [
    i32 16, label %107
    i32 24, label %144
    i32 32, label %181
  ]

107:                                              ; preds = %103
  %108 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %109 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %108, i32 0, i32 15
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 0
  store i32 5, i32* %110, align 4
  %111 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %112 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %111, i32 0, i32 15
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 1
  store i32 11, i32* %113, align 4
  %114 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %115 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %114, i32 0, i32 15
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 2
  store i32 0, i32* %116, align 4
  %117 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %118 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %117, i32 0, i32 14
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 0
  store i32 6, i32* %119, align 8
  %120 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %121 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %120, i32 0, i32 14
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 1
  store i32 5, i32* %122, align 4
  %123 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %124 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %123, i32 0, i32 14
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 2
  store i32 0, i32* %125, align 8
  %126 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %127 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %126, i32 0, i32 13
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 0
  store i32 5, i32* %128, align 4
  %129 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %130 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %129, i32 0, i32 13
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 1
  store i32 0, i32* %131, align 4
  %132 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %133 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %132, i32 0, i32 13
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 2
  store i32 0, i32* %134, align 4
  %135 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %136 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %135, i32 0, i32 12
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 0
  store i32 0, i32* %137, align 8
  %138 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %139 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %138, i32 0, i32 12
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 1
  store i32 0, i32* %140, align 4
  %141 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %142 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %141, i32 0, i32 12
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 2
  store i32 0, i32* %143, align 8
  br label %218

144:                                              ; preds = %103
  %145 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %146 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %145, i32 0, i32 15
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 0
  store i32 8, i32* %147, align 4
  %148 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %149 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %148, i32 0, i32 15
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 1
  store i32 0, i32* %150, align 4
  %151 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %152 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %151, i32 0, i32 15
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 2
  store i32 0, i32* %153, align 4
  %154 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %155 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %154, i32 0, i32 14
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 0
  store i32 8, i32* %156, align 8
  %157 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %158 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %157, i32 0, i32 14
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 1
  store i32 8, i32* %159, align 4
  %160 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %161 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %160, i32 0, i32 14
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 2
  store i32 0, i32* %162, align 8
  %163 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %164 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %163, i32 0, i32 13
  %165 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %164, i32 0, i32 0
  store i32 8, i32* %165, align 4
  %166 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %167 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %166, i32 0, i32 13
  %168 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %167, i32 0, i32 1
  store i32 16, i32* %168, align 4
  %169 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %170 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %169, i32 0, i32 13
  %171 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %170, i32 0, i32 2
  store i32 0, i32* %171, align 4
  %172 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %173 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %172, i32 0, i32 12
  %174 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %173, i32 0, i32 0
  store i32 0, i32* %174, align 8
  %175 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %176 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %175, i32 0, i32 12
  %177 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %176, i32 0, i32 1
  store i32 0, i32* %177, align 4
  %178 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %179 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %178, i32 0, i32 12
  %180 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %179, i32 0, i32 2
  store i32 0, i32* %180, align 8
  br label %218

181:                                              ; preds = %103
  %182 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %183 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %182, i32 0, i32 15
  %184 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %183, i32 0, i32 0
  store i32 8, i32* %184, align 4
  %185 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %186 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %185, i32 0, i32 15
  %187 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %186, i32 0, i32 1
  store i32 16, i32* %187, align 4
  %188 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %189 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %188, i32 0, i32 15
  %190 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %189, i32 0, i32 2
  store i32 0, i32* %190, align 4
  %191 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %192 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %191, i32 0, i32 14
  %193 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %192, i32 0, i32 0
  store i32 8, i32* %193, align 8
  %194 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %195 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %194, i32 0, i32 14
  %196 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %195, i32 0, i32 1
  store i32 8, i32* %196, align 4
  %197 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %198 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %197, i32 0, i32 14
  %199 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %198, i32 0, i32 2
  store i32 0, i32* %199, align 8
  %200 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %201 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %200, i32 0, i32 13
  %202 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %201, i32 0, i32 0
  store i32 8, i32* %202, align 4
  %203 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %204 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %203, i32 0, i32 13
  %205 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %204, i32 0, i32 1
  store i32 0, i32* %205, align 4
  %206 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %207 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %206, i32 0, i32 13
  %208 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %207, i32 0, i32 2
  store i32 0, i32* %208, align 4
  %209 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %210 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %209, i32 0, i32 12
  %211 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %210, i32 0, i32 0
  store i32 8, i32* %211, align 8
  %212 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %213 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %212, i32 0, i32 12
  %214 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %213, i32 0, i32 1
  store i32 24, i32* %214, align 4
  %215 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %216 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %215, i32 0, i32 12
  %217 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %216, i32 0, i32 2
  store i32 0, i32* %217, align 8
  br label %218

218:                                              ; preds = %103, %181, %144, %107
  %219 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %220 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %219, i32 0, i32 7
  store i32 -1, i32* %220, align 4
  %221 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %222 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %221, i32 0, i32 8
  store i32 -1, i32* %222, align 8
  %223 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %224 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %223, i32 0, i32 11
  store i64 0, i64* %224, align 8
  %225 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %226 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %225, i32 0, i32 10
  %227 = load i32, i32* %226, align 8
  %228 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %229 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %228, i32 0, i32 9
  %230 = load i32, i32* %229, align 4
  %231 = or i32 %230, %227
  store i32 %231, i32* %229, align 4
  %232 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %233 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %232, i32 0, i32 9
  %234 = load i32, i32* %233, align 4
  %235 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %236 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %235, i32 0, i32 10
  %237 = load i32, i32* %236, align 8
  %238 = or i32 %237, %234
  store i32 %238, i32* %236, align 8
  %239 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %240 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %241 = call i32 @adjust_aoi_size_position(%struct.fb_var_screeninfo* %239, %struct.fb_info* %240)
  ret i32 0
}

declare dso_local i32 @adjust_aoi_size_position(%struct.fb_var_screeninfo*, %struct.fb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
