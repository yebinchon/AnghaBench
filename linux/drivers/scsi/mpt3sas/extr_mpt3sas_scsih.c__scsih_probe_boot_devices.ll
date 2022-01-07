; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/mpt3sas/extr_mpt3sas_scsih.c__scsih_probe_boot_devices.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/mpt3sas/extr_mpt3sas_scsih.c__scsih_probe_boot_devices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPT3SAS_ADAPTER = type { i32, i64, i32, i32, i32, i32, i32, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i64, i8* }
%struct.TYPE_7__ = type { i64, i8* }
%struct.TYPE_6__ = type { i64, i8* }
%struct.TYPE_5__ = type { i32 }
%struct._sas_device = type { i32, i32, i32, i32, i32 }
%struct._raid_device = type { i32 }
%struct._pcie_device = type { i32, i32 }

@RAID_CHANNEL = common dso_local global i64 0, align 8
@PCIE_CHANNEL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.MPT3SAS_ADAPTER*)* @_scsih_probe_boot_devices to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_scsih_probe_boot_devices(%struct.MPT3SAS_ADAPTER* %0) #0 {
  %2 = alloca %struct.MPT3SAS_ADAPTER*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct._sas_device*, align 8
  %6 = alloca %struct._raid_device*, align 8
  %7 = alloca %struct._pcie_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.MPT3SAS_ADAPTER* %0, %struct.MPT3SAS_ADAPTER** %2, align 8
  %14 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %15 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %14, i32 0, i32 10
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %1
  br label %191

20:                                               ; preds = %1
  store i8* null, i8** %4, align 8
  %21 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %22 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %21, i32 0, i32 9
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  %24 = load i8*, i8** %23, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %35

26:                                               ; preds = %20
  %27 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %28 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %27, i32 0, i32 9
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  %30 = load i8*, i8** %29, align 8
  store i8* %30, i8** %4, align 8
  %31 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %32 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %31, i32 0, i32 9
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %3, align 8
  br label %67

35:                                               ; preds = %20
  %36 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %37 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %36, i32 0, i32 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 1
  %39 = load i8*, i8** %38, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %50

41:                                               ; preds = %35
  %42 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %43 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %42, i32 0, i32 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 1
  %45 = load i8*, i8** %44, align 8
  store i8* %45, i8** %4, align 8
  %46 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %47 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %46, i32 0, i32 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %3, align 8
  br label %66

50:                                               ; preds = %35
  %51 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %52 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %51, i32 0, i32 7
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 1
  %54 = load i8*, i8** %53, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %65

56:                                               ; preds = %50
  %57 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %58 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %57, i32 0, i32 7
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 1
  %60 = load i8*, i8** %59, align 8
  store i8* %60, i8** %4, align 8
  %61 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %62 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %61, i32 0, i32 7
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  store i64 %64, i64* %3, align 8
  br label %65

65:                                               ; preds = %56, %50
  br label %66

66:                                               ; preds = %65, %41
  br label %67

67:                                               ; preds = %66, %26
  %68 = load i8*, i8** %4, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %71, label %70

70:                                               ; preds = %67
  br label %191

71:                                               ; preds = %67
  %72 = load i64, i64* %3, align 8
  %73 = load i64, i64* @RAID_CHANNEL, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %93

75:                                               ; preds = %71
  %76 = load i8*, i8** %4, align 8
  %77 = bitcast i8* %76 to %struct._raid_device*
  store %struct._raid_device* %77, %struct._raid_device** %6, align 8
  %78 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %79 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 8
  %81 = load i64, i64* @RAID_CHANNEL, align 8
  %82 = load %struct._raid_device*, %struct._raid_device** %6, align 8
  %83 = getelementptr inbounds %struct._raid_device, %struct._raid_device* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @scsi_add_device(i32 %80, i64 %81, i32 %84, i32 0)
  store i32 %85, i32* %12, align 4
  %86 = load i32, i32* %12, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %75
  %89 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %90 = load %struct._raid_device*, %struct._raid_device** %6, align 8
  %91 = call i32 @_scsih_raid_device_remove(%struct.MPT3SAS_ADAPTER* %89, %struct._raid_device* %90)
  br label %92

92:                                               ; preds = %88, %75
  br label %191

93:                                               ; preds = %71
  %94 = load i64, i64* %3, align 8
  %95 = load i64, i64* @PCIE_CHANNEL, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %129

