; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_qla1280.c_qla1280_slave_configure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_qla1280.c_qla1280_slave_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i32, i32, i64, i64, i64 }
%struct.scsi_device = type { i32, i32, i64, i64, i64, i64, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64 }
%struct.scsi_qla_host = type { %struct.TYPE_17__*, %struct.TYPE_11__*, %struct.nvram }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.nvram = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.TYPE_14__, %struct.TYPE_13__ }
%struct.TYPE_14__ = type { i64, i64 }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64 }

@BIT_0 = common dso_local global i32 0, align 4
@driver_setup = common dso_local global %struct.TYPE_18__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_device*)* @qla1280_slave_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla1280_slave_configure(%struct.scsi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scsi_device*, align 8
  %4 = alloca %struct.scsi_qla_host*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.nvram*, align 8
  %10 = alloca i64, align 8
  store %struct.scsi_device* %0, %struct.scsi_device** %3, align 8
  store i32 3, i32* %5, align 4
  %11 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %12 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %6, align 4
  %14 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %15 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %17 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %18 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %17, i32 0, i32 6
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.scsi_qla_host*
  store %struct.scsi_qla_host* %22, %struct.scsi_qla_host** %4, align 8
  %23 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %24 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %23, i32 0, i32 2
  store %struct.nvram* %24, %struct.nvram** %9, align 8
  %25 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i64 @qla1280_check_for_dead_scsi_bus(%struct.scsi_qla_host* %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %240

30:                                               ; preds = %1
  %31 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %32 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %31, i32 0, i32 5
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %60

35:                                               ; preds = %30
  %36 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %37 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %36, i32 0, i32 1
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %37, align 8
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @BIT_0, align 4
  %45 = load i32, i32* %7, align 4
  %46 = shl i32 %44, %45
  %47 = and i32 %43, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %60

49:                                               ; preds = %35
  %50 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %51 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %52 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %51, i32 0, i32 1
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %52, align 8
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @scsi_change_queue_depth(%struct.scsi_device* %50, i32 %58)
  br label %64

60:                                               ; preds = %35, %30
  %61 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %62 = load i32, i32* %5, align 4
  %63 = call i32 @scsi_change_queue_depth(%struct.scsi_device* %61, i32 %62)
  br label %64

64:                                               ; preds = %60, %49
  %65 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %66 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %65, i32 0, i32 4
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.nvram*, %struct.nvram** %9, align 8
  %69 = getelementptr inbounds %struct.nvram, %struct.nvram* %68, i32 0, i32 0
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %69, align 8
  %71 = load i32, i32* %6, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %74, align 8
  %76 = load i32, i32* %7, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 0
  store i64 %67, i64* %80, align 8
  %81 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %82 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %81, i32 0, i32 3
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.nvram*, %struct.nvram** %9, align 8
  %85 = getelementptr inbounds %struct.nvram, %struct.nvram* %84, i32 0, i32 0
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %85, align 8
  %87 = load i32, i32* %6, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %90, align 8
  %92 = load i32, i32* %7, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 1
  store i64 %83, i64* %96, align 8
  %97 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %98 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.nvram*, %struct.nvram** %9, align 8
  %101 = getelementptr inbounds %struct.nvram, %struct.nvram* %100, i32 0, i32 0
  %102 = load %struct.TYPE_16__*, %struct.TYPE_16__** %101, align 8
  %103 = load i32, i32* %6, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %105, i32 0, i32 0
  %107 = load %struct.TYPE_15__*, %struct.TYPE_15__** %106, align 8
  %108 = load i32, i32* %7, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 0
  store i64 %99, i64* %113, align 8
  %114 = load i64, i64* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @driver_setup, i32 0, i32 5), align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %126, label %116

116:                                              ; preds = %64
  %117 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @driver_setup, i32 0, i32 0), align 8
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %140

119:                                              ; preds = %116
  %120 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @driver_setup, i32 0, i32 0), align 8
  %121 = xor i32 %120, -1
  %122 = load i32, i32* %7, align 4
  %123 = shl i32 1, %122
  %124 = and i32 %121, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %140

126:                                              ; preds = %119, %64
  %127 = load %struct.nvram*, %struct.nvram** %9, align 8
  %128 = getelementptr inbounds %struct.nvram, %struct.nvram* %127, i32 0, i32 0
  %129 = load %struct.TYPE_16__*, %struct.TYPE_16__** %128, align 8
  %130 = load i32, i32* %6, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %129, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %132, i32 0, i32 0
  %134 = load %struct.TYPE_15__*, %struct.TYPE_15__** %133, align 8
  %135 = load i32, i32* %7, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %134, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %138, i32 0, i32 0
  store i64 0, i64* %139, align 8
  br label %140

140:                                              ; preds = %126, %119, %116
  %141 = load i64, i64* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @driver_setup, i32 0, i32 4), align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %153, label %143

143:                                              ; preds = %140
  %144 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @driver_setup, i32 0, i32 1), align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %167

