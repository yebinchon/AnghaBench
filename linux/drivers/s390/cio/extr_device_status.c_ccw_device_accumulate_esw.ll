; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_device_status.c_ccw_device_accumulate_esw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_device_status.c_ccw_device_accumulate_esw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw_device = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.TYPE_14__, %struct.TYPE_10__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_10__ = type { %struct.irb }
%struct.irb = type { %struct.TYPE_18__, %struct.TYPE_13__ }
%struct.TYPE_18__ = type { %struct.TYPE_17__, %struct.TYPE_11__ }
%struct.TYPE_17__ = type { %struct.TYPE_16__, i32, i32, %struct.sublog }
%struct.TYPE_16__ = type { i32, i64, i64, i32, i64, i32, i64, i32 }
%struct.sublog = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i64 }

@SCHN_STAT_CHN_DATA_CHK = common dso_local global i32 0, align 4
@SCHN_STAT_CHN_CTRL_CHK = common dso_local global i32 0, align 4
@SCHN_STAT_INTF_CTRL_CHK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ccw_device*, %struct.irb*)* @ccw_device_accumulate_esw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ccw_device_accumulate_esw(%struct.ccw_device* %0, %struct.irb* %1) #0 {
  %3 = alloca %struct.ccw_device*, align 8
  %4 = alloca %struct.irb*, align 8
  %5 = alloca %struct.irb*, align 8
  %6 = alloca %struct.sublog*, align 8
  %7 = alloca %struct.sublog*, align 8
  store %struct.ccw_device* %0, %struct.ccw_device** %3, align 8
  store %struct.irb* %1, %struct.irb** %4, align 8
  %8 = load %struct.irb*, %struct.irb** %4, align 8
  %9 = call i32 @ccw_device_accumulate_esw_valid(%struct.irb* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %261

12:                                               ; preds = %2
  %13 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %14 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %13, i32 0, i32 0
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  store %struct.irb* %18, %struct.irb** %5, align 8
  %19 = load %struct.irb*, %struct.irb** %4, align 8
  %20 = getelementptr inbounds %struct.irb, %struct.irb* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.irb*, %struct.irb** %5, align 8
  %25 = getelementptr inbounds %struct.irb, %struct.irb* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  store i32 %23, i32* %27, align 8
  %28 = load %struct.irb*, %struct.irb** %4, align 8
  %29 = getelementptr inbounds %struct.irb, %struct.irb* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %194

34:                                               ; preds = %12
  %35 = load %struct.irb*, %struct.irb** %5, align 8
  %36 = getelementptr inbounds %struct.irb, %struct.irb* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 3
  store %struct.sublog* %38, %struct.sublog** %6, align 8
  %39 = load %struct.irb*, %struct.irb** %4, align 8
  %40 = getelementptr inbounds %struct.irb, %struct.irb* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %41, i32 0, i32 3
  store %struct.sublog* %42, %struct.sublog** %7, align 8
  %43 = load %struct.sublog*, %struct.sublog** %7, align 8
  %44 = getelementptr inbounds %struct.sublog, %struct.sublog* %43, i32 0, i32 8
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.sublog*, %struct.sublog** %6, align 8
  %47 = getelementptr inbounds %struct.sublog, %struct.sublog* %46, i32 0, i32 8
  store i32 %45, i32* %47, align 4
  %48 = load %struct.irb*, %struct.irb** %4, align 8
  %49 = getelementptr inbounds %struct.irb, %struct.irb* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @SCHN_STAT_CHN_DATA_CHK, align 4
  %54 = load i32, i32* @SCHN_STAT_CHN_CTRL_CHK, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @SCHN_STAT_INTF_CTRL_CHK, align 4
  %57 = or i32 %55, %56
  %58 = and i32 %52, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %86

60:                                               ; preds = %34
  %61 = load %struct.sublog*, %struct.sublog** %7, align 8
  %62 = getelementptr inbounds %struct.sublog, %struct.sublog* %61, i32 0, i32 7
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.sublog*, %struct.sublog** %6, align 8
  %65 = getelementptr inbounds %struct.sublog, %struct.sublog* %64, i32 0, i32 7
  store i32 %63, i32* %65, align 4
  %66 = load %struct.sublog*, %struct.sublog** %7, align 8
  %67 = getelementptr inbounds %struct.sublog, %struct.sublog* %66, i32 0, i32 6
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.sublog*, %struct.sublog** %6, align 8
  %70 = getelementptr inbounds %struct.sublog, %struct.sublog* %69, i32 0, i32 6
  store i32 %68, i32* %70, align 4
  %71 = load %struct.sublog*, %struct.sublog** %7, align 8
  %72 = getelementptr inbounds %struct.sublog, %struct.sublog* %71, i32 0, i32 5
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.sublog*, %struct.sublog** %6, align 8
  %75 = getelementptr inbounds %struct.sublog, %struct.sublog* %74, i32 0, i32 5
  store i32 %73, i32* %75, align 4
  %76 = load %struct.sublog*, %struct.sublog** %7, align 8
  %77 = getelementptr inbounds %struct.sublog, %struct.sublog* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.sublog*, %struct.sublog** %6, align 8
  %80 = getelementptr inbounds %struct.sublog, %struct.sublog* %79, i32 0, i32 4
  store i32 %78, i32* %80, align 4
  %81 = load %struct.sublog*, %struct.sublog** %7, align 8
  %82 = getelementptr inbounds %struct.sublog, %struct.sublog* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.sublog*, %struct.sublog** %6, align 8
  %85 = getelementptr inbounds %struct.sublog, %struct.sublog* %84, i32 0, i32 3
  store i32 %83, i32* %85, align 4
  br label %86

86:                                               ; preds = %60, %34
  %87 = load %struct.sublog*, %struct.sublog** %7, align 8
  %88 = getelementptr inbounds %struct.sublog, %struct.sublog* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.sublog*, %struct.sublog** %6, align 8
  %91 = getelementptr inbounds %struct.sublog, %struct.sublog* %90, i32 0, i32 2
  store i32 %89, i32* %91, align 4
  %92 = load %struct.sublog*, %struct.sublog** %7, align 8
  %93 = getelementptr inbounds %struct.sublog, %struct.sublog* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.sublog*, %struct.sublog** %6, align 8
  %96 = getelementptr inbounds %struct.sublog, %struct.sublog* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 4
  %97 = load %struct.sublog*, %struct.sublog** %7, align 8
  %98 = getelementptr inbounds %struct.sublog, %struct.sublog* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.sublog*, %struct.sublog** %6, align 8
  %101 = getelementptr inbounds %struct.sublog, %struct.sublog* %100, i32 0, i32 0
  store i32 %99, i32* %101, align 4
  %102 = load %struct.irb*, %struct.irb** %4, align 8
  %103 = getelementptr inbounds %struct.irb, %struct.irb* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @SCHN_STAT_INTF_CTRL_CHK, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %122

110:                                              ; preds = %86
  %111 = load %struct.irb*, %struct.irb** %4, align 8
  %112 = getelementptr inbounds %struct.irb, %struct.irb* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %114, i32 0, i32 7
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.irb*, %struct.irb** %5, align 8
  %118 = getelementptr inbounds %struct.irb, %struct.irb* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %120, i32 0, i32 7
  store i32 %116, i32* %121, align 8
  br label %122

122:                                              ; preds = %110, %86
  %123 = load %struct.irb*, %struct.irb** %4, align 8
  %124 = getelementptr inbounds %struct.irb, %struct.irb* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %126, i32 0, i32 6
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.irb*, %struct.irb** %5, align 8
  %130 = getelementptr inbounds %struct.irb, %struct.irb* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %132, i32 0, i32 6
  store i64 %128, i64* %133, align 8
  %134 = load %struct.irb*, %struct.irb** %5, align 8
  %135 = getelementptr inbounds %struct.irb, %struct.irb* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %137, i32 0, i32 6
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %164

141:                                              ; preds = %122
  %142 = load %struct.irb*, %struct.irb** %5, align 8
  %143 = getelementptr inbounds %struct.irb, %struct.irb* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.irb*, %struct.irb** %4, align 8
  %148 = getelementptr inbounds %struct.irb, %struct.irb* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @memcpy(i32 %146, i32 %151, i32 4)
  %153 = load %struct.irb*, %struct.irb** %4, align 8
  %154 = getelementptr inbounds %struct.irb, %struct.irb* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %156, i32 0, i32 5
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.irb*, %struct.irb** %5, align 8
  %160 = getelementptr inbounds %struct.irb, %struct.irb* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %162, i32 0, i32 5
  store i32 %158, i32* %163, align 8
  br label %164

164:                                              ; preds = %141, %122
  %165 = load %struct.irb*, %struct.irb** %4, align 8
  %166 = getelementptr inbounds %struct.irb, %struct.irb* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %168, i32 0, i32 4
  %170 = load i64, i64* %169, align 8
  %171 = load %struct.irb*, %struct.irb** %5, align 8
  %172 = getelementptr inbounds %struct.irb, %struct.irb* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %174, i32 0, i32 4
  store i64 %170, i64* %175, align 8
  %176 = load %struct.irb*, %struct.irb** %4, align 8
  %177 = getelementptr inbounds %struct.irb, %struct.irb* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %179, i32 0, i32 4
  %181 = load i64, i64* %180, align 8
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %193

183:                                              ; preds = %164
  %184 = load %struct.irb*, %struct.irb** %4, align 8
  %185 = getelementptr inbounds %struct.irb, %struct.irb* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 8
  %189 = load %struct.irb*, %struct.irb** %5, align 8
  %190 = getelementptr inbounds %struct.irb, %struct.irb* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %191, i32 0, i32 1
  store i32 %188, i32* %192, align 8
  br label %193

193:                                              ; preds = %183, %164
  br label %194

194:                                              ; preds = %193, %12
  %195 = load %struct.irb*, %struct.irb** %4, align 8
  %196 = getelementptr inbounds %struct.irb, %struct.irb* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %198, i32 0, i32 3
  %200 = load i32, i32* %199, align 8
  %201 = load %struct.irb*, %struct.irb** %5, align 8
  %202 = getelementptr inbounds %struct.irb, %struct.irb* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %204, i32 0, i32 3
  store i32 %200, i32* %205, align 8
  %206 = load %struct.irb*, %struct.irb** %4, align 8
  %207 = getelementptr inbounds %struct.irb, %struct.irb* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %209, i32 0, i32 2
  %211 = load i64, i64* %210, align 8
  %212 = load %struct.irb*, %struct.irb** %5, align 8
  %213 = getelementptr inbounds %struct.irb, %struct.irb* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %215, i32 0, i32 2
  store i64 %211, i64* %216, align 8
  %217 = load %struct.irb*, %struct.irb** %4, align 8
  %218 = getelementptr inbounds %struct.irb, %struct.irb* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %220, i32 0, i32 2
  %222 = load i64, i64* %221, align 8
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %230

224:                                              ; preds = %194
  %225 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %226 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %225, i32 0, i32 0
  %227 = load %struct.TYPE_15__*, %struct.TYPE_15__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %228, i32 0, i32 0
  store i32 1, i32* %229, align 8
  br label %230

230:                                              ; preds = %224, %194
  %231 = load %struct.irb*, %struct.irb** %4, align 8
  %232 = getelementptr inbounds %struct.irb, %struct.irb* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %232, i32 0, i32 0
  %234 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %234, i32 0, i32 1
  %236 = load i64, i64* %235, align 8
  %237 = load %struct.irb*, %struct.irb** %5, align 8
  %238 = getelementptr inbounds %struct.irb, %struct.irb* %237, i32 0, i32 0
  %239 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %238, i32 0, i32 0
  %240 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %239, i32 0, i32 0
  %241 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %240, i32 0, i32 1
  store i64 %236, i64* %241, align 8
  %242 = load %struct.irb*, %struct.irb** %4, align 8
  %243 = getelementptr inbounds %struct.irb, %struct.irb* %242, i32 0, i32 0
  %244 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %243, i32 0, i32 0
  %245 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %244, i32 0, i32 0
  %246 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %245, i32 0, i32 1
  %247 = load i64, i64* %246, align 8
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %249, label %261

249:                                              ; preds = %230
  %250 = load %struct.irb*, %struct.irb** %4, align 8
  %251 = getelementptr inbounds %struct.irb, %struct.irb* %250, i32 0, i32 0
  %252 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %251, i32 0, i32 0
  %253 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %252, i32 0, i32 0
  %254 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 8
  %256 = load %struct.irb*, %struct.irb** %5, align 8
  %257 = getelementptr inbounds %struct.irb, %struct.irb* %256, i32 0, i32 0
  %258 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %257, i32 0, i32 0
  %259 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %258, i32 0, i32 0
  %260 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %259, i32 0, i32 0
  store i32 %255, i32* %260, align 8
  br label %261

261:                                              ; preds = %11, %249, %230
  ret void
}

declare dso_local i32 @ccw_device_accumulate_esw_valid(%struct.irb*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
