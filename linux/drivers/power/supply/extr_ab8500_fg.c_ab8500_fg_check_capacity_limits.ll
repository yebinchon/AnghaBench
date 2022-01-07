; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_ab8500_fg.c_ab8500_fg_check_capacity_limits.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_ab8500_fg.c_ab8500_fg_check_capacity_limits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ab8500_fg = type { i32, %struct.TYPE_8__, i32, i32, %struct.TYPE_7__, %struct.TYPE_5__* }
%struct.TYPE_8__ = type { i32, i64, i32, i64 }
%struct.TYPE_7__ = type { i64, i64, i32, %struct.TYPE_6__, i32, i64, i64 }
%struct.TYPE_6__ = type { i32, i32*, i32, i32 }
%struct.TYPE_5__ = type { i64 }

@.str = private unnamed_addr constant [29 x i8] c"level changed from %d to %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [68 x i8] c"level not allowed to go up since no charger is connected: %d to %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Battery low, set capacity to 0\0A\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"battery reported full but capacity dropping: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"capacity changed from %d to %d (%d)\0A\00", align 1
@.str.5 = private unnamed_addr constant [76 x i8] c"capacity not allowed to go up since no charger is connected: %d to %d (%d)\0A\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"capacity=%d (%d)\0A\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"Battery full, notifying.\0A\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"charge_full\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"charge_now\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ab8500_fg*, i32)* @ab8500_fg_check_capacity_limits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ab8500_fg_check_capacity_limits(%struct.ab8500_fg* %0, i32 %1) #0 {
  %3 = alloca %struct.ab8500_fg*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ab8500_fg* %0, %struct.ab8500_fg** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %7 = load %struct.ab8500_fg*, %struct.ab8500_fg** %3, align 8
  %8 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %7, i32 0, i32 4
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @DIV_ROUND_CLOSEST(i32 %10, i32 10)
  store i32 %11, i32* %6, align 4
  %12 = load %struct.ab8500_fg*, %struct.ab8500_fg** %3, align 8
  %13 = call i64 @ab8500_fg_capacity_level(%struct.ab8500_fg* %12)
  %14 = load %struct.ab8500_fg*, %struct.ab8500_fg** %3, align 8
  %15 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %14, i32 0, i32 4
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  store i64 %13, i64* %16, align 8
  %17 = load %struct.ab8500_fg*, %struct.ab8500_fg** %3, align 8
  %18 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %17, i32 0, i32 4
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.ab8500_fg*, %struct.ab8500_fg** %3, align 8
  %22 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %21, i32 0, i32 4
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %20, %24
  br i1 %25, label %26, label %79

26:                                               ; preds = %2
  %27 = load %struct.ab8500_fg*, %struct.ab8500_fg** %3, align 8
  %28 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %45, label %32

32:                                               ; preds = %26
  %33 = load %struct.ab8500_fg*, %struct.ab8500_fg** %3, align 8
  %34 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %33, i32 0, i32 4
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.ab8500_fg*, %struct.ab8500_fg** %3, align 8
  %38 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %37, i32 0, i32 4
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp sgt i64 %36, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %32
  %43 = load i32, i32* %4, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %65

45:                                               ; preds = %42, %32, %26
  %46 = load %struct.ab8500_fg*, %struct.ab8500_fg** %3, align 8
  %47 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.ab8500_fg*, %struct.ab8500_fg** %3, align 8
  %50 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %49, i32 0, i32 4
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.ab8500_fg*, %struct.ab8500_fg** %3, align 8
  %54 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %53, i32 0, i32 4
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = call i32 (i32, i8*, ...) @dev_dbg(i32 %48, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %52, i64 %56)
  %58 = load %struct.ab8500_fg*, %struct.ab8500_fg** %3, align 8
  %59 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %58, i32 0, i32 4
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.ab8500_fg*, %struct.ab8500_fg** %3, align 8
  %63 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %62, i32 0, i32 4
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 1
  store i64 %61, i64* %64, align 8
  store i32 1, i32* %5, align 4
  br label %78

65:                                               ; preds = %42
  %66 = load %struct.ab8500_fg*, %struct.ab8500_fg** %3, align 8
  %67 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.ab8500_fg*, %struct.ab8500_fg** %3, align 8
  %70 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %69, i32 0, i32 4
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.ab8500_fg*, %struct.ab8500_fg** %3, align 8
  %74 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %73, i32 0, i32 4
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = call i32 (i32, i8*, ...) @dev_dbg(i32 %68, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.1, i64 0, i64 0), i64 %72, i64 %76)
  br label %78

78:                                               ; preds = %65, %45
  br label %79

