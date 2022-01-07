; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_abx500_chargalg.c_abx500_chargalg_chg_curr_maxim.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_abx500_chargalg.c_abx500_chargalg_chg_curr_maxim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.abx500_chargalg = type { %struct.TYPE_10__*, %struct.TYPE_8__, i32, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64, i32 }
%struct.TYPE_8__ = type { i32, i32, i64, i64, i32, i64, i64 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i64 }

@MAXIM_RET_NOACTION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Charger voltage has collapsed %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"lowering current\0A\00", align 1
@MAXIM_RET_CHANGE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"waiting\0A\00", align 1
@.str.3 = private unnamed_addr constant [71 x i8] c" Maximization Ibat (%dmA) too high (limit %dmA) (current iset: %dmA)!\0A\00", align 1
@MAXIM_RET_IBAT_TOO_HIGH = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [79 x i8] c" Maximization needed, increase with %d mA to %dmA (Optimal ibat: %d) Level %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.abx500_chargalg*)* @abx500_chargalg_chg_curr_maxim to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @abx500_chargalg_chg_curr_maxim(%struct.abx500_chargalg* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.abx500_chargalg*, align 8
  %4 = alloca i32, align 4
  store %struct.abx500_chargalg* %0, %struct.abx500_chargalg** %3, align 8
  %5 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %3, align 8
  %6 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %5, i32 0, i32 0
  %7 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @MAXIM_RET_NOACTION, align 4
  store i32 %14, i32* %2, align 4
  br label %261

15:                                               ; preds = %1
  %16 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %3, align 8
  %17 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %3, align 8
  %21 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = sub nsw i32 %19, %23
  store i32 %24, i32* %4, align 4
  %25 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %3, align 8
  %26 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %25, i32 0, i32 4
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %105

