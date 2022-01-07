; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_os.c_qla2xxx_eh_bus_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_os.c_qla2xxx_eh_bus_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32, i64, i32 }
%struct.TYPE_10__ = type { i32, %struct.qla_hw_data* }
%struct.qla_hw_data = type { i32 }
%struct.fc_port = type { i32 }

@FAILED = common dso_local global i32 0, align 4
@ql_log_info = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"PCI/Register disconnect, exiting.\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"BUS RESET ISSUED nexus=%ld:%d:%llu.\0A\00", align 1
@QLA_SUCCESS = common dso_local global i64 0, align 8
@ql_log_fatal = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"Wait for hba online failed board disabled.\0A\00", align 1
@SUCCESS = common dso_local global i32 0, align 4
@WAIT_HOST = common dso_local global i32 0, align 4
@ql_log_warn = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"Wait for pending commands failed.\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"BUS RESET %s nexus=%ld:%d:%llu.\0A\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"FAILED\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"SUCCEEDED\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*)* @qla2xxx_eh_bus_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla2xxx_eh_bus_reset(%struct.scsi_cmnd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scsi_cmnd*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.fc_port*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.qla_hw_data*, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %3, align 8
  %10 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %11 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %10, i32 0, i32 0
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = call %struct.TYPE_10__* @shost_priv(i32 %14)
  store %struct.TYPE_10__* %15, %struct.TYPE_10__** %4, align 8
  %16 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %17 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %16, i32 0, i32 0
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.fc_port*
  store %struct.fc_port* %21, %struct.fc_port** %5, align 8
  %22 = load i32, i32* @FAILED, align 4
  store i32 %22, i32* %6, align 4
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 1
  %25 = load %struct.qla_hw_data*, %struct.qla_hw_data** %24, align 8
  store %struct.qla_hw_data* %25, %struct.qla_hw_data** %9, align 8
  %26 = load %struct.qla_hw_data*, %struct.qla_hw_data** %9, align 8
  %27 = call i64 @qla2x00_isp_reg_stat(%struct.qla_hw_data* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %1
  %30 = load i32, i32* @ql_log_info, align 4
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %32 = call i32 (i32, %struct.TYPE_10__*, i32, i8*, ...) @ql_log(i32 %30, %struct.TYPE_10__* %31, i32 32832, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @FAILED, align 4
  store i32 %33, i32* %2, align 4
  br label %119

34:                                               ; preds = %1
  %35 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %36 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %35, i32 0, i32 0
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %7, align 4
  %40 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %41 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %40, i32 0, i32 0
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %8, align 4
  %45 = load %struct.fc_port*, %struct.fc_port** %5, align 8
  %46 = icmp ne %struct.fc_port* %45, null
  br i1 %46, label %49, label %47

47:                                               ; preds = %34
  %48 = load i32, i32* %6, align 4
  store i32 %48, i32* %2, align 4
  br label %119

49:                                               ; preds = %34
  %50 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %51 = call i32 @fc_block_scsi_eh(%struct.scsi_cmnd* %50)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = load i32, i32* %6, align 4
  store i32 %55, i32* %2, align 4
  br label %119

56:                                               ; preds = %49
  %57 = load i32, i32* @FAILED, align 4
  store i32 %57, i32* %6, align 4
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %59 = call i64 @qla2x00_chip_is_down(%struct.TYPE_10__* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %56
  %62 = load i32, i32* %6, align 4
  store i32 %62, i32* %2, align 4
  br label %119

63:                                               ; preds = %56
  %64 = load i32, i32* @ql_log_info, align 4
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* %8, align 4
  %71 = call i32 (i32, %struct.TYPE_10__*, i32, i8*, ...) @ql_log(i32 %64, %struct.TYPE_10__* %65, i32 32786, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %68, i32 %69, i32 %70)
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %73 = call i64 @qla2x00_wait_for_hba_online(%struct.TYPE_10__* %72)
  %74 = load i64, i64* @QLA_SUCCESS, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %80

76:                                               ; preds = %63
  %77 = load i32, i32* @ql_log_fatal, align 4
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %79 = call i32 (i32, %struct.TYPE_10__*, i32, i8*, ...) @ql_log(i32 %77, %struct.TYPE_10__* %78, i32 32787, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  br label %104

80:                                               ; preds = %63
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %82 = call i64 @qla2x00_loop_reset(%struct.TYPE_10__* %81)
  %83 = load i64, i64* @QLA_SUCCESS, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %80
  %86 = load i32, i32* @SUCCESS, align 4
  store i32 %86, i32* %6, align 4
  br label %87

87:                                               ; preds = %85, %80
  %88 = load i32, i32* %6, align 4
  %89 = load i32, i32* @FAILED, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %87
  br label %104

92:                                               ; preds = %87
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %94 = load i32, i32* @WAIT_HOST, align 4
  %95 = call i64 @qla2x00_eh_wait_for_pending_commands(%struct.TYPE_10__* %93, i32 0, i32 0, i32 %94)
  %96 = load i64, i64* @QLA_SUCCESS, align 8
  %97 = icmp ne i64 %95, %96
  br i1 %97, label %98, label %103

98:                                               ; preds = %92
  %99 = load i32, i32* @ql_log_warn, align 4
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %101 = call i32 (i32, %struct.TYPE_10__*, i32, i8*, ...) @ql_log(i32 %99, %struct.TYPE_10__* %100, i32 32788, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %102 = load i32, i32* @FAILED, align 4
  store i32 %102, i32* %6, align 4
  br label %103

103:                                              ; preds = %98, %92
  br label %104

104:                                              ; preds = %103, %91, %76
  %105 = load i32, i32* @ql_log_warn, align 4
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %107 = load i32, i32* %6, align 4
  %108 = load i32, i32* @FAILED, align 4
  %109 = icmp eq i32 %107, %108
  %110 = zext i1 %109 to i64
  %111 = select i1 %109, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0)
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* %7, align 4
  %116 = load i32, i32* %8, align 4
  %117 = call i32 (i32, %struct.TYPE_10__*, i32, i8*, ...) @ql_log(i32 %105, %struct.TYPE_10__* %106, i32 32811, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i8* %111, i32 %114, i32 %115, i32 %116)
  %118 = load i32, i32* %6, align 4
  store i32 %118, i32* %2, align 4
  br label %119

119:                                              ; preds = %104, %61, %54, %47, %29
  %120 = load i32, i32* %2, align 4
  ret i32 %120
}

declare dso_local %struct.TYPE_10__* @shost_priv(i32) #1

declare dso_local i64 @qla2x00_isp_reg_stat(%struct.qla_hw_data*) #1

declare dso_local i32 @ql_log(i32, %struct.TYPE_10__*, i32, i8*, ...) #1

declare dso_local i32 @fc_block_scsi_eh(%struct.scsi_cmnd*) #1

declare dso_local i64 @qla2x00_chip_is_down(%struct.TYPE_10__*) #1

declare dso_local i64 @qla2x00_wait_for_hba_online(%struct.TYPE_10__*) #1

declare dso_local i64 @qla2x00_loop_reset(%struct.TYPE_10__*) #1

declare dso_local i64 @qla2x00_eh_wait_for_pending_commands(%struct.TYPE_10__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
