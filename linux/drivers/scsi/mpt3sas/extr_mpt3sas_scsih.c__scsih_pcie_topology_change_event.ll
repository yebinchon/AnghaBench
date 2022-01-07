; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/mpt3sas/extr_mpt3sas_scsih.c__scsih_pcie_topology_change_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/mpt3sas/extr_mpt3sas_scsih.c__scsih_pcie_topology_change_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPT3SAS_ADAPTER = type { i32, i64, i32, i32, i64, i64 }
%struct.fw_event_work = type { i64, i64 }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct._pcie_device = type { i32 }

@MPT_DEBUG_EVENT_WORK_TASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"ignoring switch event\0A\00", align 1
@MPI26_EVENT_PCIE_TOPO_PI_RATE_MASK = common dso_local global i32 0, align 4
@MPI26_EVENT_PCIE_TOPO_PI_RATE_2_5 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [64 x i8] c"handle(0x%04x) device not found: convert event to a device add\0A\00", align 1
@MPI26_EVENT_PCIE_TOPO_PS_NO_CHANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.MPT3SAS_ADAPTER*, %struct.fw_event_work*)* @_scsih_pcie_topology_change_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_scsih_pcie_topology_change_event(%struct.MPT3SAS_ADAPTER* %0, %struct.fw_event_work* %1) #0 {
  %3 = alloca %struct.MPT3SAS_ADAPTER*, align 8
  %4 = alloca %struct.fw_event_work*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_5__*, align 8
  %13 = alloca %struct._pcie_device*, align 8
  store %struct.MPT3SAS_ADAPTER* %0, %struct.MPT3SAS_ADAPTER** %3, align 8
  store %struct.fw_event_work* %1, %struct.fw_event_work** %4, align 8
  %14 = load %struct.fw_event_work*, %struct.fw_event_work** %4, align 8
  %15 = getelementptr inbounds %struct.fw_event_work, %struct.fw_event_work* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %17, %struct.TYPE_5__** %12, align 8
  %18 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %19 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @MPT_DEBUG_EVENT_WORK_TASK, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %2
  %25 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %27 = call i32 @_scsih_pcie_topology_change_event_debug(%struct.MPT3SAS_ADAPTER* %25, %struct.TYPE_5__* %26)
  br label %28

28:                                               ; preds = %24, %2
  %29 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %30 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %43, label %33

33:                                               ; preds = %28
  %34 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %35 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %34, i32 0, i32 5
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %33
  %39 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %40 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %39, i32 0, i32 4
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %38, %33, %28
  br label %230