30:                                               ; preds = %15
  %31 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %3, align 8
  %32 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %3, align 8
  %35 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 (i32, i8*, ...) @dev_dbg(i32 %33, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %3, align 8
  %40 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %90

44:                                               ; preds = %30
  %45 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %3, align 8
  %46 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = call i32 (i32, i8*, ...) @dev_dbg(i32 %47, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %49 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %3, align 8
  %50 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %51, align 4
  %54 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %3, align 8
  %55 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %54, i32 0, i32 0
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %3, align 8
  %62 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 5
  store i64 %60, i64* %63, align 8
  %64 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %3, align 8
  %65 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 3
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %3, align 8
  %69 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 8
  %72 = sext i32 %71 to i64
  %73 = sub nsw i64 %67, %72
  %74 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %3, align 8
  %75 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 2
  store i64 %73, i64* %76, align 8
  %77 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %3, align 8
  %78 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %3, align 8
  %82 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 3
  store i64 %80, i64* %83, align 8
  %84 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %3, align 8
  %85 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 6
  %87 = load i64, i64* %86, align 8
  %88 = add nsw i64 %87, -1
  store i64 %88, i64* %86, align 8
  %89 = load i32, i32* @MAXIM_RET_CHANGE, align 4
  store i32 %89, i32* %2, align 4
  br label %261

90:                                               ; preds = %30
  %91 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %3, align 8
  %92 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = call i32 (i32, i8*, ...) @dev_dbg(i32 %93, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %95 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %3, align 8
  %96 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = add nsw i32 %98, 1
  %100 = srem i32 %99, 3
  %101 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %3, align 8
  %102 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 1
  store i32 %100, i32* %103, align 4
  %104 = load i32, i32* @MAXIM_RET_NOACTION, align 4
  store i32 %104, i32* %2, align 4
  br label %261

105:                                              ; preds = %15
  %106 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %3, align 8
  %107 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 1
  store i32 0, i32* %108, align 4
  %109 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %3, align 8
  %110 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %109, i32 0, i32 3
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %3, align 8
  %114 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = icmp sgt i32 %112, %116
  br i1 %117, label %118, label %170

118:                                              ; preds = %105
  %119 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %3, align 8
  %120 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %3, align 8
  %123 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %122, i32 0, i32 3
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %3, align 8
  %127 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %3, align 8
  %131 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 3
  %133 = load i64, i64* %132, align 8
  %134 = call i32 (i32, i8*, ...) @dev_dbg(i32 %121, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.3, i64 0, i64 0), i32 %125, i32 %129, i64 %133)
  %135 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %3, align 8
  %136 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 3
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %3, align 8
  %140 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = sext i32 %142 to i64
  %144 = icmp eq i64 %138, %143
  br i1 %144, label %145, label %147

145:                                              ; preds = %118
  %146 = load i32, i32* @MAXIM_RET_NOACTION, align 4
  store i32 %146, i32* %2, align 4
  br label %261

147:                                              ; preds = %118
  %148 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %3, align 8
  %149 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %148, i32 0, i32 0
  %150 = load %struct.TYPE_10__*, %struct.TYPE_10__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i32 0, i32 0
  %152 = load %struct.TYPE_9__*, %struct.TYPE_9__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %3, align 8
  %156 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i32 0, i32 5
  store i64 %154, i64* %157, align 8
  %158 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %3, align 8
  %159 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = sext i32 %161 to i64
  %163 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %3, align 8
  %164 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 3
  store i64 %162, i64* %165, align 8
  %166 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %3, align 8
  %167 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 6
  store i64 0, i64* %168, align 8
  %169 = load i32, i32* @MAXIM_RET_IBAT_TOO_HIGH, align 4
  store i32 %169, i32* %2, align 4
  br label %261

170:                                              ; preds = %105
  %171 = load i32, i32* %4, align 4
  %172 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %3, align 8
  %173 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %172, i32 0, i32 1
  %174 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %173, i32 0, i32 4
  %175 = load i32, i32* %174, align 8
  %176 = icmp sgt i32 %171, %175
  br i1 %176, label %177, label %249

177:                                              ; preds = %170
  %178 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %3, align 8
  %179 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %178, i32 0, i32 1
  %180 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %179, i32 0, i32 3
  %181 = load i64, i64* %180, align 8
  %182 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %3, align 8
  %183 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %182, i32 0, i32 1
  %184 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %183, i32 0, i32 4
  %185 = load i32, i32* %184, align 8
  %186 = sext i32 %185 to i64
  %187 = add nsw i64 %181, %186
  %188 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %3, align 8
  %189 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %188, i32 0, i32 1
  %190 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %189, i32 0, i32 2
  %191 = load i64, i64* %190, align 8
  %192 = icmp slt i64 %187, %191
  br i1 %192, label %193, label %249

193:                                              ; preds = %177
  %194 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %3, align 8
  %195 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %194, i32 0, i32 1
  %196 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %195, i32 0, i32 5
  %197 = load i64, i64* %196, align 8
  %198 = add nsw i64 %197, -1
  store i64 %198, i64* %196, align 8
  %199 = icmp eq i64 %197, 0
  br i1 %199, label %200, label %247

200:                                              ; preds = %193
  %201 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %3, align 8
  %202 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %201, i32 0, i32 0
  %203 = load %struct.TYPE_10__*, %struct.TYPE_10__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %203, i32 0, i32 0
  %205 = load %struct.TYPE_9__*, %struct.TYPE_9__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %3, align 8
  %209 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %208, i32 0, i32 1
  %210 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %209, i32 0, i32 5
  store i64 %207, i64* %210, align 8
  %211 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %3, align 8
  %212 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %211, i32 0, i32 1
  %213 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %212, i32 0, i32 4
  %214 = load i32, i32* %213, align 8
  %215 = sext i32 %214 to i64
  %216 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %3, align 8
  %217 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %216, i32 0, i32 1
  %218 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %217, i32 0, i32 3
  %219 = load i64, i64* %218, align 8
  %220 = add nsw i64 %219, %215
  store i64 %220, i64* %218, align 8
  %221 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %3, align 8
  %222 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %221, i32 0, i32 1
  %223 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %222, i32 0, i32 6
  %224 = load i64, i64* %223, align 8
  %225 = add nsw i64 %224, 1
  store i64 %225, i64* %223, align 8
  %226 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %3, align 8
  %227 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %226, i32 0, i32 2
  %228 = load i32, i32* %227, align 8
  %229 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %3, align 8
  %230 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %229, i32 0, i32 1
  %231 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %230, i32 0, i32 4
  %232 = load i32, i32* %231, align 8
  %233 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %3, align 8
  %234 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %233, i32 0, i32 1
  %235 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %234, i32 0, i32 3
  %236 = load i64, i64* %235, align 8
  %237 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %3, align 8
  %238 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %237, i32 0, i32 1
  %239 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %3, align 8
  %242 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %241, i32 0, i32 1
  %243 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %242, i32 0, i32 6
  %244 = load i64, i64* %243, align 8
  %245 = call i32 (i32, i8*, ...) @dev_dbg(i32 %228, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.4, i64 0, i64 0), i32 %232, i64 %236, i32 %240, i64 %244)
  %246 = load i32, i32* @MAXIM_RET_CHANGE, align 4
  store i32 %246, i32* %2, align 4
  br label %261

247:                                              ; preds = %193
  %248 = load i32, i32* @MAXIM_RET_NOACTION, align 4
  store i32 %248, i32* %2, align 4
  br label %261

249:                                              ; preds = %177, %170
  %250 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %3, align 8
  %251 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %250, i32 0, i32 0
  %252 = load %struct.TYPE_10__*, %struct.TYPE_10__** %251, align 8
  %253 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %252, i32 0, i32 0
  %254 = load %struct.TYPE_9__*, %struct.TYPE_9__** %253, align 8
  %255 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %254, i32 0, i32 0
  %256 = load i64, i64* %255, align 8
  %257 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %3, align 8
  %258 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %257, i32 0, i32 1
  %259 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %258, i32 0, i32 5
  store i64 %256, i64* %259, align 8
  %260 = load i32, i32* @MAXIM_RET_NOACTION, align 4
  store i32 %260, i32* %2, align 4
  br label %261

261:                                              ; preds = %249, %247, %200, %147, %145, %90, %44, %13
  %262 = load i32, i32* %2, align 4
  ret i32 %262
}

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
