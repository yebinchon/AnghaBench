; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_process_raid_io_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_process_raid_io_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pqi_io_request = type { %struct.pqi_raid_error_info*, %struct.scsi_cmnd* }
%struct.pqi_raid_error_info = type { i64, i32, i32, i32, i32, i32 }
%struct.scsi_cmnd = type { i32, i64, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.pqi_scsi_dev*, i32 }
%struct.pqi_scsi_dev = type { i32, i32, i32 }
%struct.scsi_sense_hdr = type { i64, i32, i32 }
%struct.pqi_ctrl_info = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@DID_OK = common dso_local global i64 0, align 8
@DID_SOFT_ERROR = common dso_local global i64 0, align 8
@DID_ABORT = common dso_local global i64 0, align 8
@DID_TIME_OUT = common dso_local global i64 0, align 8
@DID_ERROR = common dso_local global i64 0, align 8
@SAM_STAT_CHECK_CONDITION = common dso_local global i64 0, align 8
@HARDWARE_ERROR = common dso_local global i64 0, align 8
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [70 x i8] c"received 'logical unit failure' from controller for scsi %d:%d:%d:%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"RAID\00", align 1
@DID_NO_CONNECT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [66 x i8] c"received unhandled error %d from controller for scsi %d:%d:%d:%d\0A\00", align 1
@SCSI_SENSE_BUFFERSIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pqi_io_request*)* @pqi_process_raid_io_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pqi_process_raid_io_error(%struct.pqi_io_request* %0) #0 {
  %2 = alloca %struct.pqi_io_request*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.scsi_cmnd*, align 8
  %6 = alloca %struct.pqi_raid_error_info*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.scsi_sense_hdr, align 8
  %11 = alloca %struct.pqi_ctrl_info*, align 8
  %12 = alloca %struct.pqi_scsi_dev*, align 8
  store %struct.pqi_io_request* %0, %struct.pqi_io_request** %2, align 8
  %13 = load %struct.pqi_io_request*, %struct.pqi_io_request** %2, align 8
  %14 = getelementptr inbounds %struct.pqi_io_request, %struct.pqi_io_request* %13, i32 0, i32 1
  %15 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %14, align 8
  store %struct.scsi_cmnd* %15, %struct.scsi_cmnd** %5, align 8
  %16 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %17 = icmp ne %struct.scsi_cmnd* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %1
  br label %182

19:                                               ; preds = %1
  %20 = load %struct.pqi_io_request*, %struct.pqi_io_request** %2, align 8
  %21 = getelementptr inbounds %struct.pqi_io_request, %struct.pqi_io_request* %20, i32 0, i32 0
  %22 = load %struct.pqi_raid_error_info*, %struct.pqi_raid_error_info** %21, align 8
  store %struct.pqi_raid_error_info* %22, %struct.pqi_raid_error_info** %6, align 8
  %23 = load %struct.pqi_raid_error_info*, %struct.pqi_raid_error_info** %6, align 8
  %24 = getelementptr inbounds %struct.pqi_raid_error_info, %struct.pqi_raid_error_info* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %3, align 8
  %26 = load i64, i64* @DID_OK, align 8
  store i64 %26, i64* %4, align 8
  %27 = load %struct.pqi_raid_error_info*, %struct.pqi_raid_error_info** %6, align 8
  %28 = getelementptr inbounds %struct.pqi_raid_error_info, %struct.pqi_raid_error_info* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  switch i32 %29, label %55 [
    i32 142, label %30
    i32 129, label %31
    i32 128, label %50
    i32 148, label %50
    i32 130, label %52
    i32 146, label %54
    i32 131, label %54
    i32 147, label %54
    i32 144, label %54
    i32 145, label %54
    i32 143, label %54
    i32 141, label %54
    i32 136, label %54
    i32 138, label %54
    i32 139, label %54
    i32 132, label %54
    i32 137, label %54
    i32 133, label %54
    i32 140, label %54
    i32 134, label %54
    i32 135, label %54
  ]

30:                                               ; preds = %19
  br label %57

