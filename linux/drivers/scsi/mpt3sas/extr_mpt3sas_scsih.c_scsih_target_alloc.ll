; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/mpt3sas/extr_mpt3sas_scsih.c_scsih_target_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/mpt3sas/extr_mpt3sas_scsih.c_scsih_target_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_target = type { i32, i32, %struct.TYPE_4__, %struct.MPT3SAS_TARGET* }
%struct.TYPE_4__ = type { i32 }
%struct.MPT3SAS_TARGET = type { i32, %struct._sas_device*, i32, i32, %struct._pcie_device*, %struct._raid_device*, %struct.scsi_target* }
%struct._sas_device = type { i64, i32, i32, i32, %struct.scsi_target*, i32 }
%struct._pcie_device = type { i64, i32, i32, %struct.scsi_target*, i32, i32 }
%struct._raid_device = type { %struct.scsi_target*, i32, i32 }
%struct.Scsi_Host = type { i32 }
%struct.MPT3SAS_ADAPTER = type { i32, i32, i32, i32, i64 }
%struct.sas_rphy = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MPT3SAS_INVALID_DEVICE_HANDLE = common dso_local global i32 0, align 4
@RAID_CHANNEL = common dso_local global i32 0, align 4
@MPT_TARGET_FLAGS_VOLUME = common dso_local global i32 0, align 4
@PCIE_CHANNEL = common dso_local global i32 0, align 4
@MPT_TARGET_FLAGS_PCIE_DEVICE = common dso_local global i32 0, align 4
@MPT_TARGET_FASTPATH_IO = common dso_local global i32 0, align 4
@MPT_TARGET_FLAGS_RAID_COMPONENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_target*)* @scsih_target_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scsih_target_alloc(%struct.scsi_target* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scsi_target*, align 8
  %4 = alloca %struct.Scsi_Host*, align 8
  %5 = alloca %struct.MPT3SAS_ADAPTER*, align 8
  %6 = alloca %struct.MPT3SAS_TARGET*, align 8
  %7 = alloca %struct._sas_device*, align 8
  %8 = alloca %struct._raid_device*, align 8
  %9 = alloca %struct._pcie_device*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.sas_rphy*, align 8
  store %struct.scsi_target* %0, %struct.scsi_target** %3, align 8
  %12 = load %struct.scsi_target*, %struct.scsi_target** %3, align 8
  %13 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %12, i32 0, i32 2
  %14 = call %struct.Scsi_Host* @dev_to_shost(%struct.TYPE_4__* %13)
  store %struct.Scsi_Host* %14, %struct.Scsi_Host** %4, align 8
  %15 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %16 = call %struct.MPT3SAS_ADAPTER* @shost_priv(%struct.Scsi_Host* %15)
  store %struct.MPT3SAS_ADAPTER* %16, %struct.MPT3SAS_ADAPTER** %5, align 8
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.MPT3SAS_TARGET* @kzalloc(i32 48, i32 %17)
  store %struct.MPT3SAS_TARGET* %18, %struct.MPT3SAS_TARGET** %6, align 8
  %19 = load %struct.MPT3SAS_TARGET*, %struct.MPT3SAS_TARGET** %6, align 8
  %20 = icmp ne %struct.MPT3SAS_TARGET* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %232

24:                                               ; preds = %1
  %25 = load %struct.MPT3SAS_TARGET*, %struct.MPT3SAS_TARGET** %6, align 8
  %26 = load %struct.scsi_target*, %struct.scsi_target** %3, align 8
  %27 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %26, i32 0, i32 3
  store %struct.MPT3SAS_TARGET* %25, %struct.MPT3SAS_TARGET** %27, align 8
  %28 = load %struct.scsi_target*, %struct.scsi_target** %3, align 8
  %29 = load %struct.MPT3SAS_TARGET*, %struct.MPT3SAS_TARGET** %6, align 8
  %30 = getelementptr inbounds %struct.MPT3SAS_TARGET, %struct.MPT3SAS_TARGET* %29, i32 0, i32 6
  store %struct.scsi_target* %28, %struct.scsi_target** %30, align 8
  %31 = load i32, i32* @MPT3SAS_INVALID_DEVICE_HANDLE, align 4
  %32 = load %struct.MPT3SAS_TARGET*, %struct.MPT3SAS_TARGET** %6, align 8
  %33 = getelementptr inbounds %struct.MPT3SAS_TARGET, %struct.MPT3SAS_TARGET* %32, i32 0, i32 3
  store i32 %31, i32* %33, align 4
  %34 = load %struct.scsi_target*, %struct.scsi_target** %3, align 8
  %35 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @RAID_CHANNEL, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %87

39:                                               ; preds = %24
  %40 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %5, align 8
  %41 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %40, i32 0, i32 3
  %42 = load i64, i64* %10, align 8
  %43 = call i32 @spin_lock_irqsave(i32* %41, i64 %42)
  %44 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %5, align 8
  %45 = load %struct.scsi_target*, %struct.scsi_target** %3, align 8
  %46 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.scsi_target*, %struct.scsi_target** %3, align 8
  %49 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call %struct._raid_device* @_scsih_raid_device_find_by_id(%struct.MPT3SAS_ADAPTER* %44, i32 %47, i32 %50)
  store %struct._raid_device* %51, %struct._raid_device** %8, align 8
  %52 = load %struct._raid_device*, %struct._raid_device** %8, align 8
  %53 = icmp ne %struct._raid_device* %52, null
  br i1 %53, label %54, label %82

54:                                               ; preds = %39
  %55 = load %struct._raid_device*, %struct._raid_device** %8, align 8
  %56 = getelementptr inbounds %struct._raid_device, %struct._raid_device* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.MPT3SAS_TARGET*, %struct.MPT3SAS_TARGET** %6, align 8
  %59 = getelementptr inbounds %struct.MPT3SAS_TARGET, %struct.MPT3SAS_TARGET* %58, i32 0, i32 3
  store i32 %57, i32* %59, align 4
  %60 = load %struct._raid_device*, %struct._raid_device** %8, align 8
  %61 = getelementptr inbounds %struct._raid_device, %struct._raid_device* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.MPT3SAS_TARGET*, %struct.MPT3SAS_TARGET** %6, align 8
  %64 = getelementptr inbounds %struct.MPT3SAS_TARGET, %struct.MPT3SAS_TARGET* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 8
  %65 = load i32, i32* @MPT_TARGET_FLAGS_VOLUME, align 4
  %66 = load %struct.MPT3SAS_TARGET*, %struct.MPT3SAS_TARGET** %6, align 8
  %67 = getelementptr inbounds %struct.MPT3SAS_TARGET, %struct.MPT3SAS_TARGET* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = or i32 %68, %65
  store i32 %69, i32* %67, align 8
  %70 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %5, align 8
  %71 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %70, i32 0, i32 4
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %54
  %75 = load %struct._raid_device*, %struct._raid_device** %8, align 8
  %76 = load %struct.MPT3SAS_TARGET*, %struct.MPT3SAS_TARGET** %6, align 8
  %77 = getelementptr inbounds %struct.MPT3SAS_TARGET, %struct.MPT3SAS_TARGET* %76, i32 0, i32 5
  store %struct._raid_device* %75, %struct._raid_device** %77, align 8
  br label %78

78:                                               ; preds = %74, %54
  %79 = load %struct.scsi_target*, %struct.scsi_target** %3, align 8
  %80 = load %struct._raid_device*, %struct._raid_device** %8, align 8
  %81 = getelementptr inbounds %struct._raid_device, %struct._raid_device* %80, i32 0, i32 0
  store %struct.scsi_target* %79, %struct.scsi_target** %81, align 8
  br label %82

82:                                               ; preds = %78, %39
  %83 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %5, align 8
  %84 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %83, i32 0, i32 3
  %85 = load i64, i64* %10, align 8
  %86 = call i32 @spin_unlock_irqrestore(i32* %84, i64 %85)
  store i32 0, i32* %2, align 4
  br label %232

87:                                               ; preds = %24
  %88 = load %struct.scsi_target*, %struct.scsi_target** %3, align 8
  %89 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @PCIE_CHANNEL, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %156

93:                                               ; preds = %87
  %94 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %5, align 8
  %95 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %94, i32 0, i32 2
  %96 = load i64, i64* %10, align 8
  %97 = call i32 @spin_lock_irqsave(i32* %95, i64 %96)
  %98 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %5, align 8
  %99 = load %struct.scsi_target*, %struct.scsi_target** %3, align 8
  %100 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.scsi_target*, %struct.scsi_target** %3, align 8
  %103 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = call %struct._pcie_device* @__mpt3sas_get_pdev_by_idchannel(%struct.MPT3SAS_ADAPTER* %98, i32 %101, i32 %104)
  store %struct._pcie_device* %105, %struct._pcie_device** %9, align 8
  %106 = load %struct._pcie_device*, %struct._pcie_device** %9, align 8
  %107 = icmp ne %struct._pcie_device* %106, null
  br i1 %107, label %108, label %151

108:                                              ; preds = %93
  %109 = load %struct._pcie_device*, %struct._pcie_device** %9, align 8
  %110 = getelementptr inbounds %struct._pcie_device, %struct._pcie_device* %109, i32 0, i32 5
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.MPT3SAS_TARGET*, %struct.MPT3SAS_TARGET** %6, align 8
  %113 = getelementptr inbounds %struct.MPT3SAS_TARGET, %struct.MPT3SAS_TARGET* %112, i32 0, i32 3
  store i32 %111, i32* %113, align 4
  %114 = load %struct._pcie_device*, %struct._pcie_device** %9, align 8
  %115 = getelementptr inbounds %struct._pcie_device, %struct._pcie_device* %114, i32 0, i32 4
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.MPT3SAS_TARGET*, %struct.MPT3SAS_TARGET** %6, align 8
  %118 = getelementptr inbounds %struct.MPT3SAS_TARGET, %struct.MPT3SAS_TARGET* %117, i32 0, i32 2
  store i32 %116, i32* %118, align 8
  %119 = load %struct._pcie_device*, %struct._pcie_device** %9, align 8
  %120 = load %struct.MPT3SAS_TARGET*, %struct.MPT3SAS_TARGET** %6, align 8
  %121 = getelementptr inbounds %struct.MPT3SAS_TARGET, %struct.MPT3SAS_TARGET* %120, i32 0, i32 4
  store %struct._pcie_device* %119, %struct._pcie_device** %121, align 8
  %122 = load %struct.scsi_target*, %struct.scsi_target** %3, align 8
  %123 = load %struct._pcie_device*, %struct._pcie_device** %9, align 8
  %124 = getelementptr inbounds %struct._pcie_device, %struct._pcie_device* %123, i32 0, i32 3
  store %struct.scsi_target* %122, %struct.scsi_target** %124, align 8
  %125 = load %struct.scsi_target*, %struct.scsi_target** %3, align 8
  %126 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load %struct._pcie_device*, %struct._pcie_device** %9, align 8
  %129 = getelementptr inbounds %struct._pcie_device, %struct._pcie_device* %128, i32 0, i32 2
  store i32 %127, i32* %129, align 4
  %130 = load %struct.scsi_target*, %struct.scsi_target** %3, align 8
  %131 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load %struct._pcie_device*, %struct._pcie_device** %9, align 8
  %134 = getelementptr inbounds %struct._pcie_device, %struct._pcie_device* %133, i32 0, i32 1
  store i32 %132, i32* %134, align 8
  %135 = load i32, i32* @MPT_TARGET_FLAGS_PCIE_DEVICE, align 4
  %136 = load %struct.MPT3SAS_TARGET*, %struct.MPT3SAS_TARGET** %6, align 8
  %137 = getelementptr inbounds %struct.MPT3SAS_TARGET, %struct.MPT3SAS_TARGET* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = or i32 %138, %135
  store i32 %139, i32* %137, align 8
  %140 = load %struct._pcie_device*, %struct._pcie_device** %9, align 8
  %141 = getelementptr inbounds %struct._pcie_device, %struct._pcie_device* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %150

144:                                              ; preds = %108
  %145 = load i32, i32* @MPT_TARGET_FASTPATH_IO, align 4
  %146 = load %struct.MPT3SAS_TARGET*, %struct.MPT3SAS_TARGET** %6, align 8
  %147 = getelementptr inbounds %struct.MPT3SAS_TARGET, %struct.MPT3SAS_TARGET* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = or i32 %148, %145
  store i32 %149, i32* %147, align 8
  br label %150

150:                                              ; preds = %144, %108
  br label %151

151:                                              ; preds = %150, %93
  %152 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %5, align 8
  %153 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %152, i32 0, i32 2
  %154 = load i64, i64* %10, align 8
  %155 = call i32 @spin_unlock_irqrestore(i32* %153, i64 %154)
  store i32 0, i32* %2, align 4
  br label %232

156:                                              ; preds = %87
  %157 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %5, align 8
  %158 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %157, i32 0, i32 0
  %159 = load i64, i64* %10, align 8
  %160 = call i32 @spin_lock_irqsave(i32* %158, i64 %159)
  %161 = load %struct.scsi_target*, %struct.scsi_target** %3, align 8
  %162 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %161, i32 0, i32 2
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = call %struct.sas_rphy* @dev_to_rphy(i32 %164)
  store %struct.sas_rphy* %165, %struct.sas_rphy** %11, align 8
  %166 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %5, align 8
  %167 = load %struct.sas_rphy*, %struct.sas_rphy** %11, align 8
  %168 = getelementptr inbounds %struct.sas_rphy, %struct.sas_rphy* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = call %struct._sas_device* @__mpt3sas_get_sdev_by_addr(%struct.MPT3SAS_ADAPTER* %166, i32 %170)
  store %struct._sas_device* %171, %struct._sas_device** %7, align 8
  %172 = load %struct._sas_device*, %struct._sas_device** %7, align 8
  %173 = icmp ne %struct._sas_device* %172, null
  br i1 %173, label %174, label %227

174:                                              ; preds = %156
  %175 = load %struct._sas_device*, %struct._sas_device** %7, align 8
  %176 = getelementptr inbounds %struct._sas_device, %struct._sas_device* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 8
  %178 = load %struct.MPT3SAS_TARGET*, %struct.MPT3SAS_TARGET** %6, align 8
  %179 = getelementptr inbounds %struct.MPT3SAS_TARGET, %struct.MPT3SAS_TARGET* %178, i32 0, i32 3
  store i32 %177, i32* %179, align 4
  %180 = load %struct._sas_device*, %struct._sas_device** %7, align 8
  %181 = getelementptr inbounds %struct._sas_device, %struct._sas_device* %180, i32 0, i32 5
  %182 = load i32, i32* %181, align 8
  %183 = load %struct.MPT3SAS_TARGET*, %struct.MPT3SAS_TARGET** %6, align 8
  %184 = getelementptr inbounds %struct.MPT3SAS_TARGET, %struct.MPT3SAS_TARGET* %183, i32 0, i32 2
  store i32 %182, i32* %184, align 8
  %185 = load %struct._sas_device*, %struct._sas_device** %7, align 8
  %186 = load %struct.MPT3SAS_TARGET*, %struct.MPT3SAS_TARGET** %6, align 8
  %187 = getelementptr inbounds %struct.MPT3SAS_TARGET, %struct.MPT3SAS_TARGET* %186, i32 0, i32 1
  store %struct._sas_device* %185, %struct._sas_device** %187, align 8
  %188 = load %struct.scsi_target*, %struct.scsi_target** %3, align 8
  %189 = load %struct._sas_device*, %struct._sas_device** %7, align 8
  %190 = getelementptr inbounds %struct._sas_device, %struct._sas_device* %189, i32 0, i32 4
  store %struct.scsi_target* %188, %struct.scsi_target** %190, align 8
  %191 = load %struct.scsi_target*, %struct.scsi_target** %3, align 8
  %192 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = load %struct._sas_device*, %struct._sas_device** %7, align 8
  %195 = getelementptr inbounds %struct._sas_device, %struct._sas_device* %194, i32 0, i32 3
  store i32 %193, i32* %195, align 8
  %196 = load %struct.scsi_target*, %struct.scsi_target** %3, align 8
  %197 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = load %struct._sas_device*, %struct._sas_device** %7, align 8
  %200 = getelementptr inbounds %struct._sas_device, %struct._sas_device* %199, i32 0, i32 2
  store i32 %198, i32* %200, align 4
  %201 = load %struct._sas_device*, %struct._sas_device** %7, align 8
  %202 = getelementptr inbounds %struct._sas_device, %struct._sas_device* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 8
  %204 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %5, align 8
  %205 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = call i64 @test_bit(i32 %203, i32 %206)
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %215

209:                                              ; preds = %174
  %210 = load i32, i32* @MPT_TARGET_FLAGS_RAID_COMPONENT, align 4
  %211 = load %struct.MPT3SAS_TARGET*, %struct.MPT3SAS_TARGET** %6, align 8
  %212 = getelementptr inbounds %struct.MPT3SAS_TARGET, %struct.MPT3SAS_TARGET* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = or i32 %213, %210
  store i32 %214, i32* %212, align 8
  br label %215

215:                                              ; preds = %209, %174
  %216 = load %struct._sas_device*, %struct._sas_device** %7, align 8
  %217 = getelementptr inbounds %struct._sas_device, %struct._sas_device* %216, i32 0, i32 0
  %218 = load i64, i64* %217, align 8
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %226

220:                                              ; preds = %215
  %221 = load i32, i32* @MPT_TARGET_FASTPATH_IO, align 4
  %222 = load %struct.MPT3SAS_TARGET*, %struct.MPT3SAS_TARGET** %6, align 8
  %223 = getelementptr inbounds %struct.MPT3SAS_TARGET, %struct.MPT3SAS_TARGET* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = or i32 %224, %221
  store i32 %225, i32* %223, align 8
  br label %226

226:                                              ; preds = %220, %215
  br label %227

227:                                              ; preds = %226, %156
  %228 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %5, align 8
  %229 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %228, i32 0, i32 0
  %230 = load i64, i64* %10, align 8
  %231 = call i32 @spin_unlock_irqrestore(i32* %229, i64 %230)
  store i32 0, i32* %2, align 4
  br label %232

232:                                              ; preds = %227, %151, %82, %21
  %233 = load i32, i32* %2, align 4
  ret i32 %233
}

declare dso_local %struct.Scsi_Host* @dev_to_shost(%struct.TYPE_4__*) #1

declare dso_local %struct.MPT3SAS_ADAPTER* @shost_priv(%struct.Scsi_Host*) #1

declare dso_local %struct.MPT3SAS_TARGET* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct._raid_device* @_scsih_raid_device_find_by_id(%struct.MPT3SAS_ADAPTER*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local %struct._pcie_device* @__mpt3sas_get_pdev_by_idchannel(%struct.MPT3SAS_ADAPTER*, i32, i32) #1

declare dso_local %struct.sas_rphy* @dev_to_rphy(i32) #1

declare dso_local %struct._sas_device* @__mpt3sas_get_sdev_by_addr(%struct.MPT3SAS_ADAPTER*, i32) #1

declare dso_local i64 @test_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
