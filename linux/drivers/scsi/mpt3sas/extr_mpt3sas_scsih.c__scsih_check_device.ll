; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/mpt3sas/extr_mpt3sas_scsih.c__scsih_check_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/mpt3sas/extr_mpt3sas_scsih.c__scsih_check_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPT3SAS_ADAPTER = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i64, i32, i32, i32, i32, i64, i32, i32 }
%struct._sas_device = type { i8*, i8*, i32, i32, i32, i8*, i64, %struct.scsi_target* }
%struct.scsi_target = type { %struct.MPT3SAS_TARGET* }
%struct.MPT3SAS_TARGET = type { i8* }
%struct._enclosure_node = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32 }

@MPI2_SAS_DEVICE_PGAD_FORM_HANDLE = common dso_local global i32 0, align 4
@MPI2_IOCSTATUS_MASK = common dso_local global i32 0, align 4
@MPI2_IOCSTATUS_SUCCESS = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"handle changed from(0x%04x) to (0x%04x)!!!\0A\00", align 1
@MPI2_SAS_DEVICE0_FLAGS_ENCL_LEVEL_VALID = common dso_local global i32 0, align 4
@MPI2_SAS_ENCLS0_FLAGS_CHASSIS_SLOT_VALID = common dso_local global i32 0, align 4
@MPI2_SAS_DEVICE0_FLAGS_DEVICE_PRESENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"device is not present handle(0x%04x), flags!!!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.MPT3SAS_ADAPTER*, i8*, i8*, i64, i64)* @_scsih_check_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_scsih_check_device(%struct.MPT3SAS_ADAPTER* %0, i8* %1, i8* %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.MPT3SAS_ADAPTER*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_8__, align 4
  %12 = alloca %struct.TYPE_7__, align 8
  %13 = alloca %struct._sas_device*, align 8
  %14 = alloca %struct._enclosure_node*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %struct.scsi_target*, align 8
  %19 = alloca %struct.MPT3SAS_TARGET*, align 8
  %20 = alloca i32, align 4
  store %struct.MPT3SAS_ADAPTER* %0, %struct.MPT3SAS_ADAPTER** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  store %struct._enclosure_node* null, %struct._enclosure_node** %14, align 8
  %21 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %6, align 8
  %22 = load i32, i32* @MPI2_SAS_DEVICE_PGAD_FORM_HANDLE, align 4
  %23 = load i8*, i8** %8, align 8
  %24 = call i64 @mpt3sas_config_get_sas_device_pg0(%struct.MPT3SAS_ADAPTER* %21, %struct.TYPE_8__* %11, %struct.TYPE_7__* %12, i32 %22, i8* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %5
  br label %208

27:                                               ; preds = %5
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @le16_to_cpu(i32 %29)
  %31 = load i32, i32* @MPI2_IOCSTATUS_MASK, align 4
  %32 = and i32 %30, %31
  store i32 %32, i32* %15, align 4
  %33 = load i32, i32* %15, align 4
  %34 = load i32, i32* @MPI2_IOCSTATUS_SUCCESS, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %27
  br label %208

37:                                               ; preds = %27
  %38 = load i64, i64* %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %38, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  br label %208

43:                                               ; preds = %37
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 7
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @le32_to_cpu(i32 %45)
  store i32 %46, i32* %20, align 4
  %47 = load i32, i32* %20, align 4
  %48 = call i32 @_scsih_is_end_device(i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %43
  br label %208

51:                                               ; preds = %43
  %52 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %6, align 8
  %53 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %52, i32 0, i32 0
  %54 = load i64, i64* %16, align 8
  %55 = call i32 @spin_lock_irqsave(i32* %53, i64 %54)
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 6
  %57 = load i32, i32* %56, align 8
  %58 = call i8* @le64_to_cpu(i32 %57)
  store i8* %58, i8** %17, align 8
  %59 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %6, align 8
  %60 = load i8*, i8** %17, align 8
  %61 = call %struct._sas_device* @__mpt3sas_get_sdev_by_addr(%struct.MPT3SAS_ADAPTER* %59, i8* %60)
  store %struct._sas_device* %61, %struct._sas_device** %13, align 8
  %62 = load %struct._sas_device*, %struct._sas_device** %13, align 8
  %63 = icmp ne %struct._sas_device* %62, null
  br i1 %63, label %65, label %64

64:                                               ; preds = %51
  br label %198

65:                                               ; preds = %51
  %66 = load %struct._sas_device*, %struct._sas_device** %13, align 8
  %67 = getelementptr inbounds %struct._sas_device, %struct._sas_device* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = load i8*, i8** %8, align 8
  %70 = icmp ne i8* %68, %69
  %71 = zext i1 %70 to i32
  %72 = call i64 @unlikely(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %164

74:                                               ; preds = %65
  %75 = load %struct._sas_device*, %struct._sas_device** %13, align 8
  %76 = getelementptr inbounds %struct._sas_device, %struct._sas_device* %75, i32 0, i32 7
  %77 = load %struct.scsi_target*, %struct.scsi_target** %76, align 8
  store %struct.scsi_target* %77, %struct.scsi_target** %18, align 8
  %78 = load %struct.scsi_target*, %struct.scsi_target** %18, align 8
  %79 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %78, i32 0, i32 0
  %80 = load %struct.MPT3SAS_TARGET*, %struct.MPT3SAS_TARGET** %79, align 8
  store %struct.MPT3SAS_TARGET* %80, %struct.MPT3SAS_TARGET** %19, align 8
  %81 = load i32, i32* @KERN_INFO, align 4
  %82 = load %struct.scsi_target*, %struct.scsi_target** %18, align 8
  %83 = load %struct._sas_device*, %struct._sas_device** %13, align 8
  %84 = getelementptr inbounds %struct._sas_device, %struct._sas_device* %83, i32 0, i32 0
  %85 = load i8*, i8** %84, align 8
  %86 = load i8*, i8** %8, align 8
  %87 = call i32 @starget_printk(i32 %81, %struct.scsi_target* %82, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i8* %85, i8* %86)
  %88 = load i8*, i8** %8, align 8
  %89 = load %struct.MPT3SAS_TARGET*, %struct.MPT3SAS_TARGET** %19, align 8
  %90 = getelementptr inbounds %struct.MPT3SAS_TARGET, %struct.MPT3SAS_TARGET* %89, i32 0, i32 0
  store i8* %88, i8** %90, align 8
  %91 = load i8*, i8** %8, align 8
  %92 = load %struct._sas_device*, %struct._sas_device** %13, align 8
  %93 = getelementptr inbounds %struct._sas_device, %struct._sas_device* %92, i32 0, i32 0
  store i8* %91, i8** %93, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @le16_to_cpu(i32 %95)
  %97 = load i32, i32* @MPI2_SAS_DEVICE0_FLAGS_ENCL_LEVEL_VALID, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %115

100:                                              ; preds = %74
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 5
  %102 = load i64, i64* %101, align 8
  %103 = load %struct._sas_device*, %struct._sas_device** %13, align 8
  %104 = getelementptr inbounds %struct._sas_device, %struct._sas_device* %103, i32 0, i32 6
  store i64 %102, i64* %104, align 8
  %105 = load %struct._sas_device*, %struct._sas_device** %13, align 8
  %106 = getelementptr inbounds %struct._sas_device, %struct._sas_device* %105, i32 0, i32 1
  %107 = load i8*, i8** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 4
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @memcpy(i8* %107, i32 %109, i32 4)
  %111 = load %struct._sas_device*, %struct._sas_device** %13, align 8
  %112 = getelementptr inbounds %struct._sas_device, %struct._sas_device* %111, i32 0, i32 1
  %113 = load i8*, i8** %112, align 8
  %114 = getelementptr inbounds i8, i8* %113, i64 4
  store i8 0, i8* %114, align 1
  br label %122

115:                                              ; preds = %74
  %116 = load %struct._sas_device*, %struct._sas_device** %13, align 8
  %117 = getelementptr inbounds %struct._sas_device, %struct._sas_device* %116, i32 0, i32 6
  store i64 0, i64* %117, align 8
  %118 = load %struct._sas_device*, %struct._sas_device** %13, align 8
  %119 = getelementptr inbounds %struct._sas_device, %struct._sas_device* %118, i32 0, i32 1
  %120 = load i8*, i8** %119, align 8
  %121 = getelementptr inbounds i8, i8* %120, i64 0
  store i8 0, i8* %121, align 1
  br label %122

122:                                              ; preds = %115, %100
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 3
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @le16_to_cpu(i32 %124)
  %126 = load %struct._sas_device*, %struct._sas_device** %13, align 8
  %127 = getelementptr inbounds %struct._sas_device, %struct._sas_device* %126, i32 0, i32 2
  store i32 %125, i32* %127, align 8
  %128 = load %struct._sas_device*, %struct._sas_device** %13, align 8
  %129 = getelementptr inbounds %struct._sas_device, %struct._sas_device* %128, i32 0, i32 3
  store i32 0, i32* %129, align 4
  %130 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %6, align 8
  %131 = load %struct._sas_device*, %struct._sas_device** %13, align 8
  %132 = getelementptr inbounds %struct._sas_device, %struct._sas_device* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = call %struct._enclosure_node* @mpt3sas_scsih_enclosure_find_by_handle(%struct.MPT3SAS_ADAPTER* %130, i32 %133)
  store %struct._enclosure_node* %134, %struct._enclosure_node** %14, align 8
  %135 = load %struct._enclosure_node*, %struct._enclosure_node** %14, align 8
  %136 = icmp ne %struct._enclosure_node* %135, null
  br i1 %136, label %137, label %163

137:                                              ; preds = %122
  %138 = load %struct._enclosure_node*, %struct._enclosure_node** %14, align 8
  %139 = getelementptr inbounds %struct._enclosure_node, %struct._enclosure_node* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 4
  %142 = call i8* @le64_to_cpu(i32 %141)
  %143 = load %struct._sas_device*, %struct._sas_device** %13, align 8
  %144 = getelementptr inbounds %struct._sas_device, %struct._sas_device* %143, i32 0, i32 5
  store i8* %142, i8** %144, align 8
  %145 = load %struct._enclosure_node*, %struct._enclosure_node** %14, align 8
  %146 = getelementptr inbounds %struct._enclosure_node, %struct._enclosure_node* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @le16_to_cpu(i32 %148)
  %150 = load i32, i32* @MPI2_SAS_ENCLS0_FLAGS_CHASSIS_SLOT_VALID, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %162

153:                                              ; preds = %137
  %154 = load %struct._sas_device*, %struct._sas_device** %13, align 8
  %155 = getelementptr inbounds %struct._sas_device, %struct._sas_device* %154, i32 0, i32 3
  store i32 1, i32* %155, align 4
  %156 = load %struct._enclosure_node*, %struct._enclosure_node** %14, align 8
  %157 = getelementptr inbounds %struct._enclosure_node, %struct._enclosure_node* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = load %struct._sas_device*, %struct._sas_device** %13, align 8
  %161 = getelementptr inbounds %struct._sas_device, %struct._sas_device* %160, i32 0, i32 4
  store i32 %159, i32* %161, align 8
  br label %162

162:                                              ; preds = %153, %137
  br label %163

163:                                              ; preds = %162, %122
  br label %164

164:                                              ; preds = %163, %65
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 2
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @le16_to_cpu(i32 %166)
  %168 = load i32, i32* @MPI2_SAS_DEVICE0_FLAGS_DEVICE_PRESENT, align 4
  %169 = and i32 %167, %168
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %175, label %171

171:                                              ; preds = %164
  %172 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %6, align 8
  %173 = load i8*, i8** %8, align 8
  %174 = call i32 @ioc_err(%struct.MPT3SAS_ADAPTER* %172, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i8* %173)
  br label %198

175:                                              ; preds = %164
  %176 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %6, align 8
  %177 = load i8*, i8** %17, align 8
  %178 = load i8*, i8** %8, align 8
  %179 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  %180 = load i32, i32* %179, align 8
  %181 = call i64 @_scsih_check_access_status(%struct.MPT3SAS_ADAPTER* %176, i8* %177, i8* %178, i32 %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %175
  br label %198

184:                                              ; preds = %175
  %185 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %6, align 8
  %186 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %185, i32 0, i32 0
  %187 = load i64, i64* %16, align 8
  %188 = call i32 @spin_unlock_irqrestore(i32* %186, i64 %187)
  %189 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %6, align 8
  %190 = load i8*, i8** %17, align 8
  %191 = call i32 @_scsih_ublock_io_device(%struct.MPT3SAS_ADAPTER* %189, i8* %190)
  %192 = load %struct._sas_device*, %struct._sas_device** %13, align 8
  %193 = icmp ne %struct._sas_device* %192, null
  br i1 %193, label %194, label %197

194:                                              ; preds = %184
  %195 = load %struct._sas_device*, %struct._sas_device** %13, align 8
  %196 = call i32 @sas_device_put(%struct._sas_device* %195)
  br label %197

197:                                              ; preds = %194, %184
  br label %208

198:                                              ; preds = %183, %171, %64
  %199 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %6, align 8
  %200 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %199, i32 0, i32 0
  %201 = load i64, i64* %16, align 8
  %202 = call i32 @spin_unlock_irqrestore(i32* %200, i64 %201)
  %203 = load %struct._sas_device*, %struct._sas_device** %13, align 8
  %204 = icmp ne %struct._sas_device* %203, null
  br i1 %204, label %205, label %208

205:                                              ; preds = %198
  %206 = load %struct._sas_device*, %struct._sas_device** %13, align 8
  %207 = call i32 @sas_device_put(%struct._sas_device* %206)
  br label %208

208:                                              ; preds = %26, %36, %42, %50, %197, %205, %198
  ret void
}

declare dso_local i64 @mpt3sas_config_get_sas_device_pg0(%struct.MPT3SAS_ADAPTER*, %struct.TYPE_8__*, %struct.TYPE_7__*, i32, i8*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @_scsih_is_end_device(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i8* @le64_to_cpu(i32) #1

declare dso_local %struct._sas_device* @__mpt3sas_get_sdev_by_addr(%struct.MPT3SAS_ADAPTER*, i8*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @starget_printk(i32, %struct.scsi_target*, i8*, i8*, i8*) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local %struct._enclosure_node* @mpt3sas_scsih_enclosure_find_by_handle(%struct.MPT3SAS_ADAPTER*, i32) #1

declare dso_local i32 @ioc_err(%struct.MPT3SAS_ADAPTER*, i8*, i8*) #1

declare dso_local i64 @_scsih_check_access_status(%struct.MPT3SAS_ADAPTER*, i8*, i8*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @_scsih_ublock_io_device(%struct.MPT3SAS_ADAPTER*, i8*) #1

declare dso_local i32 @sas_device_put(%struct._sas_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
