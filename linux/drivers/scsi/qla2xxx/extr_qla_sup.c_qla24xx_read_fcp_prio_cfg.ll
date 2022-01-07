; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_sup.c_qla24xx_read_fcp_prio_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_sup.c_qla24xx_read_fcp_prio_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.qla_hw_data* }
%struct.qla_hw_data = type { i32, %struct.TYPE_18__*, %struct.TYPE_16__, %struct.TYPE_15__* }
%struct.TYPE_18__ = type { i32, %struct.TYPE_18__* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i32 (%struct.TYPE_17__*, %struct.TYPE_18__*, i32, i32)* }

@FCP_PRIO_CFG_SIZE = common dso_local global i32 0, align 4
@ql_log_warn = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"Unable to allocate memory for fcp priority data (%x).\0A\00", align 1
@QLA_FUNCTION_FAILED = common dso_local global i32 0, align 4
@FCP_PRIO_CFG_HDR_SIZE = common dso_local global i32 0, align 4
@FCP_PRIO_CFG_ENTRY_SIZE = common dso_local global i32 0, align 4
@QLA_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qla24xx_read_fcp_prio_cfg(%struct.TYPE_17__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.qla_hw_data*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %3, align 8
  %8 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 0
  %10 = load %struct.qla_hw_data*, %struct.qla_hw_data** %9, align 8
  store %struct.qla_hw_data* %10, %struct.qla_hw_data** %7, align 8
  %11 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %12 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %11, i32 0, i32 1
  %13 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %14 = icmp ne %struct.TYPE_18__* %13, null
  br i1 %14, label %31, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @FCP_PRIO_CFG_SIZE, align 4
  %17 = call %struct.TYPE_18__* @vmalloc(i32 %16)
  %18 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %19 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %18, i32 0, i32 1
  store %struct.TYPE_18__* %17, %struct.TYPE_18__** %19, align 8
  %20 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %21 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %20, i32 0, i32 1
  %22 = load %struct.TYPE_18__*, %struct.TYPE_18__** %21, align 8
  %23 = icmp ne %struct.TYPE_18__* %22, null
  br i1 %23, label %30, label %24

24:                                               ; preds = %15
  %25 = load i32, i32* @ql_log_warn, align 4
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %27 = load i32, i32* @FCP_PRIO_CFG_SIZE, align 4
  %28 = call i32 @ql_log(i32 %25, %struct.TYPE_17__* %26, i32 213, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* @QLA_FUNCTION_FAILED, align 4
  store i32 %29, i32* %2, align 4
  br label %119

30:                                               ; preds = %15
  br label %31

31:                                               ; preds = %30, %1
  %32 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %33 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %32, i32 0, i32 1
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** %33, align 8
  %35 = load i32, i32* @FCP_PRIO_CFG_SIZE, align 4
  %36 = call i32 @memset(%struct.TYPE_18__* %34, i32 0, i32 %35)
  %37 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %38 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %6, align 4
  %40 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %41 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %40, i32 0, i32 3
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 0
  %44 = load i32 (%struct.TYPE_17__*, %struct.TYPE_18__*, i32, i32)*, i32 (%struct.TYPE_17__*, %struct.TYPE_18__*, i32, i32)** %43, align 8
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %46 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %47 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %46, i32 0, i32 1
  %48 = load %struct.TYPE_18__*, %struct.TYPE_18__** %47, align 8
  %49 = load i32, i32* %6, align 4
  %50 = shl i32 %49, 2
  %51 = load i32, i32* @FCP_PRIO_CFG_HDR_SIZE, align 4
  %52 = call i32 %44(%struct.TYPE_17__* %45, %struct.TYPE_18__* %48, i32 %50, i32 %51)
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %54 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %55 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %54, i32 0, i32 1
  %56 = load %struct.TYPE_18__*, %struct.TYPE_18__** %55, align 8
  %57 = call i32 @qla24xx_fcp_prio_cfg_valid(%struct.TYPE_17__* %53, %struct.TYPE_18__* %56, i32 0)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %31
  br label %111

60:                                               ; preds = %31
  %61 = load i32, i32* @FCP_PRIO_CFG_HDR_SIZE, align 4
  %62 = ashr i32 %61, 2
  %63 = load i32, i32* %6, align 4
  %64 = add nsw i32 %63, %62
  store i32 %64, i32* %6, align 4
  %65 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %66 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %65, i32 0, i32 1
  %67 = load %struct.TYPE_18__*, %struct.TYPE_18__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @FCP_PRIO_CFG_ENTRY_SIZE, align 4
  %71 = mul nsw i32 %69, %70
  store i32 %71, i32* %4, align 4
  %72 = load i32, i32* @FCP_PRIO_CFG_SIZE, align 4
  %73 = load i32, i32* @FCP_PRIO_CFG_HDR_SIZE, align 4
  %74 = sub nsw i32 %72, %73
  store i32 %74, i32* %5, align 4
  %75 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %76 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %75, i32 0, i32 3
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 0
  %79 = load i32 (%struct.TYPE_17__*, %struct.TYPE_18__*, i32, i32)*, i32 (%struct.TYPE_17__*, %struct.TYPE_18__*, i32, i32)** %78, align 8
  %80 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %81 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %82 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %81, i32 0, i32 1
  %83 = load %struct.TYPE_18__*, %struct.TYPE_18__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %83, i32 0, i32 1
  %85 = load %struct.TYPE_18__*, %struct.TYPE_18__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %85, i64 0
  %87 = load i32, i32* %6, align 4
  %88 = shl i32 %87, 2
  %89 = load i32, i32* %4, align 4
  %90 = load i32, i32* %5, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %94

92:                                               ; preds = %60
  %93 = load i32, i32* %4, align 4
  br label %96

94:                                               ; preds = %60
  %95 = load i32, i32* %5, align 4
  br label %96

96:                                               ; preds = %94, %92
  %97 = phi i32 [ %93, %92 ], [ %95, %94 ]
  %98 = call i32 %79(%struct.TYPE_17__* %80, %struct.TYPE_18__* %86, i32 %88, i32 %97)
  %99 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %100 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %101 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %100, i32 0, i32 1
  %102 = load %struct.TYPE_18__*, %struct.TYPE_18__** %101, align 8
  %103 = call i32 @qla24xx_fcp_prio_cfg_valid(%struct.TYPE_17__* %99, %struct.TYPE_18__* %102, i32 1)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %106, label %105

105:                                              ; preds = %96
  br label %111

106:                                              ; preds = %96
  %107 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %108 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %107, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 0
  store i32 1, i32* %109, align 8
  %110 = load i32, i32* @QLA_SUCCESS, align 4
  store i32 %110, i32* %2, align 4
  br label %119

111:                                              ; preds = %105, %59
  %112 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %113 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %112, i32 0, i32 1
  %114 = load %struct.TYPE_18__*, %struct.TYPE_18__** %113, align 8
  %115 = call i32 @vfree(%struct.TYPE_18__* %114)
  %116 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %117 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %116, i32 0, i32 1
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %117, align 8
  %118 = load i32, i32* @QLA_FUNCTION_FAILED, align 4
  store i32 %118, i32* %2, align 4
  br label %119

119:                                              ; preds = %111, %106, %24
  %120 = load i32, i32* %2, align 4
  ret i32 %120
}

declare dso_local %struct.TYPE_18__* @vmalloc(i32) #1

declare dso_local i32 @ql_log(i32, %struct.TYPE_17__*, i32, i8*, i32) #1

declare dso_local i32 @memset(%struct.TYPE_18__*, i32, i32) #1

declare dso_local i32 @qla24xx_fcp_prio_cfg_valid(%struct.TYPE_17__*, %struct.TYPE_18__*, i32) #1

declare dso_local i32 @vfree(%struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
