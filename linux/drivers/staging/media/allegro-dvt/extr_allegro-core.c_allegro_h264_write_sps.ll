; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/allegro-dvt/extr_allegro-core.c_allegro_h264_write_sps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/allegro-dvt/extr_allegro-core.c_allegro_h264_write_sps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.allegro_channel = type { i32, i32, i32, i32, i32, i32, %struct.allegro_dev* }
%struct.allegro_dev = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.nal_h264_sps = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_6__, i64, i64, i64, i8*, i8*, i64, i64, i64, i64, i32, i64, i64, i64, i64, i64, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, %struct.TYPE_4__, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_4__ = type { i32, i32, i32*, i32*, i32*, i32, i32, i32, i64, i64 }

@SIZE_MACROBLOCK = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.allegro_channel*, i8*, i64)* @allegro_h264_write_sps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @allegro_h264_write_sps(%struct.allegro_channel* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.allegro_channel*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.allegro_dev*, align 8
  %9 = alloca %struct.nal_h264_sps*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.allegro_channel* %0, %struct.allegro_channel** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %14 = load %struct.allegro_channel*, %struct.allegro_channel** %5, align 8
  %15 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %14, i32 0, i32 6
  %16 = load %struct.allegro_dev*, %struct.allegro_dev** %15, align 8
  store %struct.allegro_dev* %16, %struct.allegro_dev** %8, align 8
  %17 = load i32, i32* @SIZE_MACROBLOCK, align 4
  store i32 %17, i32* %11, align 4
  store i32 2, i32* %12, align 4
  store i32 2, i32* %13, align 4
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.nal_h264_sps* @kzalloc(i32 352, i32 %18)
  store %struct.nal_h264_sps* %19, %struct.nal_h264_sps** %9, align 8
  %20 = load %struct.nal_h264_sps*, %struct.nal_h264_sps** %9, align 8
  %21 = icmp ne %struct.nal_h264_sps* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %3
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %285

25:                                               ; preds = %3
  %26 = load %struct.allegro_channel*, %struct.allegro_channel** %5, align 8
  %27 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @nal_h264_profile_from_v4l2(i32 %28)
  %30 = load %struct.nal_h264_sps*, %struct.nal_h264_sps** %9, align 8
  %31 = getelementptr inbounds %struct.nal_h264_sps, %struct.nal_h264_sps* %30, i32 0, i32 25
  store i32 %29, i32* %31, align 8
  %32 = load %struct.nal_h264_sps*, %struct.nal_h264_sps** %9, align 8
  %33 = getelementptr inbounds %struct.nal_h264_sps, %struct.nal_h264_sps* %32, i32 0, i32 24
  store i64 0, i64* %33, align 8
  %34 = load %struct.nal_h264_sps*, %struct.nal_h264_sps** %9, align 8
  %35 = getelementptr inbounds %struct.nal_h264_sps, %struct.nal_h264_sps* %34, i32 0, i32 0
  store i32 1, i32* %35, align 8
  %36 = load %struct.nal_h264_sps*, %struct.nal_h264_sps** %9, align 8
  %37 = getelementptr inbounds %struct.nal_h264_sps, %struct.nal_h264_sps* %36, i32 0, i32 23
  store i64 0, i64* %37, align 8
  %38 = load %struct.nal_h264_sps*, %struct.nal_h264_sps** %9, align 8
  %39 = getelementptr inbounds %struct.nal_h264_sps, %struct.nal_h264_sps* %38, i32 0, i32 22
  store i64 0, i64* %39, align 8
  %40 = load %struct.nal_h264_sps*, %struct.nal_h264_sps** %9, align 8
  %41 = getelementptr inbounds %struct.nal_h264_sps, %struct.nal_h264_sps* %40, i32 0, i32 21
  store i64 0, i64* %41, align 8
  %42 = load %struct.nal_h264_sps*, %struct.nal_h264_sps** %9, align 8
  %43 = getelementptr inbounds %struct.nal_h264_sps, %struct.nal_h264_sps* %42, i32 0, i32 20
  store i64 0, i64* %43, align 8
  %44 = load %struct.allegro_channel*, %struct.allegro_channel** %5, align 8
  %45 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @nal_h264_level_from_v4l2(i32 %46)
  %48 = load %struct.nal_h264_sps*, %struct.nal_h264_sps** %9, align 8
  %49 = getelementptr inbounds %struct.nal_h264_sps, %struct.nal_h264_sps* %48, i32 0, i32 19
  store i32 %47, i32* %49, align 8
  %50 = load %struct.nal_h264_sps*, %struct.nal_h264_sps** %9, align 8
  %51 = getelementptr inbounds %struct.nal_h264_sps, %struct.nal_h264_sps* %50, i32 0, i32 18
  store i64 0, i64* %51, align 8
  %52 = load %struct.nal_h264_sps*, %struct.nal_h264_sps** %9, align 8
  %53 = getelementptr inbounds %struct.nal_h264_sps, %struct.nal_h264_sps* %52, i32 0, i32 17
  store i64 0, i64* %53, align 8
  %54 = load %struct.nal_h264_sps*, %struct.nal_h264_sps** %9, align 8
  %55 = getelementptr inbounds %struct.nal_h264_sps, %struct.nal_h264_sps* %54, i32 0, i32 16
  store i64 0, i64* %55, align 8
  %56 = load %struct.nal_h264_sps*, %struct.nal_h264_sps** %9, align 8
  %57 = getelementptr inbounds %struct.nal_h264_sps, %struct.nal_h264_sps* %56, i32 0, i32 1
  store i32 6, i32* %57, align 4
  %58 = load %struct.nal_h264_sps*, %struct.nal_h264_sps** %9, align 8
  %59 = getelementptr inbounds %struct.nal_h264_sps, %struct.nal_h264_sps* %58, i32 0, i32 2
  store i32 3, i32* %59, align 8
  %60 = load %struct.nal_h264_sps*, %struct.nal_h264_sps** %9, align 8
  %61 = getelementptr inbounds %struct.nal_h264_sps, %struct.nal_h264_sps* %60, i32 0, i32 15
  store i64 0, i64* %61, align 8
  %62 = load %struct.allegro_channel*, %struct.allegro_channel** %5, align 8
  %63 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* %11, align 4
  %66 = call i8* @DIV_ROUND_UP(i32 %64, i32 %65)
  %67 = getelementptr i8, i8* %66, i64 -1
  %68 = load %struct.nal_h264_sps*, %struct.nal_h264_sps** %9, align 8
  %69 = getelementptr inbounds %struct.nal_h264_sps, %struct.nal_h264_sps* %68, i32 0, i32 14
  store i8* %67, i8** %69, align 8
  %70 = load %struct.allegro_channel*, %struct.allegro_channel** %5, align 8
  %71 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %11, align 4
  %74 = call i8* @DIV_ROUND_UP(i32 %72, i32 %73)
  %75 = getelementptr i8, i8* %74, i64 -1
  %76 = load %struct.nal_h264_sps*, %struct.nal_h264_sps** %9, align 8
  %77 = getelementptr inbounds %struct.nal_h264_sps, %struct.nal_h264_sps* %76, i32 0, i32 13
  store i8* %75, i8** %77, align 8
  %78 = load %struct.nal_h264_sps*, %struct.nal_h264_sps** %9, align 8
  %79 = getelementptr inbounds %struct.nal_h264_sps, %struct.nal_h264_sps* %78, i32 0, i32 3
  store i32 1, i32* %79, align 4
  %80 = load %struct.nal_h264_sps*, %struct.nal_h264_sps** %9, align 8
  %81 = getelementptr inbounds %struct.nal_h264_sps, %struct.nal_h264_sps* %80, i32 0, i32 12
  store i64 0, i64* %81, align 8
  %82 = load %struct.nal_h264_sps*, %struct.nal_h264_sps** %9, align 8
  %83 = getelementptr inbounds %struct.nal_h264_sps, %struct.nal_h264_sps* %82, i32 0, i32 4
  store i32 1, i32* %83, align 8
  %84 = load %struct.allegro_channel*, %struct.allegro_channel** %5, align 8
  %85 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* %11, align 4
  %88 = urem i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %97, label %90

90:                                               ; preds = %25
  %91 = load %struct.allegro_channel*, %struct.allegro_channel** %5, align 8
  %92 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %11, align 4
  %95 = urem i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br label %97

97:                                               ; preds = %90, %25
  %98 = phi i1 [ true, %25 ], [ %96, %90 ]
  %99 = zext i1 %98 to i32
  %100 = load %struct.nal_h264_sps*, %struct.nal_h264_sps** %9, align 8
  %101 = getelementptr inbounds %struct.nal_h264_sps, %struct.nal_h264_sps* %100, i32 0, i32 5
  store i32 %99, i32* %101, align 4
  %102 = load %struct.nal_h264_sps*, %struct.nal_h264_sps** %9, align 8
  %103 = getelementptr inbounds %struct.nal_h264_sps, %struct.nal_h264_sps* %102, i32 0, i32 5
  %104 = load i32, i32* %103, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %137

106:                                              ; preds = %97
  %107 = load %struct.nal_h264_sps*, %struct.nal_h264_sps** %9, align 8
  %108 = getelementptr inbounds %struct.nal_h264_sps, %struct.nal_h264_sps* %107, i32 0, i32 11
  store i64 0, i64* %108, align 8
  %109 = load %struct.allegro_channel*, %struct.allegro_channel** %5, align 8
  %110 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* %11, align 4
  %113 = call i32 @round_up(i32 %111, i32 %112)
  %114 = load %struct.allegro_channel*, %struct.allegro_channel** %5, align 8
  %115 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = sub i32 %113, %116
  %118 = load i32, i32* %12, align 4
  %119 = udiv i32 %117, %118
  %120 = load %struct.nal_h264_sps*, %struct.nal_h264_sps** %9, align 8
  %121 = getelementptr inbounds %struct.nal_h264_sps, %struct.nal_h264_sps* %120, i32 0, i32 6
  store i32 %119, i32* %121, align 8
  %122 = load %struct.nal_h264_sps*, %struct.nal_h264_sps** %9, align 8
  %123 = getelementptr inbounds %struct.nal_h264_sps, %struct.nal_h264_sps* %122, i32 0, i32 10
  store i64 0, i64* %123, align 8
  %124 = load %struct.allegro_channel*, %struct.allegro_channel** %5, align 8
  %125 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* %11, align 4
  %128 = call i32 @round_up(i32 %126, i32 %127)
  %129 = load %struct.allegro_channel*, %struct.allegro_channel** %5, align 8
  %130 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = sub i32 %128, %131
  %133 = load i32, i32* %13, align 4
  %134 = udiv i32 %132, %133
  %135 = load %struct.nal_h264_sps*, %struct.nal_h264_sps** %9, align 8
  %136 = getelementptr inbounds %struct.nal_h264_sps, %struct.nal_h264_sps* %135, i32 0, i32 7
  store i32 %134, i32* %136, align 4
  br label %137

137:                                              ; preds = %106, %97
  %138 = load %struct.nal_h264_sps*, %struct.nal_h264_sps** %9, align 8
  %139 = getelementptr inbounds %struct.nal_h264_sps, %struct.nal_h264_sps* %138, i32 0, i32 8
  store i32 1, i32* %139, align 8
  %140 = load %struct.nal_h264_sps*, %struct.nal_h264_sps** %9, align 8
  %141 = getelementptr inbounds %struct.nal_h264_sps, %struct.nal_h264_sps* %140, i32 0, i32 9
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 21
  store i64 0, i64* %142, align 8
  %143 = load %struct.nal_h264_sps*, %struct.nal_h264_sps** %9, align 8
  %144 = getelementptr inbounds %struct.nal_h264_sps, %struct.nal_h264_sps* %143, i32 0, i32 9
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 20
  store i64 0, i64* %145, align 8
  %146 = load %struct.nal_h264_sps*, %struct.nal_h264_sps** %9, align 8
  %147 = getelementptr inbounds %struct.nal_h264_sps, %struct.nal_h264_sps* %146, i32 0, i32 9
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 0
  store i32 1, i32* %148, align 8
  %149 = load %struct.nal_h264_sps*, %struct.nal_h264_sps** %9, align 8
  %150 = getelementptr inbounds %struct.nal_h264_sps, %struct.nal_h264_sps* %149, i32 0, i32 9
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 1
  store i32 1, i32* %151, align 4
  %152 = load %struct.nal_h264_sps*, %struct.nal_h264_sps** %9, align 8
  %153 = getelementptr inbounds %struct.nal_h264_sps, %struct.nal_h264_sps* %152, i32 0, i32 9
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 19
  store i64 0, i64* %154, align 8
  %155 = load %struct.nal_h264_sps*, %struct.nal_h264_sps** %9, align 8
  %156 = getelementptr inbounds %struct.nal_h264_sps, %struct.nal_h264_sps* %155, i32 0, i32 9
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 2
  store i32 1, i32* %157, align 8
  %158 = load %struct.nal_h264_sps*, %struct.nal_h264_sps** %9, align 8
  %159 = getelementptr inbounds %struct.nal_h264_sps, %struct.nal_h264_sps* %158, i32 0, i32 9
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 3
  store i32 5, i32* %160, align 4
  %161 = load %struct.nal_h264_sps*, %struct.nal_h264_sps** %9, align 8
  %162 = getelementptr inbounds %struct.nal_h264_sps, %struct.nal_h264_sps* %161, i32 0, i32 9
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 4
  store i32 5, i32* %163, align 8
  %164 = load %struct.nal_h264_sps*, %struct.nal_h264_sps** %9, align 8
  %165 = getelementptr inbounds %struct.nal_h264_sps, %struct.nal_h264_sps* %164, i32 0, i32 9
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 5
  store i32 5, i32* %166, align 4
  %167 = load %struct.nal_h264_sps*, %struct.nal_h264_sps** %9, align 8
  %168 = getelementptr inbounds %struct.nal_h264_sps, %struct.nal_h264_sps* %167, i32 0, i32 9
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 6
  store i32 1, i32* %169, align 8
  %170 = load %struct.nal_h264_sps*, %struct.nal_h264_sps** %9, align 8
  %171 = getelementptr inbounds %struct.nal_h264_sps, %struct.nal_h264_sps* %170, i32 0, i32 9
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i32 0, i32 18
  store i64 0, i64* %172, align 8
  %173 = load %struct.nal_h264_sps*, %struct.nal_h264_sps** %9, align 8
  %174 = getelementptr inbounds %struct.nal_h264_sps, %struct.nal_h264_sps* %173, i32 0, i32 9
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i32 0, i32 17
  store i64 0, i64* %175, align 8
  %176 = load %struct.nal_h264_sps*, %struct.nal_h264_sps** %9, align 8
  %177 = getelementptr inbounds %struct.nal_h264_sps, %struct.nal_h264_sps* %176, i32 0, i32 9
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i32 0, i32 7
  store i32 1, i32* %178, align 4
  %179 = load %struct.nal_h264_sps*, %struct.nal_h264_sps** %9, align 8
  %180 = getelementptr inbounds %struct.nal_h264_sps, %struct.nal_h264_sps* %179, i32 0, i32 9
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 8
  store i32 1, i32* %181, align 8
  %182 = load %struct.nal_h264_sps*, %struct.nal_h264_sps** %9, align 8
  %183 = getelementptr inbounds %struct.nal_h264_sps, %struct.nal_h264_sps* %182, i32 0, i32 9
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i32 0, i32 9
  store i32 50, i32* %184, align 4
  %185 = load %struct.nal_h264_sps*, %struct.nal_h264_sps** %9, align 8
  %186 = getelementptr inbounds %struct.nal_h264_sps, %struct.nal_h264_sps* %185, i32 0, i32 9
  %187 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %186, i32 0, i32 10
  store i32 1, i32* %187, align 8
  %188 = load %struct.nal_h264_sps*, %struct.nal_h264_sps** %9, align 8
  %189 = getelementptr inbounds %struct.nal_h264_sps, %struct.nal_h264_sps* %188, i32 0, i32 9
  %190 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %189, i32 0, i32 16
  store i64 0, i64* %190, align 8
  %191 = load %struct.nal_h264_sps*, %struct.nal_h264_sps** %9, align 8
  %192 = getelementptr inbounds %struct.nal_h264_sps, %struct.nal_h264_sps* %191, i32 0, i32 9
  %193 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %192, i32 0, i32 11
  store i32 1, i32* %193, align 4
  %194 = load %struct.nal_h264_sps*, %struct.nal_h264_sps** %9, align 8
  %195 = getelementptr inbounds %struct.nal_h264_sps, %struct.nal_h264_sps* %194, i32 0, i32 9
  %196 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %195, i32 0, i32 15
  %197 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %196, i32 0, i32 9
  store i64 0, i64* %197, align 8
  %198 = load %struct.nal_h264_sps*, %struct.nal_h264_sps** %9, align 8
  %199 = getelementptr inbounds %struct.nal_h264_sps, %struct.nal_h264_sps* %198, i32 0, i32 9
  %200 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %199, i32 0, i32 15
  %201 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %200, i32 0, i32 0
  store i32 0, i32* %201, align 8
  %202 = load %struct.nal_h264_sps*, %struct.nal_h264_sps** %9, align 8
  %203 = getelementptr inbounds %struct.nal_h264_sps, %struct.nal_h264_sps* %202, i32 0, i32 9
  %204 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %203, i32 0, i32 15
  %205 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %204, i32 0, i32 1
  store i32 1, i32* %205, align 4
  %206 = load %struct.allegro_channel*, %struct.allegro_channel** %5, align 8
  %207 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %206, i32 0, i32 2
  %208 = load i32, i32* %207, align 8
  %209 = load %struct.nal_h264_sps*, %struct.nal_h264_sps** %9, align 8
  %210 = getelementptr inbounds %struct.nal_h264_sps, %struct.nal_h264_sps* %209, i32 0, i32 9
  %211 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %210, i32 0, i32 15
  %212 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = add nsw i32 6, %213
  %215 = shl i32 1, %214
  %216 = sdiv i32 %208, %215
  %217 = sub nsw i32 %216, 1
  %218 = load %struct.nal_h264_sps*, %struct.nal_h264_sps** %9, align 8
  %219 = getelementptr inbounds %struct.nal_h264_sps, %struct.nal_h264_sps* %218, i32 0, i32 9
  %220 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %219, i32 0, i32 15
  %221 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %220, i32 0, i32 2
  %222 = load i32*, i32** %221, align 8
  %223 = getelementptr inbounds i32, i32* %222, i64 0
  store i32 %217, i32* %223, align 4
  %224 = load %struct.allegro_channel*, %struct.allegro_channel** %5, align 8
  %225 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %224, i32 0, i32 3
  %226 = load i32, i32* %225, align 4
  %227 = mul nsw i32 %226, 1000
  %228 = load %struct.nal_h264_sps*, %struct.nal_h264_sps** %9, align 8
  %229 = getelementptr inbounds %struct.nal_h264_sps, %struct.nal_h264_sps* %228, i32 0, i32 9
  %230 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %229, i32 0, i32 15
  %231 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  %233 = add nsw i32 4, %232
  %234 = shl i32 1, %233
  %235 = sdiv i32 %227, %234
  %236 = sub nsw i32 %235, 1
  %237 = load %struct.nal_h264_sps*, %struct.nal_h264_sps** %9, align 8
  %238 = getelementptr inbounds %struct.nal_h264_sps, %struct.nal_h264_sps* %237, i32 0, i32 9
  %239 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %238, i32 0, i32 15
  %240 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %239, i32 0, i32 3
  %241 = load i32*, i32** %240, align 8
  %242 = getelementptr inbounds i32, i32* %241, i64 0
  store i32 %236, i32* %242, align 4
  %243 = load %struct.nal_h264_sps*, %struct.nal_h264_sps** %9, align 8
  %244 = getelementptr inbounds %struct.nal_h264_sps, %struct.nal_h264_sps* %243, i32 0, i32 9
  %245 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %244, i32 0, i32 15
  %246 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %245, i32 0, i32 4
  %247 = load i32*, i32** %246, align 8
  %248 = getelementptr inbounds i32, i32* %247, i64 0
  store i32 1, i32* %248, align 4
  %249 = load %struct.nal_h264_sps*, %struct.nal_h264_sps** %9, align 8
  %250 = getelementptr inbounds %struct.nal_h264_sps, %struct.nal_h264_sps* %249, i32 0, i32 9
  %251 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %250, i32 0, i32 15
  %252 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %251, i32 0, i32 5
  store i32 31, i32* %252, align 8
  %253 = load %struct.nal_h264_sps*, %struct.nal_h264_sps** %9, align 8
  %254 = getelementptr inbounds %struct.nal_h264_sps, %struct.nal_h264_sps* %253, i32 0, i32 9
  %255 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %254, i32 0, i32 15
  %256 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %255, i32 0, i32 6
  store i32 31, i32* %256, align 4
  %257 = load %struct.nal_h264_sps*, %struct.nal_h264_sps** %9, align 8
  %258 = getelementptr inbounds %struct.nal_h264_sps, %struct.nal_h264_sps* %257, i32 0, i32 9
  %259 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %258, i32 0, i32 15
  %260 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %259, i32 0, i32 7
  store i32 31, i32* %260, align 8
  %261 = load %struct.nal_h264_sps*, %struct.nal_h264_sps** %9, align 8
  %262 = getelementptr inbounds %struct.nal_h264_sps, %struct.nal_h264_sps* %261, i32 0, i32 9
  %263 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %262, i32 0, i32 15
  %264 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %263, i32 0, i32 8
  store i64 0, i64* %264, align 8
  %265 = load %struct.nal_h264_sps*, %struct.nal_h264_sps** %9, align 8
  %266 = getelementptr inbounds %struct.nal_h264_sps, %struct.nal_h264_sps* %265, i32 0, i32 9
  %267 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %266, i32 0, i32 14
  store i64 0, i64* %267, align 8
  %268 = load %struct.nal_h264_sps*, %struct.nal_h264_sps** %9, align 8
  %269 = getelementptr inbounds %struct.nal_h264_sps, %struct.nal_h264_sps* %268, i32 0, i32 9
  %270 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %269, i32 0, i32 12
  store i32 1, i32* %270, align 8
  %271 = load %struct.nal_h264_sps*, %struct.nal_h264_sps** %9, align 8
  %272 = getelementptr inbounds %struct.nal_h264_sps, %struct.nal_h264_sps* %271, i32 0, i32 9
  %273 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %272, i32 0, i32 13
  store i64 0, i64* %273, align 8
  %274 = load %struct.allegro_dev*, %struct.allegro_dev** %8, align 8
  %275 = getelementptr inbounds %struct.allegro_dev, %struct.allegro_dev* %274, i32 0, i32 0
  %276 = load %struct.TYPE_5__*, %struct.TYPE_5__** %275, align 8
  %277 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %276, i32 0, i32 0
  %278 = load i8*, i8** %6, align 8
  %279 = load i64, i64* %7, align 8
  %280 = load %struct.nal_h264_sps*, %struct.nal_h264_sps** %9, align 8
  %281 = call i32 @nal_h264_write_sps(i32* %277, i8* %278, i64 %279, %struct.nal_h264_sps* %280)
  store i32 %281, i32* %10, align 4
  %282 = load %struct.nal_h264_sps*, %struct.nal_h264_sps** %9, align 8
  %283 = call i32 @kfree(%struct.nal_h264_sps* %282)
  %284 = load i32, i32* %10, align 4
  store i32 %284, i32* %4, align 4
  br label %285

285:                                              ; preds = %137, %22
  %286 = load i32, i32* %4, align 4
  ret i32 %286
}

declare dso_local %struct.nal_h264_sps* @kzalloc(i32, i32) #1

declare dso_local i32 @nal_h264_profile_from_v4l2(i32) #1

declare dso_local i32 @nal_h264_level_from_v4l2(i32) #1

declare dso_local i8* @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @round_up(i32, i32) #1

declare dso_local i32 @nal_h264_write_sps(i32*, i8*, i64, %struct.nal_h264_sps*) #1

declare dso_local i32 @kfree(%struct.nal_h264_sps*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
