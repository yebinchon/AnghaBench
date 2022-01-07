; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_myrs.c_raid_state_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_myrs.c_raid_state_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.scsi_device = type { i64, %struct.myrs_pdev_info*, i32, i32, i32 }
%struct.myrs_pdev_info = type { i32, i16, i32 }
%struct.myrs_hba = type { %struct.TYPE_10__*, i32, %struct.myrs_cmdblk }
%struct.TYPE_10__ = type { i64 }
%struct.myrs_cmdblk = type { i8, %union.myrs_cmd_mbox }
%union.myrs_cmd_mbox = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.myrs_devmap = type { i16 }
%struct.myrs_ldev_info = type { i32, i16, i32 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i16 }

@.str = private unnamed_addr constant [8 x i8] c"offline\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"kill\00", align 1
@MYRS_DEVICE_OFFLINE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"online\00", align 1
@MYRS_DEVICE_ONLINE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"standby\00", align 1
@MYRS_DEVICE_STANDBY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i64 0, align 8
@KERN_INFO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"Device already in %s\0A\00", align 1
@MYRS_STATUS_SUCCESS = common dso_local global i8 0, align 1
@ENXIO = common dso_local global i64 0, align 8
@MYRS_CMD_OP_IOCTL = common dso_local global i32 0, align 4
@MYRS_DCMD_TAG = common dso_local global i32 0, align 4
@MYRS_IOCTL_SET_DEVICE_STATE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [24 x i8] c"Set device state to %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [49 x i8] c"Failed to set device state to %s, status 0x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @raid_state_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @raid_state_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.scsi_device*, align 8
  %11 = alloca %struct.myrs_hba*, align 8
  %12 = alloca %struct.myrs_cmdblk*, align 8
  %13 = alloca %union.myrs_cmd_mbox*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i16, align 2
  %16 = alloca i8, align 1
  %17 = alloca %struct.myrs_pdev_info*, align 8
  %18 = alloca %struct.myrs_devmap*, align 8
  %19 = alloca %struct.myrs_ldev_info*, align 8
  %20 = alloca %struct.myrs_pdev_info*, align 8
  %21 = alloca %struct.myrs_ldev_info*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %22 = load %struct.device*, %struct.device** %6, align 8
  %23 = call %struct.scsi_device* @to_scsi_device(%struct.device* %22)
  store %struct.scsi_device* %23, %struct.scsi_device** %10, align 8
  %24 = load %struct.scsi_device*, %struct.scsi_device** %10, align 8
  %25 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 8
  %27 = call %struct.myrs_hba* @shost_priv(i32 %26)
  store %struct.myrs_hba* %27, %struct.myrs_hba** %11, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = call i32 @strncmp(i8* %28, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 7)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %4
  %32 = load i8*, i8** %8, align 8
  %33 = call i32 @strncmp(i8* %32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %31, %4
  %36 = load i32, i32* @MYRS_DEVICE_OFFLINE, align 4
  store i32 %36, i32* %14, align 4
  br label %54

37:                                               ; preds = %31
  %38 = load i8*, i8** %8, align 8
  %39 = call i32 @strncmp(i8* %38, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 6)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %37
  %42 = load i32, i32* @MYRS_DEVICE_ONLINE, align 4
  store i32 %42, i32* %14, align 4
  br label %53

43:                                               ; preds = %37
  %44 = load i8*, i8** %8, align 8
  %45 = call i32 @strncmp(i8* %44, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 7)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %43
  %48 = load i32, i32* @MYRS_DEVICE_STANDBY, align 4
  store i32 %48, i32* %14, align 4
  br label %52

49:                                               ; preds = %43
  %50 = load i64, i64* @EINVAL, align 8
  %51 = sub i64 0, %50
  store i64 %51, i64* %5, align 8
  br label %224

52:                                               ; preds = %47
  br label %53

53:                                               ; preds = %52, %41
  br label %54

54:                                               ; preds = %53, %35
  %55 = load %struct.scsi_device*, %struct.scsi_device** %10, align 8
  %56 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.myrs_hba*, %struct.myrs_hba** %11, align 8
  %59 = getelementptr inbounds %struct.myrs_hba, %struct.myrs_hba* %58, i32 0, i32 0
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp slt i64 %57, %62
  br i1 %63, label %64, label %108

64:                                               ; preds = %54
  %65 = load %struct.scsi_device*, %struct.scsi_device** %10, align 8
  %66 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %65, i32 0, i32 1
  %67 = load %struct.myrs_pdev_info*, %struct.myrs_pdev_info** %66, align 8
  store %struct.myrs_pdev_info* %67, %struct.myrs_pdev_info** %17, align 8
  %68 = load %struct.myrs_pdev_info*, %struct.myrs_pdev_info** %17, align 8
  %69 = getelementptr inbounds %struct.myrs_pdev_info, %struct.myrs_pdev_info* %68, i32 0, i32 2
  %70 = bitcast i32* %69 to %struct.myrs_devmap*
  store %struct.myrs_devmap* %70, %struct.myrs_devmap** %18, align 8
  %71 = load %struct.myrs_pdev_info*, %struct.myrs_pdev_info** %17, align 8
  %72 = getelementptr inbounds %struct.myrs_pdev_info, %struct.myrs_pdev_info* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %14, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %83

76:                                               ; preds = %64
  %77 = load i32, i32* @KERN_INFO, align 4
  %78 = load %struct.scsi_device*, %struct.scsi_device** %10, align 8
  %79 = load i32, i32* %14, align 4
  %80 = call i32 @myrs_devstate_name(i32 %79)
  %81 = call i32 (i32, %struct.scsi_device*, i8*, i32, ...) @sdev_printk(i32 %77, %struct.scsi_device* %78, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %80)
  %82 = load i64, i64* %9, align 8
  store i64 %82, i64* %5, align 8
  br label %224

83:                                               ; preds = %64
  %84 = load %struct.myrs_hba*, %struct.myrs_hba** %11, align 8
  %85 = load %struct.scsi_device*, %struct.scsi_device** %10, align 8
  %86 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.scsi_device*, %struct.scsi_device** %10, align 8
  %89 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.scsi_device*, %struct.scsi_device** %10, align 8
  %92 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.myrs_devmap*, %struct.myrs_devmap** %18, align 8
  %95 = call zeroext i8 @myrs_translate_pdev(%struct.myrs_hba* %84, i64 %87, i32 %90, i32 %93, %struct.myrs_devmap* %94)
  store i8 %95, i8* %16, align 1
  %96 = load i8, i8* %16, align 1
  %97 = zext i8 %96 to i32
  %98 = load i8, i8* @MYRS_STATUS_SUCCESS, align 1
  %99 = zext i8 %98 to i32
  %100 = icmp ne i32 %97, %99
  br i1 %100, label %101, label %104

101:                                              ; preds = %83
  %102 = load i64, i64* @ENXIO, align 8
  %103 = sub i64 0, %102
  store i64 %103, i64* %5, align 8
  br label %224

104:                                              ; preds = %83
  %105 = load %struct.myrs_devmap*, %struct.myrs_devmap** %18, align 8
  %106 = getelementptr inbounds %struct.myrs_devmap, %struct.myrs_devmap* %105, i32 0, i32 0
  %107 = load i16, i16* %106, align 2
  store i16 %107, i16* %15, align 2
  br label %129

108:                                              ; preds = %54
  %109 = load %struct.scsi_device*, %struct.scsi_device** %10, align 8
  %110 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %109, i32 0, i32 1
  %111 = load %struct.myrs_pdev_info*, %struct.myrs_pdev_info** %110, align 8
  %112 = bitcast %struct.myrs_pdev_info* %111 to %struct.myrs_ldev_info*
  store %struct.myrs_ldev_info* %112, %struct.myrs_ldev_info** %19, align 8
  %113 = load %struct.myrs_ldev_info*, %struct.myrs_ldev_info** %19, align 8
  %114 = getelementptr inbounds %struct.myrs_ldev_info, %struct.myrs_ldev_info* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* %14, align 4
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %118, label %125

118:                                              ; preds = %108
  %119 = load i32, i32* @KERN_INFO, align 4
  %120 = load %struct.scsi_device*, %struct.scsi_device** %10, align 8
  %121 = load i32, i32* %14, align 4
  %122 = call i32 @myrs_devstate_name(i32 %121)
  %123 = call i32 (i32, %struct.scsi_device*, i8*, i32, ...) @sdev_printk(i32 %119, %struct.scsi_device* %120, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %122)
  %124 = load i64, i64* %9, align 8
  store i64 %124, i64* %5, align 8
  br label %224

125:                                              ; preds = %108
  %126 = load %struct.myrs_ldev_info*, %struct.myrs_ldev_info** %19, align 8
  %127 = getelementptr inbounds %struct.myrs_ldev_info, %struct.myrs_ldev_info* %126, i32 0, i32 1
  %128 = load i16, i16* %127, align 4
  store i16 %128, i16* %15, align 2
  br label %129

129:                                              ; preds = %125, %104
  %130 = load %struct.myrs_hba*, %struct.myrs_hba** %11, align 8
  %131 = getelementptr inbounds %struct.myrs_hba, %struct.myrs_hba* %130, i32 0, i32 1
  %132 = call i32 @mutex_lock(i32* %131)
  %133 = load %struct.myrs_hba*, %struct.myrs_hba** %11, align 8
  %134 = getelementptr inbounds %struct.myrs_hba, %struct.myrs_hba* %133, i32 0, i32 2
  store %struct.myrs_cmdblk* %134, %struct.myrs_cmdblk** %12, align 8
  %135 = load %struct.myrs_cmdblk*, %struct.myrs_cmdblk** %12, align 8
  %136 = call i32 @myrs_reset_cmd(%struct.myrs_cmdblk* %135)
  %137 = load %struct.myrs_cmdblk*, %struct.myrs_cmdblk** %12, align 8
  %138 = getelementptr inbounds %struct.myrs_cmdblk, %struct.myrs_cmdblk* %137, i32 0, i32 1
  store %union.myrs_cmd_mbox* %138, %union.myrs_cmd_mbox** %13, align 8
  %139 = load i32, i32* @MYRS_CMD_OP_IOCTL, align 4
  %140 = load %union.myrs_cmd_mbox*, %union.myrs_cmd_mbox** %13, align 8
  %141 = bitcast %union.myrs_cmd_mbox* %140 to %struct.TYPE_7__*
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 2
  store i32 %139, i32* %142, align 4
  %143 = load i32, i32* @MYRS_DCMD_TAG, align 4
  %144 = load %union.myrs_cmd_mbox*, %union.myrs_cmd_mbox** %13, align 8
  %145 = bitcast %union.myrs_cmd_mbox* %144 to %struct.TYPE_7__*
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 1
  store i32 %143, i32* %146, align 4
  %147 = load %union.myrs_cmd_mbox*, %union.myrs_cmd_mbox** %13, align 8
  %148 = bitcast %union.myrs_cmd_mbox* %147 to %struct.TYPE_7__*
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 0
  store i32 1, i32* %150, align 4
  %151 = load %union.myrs_cmd_mbox*, %union.myrs_cmd_mbox** %13, align 8
  %152 = bitcast %union.myrs_cmd_mbox* %151 to %struct.TYPE_7__*
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 1
  store i32 1, i32* %154, align 4
  %155 = load i32, i32* @MYRS_IOCTL_SET_DEVICE_STATE, align 4
  %156 = load %union.myrs_cmd_mbox*, %union.myrs_cmd_mbox** %13, align 8
  %157 = bitcast %union.myrs_cmd_mbox* %156 to %struct.TYPE_9__*
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i32 0, i32 2
  store i32 %155, i32* %158, align 4
  %159 = load i32, i32* %14, align 4
  %160 = load %union.myrs_cmd_mbox*, %union.myrs_cmd_mbox** %13, align 8
  %161 = bitcast %union.myrs_cmd_mbox* %160 to %struct.TYPE_9__*
  %162 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %161, i32 0, i32 0
  store i32 %159, i32* %162, align 4
  %163 = load i16, i16* %15, align 2
  %164 = load %union.myrs_cmd_mbox*, %union.myrs_cmd_mbox** %13, align 8
  %165 = bitcast %union.myrs_cmd_mbox* %164 to %struct.TYPE_9__*
  %166 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i32 0, i32 0
  store i16 %163, i16* %167, align 4
  %168 = load %struct.myrs_hba*, %struct.myrs_hba** %11, align 8
  %169 = load %struct.myrs_cmdblk*, %struct.myrs_cmdblk** %12, align 8
  %170 = call i32 @myrs_exec_cmd(%struct.myrs_hba* %168, %struct.myrs_cmdblk* %169)
  %171 = load %struct.myrs_cmdblk*, %struct.myrs_cmdblk** %12, align 8
  %172 = getelementptr inbounds %struct.myrs_cmdblk, %struct.myrs_cmdblk* %171, i32 0, i32 0
  %173 = load i8, i8* %172, align 4
  store i8 %173, i8* %16, align 1
  %174 = load %struct.myrs_hba*, %struct.myrs_hba** %11, align 8
  %175 = getelementptr inbounds %struct.myrs_hba, %struct.myrs_hba* %174, i32 0, i32 1
  %176 = call i32 @mutex_unlock(i32* %175)
  %177 = load i8, i8* %16, align 1
  %178 = zext i8 %177 to i32
  %179 = load i8, i8* @MYRS_STATUS_SUCCESS, align 1
  %180 = zext i8 %179 to i32
  %181 = icmp eq i32 %178, %180
  br i1 %181, label %182, label %214

182:                                              ; preds = %129
  %183 = load %struct.scsi_device*, %struct.scsi_device** %10, align 8
  %184 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = load %struct.myrs_hba*, %struct.myrs_hba** %11, align 8
  %187 = getelementptr inbounds %struct.myrs_hba, %struct.myrs_hba* %186, i32 0, i32 0
  %188 = load %struct.TYPE_10__*, %struct.TYPE_10__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = icmp slt i64 %185, %190
  br i1 %191, label %192, label %199

192:                                              ; preds = %182
  %193 = load %struct.scsi_device*, %struct.scsi_device** %10, align 8
  %194 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %193, i32 0, i32 1
  %195 = load %struct.myrs_pdev_info*, %struct.myrs_pdev_info** %194, align 8
  store %struct.myrs_pdev_info* %195, %struct.myrs_pdev_info** %20, align 8
  %196 = load i32, i32* %14, align 4
  %197 = load %struct.myrs_pdev_info*, %struct.myrs_pdev_info** %20, align 8
  %198 = getelementptr inbounds %struct.myrs_pdev_info, %struct.myrs_pdev_info* %197, i32 0, i32 0
  store i32 %196, i32* %198, align 4
  br label %207

199:                                              ; preds = %182
  %200 = load %struct.scsi_device*, %struct.scsi_device** %10, align 8
  %201 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %200, i32 0, i32 1
  %202 = load %struct.myrs_pdev_info*, %struct.myrs_pdev_info** %201, align 8
  %203 = bitcast %struct.myrs_pdev_info* %202 to %struct.myrs_ldev_info*
  store %struct.myrs_ldev_info* %203, %struct.myrs_ldev_info** %21, align 8
  %204 = load i32, i32* %14, align 4
  %205 = load %struct.myrs_ldev_info*, %struct.myrs_ldev_info** %21, align 8
  %206 = getelementptr inbounds %struct.myrs_ldev_info, %struct.myrs_ldev_info* %205, i32 0, i32 0
  store i32 %204, i32* %206, align 4
  br label %207

207:                                              ; preds = %199, %192
  %208 = load i32, i32* @KERN_INFO, align 4
  %209 = load %struct.scsi_device*, %struct.scsi_device** %10, align 8
  %210 = load i32, i32* %14, align 4
  %211 = call i32 @myrs_devstate_name(i32 %210)
  %212 = call i32 (i32, %struct.scsi_device*, i8*, i32, ...) @sdev_printk(i32 %208, %struct.scsi_device* %209, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 %211)
  %213 = load i64, i64* %9, align 8
  store i64 %213, i64* %5, align 8
  br label %224

214:                                              ; preds = %129
  %215 = load i32, i32* @KERN_INFO, align 4
  %216 = load %struct.scsi_device*, %struct.scsi_device** %10, align 8
  %217 = load i32, i32* %14, align 4
  %218 = call i32 @myrs_devstate_name(i32 %217)
  %219 = load i8, i8* %16, align 1
  %220 = zext i8 %219 to i32
  %221 = call i32 (i32, %struct.scsi_device*, i8*, i32, ...) @sdev_printk(i32 %215, %struct.scsi_device* %216, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i64 0, i64 0), i32 %218, i32 %220)
  %222 = load i64, i64* @EINVAL, align 8
  %223 = sub i64 0, %222
  store i64 %223, i64* %5, align 8
  br label %224

224:                                              ; preds = %214, %207, %118, %101, %76, %49
  %225 = load i64, i64* %5, align 8
  ret i64 %225
}

declare dso_local %struct.scsi_device* @to_scsi_device(%struct.device*) #1

declare dso_local %struct.myrs_hba* @shost_priv(i32) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @sdev_printk(i32, %struct.scsi_device*, i8*, i32, ...) #1

declare dso_local i32 @myrs_devstate_name(i32) #1

declare dso_local zeroext i8 @myrs_translate_pdev(%struct.myrs_hba*, i64, i32, i32, %struct.myrs_devmap*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @myrs_reset_cmd(%struct.myrs_cmdblk*) #1

declare dso_local i32 @myrs_exec_cmd(%struct.myrs_hba*, %struct.myrs_cmdblk*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