31:                                               ; preds = %19
  %32 = load %struct.pqi_raid_error_info*, %struct.pqi_raid_error_info** %6, align 8
  %33 = getelementptr inbounds %struct.pqi_raid_error_info, %struct.pqi_raid_error_info* %32, i32 0, i32 5
  %34 = call i32 @get_unaligned_le32(i32* %33)
  store i32 %34, i32* %9, align 4
  %35 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %36 = call i32 @scsi_bufflen(%struct.scsi_cmnd* %35)
  %37 = load i32, i32* %9, align 4
  %38 = sub nsw i32 %36, %37
  store i32 %38, i32* %8, align 4
  %39 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @scsi_set_resid(%struct.scsi_cmnd* %39, i32 %40)
  %42 = load i32, i32* %9, align 4
  %43 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %44 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp slt i32 %42, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %31
  %48 = load i64, i64* @DID_SOFT_ERROR, align 8
  store i64 %48, i64* %4, align 8
  br label %49

49:                                               ; preds = %47, %31
  br label %57

50:                                               ; preds = %19, %19
  %51 = load i64, i64* @DID_ABORT, align 8
  store i64 %51, i64* %4, align 8
  br label %57

52:                                               ; preds = %19
  %53 = load i64, i64* @DID_TIME_OUT, align 8
  store i64 %53, i64* %4, align 8
  br label %57

54:                                               ; preds = %19, %19, %19, %19, %19, %19, %19, %19, %19, %19, %19, %19, %19, %19, %19, %19
  br label %55

55:                                               ; preds = %19, %54
  %56 = load i64, i64* @DID_ERROR, align 8
  store i64 %56, i64* %4, align 8
  br label %57

57:                                               ; preds = %55, %52, %50, %49, %30
  %58 = load %struct.pqi_raid_error_info*, %struct.pqi_raid_error_info** %6, align 8
  %59 = getelementptr inbounds %struct.pqi_raid_error_info, %struct.pqi_raid_error_info* %58, i32 0, i32 4
  %60 = call i64 @get_unaligned_le16(i32* %59)
  store i64 %60, i64* %7, align 8
  %61 = load i64, i64* %7, align 8
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %57
  %64 = load %struct.pqi_raid_error_info*, %struct.pqi_raid_error_info** %6, align 8
  %65 = getelementptr inbounds %struct.pqi_raid_error_info, %struct.pqi_raid_error_info* %64, i32 0, i32 3
  %66 = call i64 @get_unaligned_le16(i32* %65)
  store i64 %66, i64* %7, align 8
  br label %67

67:                                               ; preds = %63, %57
  %68 = load i64, i64* %7, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %175

70:                                               ; preds = %67
  %71 = load i64, i64* %7, align 8
  %72 = icmp ugt i64 %71, 4
  br i1 %72, label %73, label %74

73:                                               ; preds = %70
  store i64 4, i64* %7, align 8
  br label %74

74:                                               ; preds = %73, %70
  %75 = load i64, i64* %3, align 8
  %76 = load i64, i64* @SAM_STAT_CHECK_CONDITION, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %160

78:                                               ; preds = %74
  %79 = load %struct.pqi_raid_error_info*, %struct.pqi_raid_error_info** %6, align 8
  %80 = getelementptr inbounds %struct.pqi_raid_error_info, %struct.pqi_raid_error_info* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = load i64, i64* %7, align 8
  %83 = call i64 @scsi_normalize_sense(i32 %81, i64 %82, %struct.scsi_sense_hdr* %10)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %160

85:                                               ; preds = %78
  %86 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %10, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @HARDWARE_ERROR, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %160

90:                                               ; preds = %85
  %91 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %10, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = icmp eq i32 %92, 62
  br i1 %93, label %94, label %160

94:                                               ; preds = %90
  %95 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %96 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %95, i32 0, i32 3
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = call %struct.pqi_ctrl_info* @shost_to_hba(i32 %99)
  store %struct.pqi_ctrl_info* %100, %struct.pqi_ctrl_info** %11, align 8
  %101 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %102 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %101, i32 0, i32 3
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %104, align 8
  store %struct.pqi_scsi_dev* %105, %struct.pqi_scsi_dev** %12, align 8
  %106 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %10, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  switch i32 %107, label %135 [
    i32 1, label %108
  ]

