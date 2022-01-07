; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_init.c_qla2xxx_mctp_dump.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_init.c_qla2xxx_mctp_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.qla_hw_data* }
%struct.qla_hw_data = type { i32, %struct.TYPE_10__, i32, i64, i32, %struct.TYPE_9__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@QLA_FUNCTION_FAILED = common dso_local global i32 0, align 4
@ql_log_info = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"This board is not MCTP capable\0A\00", align 1
@MCTP_DUMP_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ql_log_warn = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Failed to allocate memory for mctp dump\0A\00", align 1
@QLA_SUCCESS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"Failed to capture mctp dump\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"Mctp dump capture for host (%ld/%p).\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"Failed to restart nic firmware\0A\00", align 1
@ql_dbg_p3p = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [38 x i8] c"Restarted NIC firmware successfully.\0A\00", align 1
@MCTP_DUMP_STR_ADDR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qla2xxx_mctp_dump(%struct.TYPE_11__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.qla_hw_data*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  %6 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 1
  %8 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  store %struct.qla_hw_data* %8, %struct.qla_hw_data** %4, align 8
  %9 = load i32, i32* @QLA_FUNCTION_FAILED, align 4
  store i32 %9, i32* %5, align 4
  %10 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %11 = call i32 @IS_MCTP_CAPABLE(%struct.qla_hw_data* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ql_log_info, align 4
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %16 = call i32 (i32, %struct.TYPE_11__*, i32, i8*, ...) @ql_log(i32 %14, %struct.TYPE_11__* %15, i32 20589, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* %5, align 4
  store i32 %17, i32* %2, align 4
  br label %105

18:                                               ; preds = %1
  %19 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %20 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %45, label %23

23:                                               ; preds = %18
  %24 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %25 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %24, i32 0, i32 5
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = load i32, i32* @MCTP_DUMP_SIZE, align 4
  %29 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %30 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %29, i32 0, i32 4
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call i64 @dma_alloc_coherent(i32* %27, i32 %28, i32* %30, i32 %31)
  %33 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %34 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %33, i32 0, i32 3
  store i64 %32, i64* %34, align 8
  %35 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %36 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %23
  %40 = load i32, i32* @ql_log_warn, align 4
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %42 = call i32 (i32, %struct.TYPE_11__*, i32, i8*, ...) @ql_log(i32 %40, %struct.TYPE_11__* %41, i32 20590, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %43 = load i32, i32* %5, align 4
  store i32 %43, i32* %2, align 4
  br label %105

44:                                               ; preds = %23
  br label %45

45:                                               ; preds = %44, %18
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %47 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %48 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @MCTP_DUMP_SIZE, align 4
  %51 = sdiv i32 %50, 4
  %52 = call i32 @qla2x00_dump_mctp_data(%struct.TYPE_11__* %46, i32 %49, i32 0, i32 %51)
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @QLA_SUCCESS, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %45
  %57 = load i32, i32* @ql_log_warn, align 4
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %59 = call i32 (i32, %struct.TYPE_11__*, i32, i8*, ...) @ql_log(i32 %57, %struct.TYPE_11__* %58, i32 20591, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %72

60:                                               ; preds = %45
  %61 = load i32, i32* @ql_log_info, align 4
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %67 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = call i32 (i32, %struct.TYPE_11__*, i32, i8*, ...) @ql_log(i32 %61, %struct.TYPE_11__* %62, i32 20592, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %65, i64 %68)
  %70 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %71 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %70, i32 0, i32 0
  store i32 1, i32* %71, align 8
  br label %72

72:                                               ; preds = %60, %56
  %73 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %74 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %103, label %78

78:                                               ; preds = %72
  %79 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %80 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %103, label %83

83:                                               ; preds = %78
  %84 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %85 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 0
  store i32 1, i32* %86, align 4
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %88 = call i32 @qla83xx_restart_nic_firmware(%struct.TYPE_11__* %87)
  store i32 %88, i32* %5, align 4
  %89 = load i32, i32* %5, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %83
  %92 = load i32, i32* @ql_log_warn, align 4
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %94 = call i32 (i32, %struct.TYPE_11__*, i32, i8*, ...) @ql_log(i32 %92, %struct.TYPE_11__* %93, i32 20593, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  br label %99

95:                                               ; preds = %83
  %96 = load i32, i32* @ql_dbg_p3p, align 4
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %98 = call i32 @ql_dbg(i32 %96, %struct.TYPE_11__* %97, i32 45188, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0))
  br label %99

99:                                               ; preds = %95, %91
  %100 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %101 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 0
  store i32 0, i32* %102, align 4
  br label %103

103:                                              ; preds = %99, %78, %72
  %104 = load i32, i32* %5, align 4
  store i32 %104, i32* %2, align 4
  br label %105

105:                                              ; preds = %103, %39, %13
  %106 = load i32, i32* %2, align 4
  ret i32 %106
}

declare dso_local i32 @IS_MCTP_CAPABLE(%struct.qla_hw_data*) #1

declare dso_local i32 @ql_log(i32, %struct.TYPE_11__*, i32, i8*, ...) #1

declare dso_local i64 @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @qla2x00_dump_mctp_data(%struct.TYPE_11__*, i32, i32, i32) #1

declare dso_local i32 @qla83xx_restart_nic_firmware(%struct.TYPE_11__*) #1

declare dso_local i32 @ql_dbg(i32, %struct.TYPE_11__*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