146:                                              ; preds = %143
  %147 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @driver_setup, i32 0, i32 1), align 4
  %148 = xor i32 %147, -1
  %149 = load i32, i32* %7, align 4
  %150 = shl i32 1, %149
  %151 = and i32 %148, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %167

153:                                              ; preds = %146, %140
  %154 = load %struct.nvram*, %struct.nvram** %9, align 8
  %155 = getelementptr inbounds %struct.nvram, %struct.nvram* %154, i32 0, i32 0
  %156 = load %struct.TYPE_16__*, %struct.TYPE_16__** %155, align 8
  %157 = load i32, i32* %6, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %156, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %159, i32 0, i32 0
  %161 = load %struct.TYPE_15__*, %struct.TYPE_15__** %160, align 8
  %162 = load i32, i32* %7, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %161, i64 %163
  %165 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %165, i32 0, i32 1
  store i64 0, i64* %166, align 8
  br label %167

167:                                              ; preds = %153, %146, %143
  %168 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %169 = call i64 @IS_ISP1x160(%struct.scsi_qla_host* %168)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %200

171:                                              ; preds = %167
  %172 = load i64, i64* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @driver_setup, i32 0, i32 3), align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %184, label %174

174:                                              ; preds = %171
  %175 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @driver_setup, i32 0, i32 2), align 8
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %199

177:                                              ; preds = %174
  %178 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @driver_setup, i32 0, i32 2), align 8
  %179 = xor i32 %178, -1
  %180 = load i32, i32* %7, align 4
  %181 = shl i32 1, %180
  %182 = and i32 %179, %181
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %199

184:                                              ; preds = %177, %171
  %185 = load %struct.nvram*, %struct.nvram** %9, align 8
  %186 = getelementptr inbounds %struct.nvram, %struct.nvram* %185, i32 0, i32 0
  %187 = load %struct.TYPE_16__*, %struct.TYPE_16__** %186, align 8
  %188 = load i32, i32* %6, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %187, i64 %189
  %191 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %190, i32 0, i32 0
  %192 = load %struct.TYPE_15__*, %struct.TYPE_15__** %191, align 8
  %193 = load i32, i32* %7, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %192, i64 %194
  %196 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %195, i32 0, i32 1
  %197 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %197, i32 0, i32 0
  store i64 0, i64* %198, align 8
  br label %199

199:                                              ; preds = %184, %177, %174
  br label %200

200:                                              ; preds = %199, %167
  %201 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %202 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %201, i32 0, i32 0
  %203 = load %struct.TYPE_17__*, %struct.TYPE_17__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = load i64, i64* %10, align 8
  %207 = call i32 @spin_lock_irqsave(i32 %205, i64 %206)
  %208 = load %struct.nvram*, %struct.nvram** %9, align 8
  %209 = getelementptr inbounds %struct.nvram, %struct.nvram* %208, i32 0, i32 0
  %210 = load %struct.TYPE_16__*, %struct.TYPE_16__** %209, align 8
  %211 = load i32, i32* %6, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %210, i64 %212
  %214 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %213, i32 0, i32 0
  %215 = load %struct.TYPE_15__*, %struct.TYPE_15__** %214, align 8
  %216 = load i32, i32* %7, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %215, i64 %217
  %219 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %219, i32 0, i32 0
  %221 = load i64, i64* %220, align 8
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %228

223:                                              ; preds = %200
  %224 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %225 = load i32, i32* %6, align 4
  %226 = load i32, i32* %7, align 4
  %227 = call i32 @qla1280_set_target_parameters(%struct.scsi_qla_host* %224, i32 %225, i32 %226)
  store i32 %227, i32* %8, align 4
  br label %228

228:                                              ; preds = %223, %200
  %229 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %230 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %231 = call i32 @qla1280_get_target_parameters(%struct.scsi_qla_host* %229, %struct.scsi_device* %230)
  %232 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %233 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %232, i32 0, i32 0
  %234 = load %struct.TYPE_17__*, %struct.TYPE_17__** %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 4
  %237 = load i64, i64* %10, align 8
  %238 = call i32 @spin_unlock_irqrestore(i32 %236, i64 %237)
  %239 = load i32, i32* %8, align 4
  store i32 %239, i32* %2, align 4
  br label %240

240:                                              ; preds = %228, %29
  %241 = load i32, i32* %2, align 4
  ret i32 %241
}

declare dso_local i64 @qla1280_check_for_dead_scsi_bus(%struct.scsi_qla_host*, i32) #1

declare dso_local i32 @scsi_change_queue_depth(%struct.scsi_device*, i32) #1

declare dso_local i64 @IS_ISP1x160(%struct.scsi_qla_host*) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @qla1280_set_target_parameters(%struct.scsi_qla_host*, i32, i32) #1

declare dso_local i32 @qla1280_get_target_parameters(%struct.scsi_qla_host*, %struct.scsi_device*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
