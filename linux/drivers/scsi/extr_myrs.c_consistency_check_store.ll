; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_myrs.c_consistency_check_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_myrs.c_consistency_check_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.scsi_device = type { i64, %struct.myrs_ldev_info*, i32 }
%struct.myrs_ldev_info = type { i16, i64 }
%struct.myrs_hba = type { i32, %struct.myrs_cmdblk, %struct.TYPE_6__* }
%struct.myrs_cmdblk = type { i8, %union.myrs_cmd_mbox }
%union.myrs_cmd_mbox = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i16 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__, i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@MYRS_STATUS_SUCCESS = common dso_local global i8 0, align 1
@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Failed to get device information, status 0x%02x\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"Consistency Check Not Initiated; already in progress\0A\00", align 1
@EALREADY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [56 x i8] c"Consistency Check Not Cancelled; check not in progress\0A\00", align 1
@MYRS_CMD_OP_IOCTL = common dso_local global i32 0, align 4
@MYRS_DCMD_TAG = common dso_local global i32 0, align 4
@MYRS_IOCTL_CC_START = common dso_local global i32 0, align 4
@MYRS_IOCTL_CC_STOP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"Consistency Check Not %s, status 0x%02x\0A\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"Initiated\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"Cancelled\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"Consistency Check %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @consistency_check_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @consistency_check_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.scsi_device*, align 8
  %11 = alloca %struct.myrs_hba*, align 8
  %12 = alloca %struct.myrs_ldev_info*, align 8
  %13 = alloca %struct.myrs_cmdblk*, align 8
  %14 = alloca %union.myrs_cmd_mbox*, align 8
  %15 = alloca i16, align 2
  %16 = alloca i8, align 1
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %19 = load %struct.device*, %struct.device** %6, align 8
  %20 = call %struct.scsi_device* @to_scsi_device(%struct.device* %19)
  store %struct.scsi_device* %20, %struct.scsi_device** %10, align 8
  %21 = load %struct.scsi_device*, %struct.scsi_device** %10, align 8
  %22 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = call %struct.myrs_hba* @shost_priv(i32 %23)
  store %struct.myrs_hba* %24, %struct.myrs_hba** %11, align 8
  %25 = load %struct.scsi_device*, %struct.scsi_device** %10, align 8
  %26 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.myrs_hba*, %struct.myrs_hba** %11, align 8
  %29 = getelementptr inbounds %struct.myrs_hba, %struct.myrs_hba* %28, i32 0, i32 2
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp slt i64 %27, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %4
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %195

37:                                               ; preds = %4
  %38 = load %struct.scsi_device*, %struct.scsi_device** %10, align 8
  %39 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %38, i32 0, i32 1
  %40 = load %struct.myrs_ldev_info*, %struct.myrs_ldev_info** %39, align 8
  store %struct.myrs_ldev_info* %40, %struct.myrs_ldev_info** %12, align 8
  %41 = load %struct.myrs_ldev_info*, %struct.myrs_ldev_info** %12, align 8
  %42 = icmp ne %struct.myrs_ldev_info* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %37
  %44 = load i32, i32* @ENXIO, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %5, align 4
  br label %195

46:                                               ; preds = %37
  %47 = load %struct.myrs_ldev_info*, %struct.myrs_ldev_info** %12, align 8
  %48 = getelementptr inbounds %struct.myrs_ldev_info, %struct.myrs_ldev_info* %47, i32 0, i32 0
  %49 = load i16, i16* %48, align 8
  store i16 %49, i16* %15, align 2
  %50 = load i8*, i8** %8, align 8
  %51 = call i32 @kstrtoint(i8* %50, i32 0, i32* %17)
  store i32 %51, i32* %18, align 4
  %52 = load i32, i32* %18, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %46
  %55 = load i32, i32* %18, align 4
  store i32 %55, i32* %5, align 4
  br label %195

56:                                               ; preds = %46
  %57 = load %struct.myrs_hba*, %struct.myrs_hba** %11, align 8
  %58 = load i16, i16* %15, align 2
  %59 = load %struct.myrs_ldev_info*, %struct.myrs_ldev_info** %12, align 8
  %60 = call zeroext i8 @myrs_get_ldev_info(%struct.myrs_hba* %57, i16 zeroext %58, %struct.myrs_ldev_info* %59)
  store i8 %60, i8* %16, align 1
  %61 = load i8, i8* %16, align 1
  %62 = zext i8 %61 to i32
  %63 = load i8, i8* @MYRS_STATUS_SUCCESS, align 1
  %64 = zext i8 %63 to i32
  %65 = icmp ne i32 %62, %64
  br i1 %65, label %66, label %74

66:                                               ; preds = %56
  %67 = load i32, i32* @KERN_INFO, align 4
  %68 = load %struct.scsi_device*, %struct.scsi_device** %10, align 8
  %69 = load i8, i8* %16, align 1
  %70 = zext i8 %69 to i32
  %71 = call i32 (i32, %struct.scsi_device*, i8*, ...) @sdev_printk(i32 %67, %struct.scsi_device* %68, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %70)
  %72 = load i32, i32* @EIO, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %5, align 4
  br label %195

