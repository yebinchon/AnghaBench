; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_qla1280.c_qla1280_set_target_defaults.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_qla1280.c_qla1280_set_target_defaults.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { %struct.nvram }
%struct.nvram = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { %struct.TYPE_15__*, i64 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_14__, %struct.TYPE_12__, %struct.TYPE_9__, i64 }
%struct.TYPE_14__ = type { %struct.TYPE_13__, %struct.TYPE_10__ }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_qla_host*, i32, i32)* @qla1280_set_target_defaults to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qla1280_set_target_defaults(%struct.scsi_qla_host* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.scsi_qla_host*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.nvram*, align 8
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %9 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %8, i32 0, i32 0
  store %struct.nvram* %9, %struct.nvram** %7, align 8
  %10 = load %struct.nvram*, %struct.nvram** %7, align 8
  %11 = getelementptr inbounds %struct.nvram, %struct.nvram* %10, i32 0, i32 0
  %12 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  store i32 1, i32* %22, align 8
  %23 = load %struct.nvram*, %struct.nvram** %7, align 8
  %24 = getelementptr inbounds %struct.nvram, %struct.nvram* %23, i32 0, i32 0
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %29, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 1
  store i32 1, i32* %35, align 4
  %36 = load %struct.nvram*, %struct.nvram** %7, align 8
  %37 = getelementptr inbounds %struct.nvram, %struct.nvram* %36, i32 0, i32 0
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %37, align 8
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 2
  store i32 1, i32* %48, align 8
  %49 = load %struct.nvram*, %struct.nvram** %7, align 8
  %50 = getelementptr inbounds %struct.nvram, %struct.nvram* %49, i32 0, i32 0
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %50, align 8
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %55, align 8
  %57 = load i32, i32* %6, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 3
  store i32 1, i32* %61, align 4
  %62 = load %struct.nvram*, %struct.nvram** %7, align 8
  %63 = getelementptr inbounds %struct.nvram, %struct.nvram* %62, i32 0, i32 0
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %63, align 8
  %65 = load i32, i32* %5, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %68, align 8
  %70 = load i32, i32* %6, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 4
  store i32 1, i32* %74, align 8
  %75 = load %struct.nvram*, %struct.nvram** %7, align 8
  %76 = getelementptr inbounds %struct.nvram, %struct.nvram* %75, i32 0, i32 0
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %76, align 8
  %78 = load i32, i32* %5, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = sub nsw i64 %82, 1
  %84 = load %struct.nvram*, %struct.nvram** %7, align 8
  %85 = getelementptr inbounds %struct.nvram, %struct.nvram* %84, i32 0, i32 0
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %85, align 8
  %87 = load i32, i32* %5, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %90, align 8
  %92 = load i32, i32* %6, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i32 0, i32 4
  store i64 %83, i64* %95, align 8
  %96 = load %struct.nvram*, %struct.nvram** %7, align 8
  %97 = getelementptr inbounds %struct.nvram, %struct.nvram* %96, i32 0, i32 0
  %98 = load %struct.TYPE_16__*, %struct.TYPE_16__** %97, align 8
  %99 = load i32, i32* %5, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_15__*, %struct.TYPE_15__** %102, align 8
  %104 = load i32, i32* %6, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %106, i32 0, i32 3
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 5
  store i32 1, i32* %108, align 4
  %109 = load %struct.nvram*, %struct.nvram** %7, align 8
  %110 = getelementptr inbounds %struct.nvram, %struct.nvram* %109, i32 0, i32 0
  %111 = load %struct.TYPE_16__*, %struct.TYPE_16__** %110, align 8
  %112 = load i32, i32* %5, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %114, i32 0, i32 0
  %116 = load %struct.TYPE_15__*, %struct.TYPE_15__** %115, align 8
  %117 = load i32, i32* %6, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %119, i32 0, i32 3
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 6
  store i32 1, i32* %121, align 8
  %122 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %123 = call i64 @IS_ISP1x160(%struct.scsi_qla_host* %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %208

125:                                              ; preds = %3
  %126 = load %struct.nvram*, %struct.nvram** %7, align 8
  %127 = getelementptr inbounds %struct.nvram, %struct.nvram* %126, i32 0, i32 0
  %128 = load %struct.TYPE_16__*, %struct.TYPE_16__** %127, align 8
  %129 = load i32, i32* %5, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %128, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %131, i32 0, i32 0
  %133 = load %struct.TYPE_15__*, %struct.TYPE_15__** %132, align 8
  %134 = load i32, i32* %6, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %133, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 0
  store i32 1, i32* %139, align 4
  %140 = load %struct.nvram*, %struct.nvram** %7, align 8
  %141 = getelementptr inbounds %struct.nvram, %struct.nvram* %140, i32 0, i32 0
  %142 = load %struct.TYPE_16__*, %struct.TYPE_16__** %141, align 8
  %143 = load i32, i32* %5, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %142, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %145, i32 0, i32 0
  %147 = load %struct.TYPE_15__*, %struct.TYPE_15__** %146, align 8
  %148 = load i32, i32* %6, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %147, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %152, i32 0, i32 1
  store i32 14, i32* %153, align 4
  %154 = load %struct.nvram*, %struct.nvram** %7, align 8
  %155 = getelementptr inbounds %struct.nvram, %struct.nvram* %154, i32 0, i32 0
  %156 = load %struct.TYPE_16__*, %struct.TYPE_16__** %155, align 8
  %157 = load i32, i32* %5, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %156, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %159, i32 0, i32 0
  %161 = load %struct.TYPE_15__*, %struct.TYPE_15__** %160, align 8
  %162 = load i32, i32* %6, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %161, i64 %163
  %165 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %164, i32 0, i32 0
  store i32 9, i32* %165, align 8
  %166 = load %struct.nvram*, %struct.nvram** %7, align 8
  %167 = getelementptr inbounds %struct.nvram, %struct.nvram* %166, i32 0, i32 0
  %168 = load %struct.TYPE_16__*, %struct.TYPE_16__** %167, align 8
  %169 = load i32, i32* %5, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %168, i64 %170
  %172 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %171, i32 0, i32 0
  %173 = load %struct.TYPE_15__*, %struct.TYPE_15__** %172, align 8
  %174 = load i32, i32* %6, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %173, i64 %175
  %177 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %176, i32 0, i32 2
  %178 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %178, i32 0, i32 0
  store i32 1, i32* %179, align 4
  %180 = load %struct.nvram*, %struct.nvram** %7, align 8
  %181 = getelementptr inbounds %struct.nvram, %struct.nvram* %180, i32 0, i32 0
  %182 = load %struct.TYPE_16__*, %struct.TYPE_16__** %181, align 8
  %183 = load i32, i32* %5, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %182, i64 %184
  %186 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %185, i32 0, i32 0
  %187 = load %struct.TYPE_15__*, %struct.TYPE_15__** %186, align 8
  %188 = load i32, i32* %6, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %187, i64 %189
  %191 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %190, i32 0, i32 2
  %192 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %192, i32 0, i32 1
  store i32 2, i32* %193, align 4
  %194 = load %struct.nvram*, %struct.nvram** %7, align 8
  %195 = getelementptr inbounds %struct.nvram, %struct.nvram* %194, i32 0, i32 0
  %196 = load %struct.TYPE_16__*, %struct.TYPE_16__** %195, align 8
  %197 = load i32, i32* %5, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %196, i64 %198
  %200 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %199, i32 0, i32 0
  %201 = load %struct.TYPE_15__*, %struct.TYPE_15__** %200, align 8
  %202 = load i32, i32* %6, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %201, i64 %203
  %205 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %204, i32 0, i32 2
  %206 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %206, i32 0, i32 2
  store i32 1, i32* %207, align 4
  br label %249

208:                                              ; preds = %3
  %209 = load %struct.nvram*, %struct.nvram** %7, align 8
  %210 = getelementptr inbounds %struct.nvram, %struct.nvram* %209, i32 0, i32 0
  %211 = load %struct.TYPE_16__*, %struct.TYPE_16__** %210, align 8
  %212 = load i32, i32* %5, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %211, i64 %213
  %215 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %214, i32 0, i32 0
  %216 = load %struct.TYPE_15__*, %struct.TYPE_15__** %215, align 8
  %217 = load i32, i32* %6, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %216, i64 %218
  %220 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %219, i32 0, i32 1
  %221 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %221, i32 0, i32 0
  store i32 1, i32* %222, align 4
  %223 = load %struct.nvram*, %struct.nvram** %7, align 8
  %224 = getelementptr inbounds %struct.nvram, %struct.nvram* %223, i32 0, i32 0
  %225 = load %struct.TYPE_16__*, %struct.TYPE_16__** %224, align 8
  %226 = load i32, i32* %5, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %225, i64 %227
  %229 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %228, i32 0, i32 0
  %230 = load %struct.TYPE_15__*, %struct.TYPE_15__** %229, align 8
  %231 = load i32, i32* %6, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %230, i64 %232
  %234 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %233, i32 0, i32 1
  %235 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %234, i32 0, i32 0
  %236 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %235, i32 0, i32 1
  store i32 12, i32* %236, align 4
  %237 = load %struct.nvram*, %struct.nvram** %7, align 8
  %238 = getelementptr inbounds %struct.nvram, %struct.nvram* %237, i32 0, i32 0
  %239 = load %struct.TYPE_16__*, %struct.TYPE_16__** %238, align 8
  %240 = load i32, i32* %5, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %239, i64 %241
  %243 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %242, i32 0, i32 0
  %244 = load %struct.TYPE_15__*, %struct.TYPE_15__** %243, align 8
  %245 = load i32, i32* %6, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %244, i64 %246
  %248 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %247, i32 0, i32 0
  store i32 10, i32* %248, align 8
  br label %249

249:                                              ; preds = %208, %125
  ret void
}

declare dso_local i64 @IS_ISP1x160(%struct.scsi_qla_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