97:                                               ; preds = %93
  %98 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %99 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %98, i32 0, i32 5
  %100 = load i64, i64* %11, align 8
  %101 = call i32 @spin_lock_irqsave(i32* %99, i64 %100)
  %102 = load i8*, i8** %4, align 8
  %103 = bitcast i8* %102 to %struct._pcie_device*
  store %struct._pcie_device* %103, %struct._pcie_device** %7, align 8
  %104 = load %struct._pcie_device*, %struct._pcie_device** %7, align 8
  %105 = getelementptr inbounds %struct._pcie_device, %struct._pcie_device* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  store i32 %106, i32* %13, align 4
  %107 = load %struct._pcie_device*, %struct._pcie_device** %7, align 8
  %108 = getelementptr inbounds %struct._pcie_device, %struct._pcie_device* %107, i32 0, i32 1
  %109 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %110 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %109, i32 0, i32 6
  %111 = call i32 @list_move_tail(i32* %108, i32* %110)
  %112 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %113 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %112, i32 0, i32 5
  %114 = load i64, i64* %11, align 8
  %115 = call i32 @spin_unlock_irqrestore(i32* %113, i64 %114)
  %116 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %117 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %116, i32 0, i32 4
  %118 = load i32, i32* %117, align 8
  %119 = load i64, i64* @PCIE_CHANNEL, align 8
  %120 = load i32, i32* %13, align 4
  %121 = call i32 @scsi_add_device(i32 %118, i64 %119, i32 %120, i32 0)
  store i32 %121, i32* %12, align 4
  %122 = load i32, i32* %12, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %97
  %125 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %126 = load %struct._pcie_device*, %struct._pcie_device** %7, align 8
  %127 = call i32 @_scsih_pcie_device_remove(%struct.MPT3SAS_ADAPTER* %125, %struct._pcie_device* %126)
  br label %128

128:                                              ; preds = %124, %97
  br label %190

129:                                              ; preds = %93
  %130 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %131 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %130, i32 0, i32 2
  %132 = load i64, i64* %11, align 8
  %133 = call i32 @spin_lock_irqsave(i32* %131, i64 %132)
  %134 = load i8*, i8** %4, align 8
  %135 = bitcast i8* %134 to %struct._sas_device*
  store %struct._sas_device* %135, %struct._sas_device** %5, align 8
  %136 = load %struct._sas_device*, %struct._sas_device** %5, align 8
  %137 = getelementptr inbounds %struct._sas_device, %struct._sas_device* %136, i32 0, i32 4
  %138 = load i32, i32* %137, align 4
  store i32 %138, i32* %8, align 4
  %139 = load %struct._sas_device*, %struct._sas_device** %5, align 8
  %140 = getelementptr inbounds %struct._sas_device, %struct._sas_device* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 4
  store i32 %141, i32* %9, align 4
  %142 = load %struct._sas_device*, %struct._sas_device** %5, align 8
  %143 = getelementptr inbounds %struct._sas_device, %struct._sas_device* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 4
  store i32 %144, i32* %10, align 4
  %145 = load %struct._sas_device*, %struct._sas_device** %5, align 8
  %146 = getelementptr inbounds %struct._sas_device, %struct._sas_device* %145, i32 0, i32 1
  %147 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %148 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %147, i32 0, i32 3
  %149 = call i32 @list_move_tail(i32* %146, i32* %148)
  %150 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %151 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %150, i32 0, i32 2
  %152 = load i64, i64* %11, align 8
  %153 = call i32 @spin_unlock_irqrestore(i32* %151, i64 %152)
  %154 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %155 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %154, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %129
  br label %191

159:                                              ; preds = %129
  %160 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %161 = load i32, i32* %8, align 4
  %162 = load i32, i32* %9, align 4
  %163 = call i32 @mpt3sas_transport_port_add(%struct.MPT3SAS_ADAPTER* %160, i32 %161, i32 %162)
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %169, label %165

165:                                              ; preds = %159
  %166 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %167 = load %struct._sas_device*, %struct._sas_device** %5, align 8
  %168 = call i32 @_scsih_sas_device_remove(%struct.MPT3SAS_ADAPTER* %166, %struct._sas_device* %167)
  br label %189

169:                                              ; preds = %159
  %170 = load %struct._sas_device*, %struct._sas_device** %5, align 8
  %171 = getelementptr inbounds %struct._sas_device, %struct._sas_device* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %188, label %174

174:                                              ; preds = %169
  %175 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %176 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %187, label %179

179:                                              ; preds = %174
  %180 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %181 = load i32, i32* %10, align 4
  %182 = load i32, i32* %9, align 4
  %183 = call i32 @mpt3sas_transport_port_remove(%struct.MPT3SAS_ADAPTER* %180, i32 %181, i32 %182)
  %184 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %185 = load %struct._sas_device*, %struct._sas_device** %5, align 8
  %186 = call i32 @_scsih_sas_device_remove(%struct.MPT3SAS_ADAPTER* %184, %struct._sas_device* %185)
  br label %187

187:                                              ; preds = %179, %174
  br label %188

188:                                              ; preds = %187, %169
  br label %189

189:                                              ; preds = %188, %165
  br label %190

190:                                              ; preds = %189, %128
  br label %191

191:                                              ; preds = %19, %70, %158, %190, %92
  ret void
}

declare dso_local i32 @scsi_add_device(i32, i64, i32, i32) #1

declare dso_local i32 @_scsih_raid_device_remove(%struct.MPT3SAS_ADAPTER*, %struct._raid_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_move_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @_scsih_pcie_device_remove(%struct.MPT3SAS_ADAPTER*, %struct._pcie_device*) #1

declare dso_local i32 @mpt3sas_transport_port_add(%struct.MPT3SAS_ADAPTER*, i32, i32) #1

declare dso_local i32 @_scsih_sas_device_remove(%struct.MPT3SAS_ADAPTER*, %struct._sas_device*) #1

declare dso_local i32 @mpt3sas_transport_port_remove(%struct.MPT3SAS_ADAPTER*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