74:                                               ; preds = %56
  %75 = load i32, i32* %17, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %88

77:                                               ; preds = %74
  %78 = load %struct.myrs_ldev_info*, %struct.myrs_ldev_info** %12, align 8
  %79 = getelementptr inbounds %struct.myrs_ldev_info, %struct.myrs_ldev_info* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %77
  %83 = load i32, i32* @KERN_INFO, align 4
  %84 = load %struct.scsi_device*, %struct.scsi_device** %10, align 8
  %85 = call i32 (i32, %struct.scsi_device*, i8*, ...) @sdev_printk(i32 %83, %struct.scsi_device* %84, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0))
  %86 = load i32, i32* @EALREADY, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %5, align 4
  br label %195

88:                                               ; preds = %77, %74
  %89 = load i32, i32* %17, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %102, label %91

91:                                               ; preds = %88
  %92 = load %struct.myrs_ldev_info*, %struct.myrs_ldev_info** %12, align 8
  %93 = getelementptr inbounds %struct.myrs_ldev_info, %struct.myrs_ldev_info* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %102, label %96

96:                                               ; preds = %91
  %97 = load i32, i32* @KERN_INFO, align 4
  %98 = load %struct.scsi_device*, %struct.scsi_device** %10, align 8
  %99 = call i32 (i32, %struct.scsi_device*, i8*, ...) @sdev_printk(i32 %97, %struct.scsi_device* %98, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0))
  %100 = load i64, i64* %9, align 8
  %101 = trunc i64 %100 to i32
  store i32 %101, i32* %5, align 4
  br label %195

102:                                              ; preds = %91, %88
  %103 = load %struct.myrs_hba*, %struct.myrs_hba** %11, align 8
  %104 = getelementptr inbounds %struct.myrs_hba, %struct.myrs_hba* %103, i32 0, i32 0
  %105 = call i32 @mutex_lock(i32* %104)
  %106 = load %struct.myrs_hba*, %struct.myrs_hba** %11, align 8
  %107 = getelementptr inbounds %struct.myrs_hba, %struct.myrs_hba* %106, i32 0, i32 1
  store %struct.myrs_cmdblk* %107, %struct.myrs_cmdblk** %13, align 8
  %108 = load %struct.myrs_cmdblk*, %struct.myrs_cmdblk** %13, align 8
  %109 = call i32 @myrs_reset_cmd(%struct.myrs_cmdblk* %108)
  %110 = load %struct.myrs_cmdblk*, %struct.myrs_cmdblk** %13, align 8
  %111 = getelementptr inbounds %struct.myrs_cmdblk, %struct.myrs_cmdblk* %110, i32 0, i32 1
  store %union.myrs_cmd_mbox* %111, %union.myrs_cmd_mbox** %14, align 8
  %112 = load i32, i32* @MYRS_CMD_OP_IOCTL, align 4
  %113 = load %union.myrs_cmd_mbox*, %union.myrs_cmd_mbox** %14, align 8
  %114 = bitcast %union.myrs_cmd_mbox* %113 to %struct.TYPE_8__*
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 2
  store i32 %112, i32* %115, align 4
  %116 = load i32, i32* @MYRS_DCMD_TAG, align 4
  %117 = load %union.myrs_cmd_mbox*, %union.myrs_cmd_mbox** %14, align 8
  %118 = bitcast %union.myrs_cmd_mbox* %117 to %struct.TYPE_8__*
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 1
  store i32 %116, i32* %119, align 4
  %120 = load %union.myrs_cmd_mbox*, %union.myrs_cmd_mbox** %14, align 8
  %121 = bitcast %union.myrs_cmd_mbox* %120 to %struct.TYPE_8__*
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 0
  store i32 1, i32* %123, align 4
  %124 = load %union.myrs_cmd_mbox*, %union.myrs_cmd_mbox** %14, align 8
  %125 = bitcast %union.myrs_cmd_mbox* %124 to %struct.TYPE_8__*
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 1
  store i32 1, i32* %127, align 4
  %128 = load i32, i32* %17, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %146

130:                                              ; preds = %102
  %131 = load i16, i16* %15, align 2
  %132 = load %union.myrs_cmd_mbox*, %union.myrs_cmd_mbox** %14, align 8
  %133 = bitcast %union.myrs_cmd_mbox* %132 to %struct.TYPE_10__*
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 3
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 0
  store i16 %131, i16* %135, align 4
  %136 = load i32, i32* @MYRS_IOCTL_CC_START, align 4
  %137 = load %union.myrs_cmd_mbox*, %union.myrs_cmd_mbox** %14, align 8
  %138 = bitcast %union.myrs_cmd_mbox* %137 to %struct.TYPE_10__*
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 2
  store i32 %136, i32* %139, align 4
  %140 = load %union.myrs_cmd_mbox*, %union.myrs_cmd_mbox** %14, align 8
  %141 = bitcast %union.myrs_cmd_mbox* %140 to %struct.TYPE_10__*
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 0
  store i32 1, i32* %142, align 4
  %143 = load %union.myrs_cmd_mbox*, %union.myrs_cmd_mbox** %14, align 8
  %144 = bitcast %union.myrs_cmd_mbox* %143 to %struct.TYPE_10__*
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %144, i32 0, i32 1
  store i32 0, i32* %145, align 4
  br label %156

