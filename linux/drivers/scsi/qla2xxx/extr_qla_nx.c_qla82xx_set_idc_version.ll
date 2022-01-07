; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_nx.c_qla82xx_set_idc_version.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_nx.c_qla82xx_set_idc_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.qla_hw_data* }
%struct.qla_hw_data = type { i32 }

@QLA82XX_CRB_DRV_ACTIVE = common dso_local global i32 0, align 4
@QLA82XX_DRV_ACTIVE = common dso_local global i32 0, align 4
@QLA82XX_CRB_DRV_IDC_VERSION = common dso_local global i32 0, align 4
@QLA82XX_IDC_VERSION = common dso_local global i32 0, align 4
@ql_log_info = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"IDC version updated to %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [90 x i8] c"qla2xxx driver IDC version %d is not compatible with IDC version %d of the other drivers\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*)* @qla82xx_set_idc_version to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qla82xx_set_idc_version(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.qla_hw_data*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  store %struct.qla_hw_data* %8, %struct.qla_hw_data** %5, align 8
  %9 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %10 = load i32, i32* @QLA82XX_CRB_DRV_ACTIVE, align 4
  %11 = call i32 @qla82xx_rd_32(%struct.qla_hw_data* %9, i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @QLA82XX_DRV_ACTIVE, align 4
  %14 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %15 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = mul nsw i32 %16, 4
  %18 = shl i32 %13, %17
  %19 = icmp eq i32 %12, %18
  br i1 %19, label %20, label %29

20:                                               ; preds = %1
  %21 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %22 = load i32, i32* @QLA82XX_CRB_DRV_IDC_VERSION, align 4
  %23 = load i32, i32* @QLA82XX_IDC_VERSION, align 4
  %24 = call i32 @qla82xx_wr_32(%struct.qla_hw_data* %21, i32 %22, i32 %23)
  %25 = load i32, i32* @ql_log_info, align 4
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %27 = load i32, i32* @QLA82XX_IDC_VERSION, align 4
  %28 = call i32 (i32, %struct.TYPE_4__*, i32, i8*, i32, ...) @ql_log(i32 %25, %struct.TYPE_4__* %26, i32 45186, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %27)
  br label %43

29:                                               ; preds = %1
  %30 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %31 = load i32, i32* @QLA82XX_CRB_DRV_IDC_VERSION, align 4
  %32 = call i32 @qla82xx_rd_32(%struct.qla_hw_data* %30, i32 %31)
  store i32 %32, i32* %3, align 4
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* @QLA82XX_IDC_VERSION, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %29
  %37 = load i32, i32* @ql_log_info, align 4
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %39 = load i32, i32* @QLA82XX_IDC_VERSION, align 4
  %40 = load i32, i32* %3, align 4
  %41 = call i32 (i32, %struct.TYPE_4__*, i32, i8*, i32, ...) @ql_log(i32 %37, %struct.TYPE_4__* %38, i32 45187, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.1, i64 0, i64 0), i32 %39, i32 %40)
  br label %42

42:                                               ; preds = %36, %29
  br label %43

43:                                               ; preds = %42, %20
  ret void
}

declare dso_local i32 @qla82xx_rd_32(%struct.qla_hw_data*, i32) #1

declare dso_local i32 @qla82xx_wr_32(%struct.qla_hw_data*, i32, i32) #1

declare dso_local i32 @ql_log(i32, %struct.TYPE_4__*, i32, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
