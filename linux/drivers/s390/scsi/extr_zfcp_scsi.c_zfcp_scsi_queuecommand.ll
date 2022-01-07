; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_scsi.c_zfcp_scsi_queuecommand.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_scsi.c_zfcp_scsi_queuecommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i32 }
%struct.scsi_cmnd = type { i32, i32 (%struct.scsi_cmnd*)*, i32*, i32 }
%struct.zfcp_scsi_dev = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.fc_rport = type { i32 }

@ZFCP_STATUS_COMMON_ERP_FAILED = common dso_local global i32 0, align 4
@DID_ERROR = common dso_local global i32 0, align 4
@ZFCP_STATUS_COMMON_UNBLOCKED = common dso_local global i32 0, align 4
@DID_IMM_RETRY = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@SCSI_MLQUEUE_DEVICE_BUSY = common dso_local global i32 0, align 4
@SCSI_MLQUEUE_HOST_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Scsi_Host*, %struct.scsi_cmnd*)* @zfcp_scsi_queuecommand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfcp_scsi_queuecommand(%struct.Scsi_Host* %0, %struct.scsi_cmnd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.Scsi_Host*, align 8
  %5 = alloca %struct.scsi_cmnd*, align 8
  %6 = alloca %struct.zfcp_scsi_dev*, align 8
  %7 = alloca %struct.fc_rport*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %4, align 8
  store %struct.scsi_cmnd* %1, %struct.scsi_cmnd** %5, align 8
  %11 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %12 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = call %struct.zfcp_scsi_dev* @sdev_to_zfcp(i32 %13)
  store %struct.zfcp_scsi_dev* %14, %struct.zfcp_scsi_dev** %6, align 8
  %15 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %16 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @scsi_target(i32 %17)
  %19 = call %struct.fc_rport* @starget_to_rport(i32 %18)
  store %struct.fc_rport* %19, %struct.fc_rport** %7, align 8
  %20 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %21 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %20, i32 0, i32 0
  store i32 0, i32* %21, align 8
  %22 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %23 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %22, i32 0, i32 2
  store i32* null, i32** %23, align 8
  %24 = load %struct.fc_rport*, %struct.fc_rport** %7, align 8
  %25 = call i32 @fc_remote_port_chkready(%struct.fc_rport* %24)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = call i64 @unlikely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %2
  %30 = load i32, i32* %9, align 4
  %31 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %32 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %34 = call i32 @zfcp_dbf_scsi_fail_send(%struct.scsi_cmnd* %33)
  %35 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %36 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %35, i32 0, i32 1
  %37 = load i32 (%struct.scsi_cmnd*)*, i32 (%struct.scsi_cmnd*)** %36, align 8
  %38 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %39 = call i32 %37(%struct.scsi_cmnd* %38)
  store i32 0, i32* %3, align 4
  br label %98

40:                                               ; preds = %2
  %41 = load %struct.zfcp_scsi_dev*, %struct.zfcp_scsi_dev** %6, align 8
  %42 = getelementptr inbounds %struct.zfcp_scsi_dev, %struct.zfcp_scsi_dev* %41, i32 0, i32 1
  %43 = call i32 @atomic_read(i32* %42)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* @ZFCP_STATUS_COMMON_ERP_FAILED, align 4
  %46 = and i32 %44, %45
  %47 = call i64 @unlikely(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %62

49:                                               ; preds = %40
  %50 = load %struct.zfcp_scsi_dev*, %struct.zfcp_scsi_dev** %6, align 8
  %51 = getelementptr inbounds %struct.zfcp_scsi_dev, %struct.zfcp_scsi_dev* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = call i32 @atomic_read(i32* %53)
  %55 = load i32, i32* @ZFCP_STATUS_COMMON_ERP_FAILED, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %49
  %59 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %60 = load i32, i32* @DID_ERROR, align 4
  %61 = call i32 @zfcp_scsi_command_fail(%struct.scsi_cmnd* %59, i32 %60)
  store i32 0, i32* %3, align 4
  br label %98

62:                                               ; preds = %49, %40
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* @ZFCP_STATUS_COMMON_UNBLOCKED, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  %67 = xor i1 %66, true
  %68 = zext i1 %67 to i32
  %69 = call i64 @unlikely(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %62
  %72 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %73 = load i32, i32* @DID_IMM_RETRY, align 4
  %74 = call i32 @zfcp_scsi_command_fail(%struct.scsi_cmnd* %72, i32 %73)
  store i32 0, i32* %3, align 4
  br label %98

75:                                               ; preds = %62
  %76 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %77 = call i32 @zfcp_fsf_fcp_cmnd(%struct.scsi_cmnd* %76)
  store i32 %77, i32* %10, align 4
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* @EBUSY, align 4
  %80 = sub nsw i32 0, %79
  %81 = icmp eq i32 %78, %80
  %82 = zext i1 %81 to i32
  %83 = call i64 @unlikely(i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %75
  %86 = load i32, i32* @SCSI_MLQUEUE_DEVICE_BUSY, align 4
  store i32 %86, i32* %3, align 4
  br label %98

87:                                               ; preds = %75
  %88 = load i32, i32* %10, align 4
  %89 = icmp slt i32 %88, 0
  %90 = zext i1 %89 to i32
  %91 = call i64 @unlikely(i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %87
  %94 = load i32, i32* @SCSI_MLQUEUE_HOST_BUSY, align 4
  store i32 %94, i32* %3, align 4
  br label %98

95:                                               ; preds = %87
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %10, align 4
  store i32 %97, i32* %3, align 4
  br label %98

98:                                               ; preds = %96, %93, %85, %71, %58, %29
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local %struct.zfcp_scsi_dev* @sdev_to_zfcp(i32) #1

declare dso_local %struct.fc_rport* @starget_to_rport(i32) #1

declare dso_local i32 @scsi_target(i32) #1

declare dso_local i32 @fc_remote_port_chkready(%struct.fc_rport*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @zfcp_dbf_scsi_fail_send(%struct.scsi_cmnd*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @zfcp_scsi_command_fail(%struct.scsi_cmnd*, i32) #1

declare dso_local i32 @zfcp_fsf_fcp_cmnd(%struct.scsi_cmnd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