146:                                              ; preds = %102
  %147 = load i16, i16* %15, align 2
  %148 = load %union.myrs_cmd_mbox*, %union.myrs_cmd_mbox** %14, align 8
  %149 = bitcast %union.myrs_cmd_mbox* %148 to %struct.TYPE_10__*
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i32 0, i32 3
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i32 0, i32 0
  store i16 %147, i16* %151, align 4
  %152 = load i32, i32* @MYRS_IOCTL_CC_STOP, align 4
  %153 = load %union.myrs_cmd_mbox*, %union.myrs_cmd_mbox** %14, align 8
  %154 = bitcast %union.myrs_cmd_mbox* %153 to %struct.TYPE_10__*
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i32 0, i32 2
  store i32 %152, i32* %155, align 4
  br label %156

156:                                              ; preds = %146, %130
  %157 = load %struct.myrs_hba*, %struct.myrs_hba** %11, align 8
  %158 = load %struct.myrs_cmdblk*, %struct.myrs_cmdblk** %13, align 8
  %159 = call i32 @myrs_exec_cmd(%struct.myrs_hba* %157, %struct.myrs_cmdblk* %158)
  %160 = load %struct.myrs_cmdblk*, %struct.myrs_cmdblk** %13, align 8
  %161 = getelementptr inbounds %struct.myrs_cmdblk, %struct.myrs_cmdblk* %160, i32 0, i32 0
  %162 = load i8, i8* %161, align 4
  store i8 %162, i8* %16, align 1
  %163 = load %struct.myrs_hba*, %struct.myrs_hba** %11, align 8
  %164 = getelementptr inbounds %struct.myrs_hba, %struct.myrs_hba* %163, i32 0, i32 0
  %165 = call i32 @mutex_unlock(i32* %164)
  %166 = load i8, i8* %16, align 1
  %167 = zext i8 %166 to i32
  %168 = load i8, i8* @MYRS_STATUS_SUCCESS, align 1
  %169 = zext i8 %168 to i32
  %170 = icmp ne i32 %167, %169
  br i1 %170, label %171, label %183

171:                                              ; preds = %156
  %172 = load i32, i32* @KERN_INFO, align 4
  %173 = load %struct.scsi_device*, %struct.scsi_device** %10, align 8
  %174 = load i32, i32* %17, align 4
  %175 = icmp ne i32 %174, 0
  %176 = zext i1 %175 to i64
  %177 = select i1 %175, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0)
  %178 = load i8, i8* %16, align 1
  %179 = zext i8 %178 to i32
  %180 = call i32 (i32, %struct.scsi_device*, i8*, ...) @sdev_printk(i32 %172, %struct.scsi_device* %173, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i8* %177, i32 %179)
  %181 = load i32, i32* @EIO, align 4
  %182 = sub nsw i32 0, %181
  store i32 %182, i32* %18, align 4
  br label %193

183:                                              ; preds = %156
  %184 = load i32, i32* @KERN_INFO, align 4
  %185 = load %struct.scsi_device*, %struct.scsi_device** %10, align 8
  %186 = load i32, i32* %17, align 4
  %187 = icmp ne i32 %186, 0
  %188 = zext i1 %187 to i64
  %189 = select i1 %187, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0)
  %190 = call i32 (i32, %struct.scsi_device*, i8*, ...) @sdev_printk(i32 %184, %struct.scsi_device* %185, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i8* %189)
  %191 = load i64, i64* %9, align 8
  %192 = trunc i64 %191 to i32
  store i32 %192, i32* %18, align 4
  br label %193

193:                                              ; preds = %183, %171
  %194 = load i32, i32* %18, align 4
  store i32 %194, i32* %5, align 4
  br label %195

195:                                              ; preds = %193, %96, %82, %66, %54, %43, %34
  %196 = load i32, i32* %5, align 4
  ret i32 %196
}

declare dso_local %struct.scsi_device* @to_scsi_device(%struct.device*) #1

declare dso_local %struct.myrs_hba* @shost_priv(i32) #1

declare dso_local i32 @kstrtoint(i8*, i32, i32*) #1

declare dso_local zeroext i8 @myrs_get_ldev_info(%struct.myrs_hba*, i16 zeroext, %struct.myrs_ldev_info*) #1

declare dso_local i32 @sdev_printk(i32, %struct.scsi_device*, i8*, ...) #1

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
