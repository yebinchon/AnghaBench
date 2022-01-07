; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_nvme.c_qla_nvme_post_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_nvme.c_qla_nvme_post_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_fc_local_port = type { i32 }
%struct.nvme_fc_remote_port = type { %struct.qla_nvme_rport* }
%struct.qla_nvme_rport = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, %struct.scsi_qla_host*, i64 }
%struct.scsi_qla_host = type { i32 }
%struct.nvmefc_fcp_req = type { %struct.nvme_private* }
%struct.nvme_private = type { %struct.TYPE_13__*, i32 }
%struct.TYPE_13__ = type { i8*, %struct.qla_qpair*, i32*, i32, %struct.TYPE_10__, %struct.scsi_qla_host*, i32, i32, i32, i32 }
%struct.qla_qpair = type { i32 }
%struct.TYPE_10__ = type { %struct.srb_iocb }
%struct.srb_iocb = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.nvmefc_fcp_req* }

@ENODEV = common dso_local global i32 0, align 4
@NVME_FLAG_RESETTING = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@SRB_NVME_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"nvme_cmd\00", align 1
@qla_nvme_sp_done = common dso_local global i32 0, align 4
@qla_nvme_release_fcp_cmd_kref = common dso_local global i32 0, align 4
@QLA_SUCCESS = common dso_local global i32 0, align 4
@ql_log_warn = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"qla2x00_start_nvme_mq failed = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvme_fc_local_port*, %struct.nvme_fc_remote_port*, i8*, %struct.nvmefc_fcp_req*)* @qla_nvme_post_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla_nvme_post_cmd(%struct.nvme_fc_local_port* %0, %struct.nvme_fc_remote_port* %1, i8* %2, %struct.nvmefc_fcp_req* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvme_fc_local_port*, align 8
  %7 = alloca %struct.nvme_fc_remote_port*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.nvmefc_fcp_req*, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca %struct.srb_iocb*, align 8
  %12 = alloca %struct.scsi_qla_host*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_13__*, align 8
  %15 = alloca %struct.qla_qpair*, align 8
  %16 = alloca %struct.nvme_private*, align 8
  %17 = alloca %struct.qla_nvme_rport*, align 8
  store %struct.nvme_fc_local_port* %0, %struct.nvme_fc_local_port** %6, align 8
  store %struct.nvme_fc_remote_port* %1, %struct.nvme_fc_remote_port** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.nvmefc_fcp_req* %3, %struct.nvmefc_fcp_req** %9, align 8
  %18 = load i32, i32* @ENODEV, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %13, align 4
  %20 = load i8*, i8** %8, align 8
  %21 = bitcast i8* %20 to %struct.qla_qpair*
  store %struct.qla_qpair* %21, %struct.qla_qpair** %15, align 8
  %22 = load %struct.nvmefc_fcp_req*, %struct.nvmefc_fcp_req** %9, align 8
  %23 = getelementptr inbounds %struct.nvmefc_fcp_req, %struct.nvmefc_fcp_req* %22, i32 0, i32 0
  %24 = load %struct.nvme_private*, %struct.nvme_private** %23, align 8
  store %struct.nvme_private* %24, %struct.nvme_private** %16, align 8
  %25 = load %struct.nvme_fc_remote_port*, %struct.nvme_fc_remote_port** %7, align 8
  %26 = getelementptr inbounds %struct.nvme_fc_remote_port, %struct.nvme_fc_remote_port* %25, i32 0, i32 0
  %27 = load %struct.qla_nvme_rport*, %struct.qla_nvme_rport** %26, align 8
  store %struct.qla_nvme_rport* %27, %struct.qla_nvme_rport** %17, align 8
  %28 = load %struct.qla_nvme_rport*, %struct.qla_nvme_rport** %17, align 8
  %29 = getelementptr inbounds %struct.qla_nvme_rport, %struct.qla_nvme_rport* %28, i32 0, i32 0
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %29, align 8
  store %struct.TYPE_14__* %30, %struct.TYPE_14__** %10, align 8
  %31 = load %struct.qla_qpair*, %struct.qla_qpair** %15, align 8
  %32 = icmp ne %struct.qla_qpair* %31, null
  br i1 %32, label %33, label %52

33:                                               ; preds = %4
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %35 = icmp ne %struct.TYPE_14__* %34, null
  br i1 %35, label %36, label %52

36:                                               ; preds = %33
  %37 = load %struct.qla_qpair*, %struct.qla_qpair** %15, align 8
  %38 = icmp ne %struct.qla_qpair* %37, null
  br i1 %38, label %39, label %44

39:                                               ; preds = %36
  %40 = load %struct.qla_qpair*, %struct.qla_qpair** %15, align 8
  %41 = getelementptr inbounds %struct.qla_qpair, %struct.qla_qpair* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %39, %36
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %46 = icmp ne %struct.TYPE_14__* %45, null
  br i1 %46, label %47, label %54

47:                                               ; preds = %44
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %47, %39, %33, %4
  %53 = load i32, i32* %13, align 4
  store i32 %53, i32* %5, align 4
  br label %145

54:                                               ; preds = %47, %44
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 1
  %57 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %56, align 8
  store %struct.scsi_qla_host* %57, %struct.scsi_qla_host** %12, align 8
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @NVME_FLAG_RESETTING, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %54
  %65 = load i32, i32* @EBUSY, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %5, align 4
  br label %145