44:                                               ; preds = %38
  %45 = load %struct.fw_event_work*, %struct.fw_event_work** %4, align 8
  %46 = getelementptr inbounds %struct.fw_event_work, %struct.fw_event_work* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %44
  %50 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %51 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %52 = call i32 (%struct.MPT3SAS_ADAPTER*, i8*, ...) @ioc_info(%struct.MPT3SAS_ADAPTER* %51, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %53 = call i32 @dewtprintk(%struct.MPT3SAS_ADAPTER* %50, i32 %52)
  br label %230

54:                                               ; preds = %44
  store i32 0, i32* %5, align 4
  br label %55

55:                                               ; preds = %227, %54
  %56 = load i32, i32* %5, align 4
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp slt i32 %56, %59
  br i1 %60, label %61, label %230

61:                                               ; preds = %55
  %62 = load %struct.fw_event_work*, %struct.fw_event_work** %4, align 8
  %63 = getelementptr inbounds %struct.fw_event_work, %struct.fw_event_work* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %61
  %67 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %68 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %69 = call i32 (%struct.MPT3SAS_ADAPTER*, i8*, ...) @ioc_info(%struct.MPT3SAS_ADAPTER* %68, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %70 = call i32 @dewtprintk(%struct.MPT3SAS_ADAPTER* %67, i32 %69)
  br label %230

71:                                               ; preds = %61
  %72 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %73 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %72, i32 0, i32 5
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %81, label %76

76:                                               ; preds = %71
  %77 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %78 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %77, i32 0, i32 4
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %76, %71
  br label %230

82:                                               ; preds = %76
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 1
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = load i32, i32* %5, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  store i32 %90, i32* %7, align 4
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 1
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %92, align 8
  %94 = load i32, i32* %5, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @le16_to_cpu(i32 %98)
  store i32 %99, i32* %6, align 4
  %100 = load i32, i32* %6, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %103, label %102

102:                                              ; preds = %82
  br label %227

103:                                              ; preds = %82
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 1
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %105, align 8
  %107 = load i32, i32* %5, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @MPI26_EVENT_PCIE_TOPO_PI_RATE_MASK, align 4
  %113 = and i32 %111, %112
  store i32 %113, i32* %8, align 4
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 1
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %115, align 8
  %117 = load i32, i32* %5, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @MPI26_EVENT_PCIE_TOPO_PI_RATE_MASK, align 4
  %123 = and i32 %121, %122
  store i32 %123, i32* %9, align 4
  %124 = load i32, i32* %7, align 4
  switch i32 %124, label %226 [
    i32 128, label %125
    i32 130, label %193
    i32 129, label %222
  ]

125:                                              ; preds = %103
  %126 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %127 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %125
  br label %226

131:                                              ; preds = %125
  %132 = load i32, i32* %8, align 4
  %133 = load i32, i32* %9, align 4
  %134 = icmp eq i32 %132, %133
  br i1 %134, label %135, label %136

135:                                              ; preds = %131
  br label %226

136:                                              ; preds = %131
  %137 = load i32, i32* %8, align 4
  %138 = load i32, i32* @MPI26_EVENT_PCIE_TOPO_PI_RATE_2_5, align 4
  %139 = icmp slt i32 %137, %138
  br i1 %139, label %140, label %141

140:                                              ; preds = %136
  br label %226

141:                                              ; preds = %136
  %142 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %143 = load i32, i32* %6, align 4
  %144 = call i32 @_scsih_pcie_check_device(%struct.MPT3SAS_ADAPTER* %142, i32 %143)
  %145 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %146 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %145, i32 0, i32 3
  %147 = load i64, i64* %10, align 8
  %148 = call i32 @spin_lock_irqsave(i32* %146, i64 %147)
  %149 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %150 = load i32, i32* %6, align 4
  %151 = call %struct._pcie_device* @__mpt3sas_get_pdev_by_handle(%struct.MPT3SAS_ADAPTER* %149, i32 %150)
  store %struct._pcie_device* %151, %struct._pcie_device** %13, align 8
  %152 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %153 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %152, i32 0, i32 3
  %154 = load i64, i64* %10, align 8
  %155 = call i32 @spin_unlock_irqrestore(i32* %153, i64 %154)
  %156 = load %struct._pcie_device*, %struct._pcie_device** %13, align 8
  %157 = icmp ne %struct._pcie_device* %156, null
  br i1 %157, label %158, label %161

158:                                              ; preds = %141
  %159 = load %struct._pcie_device*, %struct._pcie_device** %13, align 8
  %160 = call i32 @pcie_device_put(%struct._pcie_device* %159)
  br label %226

161:                                              ; preds = %141
  %162 = load i32, i32* %6, align 4
  %163 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %164 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 8
  %166 = call i32 @test_bit(i32 %162, i32 %165)
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %169, label %168

168:                                              ; preds = %161
  br label %226

169:                                              ; preds = %161
  %170 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %171 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %172 = load i32, i32* %6, align 4
  %173 = call i32 (%struct.MPT3SAS_ADAPTER*, i8*, ...) @ioc_info(%struct.MPT3SAS_ADAPTER* %171, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0), i32 %172)
  %174 = call i32 @dewtprintk(%struct.MPT3SAS_ADAPTER* %170, i32 %173)
  %175 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %176 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %175, i32 0, i32 1
  %177 = load %struct.TYPE_4__*, %struct.TYPE_4__** %176, align 8
  %178 = load i32, i32* %5, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i64 %179
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = and i32 %182, 240
  store i32 %183, i32* %181, align 4
  %184 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %185 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %184, i32 0, i32 1
  %186 = load %struct.TYPE_4__*, %struct.TYPE_4__** %185, align 8
  %187 = load i32, i32* %5, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i64 %188
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = or i32 %191, 130
  store i32 %192, i32* %190, align 4
  br label %193

193:                                              ; preds = %103, %169
  %194 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %195 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %194, i32 0, i32 1
  %196 = load i64, i64* %195, align 8
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %199

198:                                              ; preds = %193
  br label %226

199:                                              ; preds = %193
  %200 = load i32, i32* %8, align 4
  %201 = load i32, i32* @MPI26_EVENT_PCIE_TOPO_PI_RATE_2_5, align 4
  %202 = icmp slt i32 %200, %201
  br i1 %202, label %203, label %204

203:                                              ; preds = %199
  br label %226

204:                                              ; preds = %199
  %205 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %206 = load i32, i32* %6, align 4
  %207 = call i32 @_scsih_pcie_add_device(%struct.MPT3SAS_ADAPTER* %205, i32 %206)
  store i32 %207, i32* %11, align 4
  %208 = load i32, i32* %11, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %221, label %210

210:                                              ; preds = %204
  %211 = load i32, i32* @MPI26_EVENT_PCIE_TOPO_PS_NO_CHANGE, align 4
  %212 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %213 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %212, i32 0, i32 1
  %214 = load %struct.TYPE_4__*, %struct.TYPE_4__** %213, align 8
  %215 = load i32, i32* %5, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %214, i64 %216
  %218 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = or i32 %219, %211
  store i32 %220, i32* %218, align 4
  br label %221

221:                                              ; preds = %210, %204
  br label %226

222:                                              ; preds = %103
  %223 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %224 = load i32, i32* %6, align 4
  %225 = call i32 @_scsih_pcie_device_remove_by_handle(%struct.MPT3SAS_ADAPTER* %223, i32 %224)
  br label %226

226:                                              ; preds = %103, %222, %221, %203, %198, %168, %158, %140, %135, %130
  br label %227

227:                                              ; preds = %226, %102
  %228 = load i32, i32* %5, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %5, align 4
  br label %55

230:                                              ; preds = %43, %49, %66, %81, %55
  ret void
}

declare dso_local i32 @_scsih_pcie_topology_change_event_debug(%struct.MPT3SAS_ADAPTER*, %struct.TYPE_5__*) #1

declare dso_local i32 @dewtprintk(%struct.MPT3SAS_ADAPTER*, i32) #1

declare dso_local i32 @ioc_info(%struct.MPT3SAS_ADAPTER*, i8*, ...) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @_scsih_pcie_check_device(%struct.MPT3SAS_ADAPTER*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct._pcie_device* @__mpt3sas_get_pdev_by_handle(%struct.MPT3SAS_ADAPTER*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @pcie_device_put(%struct._pcie_device*) #1

declare dso_local i32 @test_bit(i32, i32) #1

declare dso_local i32 @_scsih_pcie_add_device(%struct.MPT3SAS_ADAPTER*, i32) #1

declare dso_local i32 @_scsih_pcie_device_remove_by_handle(%struct.MPT3SAS_ADAPTER*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