79:                                               ; preds = %78, %2
  %80 = load %struct.ab8500_fg*, %struct.ab8500_fg** %3, align 8
  %81 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 3
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %102

85:                                               ; preds = %79
  %86 = load %struct.ab8500_fg*, %struct.ab8500_fg** %3, align 8
  %87 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = call i32 (i32, i8*, ...) @dev_dbg(i32 %88, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %90 = load %struct.ab8500_fg*, %struct.ab8500_fg** %3, align 8
  %91 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %90, i32 0, i32 4
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 2
  store i32 0, i32* %92, align 8
  %93 = load %struct.ab8500_fg*, %struct.ab8500_fg** %3, align 8
  %94 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %93, i32 0, i32 4
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 4
  store i32 0, i32* %95, align 8
  store i32 0, i32* %6, align 4
  %96 = load %struct.ab8500_fg*, %struct.ab8500_fg** %3, align 8
  %97 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %96, i32 0, i32 4
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 6
  store i64 0, i64* %98, align 8
  %99 = load %struct.ab8500_fg*, %struct.ab8500_fg** %3, align 8
  %100 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %99, i32 0, i32 4
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 5
  store i64 0, i64* %101, align 8
  store i32 1, i32* %5, align 4
  br label %264

102:                                              ; preds = %79
  %103 = load %struct.ab8500_fg*, %struct.ab8500_fg** %3, align 8
  %104 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %191

108:                                              ; preds = %102
  %109 = load %struct.ab8500_fg*, %struct.ab8500_fg** %3, align 8
  %110 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %165

114:                                              ; preds = %108
  %115 = load i32, i32* %6, align 4
  %116 = load %struct.ab8500_fg*, %struct.ab8500_fg** %3, align 8
  %117 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %116, i32 0, i32 4
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 2
  store i32 %115, i32* %118, align 8
  %119 = load %struct.ab8500_fg*, %struct.ab8500_fg** %3, align 8
  %120 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %119, i32 0, i32 4
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 5
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.ab8500_fg*, %struct.ab8500_fg** %3, align 8
  %124 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %123, i32 0, i32 4
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 6
  store i64 %122, i64* %125, align 8
  store i32 1, i32* %5, align 4
  %126 = load %struct.ab8500_fg*, %struct.ab8500_fg** %3, align 8
  %127 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %126, i32 0, i32 4
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 3
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %164, label %132

132:                                              ; preds = %114
  %133 = load %struct.ab8500_fg*, %struct.ab8500_fg** %3, align 8
  %134 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %133, i32 0, i32 5
  %135 = load %struct.TYPE_5__*, %struct.TYPE_5__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %164

139:                                              ; preds = %132
  %140 = load %struct.ab8500_fg*, %struct.ab8500_fg** %3, align 8
  %141 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %140, i32 0, i32 4
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 3
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 0
  store i32 1, i32* %143, align 8
  %144 = load %struct.ab8500_fg*, %struct.ab8500_fg** %3, align 8
  %145 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %144, i32 0, i32 4
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 3
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 1
  %148 = load i32*, i32** %147, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 0
  store i32 100, i32* %149, align 4
  %150 = load %struct.ab8500_fg*, %struct.ab8500_fg** %3, align 8
  %151 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %150, i32 0, i32 4
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.ab8500_fg*, %struct.ab8500_fg** %3, align 8
  %155 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %154, i32 0, i32 4
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i32 0, i32 3
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 1
  %158 = load i32*, i32** %157, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 1
  store i32 %153, i32* %159, align 4
  %160 = load %struct.ab8500_fg*, %struct.ab8500_fg** %3, align 8
  %161 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %160, i32 0, i32 4
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i32 0, i32 3
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 2
  store i32 100, i32* %163, align 8
  br label %164

164:                                              ; preds = %139, %132, %114
  br label %190

165:                                              ; preds = %108
  %166 = load %struct.ab8500_fg*, %struct.ab8500_fg** %3, align 8
  %167 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %166, i32 0, i32 4
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 8
  %170 = load i32, i32* %6, align 4
  %171 = icmp ne i32 %169, %170
  br i1 %171, label %172, label %189

172:                                              ; preds = %165
  %173 = load %struct.ab8500_fg*, %struct.ab8500_fg** %3, align 8
  %174 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 8
  %176 = load i32, i32* %6, align 4
  %177 = call i32 (i32, i8*, ...) @dev_dbg(i32 %175, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i32 %176)
  %178 = load i32, i32* %6, align 4
  %179 = load %struct.ab8500_fg*, %struct.ab8500_fg** %3, align 8
  %180 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %179, i32 0, i32 4
  %181 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %180, i32 0, i32 2
  store i32 %178, i32* %181, align 8
  %182 = load %struct.ab8500_fg*, %struct.ab8500_fg** %3, align 8
  %183 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %182, i32 0, i32 4
  %184 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %183, i32 0, i32 5
  %185 = load i64, i64* %184, align 8
  %186 = load %struct.ab8500_fg*, %struct.ab8500_fg** %3, align 8
  %187 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %186, i32 0, i32 4
  %188 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %187, i32 0, i32 6
  store i64 %185, i64* %188, align 8
  store i32 1, i32* %5, align 4
  br label %189

189:                                              ; preds = %172, %165
  br label %190

190:                                              ; preds = %189, %164
  br label %263

191:                                              ; preds = %102
  %192 = load %struct.ab8500_fg*, %struct.ab8500_fg** %3, align 8
  %193 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %192, i32 0, i32 4
  %194 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %193, i32 0, i32 2
  %195 = load i32, i32* %194, align 8
  %196 = load i32, i32* %6, align 4
  %197 = icmp ne i32 %195, %196
  br i1 %197, label %198, label %262

198:                                              ; preds = %191
  %199 = load i32, i32* %6, align 4
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %201, label %205

201:                                              ; preds = %198
  %202 = load %struct.ab8500_fg*, %struct.ab8500_fg** %3, align 8
  %203 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %202, i32 0, i32 4
  %204 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %203, i32 0, i32 2
  store i32 1, i32* %204, align 8
  store i32 1, i32* %6, align 4
  store i32 1, i32* %5, align 4
  br label %261

205:                                              ; preds = %198
  %206 = load %struct.ab8500_fg*, %struct.ab8500_fg** %3, align 8
  %207 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %206, i32 0, i32 1
  %208 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %207, i32 0, i32 2
  %209 = load i32, i32* %208, align 8
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %221, label %211

211:                                              ; preds = %205
  %212 = load i32, i32* %6, align 4
  %213 = load %struct.ab8500_fg*, %struct.ab8500_fg** %3, align 8
  %214 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %213, i32 0, i32 4
  %215 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %214, i32 0, i32 2
  %216 = load i32, i32* %215, align 8
  %217 = icmp sgt i32 %212, %216
  br i1 %217, label %218, label %221

218:                                              ; preds = %211
  %219 = load i32, i32* %4, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %246

221:                                              ; preds = %218, %211, %205
  %222 = load %struct.ab8500_fg*, %struct.ab8500_fg** %3, align 8
  %223 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %222, i32 0, i32 2
  %224 = load i32, i32* %223, align 8
  %225 = load %struct.ab8500_fg*, %struct.ab8500_fg** %3, align 8
  %226 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %225, i32 0, i32 4
  %227 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %226, i32 0, i32 2
  %228 = load i32, i32* %227, align 8
  %229 = load i32, i32* %6, align 4
  %230 = load %struct.ab8500_fg*, %struct.ab8500_fg** %3, align 8
  %231 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %230, i32 0, i32 4
  %232 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %231, i32 0, i32 4
  %233 = load i32, i32* %232, align 8
  %234 = call i32 (i32, i8*, ...) @dev_dbg(i32 %224, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %228, i32 %229, i32 %233)
  %235 = load i32, i32* %6, align 4
  %236 = load %struct.ab8500_fg*, %struct.ab8500_fg** %3, align 8
  %237 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %236, i32 0, i32 4
  %238 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %237, i32 0, i32 2
  store i32 %235, i32* %238, align 8
  %239 = load %struct.ab8500_fg*, %struct.ab8500_fg** %3, align 8
  %240 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %239, i32 0, i32 4
  %241 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %240, i32 0, i32 5
  %242 = load i64, i64* %241, align 8
  %243 = load %struct.ab8500_fg*, %struct.ab8500_fg** %3, align 8
  %244 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %243, i32 0, i32 4
  %245 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %244, i32 0, i32 6
  store i64 %242, i64* %245, align 8
  store i32 1, i32* %5, align 4
  br label %260

246:                                              ; preds = %218
  %247 = load %struct.ab8500_fg*, %struct.ab8500_fg** %3, align 8
  %248 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %247, i32 0, i32 2
  %249 = load i32, i32* %248, align 8
  %250 = load %struct.ab8500_fg*, %struct.ab8500_fg** %3, align 8
  %251 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %250, i32 0, i32 4
  %252 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %251, i32 0, i32 2
  %253 = load i32, i32* %252, align 8
  %254 = load i32, i32* %6, align 4
  %255 = load %struct.ab8500_fg*, %struct.ab8500_fg** %3, align 8
  %256 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %255, i32 0, i32 4
  %257 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %256, i32 0, i32 4
  %258 = load i32, i32* %257, align 8
  %259 = call i32 (i32, i8*, ...) @dev_dbg(i32 %249, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.5, i64 0, i64 0), i32 %253, i32 %254, i32 %258)
  br label %260

