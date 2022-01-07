; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_vt8500lcdfb.c_vt8500lcd_set_par.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_vt8500lcdfb.c_vt8500lcd_set_par.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.TYPE_11__, %struct.TYPE_7__ }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_12__, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_12__ = type { i32, i64, i64 }
%struct.TYPE_10__ = type { i32, i32, i64 }
%struct.TYPE_9__ = type { i32, i32, i64 }
%struct.TYPE_8__ = type { i64, i64, i64 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.vt8500lcd_info = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@FB_VISUAL_PSEUDOCOLOR = common dso_local global i32 0, align 4
@FB_VISUAL_TRUECOLOR = common dso_local global i32 0, align 4
@bpp_values = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*)* @vt8500lcd_set_par to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vt8500lcd_set_par(%struct.fb_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.vt8500lcd_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  %8 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %9 = call %struct.vt8500lcd_info* @to_vt8500lcd_info(%struct.fb_info* %8)
  store %struct.vt8500lcd_info* %9, %struct.vt8500lcd_info** %4, align 8
  store i32 5, i32* %5, align 4
  %10 = load %struct.vt8500lcd_info*, %struct.vt8500lcd_info** %4, align 8
  %11 = icmp ne %struct.vt8500lcd_info* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %389

15:                                               ; preds = %1
  %16 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %17 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp sle i32 %19, 8
  br i1 %20, label %21, label %99

21:                                               ; preds = %15
  %22 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %23 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 12
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  store i32 0, i32* %25, align 8
  %26 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %27 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %31 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 12
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 1
  store i32 %29, i32* %33, align 4
  %34 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %35 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 12
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 2
  store i64 0, i64* %37, align 8
  %38 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %39 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 11
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  store i32 0, i32* %41, align 8
  %42 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %43 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %47 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 11
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 1
  store i32 %45, i32* %49, align 4
  %50 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %51 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 11
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 2
  store i64 0, i64* %53, align 8
  %54 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %55 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 10
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 2
  store i64 0, i64* %57, align 8
  %58 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %59 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %63 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 10
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 0
  store i32 %61, i32* %65, align 8
  %66 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %67 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 10
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 1
  store i64 0, i64* %69, align 8
  %70 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %71 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 13
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 2
  store i64 0, i64* %73, align 8
  %74 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %75 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 13
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 1
  store i64 0, i64* %77, align 8
  %78 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %79 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 13
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  store i64 0, i64* %81, align 8
  %82 = load i32, i32* @FB_VISUAL_PSEUDOCOLOR, align 4
  %83 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %84 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 1
  store i32 %82, i32* %85, align 4
  %86 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %87 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %91 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = sdiv i32 8, %93
  %95 = sdiv i32 %89, %94
  %96 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %97 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 0
  store i32 %95, i32* %98, align 8
  br label %244

99:                                               ; preds = %15
  %100 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %101 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 13
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 2
  store i64 0, i64* %103, align 8
  %104 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %105 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 13
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 1
  store i64 0, i64* %107, align 8
  %108 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %109 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 13
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 0
  store i64 0, i64* %111, align 8
  %112 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %113 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = icmp eq i32 %115, 16
  br i1 %116, label %117, label %154

117:                                              ; preds = %99
  %118 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %119 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 12
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 0
  store i32 11, i32* %121, align 8
  %122 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %123 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 12
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 1
  store i32 5, i32* %125, align 4
  %126 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %127 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 12
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 2
  store i64 0, i64* %129, align 8
  %130 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %131 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 11
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 0
  store i32 5, i32* %133, align 8
  %134 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %135 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %135, i32 0, i32 11
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 1
  store i32 6, i32* %137, align 4
  %138 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %139 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %139, i32 0, i32 11
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 2
  store i64 0, i64* %141, align 8
  %142 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %143 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %143, i32 0, i32 10
  %145 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %144, i32 0, i32 2
  store i64 0, i64* %145, align 8
  %146 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %147 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %147, i32 0, i32 10
  %149 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %148, i32 0, i32 0
  store i32 5, i32* %149, align 8
  %150 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %151 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %151, i32 0, i32 10
  %153 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %152, i32 0, i32 1
  store i64 0, i64* %153, align 8
  br label %217

154:                                              ; preds = %99
  %155 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %156 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = mul nsw i32 %158, 2
  %160 = sdiv i32 %159, 3
  %161 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %162 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %162, i32 0, i32 12
  %164 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %163, i32 0, i32 0
  store i32 %160, i32* %164, align 8
  %165 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %166 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = sdiv i32 %168, 3
  %170 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %171 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %171, i32 0, i32 12
  %173 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %172, i32 0, i32 1
  store i32 %169, i32* %173, align 4
  %174 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %175 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %175, i32 0, i32 12
  %177 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %176, i32 0, i32 2
  store i64 0, i64* %177, align 8
  %178 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %179 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = sdiv i32 %181, 3
  %183 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %184 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %184, i32 0, i32 11
  %186 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %185, i32 0, i32 0
  store i32 %182, i32* %186, align 8
  %187 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %188 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = sdiv i32 %190, 3
  %192 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %193 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %193, i32 0, i32 11
  %195 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %194, i32 0, i32 1
  store i32 %191, i32* %195, align 4
  %196 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %197 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %197, i32 0, i32 11
  %199 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %198, i32 0, i32 2
  store i64 0, i64* %199, align 8
  %200 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %201 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %201, i32 0, i32 10
  %203 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %202, i32 0, i32 2
  store i64 0, i64* %203, align 8
  %204 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %205 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = sdiv i32 %207, 3
  %209 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %210 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %210, i32 0, i32 10
  %212 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %211, i32 0, i32 0
  store i32 %208, i32* %212, align 8
  %213 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %214 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %214, i32 0, i32 10
  %216 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %215, i32 0, i32 1
  store i64 0, i64* %216, align 8
  br label %217

217:                                              ; preds = %154, %117
  %218 = load i32, i32* @FB_VISUAL_TRUECOLOR, align 4
  %219 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %220 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %219, i32 0, i32 1
  %221 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %220, i32 0, i32 1
  store i32 %218, i32* %221, align 4
  %222 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %223 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = icmp sgt i32 %225, 16
  br i1 %226, label %227, label %233

227:                                              ; preds = %217
  %228 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %229 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %228, i32 0, i32 0
  %230 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %229, i32 0, i32 1
  %231 = load i32, i32* %230, align 4
  %232 = shl i32 %231, 2
  br label %239

233:                                              ; preds = %217
  %234 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %235 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %234, i32 0, i32 0
  %236 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %235, i32 0, i32 1
  %237 = load i32, i32* %236, align 4
  %238 = shl i32 %237, 1
  br label %239

239:                                              ; preds = %233, %227
  %240 = phi i32 [ %232, %227 ], [ %238, %233 ]
  %241 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %242 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %241, i32 0, i32 1
  %243 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %242, i32 0, i32 0
  store i32 %240, i32* %243, align 8
  br label %244

244:                                              ; preds = %239, %21
  store i32 0, i32* %6, align 4
  br label %245

245:                                              ; preds = %262, %244
  %246 = load i32, i32* %6, align 4
  %247 = icmp slt i32 %246, 8
  br i1 %247, label %248, label %265

248:                                              ; preds = %245
  %249 = load i32*, i32** @bpp_values, align 8
  %250 = load i32, i32* %6, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i32, i32* %249, i64 %251
  %253 = load i32, i32* %252, align 4
  %254 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %255 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %254, i32 0, i32 0
  %256 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 8
  %258 = icmp eq i32 %253, %257
  br i1 %258, label %259, label %261

259:                                              ; preds = %248
  %260 = load i32, i32* %6, align 4
  store i32 %260, i32* %5, align 4
  br label %261

261:                                              ; preds = %259, %248
  br label %262

262:                                              ; preds = %261
  %263 = load i32, i32* %6, align 4
  %264 = add nsw i32 %263, 1
  store i32 %264, i32* %6, align 4
  br label %245

265:                                              ; preds = %245
  %266 = load %struct.vt8500lcd_info*, %struct.vt8500lcd_info** %4, align 8
  %267 = getelementptr inbounds %struct.vt8500lcd_info, %struct.vt8500lcd_info* %266, i32 0, i32 0
  %268 = load i64, i64* %267, align 8
  %269 = call i32 @readl(i64 %268)
  %270 = and i32 %269, -16
  %271 = sext i32 %270 to i64
  store i64 %271, i64* %7, align 8
  %272 = load %struct.vt8500lcd_info*, %struct.vt8500lcd_info** %4, align 8
  %273 = getelementptr inbounds %struct.vt8500lcd_info, %struct.vt8500lcd_info* %272, i32 0, i32 0
  %274 = load i64, i64* %273, align 8
  %275 = call i32 @writel(i64 0, i64 %274)
  br label %276

276:                                              ; preds = %284, %265
  %277 = load %struct.vt8500lcd_info*, %struct.vt8500lcd_info** %4, align 8
  %278 = getelementptr inbounds %struct.vt8500lcd_info, %struct.vt8500lcd_info* %277, i32 0, i32 0
  %279 = load i64, i64* %278, align 8
  %280 = add nsw i64 %279, 56
  %281 = call i32 @readl(i64 %280)
  %282 = and i32 %281, 16
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %285

284:                                              ; preds = %276
  br label %276

285:                                              ; preds = %276
  %286 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %287 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %286, i32 0, i32 0
  %288 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %287, i32 0, i32 2
  %289 = load i32, i32* %288, align 8
  %290 = sub nsw i32 %289, 1
  %291 = and i32 %290, 63
  %292 = shl i32 %291, 26
  %293 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %294 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %293, i32 0, i32 0
  %295 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %294, i32 0, i32 3
  %296 = load i32, i32* %295, align 4
  %297 = and i32 %296, 255
  %298 = shl i32 %297, 18
  %299 = or i32 %292, %298
  %300 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %301 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %300, i32 0, i32 0
  %302 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %301, i32 0, i32 4
  %303 = load i32, i32* %302, align 8
  %304 = sub nsw i32 %303, 1
  %305 = and i32 %304, 1023
  %306 = shl i32 %305, 8
  %307 = or i32 %299, %306
  %308 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %309 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %308, i32 0, i32 0
  %310 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %309, i32 0, i32 5
  %311 = load i32, i32* %310, align 4
  %312 = and i32 %311, 255
  %313 = or i32 %307, %312
  %314 = sext i32 %313 to i64
  %315 = load %struct.vt8500lcd_info*, %struct.vt8500lcd_info** %4, align 8
  %316 = getelementptr inbounds %struct.vt8500lcd_info, %struct.vt8500lcd_info* %315, i32 0, i32 0
  %317 = load i64, i64* %316, align 8
  %318 = add nsw i64 %317, 4
  %319 = call i32 @writel(i64 %314, i64 %318)
  %320 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %321 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %320, i32 0, i32 0
  %322 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %321, i32 0, i32 6
  %323 = load i32, i32* %322, align 8
  %324 = sub nsw i32 %323, 1
  %325 = and i32 %324, 63
  %326 = shl i32 %325, 26
  %327 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %328 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %327, i32 0, i32 0
  %329 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %328, i32 0, i32 7
  %330 = load i32, i32* %329, align 4
  %331 = and i32 %330, 255
  %332 = shl i32 %331, 18
  %333 = or i32 %326, %332
  %334 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %335 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %334, i32 0, i32 0
  %336 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %335, i32 0, i32 8
  %337 = load i32, i32* %336, align 8
  %338 = sub nsw i32 %337, 1
  %339 = and i32 %338, 1023
  %340 = shl i32 %339, 8
  %341 = or i32 %333, %340
  %342 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %343 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %342, i32 0, i32 0
  %344 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %343, i32 0, i32 9
  %345 = load i32, i32* %344, align 4
  %346 = and i32 %345, 255
  %347 = or i32 %341, %346
  %348 = sext i32 %347 to i64
  %349 = load %struct.vt8500lcd_info*, %struct.vt8500lcd_info** %4, align 8
  %350 = getelementptr inbounds %struct.vt8500lcd_info, %struct.vt8500lcd_info* %349, i32 0, i32 0
  %351 = load i64, i64* %350, align 8
  %352 = add nsw i64 %351, 8
  %353 = call i32 @writel(i64 %348, i64 %352)
  %354 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %355 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %354, i32 0, i32 0
  %356 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %355, i32 0, i32 8
  %357 = load i32, i32* %356, align 8
  %358 = sub nsw i32 %357, 1
  %359 = and i32 %358, 1024
  %360 = shl i32 %359, 2
  %361 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %362 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %361, i32 0, i32 0
  %363 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %362, i32 0, i32 4
  %364 = load i32, i32* %363, align 8
  %365 = sub nsw i32 %364, 1
  %366 = and i32 %365, 1024
  %367 = or i32 %360, %366
  %368 = sext i32 %367 to i64
  %369 = load %struct.vt8500lcd_info*, %struct.vt8500lcd_info** %4, align 8
  %370 = getelementptr inbounds %struct.vt8500lcd_info, %struct.vt8500lcd_info* %369, i32 0, i32 0
  %371 = load i64, i64* %370, align 8
  %372 = add nsw i64 %371, 16
  %373 = call i32 @writel(i64 %368, i64 %372)
  %374 = load %struct.vt8500lcd_info*, %struct.vt8500lcd_info** %4, align 8
  %375 = getelementptr inbounds %struct.vt8500lcd_info, %struct.vt8500lcd_info* %374, i32 0, i32 0
  %376 = load i64, i64* %375, align 8
  %377 = add nsw i64 %376, 32
  %378 = call i32 @writel(i64 2147483648, i64 %377)
  %379 = load i64, i64* %7, align 8
  %380 = load i32, i32* %5, align 4
  %381 = shl i32 %380, 1
  %382 = sext i32 %381 to i64
  %383 = or i64 %379, %382
  %384 = or i64 %383, 256
  %385 = load %struct.vt8500lcd_info*, %struct.vt8500lcd_info** %4, align 8
  %386 = getelementptr inbounds %struct.vt8500lcd_info, %struct.vt8500lcd_info* %385, i32 0, i32 0
  %387 = load i64, i64* %386, align 8
  %388 = call i32 @writel(i64 %384, i64 %387)
  store i32 0, i32* %2, align 4
  br label %389

389:                                              ; preds = %285, %12
  %390 = load i32, i32* %2, align 4
  ret i32 %390
}

declare dso_local %struct.vt8500lcd_info* @to_vt8500lcd_info(%struct.fb_info*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
