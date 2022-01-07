; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_bsg.c_qla2x00_do_dport_diagnostics.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_bsg.c_qla2x00_do_dport_diagnostics.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bsg_job = type { i32, %struct.TYPE_10__, %struct.TYPE_9__, %struct.fc_bsg_reply* }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.fc_bsg_reply = type { i32, i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32* }
%struct.Scsi_Host = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.qla_dport_diag = type { i32, i32 }

@EPERM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ql_log_warn = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Failed to allocate memory for dport.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@QLA_SUCCESS = common dso_local global i32 0, align 4
@EXT_STATUS_MAILBOX = common dso_local global i32 0, align 4
@EXT_STATUS_OK = common dso_local global i32 0, align 4
@DID_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bsg_job*)* @qla2x00_do_dport_diagnostics to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla2x00_do_dport_diagnostics(%struct.bsg_job* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bsg_job*, align 8
  %4 = alloca %struct.fc_bsg_reply*, align 8
  %5 = alloca %struct.Scsi_Host*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.qla_dport_diag*, align 8
  store %struct.bsg_job* %0, %struct.bsg_job** %3, align 8
  %9 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %10 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %9, i32 0, i32 3
  %11 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %10, align 8
  store %struct.fc_bsg_reply* %11, %struct.fc_bsg_reply** %4, align 8
  %12 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %13 = call %struct.Scsi_Host* @fc_bsg_to_shost(%struct.bsg_job* %12)
  store %struct.Scsi_Host* %13, %struct.Scsi_Host** %5, align 8
  %14 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %15 = call %struct.TYPE_13__* @shost_priv(%struct.Scsi_Host* %14)
  store %struct.TYPE_13__* %15, %struct.TYPE_13__** %6, align 8
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @IS_QLA83XX(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %36, label %21

21:                                               ; preds = %1
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @IS_QLA27XX(i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %36, label %27

27:                                               ; preds = %21
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @IS_QLA28XX(i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %27
  %34 = load i32, i32* @EPERM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %113

36:                                               ; preds = %27, %21, %1
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call %struct.qla_dport_diag* @kmalloc(i32 8, i32 %37)
  store %struct.qla_dport_diag* %38, %struct.qla_dport_diag** %8, align 8
  %39 = load %struct.qla_dport_diag*, %struct.qla_dport_diag** %8, align 8
  %40 = icmp ne %struct.qla_dport_diag* %39, null
  br i1 %40, label %47, label %41

41:                                               ; preds = %36
  %42 = load i32, i32* @ql_log_warn, align 4
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %44 = call i32 @ql_log(i32 %42, %struct.TYPE_13__* %43, i32 28891, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %2, align 4
  br label %113

47:                                               ; preds = %36
  %48 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %49 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %53 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.qla_dport_diag*, %struct.qla_dport_diag** %8, align 8
  %57 = call i32 @sg_copy_to_buffer(i32 %51, i32 %55, %struct.qla_dport_diag* %56, i32 8)
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %59 = load %struct.qla_dport_diag*, %struct.qla_dport_diag** %8, align 8
  %60 = getelementptr inbounds %struct.qla_dport_diag, %struct.qla_dport_diag* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.qla_dport_diag*, %struct.qla_dport_diag** %8, align 8
  %63 = getelementptr inbounds %struct.qla_dport_diag, %struct.qla_dport_diag* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @qla26xx_dport_diagnostics(%struct.TYPE_13__* %58, i32 %61, i32 4, i32 %64)
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* @QLA_SUCCESS, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %80

69:                                               ; preds = %47
  %70 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %71 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %75 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.qla_dport_diag*, %struct.qla_dport_diag** %8, align 8
  %79 = call i32 @sg_copy_from_buffer(i32 %73, i32 %77, %struct.qla_dport_diag* %78, i32 8)
  br label %80

80:                                               ; preds = %69, %47
  %81 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %4, align 8
  %82 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %81, i32 0, i32 0
  store i32 8, i32* %82, align 8
  %83 = load i32, i32* %7, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %80
  %86 = load i32, i32* @EXT_STATUS_MAILBOX, align 4
  br label %89

87:                                               ; preds = %80
  %88 = load i32, i32* @EXT_STATUS_OK, align 4
  br label %89

89:                                               ; preds = %87, %85
  %90 = phi i32 [ %86, %85 ], [ %88, %87 ]
  %91 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %4, align 8
  %92 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 0
  store i32 %90, i32* %96, align 4
  %97 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %98 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %97, i32 0, i32 0
  store i32 16, i32* %98, align 8
  %99 = load i32, i32* @DID_OK, align 4
  %100 = shl i32 %99, 16
  %101 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %4, align 8
  %102 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %101, i32 0, i32 1
  store i32 %100, i32* %102, align 4
  %103 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %104 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %4, align 8
  %105 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %4, align 8
  %108 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @bsg_job_done(%struct.bsg_job* %103, i32 %106, i32 %109)
  %111 = load %struct.qla_dport_diag*, %struct.qla_dport_diag** %8, align 8
  %112 = call i32 @kfree(%struct.qla_dport_diag* %111)
  store i32 0, i32* %2, align 4
  br label %113

113:                                              ; preds = %89, %41, %33
  %114 = load i32, i32* %2, align 4
  ret i32 %114
}

declare dso_local %struct.Scsi_Host* @fc_bsg_to_shost(%struct.bsg_job*) #1

declare dso_local %struct.TYPE_13__* @shost_priv(%struct.Scsi_Host*) #1

declare dso_local i32 @IS_QLA83XX(i32) #1

declare dso_local i32 @IS_QLA27XX(i32) #1

declare dso_local i32 @IS_QLA28XX(i32) #1

declare dso_local %struct.qla_dport_diag* @kmalloc(i32, i32) #1

declare dso_local i32 @ql_log(i32, %struct.TYPE_13__*, i32, i8*) #1

declare dso_local i32 @sg_copy_to_buffer(i32, i32, %struct.qla_dport_diag*, i32) #1

declare dso_local i32 @qla26xx_dport_diagnostics(%struct.TYPE_13__*, i32, i32, i32) #1

declare dso_local i32 @sg_copy_from_buffer(i32, i32, %struct.qla_dport_diag*, i32) #1

declare dso_local i32 @bsg_job_done(%struct.bsg_job*, i32, i32) #1

declare dso_local i32 @kfree(%struct.qla_dport_diag*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
