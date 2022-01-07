; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_nx.c_qla82xx_check_md_needed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_nx.c_qla82xx_check_md_needed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.qla_hw_data* }
%struct.qla_hw_data = type { i64, i64, i64, i64, i32 }

@QLA_SUCCESS = common dso_local global i32 0, align 4
@ql2xmdenable = common dso_local global i64 0, align 8
@ql_dbg_p3p = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [104 x i8] c"Firmware version differs Previous version: %d:%d:%d - New version: %d:%d:%d, prev_minidump_failed: %d.\0A\00", align 1
@ql_log_info = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Firmware dump available to retrieve\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qla82xx_check_md_needed(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.qla_hw_data*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = load %struct.qla_hw_data*, %struct.qla_hw_data** %10, align 8
  store %struct.qla_hw_data* %11, %struct.qla_hw_data** %4, align 8
  %12 = load i32, i32* @QLA_SUCCESS, align 4
  store i32 %12, i32* %8, align 4
  %13 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %14 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %5, align 8
  %16 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %17 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %6, align 8
  %19 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %20 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %7, align 8
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %23 = call i32 @qla2x00_get_fw_version(%struct.TYPE_8__* %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @QLA_SUCCESS, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %1
  %28 = load i32, i32* %8, align 4
  store i32 %28, i32* %2, align 4
  br label %91

29:                                               ; preds = %1
  %30 = load i64, i64* @ql2xmdenable, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %89

32:                                               ; preds = %29
  %33 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %34 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %84, label %37

37:                                               ; preds = %32
  %38 = load i64, i64* %5, align 8
  %39 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %40 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %38, %41
  br i1 %42, label %60, label %43

43:                                               ; preds = %37
  %44 = load i64, i64* %6, align 8
  %45 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %46 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %44, %47
  br i1 %48, label %60, label %49

49:                                               ; preds = %43
  %50 = load i64, i64* %7, align 8
  %51 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %52 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %50, %53
  br i1 %54, label %60, label %55

55:                                               ; preds = %49
  %56 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %57 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %83

60:                                               ; preds = %55, %49, %43, %37
  %61 = load i32, i32* @ql_dbg_p3p, align 4
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %63 = load i64, i64* %5, align 8
  %64 = load i64, i64* %6, align 8
  %65 = load i64, i64* %7, align 8
  %66 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %67 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %70 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %73 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %76 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %75, i32 0, i32 3
  %77 = load i64, i64* %76, align 8
  %78 = call i32 @ql_dbg(i32 %61, %struct.TYPE_8__* %62, i32 45101, i8* getelementptr inbounds ([104 x i8], [104 x i8]* @.str, i64 0, i64 0), i64 %63, i64 %64, i64 %65, i64 %68, i64 %71, i64 %74, i64 %77)
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %80 = call i32 @qla82xx_md_free(%struct.TYPE_8__* %79)
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %82 = call i32 @qla82xx_md_prep(%struct.TYPE_8__* %81)
  br label %83

83:                                               ; preds = %60, %55
  br label %88

84:                                               ; preds = %32
  %85 = load i32, i32* @ql_log_info, align 4
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %87 = call i32 @ql_log(i32 %85, %struct.TYPE_8__* %86, i32 45102, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %88

88:                                               ; preds = %84, %83
  br label %89

89:                                               ; preds = %88, %29
  %90 = load i32, i32* %8, align 4
  store i32 %90, i32* %2, align 4
  br label %91

91:                                               ; preds = %89, %27
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

declare dso_local i32 @qla2x00_get_fw_version(%struct.TYPE_8__*) #1

declare dso_local i32 @ql_dbg(i32, %struct.TYPE_8__*, i32, i8*, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @qla82xx_md_free(%struct.TYPE_8__*) #1

declare dso_local i32 @qla82xx_md_prep(%struct.TYPE_8__*) #1

declare dso_local i32 @ql_log(i32, %struct.TYPE_8__*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
