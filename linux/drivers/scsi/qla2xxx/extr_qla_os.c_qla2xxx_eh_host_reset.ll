; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_os.c_qla2xxx_eh_host_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_os.c_qla2xxx_eh_host_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i32, i32 }
%struct.TYPE_15__ = type { i32, i32, %struct.qla_hw_data* }
%struct.qla_hw_data = type { i64, %struct.TYPE_14__*, i64, i32, i32 }
%struct.TYPE_14__ = type { i64 (%struct.TYPE_15__*)* }

@FAILED = common dso_local global i32 0, align 4
@ql_log_info = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"PCI/Register disconnect, exiting.\0A\00", align 1
@SUCCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"ADAPTER RESET ISSUED nexus=%ld:%d:%llu.\0A\00", align 1
@QLA_SWAITING = common dso_local global i64 0, align 8
@ABORT_ISP_ACTIVE = common dso_local global i32 0, align 4
@ISP_ABORT_NEEDED = common dso_local global i32 0, align 4
@QLA_SUCCESS = common dso_local global i64 0, align 8
@ql_log_warn = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"wait for hba online failed.\0A\00", align 1
@WAIT_HOST = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"ADAPTER RESET %s nexus=%ld:%d:%llu.\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"FAILED\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"SUCCEEDED\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*)* @qla2xxx_eh_host_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla2xxx_eh_host_reset(%struct.scsi_cmnd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scsi_cmnd*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.qla_hw_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_15__*, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %3, align 8
  %10 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %11 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %10, i32 0, i32 0
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.TYPE_15__* @shost_priv(i32 %14)
  store %struct.TYPE_15__* %15, %struct.TYPE_15__** %4, align 8
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 2
  %18 = load %struct.qla_hw_data*, %struct.qla_hw_data** %17, align 8
  store %struct.qla_hw_data* %18, %struct.qla_hw_data** %5, align 8
  %19 = load i32, i32* @FAILED, align 4
  store i32 %19, i32* %6, align 4
  %20 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %21 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.TYPE_15__* @pci_get_drvdata(i32 %22)
  store %struct.TYPE_15__* %23, %struct.TYPE_15__** %9, align 8
  %24 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %25 = call i64 @qla2x00_isp_reg_stat(%struct.qla_hw_data* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %1
  %28 = load i32, i32* @ql_log_info, align 4
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %30 = call i32 (i32, %struct.TYPE_15__*, i32, i8*, ...) @ql_log(i32 %28, %struct.TYPE_15__* %29, i32 32833, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %31 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %32 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %31, i32 0, i32 3
  %33 = call i32 @schedule_work(i32* %32)
  %34 = load i32, i32* @SUCCESS, align 4
  store i32 %34, i32* %2, align 4
  br label %157

35:                                               ; preds = %1
  %36 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %37 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %36, i32 0, i32 0
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %7, align 4
  %41 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %42 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %41, i32 0, i32 0
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* @ql_log_info, align 4
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* %8, align 4
  %53 = call i32 (i32, %struct.TYPE_15__*, i32, i8*, ...) @ql_log(i32 %46, %struct.TYPE_15__* %47, i32 32792, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %50, i32 %51, i32 %52)
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %55 = call i64 @qla2x00_reset_active(%struct.TYPE_15__* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %63, label %57

57:                                               ; preds = %35
  %58 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %59 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @QLA_SWAITING, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %57, %35
  br label %142

64:                                               ; preds = %57
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %67 = icmp ne %struct.TYPE_15__* %65, %66
  br i1 %67, label %68, label %74

68:                                               ; preds = %64
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %70 = call i64 @qla2x00_vp_abort_isp(%struct.TYPE_15__* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %68
  br label %142

73:                                               ; preds = %68
  br label %133

74:                                               ; preds = %64
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 2
  %77 = load %struct.qla_hw_data*, %struct.qla_hw_data** %76, align 8
  %78 = call i64 @IS_P3P_TYPE(%struct.qla_hw_data* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %74
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %82 = call i32 @qla82xx_fcoe_ctx_reset(%struct.TYPE_15__* %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %86, label %84

84:                                               ; preds = %80
  %85 = load i32, i32* @SUCCESS, align 4
  store i32 %85, i32* %6, align 4
  br label %142

86:                                               ; preds = %80
  br label %87

87:                                               ; preds = %86, %74
  %88 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %89 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %87
  %93 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %94 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = call i32 @flush_workqueue(i64 %95)
  br label %97

97:                                               ; preds = %92, %87
  %98 = load i32, i32* @ABORT_ISP_ACTIVE, align 4
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 1
  %101 = call i32 @set_bit(i32 %98, i32* %100)
  %102 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %103 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %102, i32 0, i32 1
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i32 0, i32 0
  %106 = load i64 (%struct.TYPE_15__*)*, i64 (%struct.TYPE_15__*)** %105, align 8
  %107 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %108 = call i64 %106(%struct.TYPE_15__* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %128

110:                                              ; preds = %97
  %111 = load i32, i32* @ABORT_ISP_ACTIVE, align 4
  %112 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i32 0, i32 1
  %114 = call i32 @clear_bit(i32 %111, i32* %113)
  %115 = load i32, i32* @ISP_ABORT_NEEDED, align 4
  %116 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %117 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %116, i32 0, i32 1
  %118 = call i32 @set_bit(i32 %115, i32* %117)
  %119 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %120 = call i64 @qla2x00_wait_for_hba_online(%struct.TYPE_15__* %119)
  %121 = load i64, i64* @QLA_SUCCESS, align 8
  %122 = icmp ne i64 %120, %121
  br i1 %122, label %123, label %127

123:                                              ; preds = %110
  %124 = load i32, i32* @ql_log_warn, align 4
  %125 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %126 = call i32 (i32, %struct.TYPE_15__*, i32, i8*, ...) @ql_log(i32 %124, %struct.TYPE_15__* %125, i32 32810, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %142

127:                                              ; preds = %110
  br label %128

128:                                              ; preds = %127, %97
  %129 = load i32, i32* @ABORT_ISP_ACTIVE, align 4
  %130 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %131 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %130, i32 0, i32 1
  %132 = call i32 @clear_bit(i32 %129, i32* %131)
  br label %133

133:                                              ; preds = %128, %73
  %134 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %135 = load i32, i32* @WAIT_HOST, align 4
  %136 = call i64 @qla2x00_eh_wait_for_pending_commands(%struct.TYPE_15__* %134, i32 0, i32 0, i32 %135)
  %137 = load i64, i64* @QLA_SUCCESS, align 8
  %138 = icmp eq i64 %136, %137
  br i1 %138, label %139, label %141

139:                                              ; preds = %133
  %140 = load i32, i32* @SUCCESS, align 4
  store i32 %140, i32* %6, align 4
  br label %141

141:                                              ; preds = %139, %133
  br label %142

142:                                              ; preds = %141, %123, %84, %72, %63
  %143 = load i32, i32* @ql_log_info, align 4
  %144 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %145 = load i32, i32* %6, align 4
  %146 = load i32, i32* @FAILED, align 4
  %147 = icmp eq i32 %145, %146
  %148 = zext i1 %147 to i64
  %149 = select i1 %147, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0)
  %150 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* %7, align 4
  %154 = load i32, i32* %8, align 4
  %155 = call i32 (i32, %struct.TYPE_15__*, i32, i8*, ...) @ql_log(i32 %143, %struct.TYPE_15__* %144, i32 32791, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i8* %149, i32 %152, i32 %153, i32 %154)
  %156 = load i32, i32* %6, align 4
  store i32 %156, i32* %2, align 4
  br label %157

157:                                              ; preds = %142, %27
  %158 = load i32, i32* %2, align 4
  ret i32 %158
}

declare dso_local %struct.TYPE_15__* @shost_priv(i32) #1

declare dso_local %struct.TYPE_15__* @pci_get_drvdata(i32) #1

declare dso_local i64 @qla2x00_isp_reg_stat(%struct.qla_hw_data*) #1

declare dso_local i32 @ql_log(i32, %struct.TYPE_15__*, i32, i8*, ...) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i64 @qla2x00_reset_active(%struct.TYPE_15__*) #1

declare dso_local i64 @qla2x00_vp_abort_isp(%struct.TYPE_15__*) #1

declare dso_local i64 @IS_P3P_TYPE(%struct.qla_hw_data*) #1

declare dso_local i32 @qla82xx_fcoe_ctx_reset(%struct.TYPE_15__*) #1

declare dso_local i32 @flush_workqueue(i64) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i64 @qla2x00_wait_for_hba_online(%struct.TYPE_15__*) #1

declare dso_local i64 @qla2x00_eh_wait_for_pending_commands(%struct.TYPE_15__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