260:                                              ; preds = %246, %221
  br label %261

261:                                              ; preds = %260, %201
  br label %262

262:                                              ; preds = %261, %191
  br label %263

263:                                              ; preds = %262, %190
  br label %264

264:                                              ; preds = %263, %85
  %265 = load i32, i32* %5, align 4
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %325

267:                                              ; preds = %264
  %268 = load %struct.ab8500_fg*, %struct.ab8500_fg** %3, align 8
  %269 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %268, i32 0, i32 5
  %270 = load %struct.TYPE_5__*, %struct.TYPE_5__** %269, align 8
  %271 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %270, i32 0, i32 0
  %272 = load i64, i64* %271, align 8
  %273 = icmp ne i64 %272, 0
  br i1 %273, label %274, label %294

274:                                              ; preds = %267
  %275 = load %struct.ab8500_fg*, %struct.ab8500_fg** %3, align 8
  %276 = call i32 @ab8500_fg_calculate_scaled_capacity(%struct.ab8500_fg* %275)
  %277 = load %struct.ab8500_fg*, %struct.ab8500_fg** %3, align 8
  %278 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %277, i32 0, i32 4
  %279 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %278, i32 0, i32 3
  %280 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %279, i32 0, i32 3
  store i32 %276, i32* %280, align 4
  %281 = load %struct.ab8500_fg*, %struct.ab8500_fg** %3, align 8
  %282 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %281, i32 0, i32 2
  %283 = load i32, i32* %282, align 8
  %284 = load %struct.ab8500_fg*, %struct.ab8500_fg** %3, align 8
  %285 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %284, i32 0, i32 4
  %286 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %285, i32 0, i32 2
  %287 = load i32, i32* %286, align 8
  %288 = load %struct.ab8500_fg*, %struct.ab8500_fg** %3, align 8
  %289 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %288, i32 0, i32 4
  %290 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %289, i32 0, i32 3
  %291 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %290, i32 0, i32 3
  %292 = load i32, i32* %291, align 4
  %293 = call i32 @dev_info(i32 %283, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i32 %287, i32 %292)
  br label %294