108:                                              ; preds = %94
  %109 = call i32 (...) @printk_ratelimit()
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %129

111:                                              ; preds = %108
  %112 = load i32, i32* @KERN_ERR, align 4
  %113 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %114 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %11, align 8
  %115 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %114, i32 0, i32 0
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %12, align 8
  %120 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %12, align 8
  %123 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %12, align 8
  %126 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = call i32 (i32, %struct.scsi_cmnd*, i8*, i32, i32, i32, i32, ...) @scmd_printk(i32 %112, %struct.scsi_cmnd* %113, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0), i32 %118, i32 %121, i32 %124, i32 %127)
  br label %129

129:                                              ; preds = %111, %108
  %130 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %131 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %130, i32 0, i32 3
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** %131, align 8
  %133 = call i32 @pqi_take_device_offline(%struct.TYPE_4__* %132, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %134 = load i64, i64* @DID_NO_CONNECT, align 8
  store i64 %134, i64* %4, align 8
  br label %159

135:                                              ; preds = %94
  %136 = call i32 (...) @printk_ratelimit()
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %158

138:                                              ; preds = %135
  %139 = load i32, i32* @KERN_ERR, align 4
  %140 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %141 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %10, i32 0, i32 2
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %11, align 8
  %144 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %143, i32 0, i32 0
  %145 = load %struct.TYPE_3__*, %struct.TYPE_3__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %12, align 8
  %149 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %12, align 8
  %152 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %12, align 8
  %155 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = call i32 (i32, %struct.scsi_cmnd*, i8*, i32, i32, i32, i32, ...) @scmd_printk(i32 %139, %struct.scsi_cmnd* %140, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.2, i64 0, i64 0), i32 %142, i32 %147, i32 %150, i32 %153, i32 %156)
  br label %158

158:                                              ; preds = %138, %135
  br label %159

159:                                              ; preds = %158, %129
  br label %160

160:                                              ; preds = %159, %90, %85, %78, %74
  %161 = load i64, i64* %7, align 8
  %162 = load i64, i64* @SCSI_SENSE_BUFFERSIZE, align 8
  %163 = icmp ugt i64 %161, %162
  br i1 %163, label %164, label %166

164:                                              ; preds = %160
  %165 = load i64, i64* @SCSI_SENSE_BUFFERSIZE, align 8
  store i64 %165, i64* %7, align 8
  br label %166

166:                                              ; preds = %164, %160
  %167 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %168 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 8
  %170 = load %struct.pqi_raid_error_info*, %struct.pqi_raid_error_info** %6, align 8
  %171 = getelementptr inbounds %struct.pqi_raid_error_info, %struct.pqi_raid_error_info* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 4
  %173 = load i64, i64* %7, align 8
  %174 = call i32 @memcpy(i32 %169, i32 %172, i64 %173)
  br label %175

175:                                              ; preds = %166, %67
  %176 = load i64, i64* %3, align 8
  %177 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %178 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %177, i32 0, i32 1
  store i64 %176, i64* %178, align 8
  %179 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %180 = load i64, i64* %4, align 8
  %181 = call i32 @set_host_byte(%struct.scsi_cmnd* %179, i64 %180)
  br label %182

182:                                              ; preds = %175, %18
  ret void
}

declare dso_local i32 @get_unaligned_le32(i32*) #1

declare dso_local i32 @scsi_bufflen(%struct.scsi_cmnd*) #1

declare dso_local i32 @scsi_set_resid(%struct.scsi_cmnd*, i32) #1

declare dso_local i64 @get_unaligned_le16(i32*) #1

declare dso_local i64 @scsi_normalize_sense(i32, i64, %struct.scsi_sense_hdr*) #1

declare dso_local %struct.pqi_ctrl_info* @shost_to_hba(i32) #1

declare dso_local i32 @printk_ratelimit(...) #1

declare dso_local i32 @scmd_printk(i32, %struct.scsi_cmnd*, i8*, i32, i32, i32, i32, ...) #1

declare dso_local i32 @pqi_take_device_offline(%struct.TYPE_4__*, i8*) #1

declare dso_local i32 @memcpy(i32, i32, i64) #1

declare dso_local i32 @set_host_byte(%struct.scsi_cmnd*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
