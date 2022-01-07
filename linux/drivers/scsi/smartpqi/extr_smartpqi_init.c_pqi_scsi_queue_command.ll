; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_scsi_queue_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_scsi_queue_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i32 }
%struct.scsi_cmnd = type { i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.pqi_scsi_dev* }
%struct.pqi_scsi_dev = type { i32, i64, i64 }
%struct.pqi_ctrl_info = type { %struct.pqi_queue_group* }
%struct.pqi_queue_group = type { i32 }

@DID_NO_CONNECT = common dso_local global i32 0, align 4
@SCSI_MLQUEUE_HOST_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Scsi_Host*, %struct.scsi_cmnd*)* @pqi_scsi_queue_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pqi_scsi_queue_command(%struct.Scsi_Host* %0, %struct.scsi_cmnd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.Scsi_Host*, align 8
  %5 = alloca %struct.scsi_cmnd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pqi_ctrl_info*, align 8
  %8 = alloca %struct.pqi_scsi_dev*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.pqi_queue_group*, align 8
  %11 = alloca i32, align 4
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %4, align 8
  store %struct.scsi_cmnd* %1, %struct.scsi_cmnd** %5, align 8
  %12 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %13 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %12, i32 0, i32 2
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %15, align 8
  store %struct.pqi_scsi_dev* %16, %struct.pqi_scsi_dev** %8, align 8
  %17 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %18 = call %struct.pqi_ctrl_info* @shost_to_hba(%struct.Scsi_Host* %17)
  store %struct.pqi_ctrl_info* %18, %struct.pqi_ctrl_info** %7, align 8
  %19 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %8, align 8
  %20 = icmp ne %struct.pqi_scsi_dev* %19, null
  br i1 %20, label %27, label %21

21:                                               ; preds = %2
  %22 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %23 = load i32, i32* @DID_NO_CONNECT, align 4
  %24 = call i32 @set_host_byte(%struct.scsi_cmnd* %22, i32 %23)
  %25 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %26 = call i32 @pqi_scsi_done(%struct.scsi_cmnd* %25)
  store i32 0, i32* %3, align 4
  br label %140

27:                                               ; preds = %2
  %28 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %8, align 8
  %29 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %28, i32 0, i32 0
  %30 = call i32 @atomic_inc(i32* %29)
  %31 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %7, align 8
  %32 = call i64 @pqi_ctrl_offline(%struct.pqi_ctrl_info* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %27
  %35 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %7, align 8
  %36 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %8, align 8
  %37 = call i64 @pqi_device_in_remove(%struct.pqi_ctrl_info* %35, %struct.pqi_scsi_dev* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %34, %27
  %40 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %41 = load i32, i32* @DID_NO_CONNECT, align 4
  %42 = call i32 @set_host_byte(%struct.scsi_cmnd* %40, i32 %41)
  %43 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %44 = call i32 @pqi_scsi_done(%struct.scsi_cmnd* %43)
  store i32 0, i32* %3, align 4
  br label %140

45:                                               ; preds = %34
  %46 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %7, align 8
  %47 = call i32 @pqi_ctrl_busy(%struct.pqi_ctrl_info* %46)
  %48 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %7, align 8
  %49 = call i64 @pqi_ctrl_blocked(%struct.pqi_ctrl_info* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %59, label %51

51:                                               ; preds = %45
  %52 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %8, align 8
  %53 = call i64 @pqi_device_in_reset(%struct.pqi_scsi_dev* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %51
  %56 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %7, align 8
  %57 = call i64 @pqi_ctrl_in_ofa(%struct.pqi_ctrl_info* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %55, %51, %45
  %60 = load i32, i32* @SCSI_MLQUEUE_HOST_BUSY, align 4
  store i32 %60, i32* %6, align 4
  br label %129

61:                                               ; preds = %55
  %62 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %63 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %62, i32 0, i32 1
  store i64 0, i64* %63, align 8
  %64 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %7, align 8
  %65 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %66 = call i64 @pqi_get_hw_queue(%struct.pqi_ctrl_info* %64, %struct.scsi_cmnd* %65)
  store i64 %66, i64* %9, align 8
  %67 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %7, align 8
  %68 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %67, i32 0, i32 0
  %69 = load %struct.pqi_queue_group*, %struct.pqi_queue_group** %68, align 8
  %70 = load i64, i64* %9, align 8
  %71 = getelementptr inbounds %struct.pqi_queue_group, %struct.pqi_queue_group* %69, i64 %70
  store %struct.pqi_queue_group* %71, %struct.pqi_queue_group** %10, align 8
  %72 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %8, align 8
  %73 = call i64 @pqi_is_logical_device(%struct.pqi_scsi_dev* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %110

75:                                               ; preds = %61
  store i32 0, i32* %11, align 4
  %76 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %8, align 8
  %77 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %100

80:                                               ; preds = %75
  %81 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %82 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @blk_rq_is_passthrough(i32 %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %100, label %86

86:                                               ; preds = %80
  %87 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %7, align 8
  %88 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %8, align 8
  %89 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %90 = load %struct.pqi_queue_group*, %struct.pqi_queue_group** %10, align 8
  %91 = call i32 @pqi_raid_bypass_submit_scsi_cmd(%struct.pqi_ctrl_info* %87, %struct.pqi_scsi_dev* %88, %struct.scsi_cmnd* %89, %struct.pqi_queue_group* %90)
  store i32 %91, i32* %6, align 4
  %92 = load i32, i32* %6, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %98, label %94

94:                                               ; preds = %86
  %95 = load i32, i32* %6, align 4
  %96 = load i32, i32* @SCSI_MLQUEUE_HOST_BUSY, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %94, %86
  store i32 1, i32* %11, align 4
  br label %99

99:                                               ; preds = %98, %94
  br label %100

100:                                              ; preds = %99, %80, %75
  %101 = load i32, i32* %11, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %109, label %103

103:                                              ; preds = %100
  %104 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %7, align 8
  %105 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %8, align 8
  %106 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %107 = load %struct.pqi_queue_group*, %struct.pqi_queue_group** %10, align 8
  %108 = call i32 @pqi_raid_submit_scsi_cmd(%struct.pqi_ctrl_info* %104, %struct.pqi_scsi_dev* %105, %struct.scsi_cmnd* %106, %struct.pqi_queue_group* %107)
  store i32 %108, i32* %6, align 4
  br label %109

109:                                              ; preds = %103, %100
  br label %128

110:                                              ; preds = %61
  %111 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %8, align 8
  %112 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %121

115:                                              ; preds = %110
  %116 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %7, align 8
  %117 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %8, align 8
  %118 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %119 = load %struct.pqi_queue_group*, %struct.pqi_queue_group** %10, align 8
  %120 = call i32 @pqi_aio_submit_scsi_cmd(%struct.pqi_ctrl_info* %116, %struct.pqi_scsi_dev* %117, %struct.scsi_cmnd* %118, %struct.pqi_queue_group* %119)
  store i32 %120, i32* %6, align 4
  br label %127

121:                                              ; preds = %110
  %122 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %7, align 8
  %123 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %8, align 8
  %124 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %125 = load %struct.pqi_queue_group*, %struct.pqi_queue_group** %10, align 8
  %126 = call i32 @pqi_raid_submit_scsi_cmd(%struct.pqi_ctrl_info* %122, %struct.pqi_scsi_dev* %123, %struct.scsi_cmnd* %124, %struct.pqi_queue_group* %125)
  store i32 %126, i32* %6, align 4
  br label %127

127:                                              ; preds = %121, %115
  br label %128

128:                                              ; preds = %127, %109
  br label %129

129:                                              ; preds = %128, %59
  %130 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %7, align 8
  %131 = call i32 @pqi_ctrl_unbusy(%struct.pqi_ctrl_info* %130)
  %132 = load i32, i32* %6, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %129
  %135 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %8, align 8
  %136 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %135, i32 0, i32 0
  %137 = call i32 @atomic_dec(i32* %136)
  br label %138

138:                                              ; preds = %134, %129
  %139 = load i32, i32* %6, align 4
  store i32 %139, i32* %3, align 4
  br label %140

140:                                              ; preds = %138, %39, %21
  %141 = load i32, i32* %3, align 4
  ret i32 %141
}

declare dso_local %struct.pqi_ctrl_info* @shost_to_hba(%struct.Scsi_Host*) #1

declare dso_local i32 @set_host_byte(%struct.scsi_cmnd*, i32) #1

declare dso_local i32 @pqi_scsi_done(%struct.scsi_cmnd*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i64 @pqi_ctrl_offline(%struct.pqi_ctrl_info*) #1

declare dso_local i64 @pqi_device_in_remove(%struct.pqi_ctrl_info*, %struct.pqi_scsi_dev*) #1

declare dso_local i32 @pqi_ctrl_busy(%struct.pqi_ctrl_info*) #1

declare dso_local i64 @pqi_ctrl_blocked(%struct.pqi_ctrl_info*) #1

declare dso_local i64 @pqi_device_in_reset(%struct.pqi_scsi_dev*) #1

declare dso_local i64 @pqi_ctrl_in_ofa(%struct.pqi_ctrl_info*) #1

declare dso_local i64 @pqi_get_hw_queue(%struct.pqi_ctrl_info*, %struct.scsi_cmnd*) #1

declare dso_local i64 @pqi_is_logical_device(%struct.pqi_scsi_dev*) #1

declare dso_local i32 @blk_rq_is_passthrough(i32) #1

declare dso_local i32 @pqi_raid_bypass_submit_scsi_cmd(%struct.pqi_ctrl_info*, %struct.pqi_scsi_dev*, %struct.scsi_cmnd*, %struct.pqi_queue_group*) #1

declare dso_local i32 @pqi_raid_submit_scsi_cmd(%struct.pqi_ctrl_info*, %struct.pqi_scsi_dev*, %struct.scsi_cmnd*, %struct.pqi_queue_group*) #1

declare dso_local i32 @pqi_aio_submit_scsi_cmd(%struct.pqi_ctrl_info*, %struct.pqi_scsi_dev*, %struct.scsi_cmnd*, %struct.pqi_queue_group*) #1

declare dso_local i32 @pqi_ctrl_unbusy(%struct.pqi_ctrl_info*) #1

declare dso_local i32 @atomic_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