294:                                              ; preds = %274, %267
  %295 = load %struct.ab8500_fg*, %struct.ab8500_fg** %3, align 8
  %296 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %295, i32 0, i32 3
  %297 = load i32, i32* %296, align 4
  %298 = call i32 @power_supply_changed(i32 %297)
  %299 = load %struct.ab8500_fg*, %struct.ab8500_fg** %3, align 8
  %300 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %299, i32 0, i32 1
  %301 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %300, i32 0, i32 1
  %302 = load i64, i64* %301, align 8
  %303 = icmp ne i64 %302, 0
  br i1 %303, label %304, label %321

304:                                              ; preds = %294
  %305 = load %struct.ab8500_fg*, %struct.ab8500_fg** %3, align 8
  %306 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %305, i32 0, i32 1
  %307 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %306, i32 0, i32 0
  %308 = load i32, i32* %307, align 8
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %310, label %321

310:                                              ; preds = %304
  %311 = load %struct.ab8500_fg*, %struct.ab8500_fg** %3, align 8
  %312 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %311, i32 0, i32 2
  %313 = load i32, i32* %312, align 8
  %314 = call i32 (i32, i8*, ...) @dev_dbg(i32 %313, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  %315 = load %struct.ab8500_fg*, %struct.ab8500_fg** %3, align 8
  %316 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %315, i32 0, i32 1
  %317 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %316, i32 0, i32 0
  store i32 0, i32* %317, align 8
  %318 = load %struct.ab8500_fg*, %struct.ab8500_fg** %3, align 8
  %319 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %318, i32 0, i32 0
  %320 = call i32 @sysfs_notify(i32* %319, i32* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0))
  br label %321

321:                                              ; preds = %310, %304, %294
  %322 = load %struct.ab8500_fg*, %struct.ab8500_fg** %3, align 8
  %323 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %322, i32 0, i32 0
  %324 = call i32 @sysfs_notify(i32* %323, i32* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0))
  br label %325

325:                                              ; preds = %321, %264
  ret void
}

declare dso_local i32 @DIV_ROUND_CLOSEST(i32, i32) #1

declare dso_local i64 @ab8500_fg_capacity_level(%struct.ab8500_fg*) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @ab8500_fg_calculate_scaled_capacity(%struct.ab8500_fg*) #1

declare dso_local i32 @dev_info(i32, i8*, i32, i32) #1

declare dso_local i32 @power_supply_changed(i32) #1

declare dso_local i32 @sysfs_notify(i32*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