67:                                               ; preds = %54
  %68 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %12, align 8
  %69 = load %struct.qla_qpair*, %struct.qla_qpair** %15, align 8
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %71 = load i32, i32* @GFP_ATOMIC, align 4
  %72 = call %struct.TYPE_13__* @qla2xxx_get_qpair_sp(%struct.scsi_qla_host* %68, %struct.qla_qpair* %69, %struct.TYPE_14__* %70, i32 %71)
  store %struct.TYPE_13__* %72, %struct.TYPE_13__** %14, align 8
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %74 = icmp ne %struct.TYPE_13__* %73, null
  br i1 %74, label %78, label %75

75:                                               ; preds = %67
  %76 = load i32, i32* @EBUSY, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %5, align 4
  br label %145

78:                                               ; preds = %67
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 3
  %81 = call i32 @init_waitqueue_head(i32* %80)
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 9
  %84 = call i32 @kref_init(i32* %83)
  %85 = load %struct.nvme_private*, %struct.nvme_private** %16, align 8
  %86 = getelementptr inbounds %struct.nvme_private, %struct.nvme_private* %85, i32 0, i32 1
  %87 = call i32 @spin_lock_init(i32* %86)
  %88 = load %struct.nvme_private*, %struct.nvme_private** %16, align 8
  %89 = bitcast %struct.nvme_private* %88 to i8*
  %90 = bitcast i8* %89 to i32*
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 2
  store i32* %90, i32** %92, align 8
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %94 = load %struct.nvme_private*, %struct.nvme_private** %16, align 8
  %95 = getelementptr inbounds %struct.nvme_private, %struct.nvme_private* %94, i32 0, i32 0
  store %struct.TYPE_13__* %93, %struct.TYPE_13__** %95, align 8
  %96 = load i32, i32* @SRB_NVME_CMD, align 4
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 8
  store i32 %96, i32* %98, align 8
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %100, align 8
  %101 = load i32, i32* @qla_nvme_sp_done, align 4
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 7
  store i32 %101, i32* %103, align 4
  %104 = load i32, i32* @qla_nvme_release_fcp_cmd_kref, align 4
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 6
  store i32 %104, i32* %106, align 8
  %107 = load %struct.qla_qpair*, %struct.qla_qpair** %15, align 8
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i32 0, i32 1
  store %struct.qla_qpair* %107, %struct.qla_qpair** %109, align 8
  %110 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %12, align 8
  %111 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i32 0, i32 5
  store %struct.scsi_qla_host* %110, %struct.scsi_qla_host** %112, align 8
  %113 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i32 0, i32 4
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 0
  store %struct.srb_iocb* %115, %struct.srb_iocb** %11, align 8
  %116 = load %struct.nvmefc_fcp_req*, %struct.nvmefc_fcp_req** %9, align 8
  %117 = load %struct.srb_iocb*, %struct.srb_iocb** %11, align 8
  %118 = getelementptr inbounds %struct.srb_iocb, %struct.srb_iocb* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 0
  store %struct.nvmefc_fcp_req* %116, %struct.nvmefc_fcp_req** %120, align 8
  %121 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %122 = call i32 @qla2x00_start_nvme_mq(%struct.TYPE_13__* %121)
  store i32 %122, i32* %13, align 4
  %123 = load i32, i32* %13, align 4
  %124 = load i32, i32* @QLA_SUCCESS, align 4
  %125 = icmp ne i32 %123, %124
  br i1 %125, label %126, label %143

126:                                              ; preds = %78
  %127 = load i32, i32* @ql_log_warn, align 4
  %128 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %12, align 8
  %129 = load i32, i32* %13, align 4
  %130 = call i32 @ql_log(i32 %127, %struct.scsi_qla_host* %128, i32 8493, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %129)
  %131 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %131, i32 0, i32 3
  %133 = call i32 @wake_up(i32* %132)
  %134 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %135 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %134, i32 0, i32 2
  store i32* null, i32** %135, align 8
  %136 = load %struct.nvme_private*, %struct.nvme_private** %16, align 8
  %137 = getelementptr inbounds %struct.nvme_private, %struct.nvme_private* %136, i32 0, i32 0
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %137, align 8
  %138 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %139 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %138, i32 0, i32 1
  %140 = load %struct.qla_qpair*, %struct.qla_qpair** %139, align 8
  %141 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %142 = call i32 @qla2xxx_rel_qpair_sp(%struct.qla_qpair* %140, %struct.TYPE_13__* %141)
  br label %143

143:                                              ; preds = %126, %78
  %144 = load i32, i32* %13, align 4
  store i32 %144, i32* %5, align 4
  br label %145

145:                                              ; preds = %143, %75, %64, %52
  %146 = load i32, i32* %5, align 4
  ret i32 %146
}

declare dso_local %struct.TYPE_13__* @qla2xxx_get_qpair_sp(%struct.scsi_qla_host*, %struct.qla_qpair*, %struct.TYPE_14__*, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @qla2x00_start_nvme_mq(%struct.TYPE_13__*) #1

declare dso_local i32 @ql_log(i32, %struct.scsi_qla_host*, i32, i8*, i32) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @qla2xxx_rel_qpair_sp(%struct.qla_qpair*, %struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
