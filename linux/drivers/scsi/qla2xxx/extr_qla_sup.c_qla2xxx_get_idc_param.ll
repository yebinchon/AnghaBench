; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_sup.c_qla2xxx_get_idc_param.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_sup.c_qla2xxx_get_idc_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.qla_hw_data* }
%struct.qla_hw_data = type { i8*, i8*, %struct.TYPE_6__*, %struct.req_que** }
%struct.TYPE_6__ = type { i32 (%struct.TYPE_7__*, i64, i32, i32)* }
%struct.req_que = type { i64 }

@QLA82XX_ROM_DEV_INIT_TIMEOUT = common dso_local global i8* null, align 8
@QLA82XX_ROM_DRV_RESET_ACK_TIMEOUT = common dso_local global i8* null, align 8
@ql_dbg_init = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"fcoe_dev_init_timeout=%d fcoe_reset_timeout=%d.\0A\00", align 1
@QLA82XX_IDC_PARAM_ADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*)* @qla2xxx_get_idc_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qla2xxx_get_idc_param(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i64*, align 8
  %4 = alloca %struct.qla_hw_data*, align 8
  %5 = alloca %struct.req_que*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %8 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  store %struct.qla_hw_data* %8, %struct.qla_hw_data** %4, align 8
  %9 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %10 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %9, i32 0, i32 3
  %11 = load %struct.req_que**, %struct.req_que*** %10, align 8
  %12 = getelementptr inbounds %struct.req_que*, %struct.req_que** %11, i64 0
  %13 = load %struct.req_que*, %struct.req_que** %12, align 8
  store %struct.req_que* %13, %struct.req_que** %5, align 8
  %14 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %15 = call i32 @IS_P3P_TYPE(%struct.qla_hw_data* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  br label %67

18:                                               ; preds = %1
  %19 = load %struct.req_que*, %struct.req_que** %5, align 8
  %20 = getelementptr inbounds %struct.req_que, %struct.req_que* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to i64*
  store i64* %22, i64** %3, align 8
  %23 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %24 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %23, i32 0, i32 2
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32 (%struct.TYPE_7__*, i64, i32, i32)*, i32 (%struct.TYPE_7__*, i64, i32, i32)** %26, align 8
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %29 = load %struct.req_que*, %struct.req_que** %5, align 8
  %30 = getelementptr inbounds %struct.req_que, %struct.req_que* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i32 %27(%struct.TYPE_7__* %28, i64 %31, i32 4098140, i32 8)
  %33 = load i64*, i64** %3, align 8
  %34 = load i64, i64* %33, align 8
  %35 = call i64 @cpu_to_le32(i32 -1)
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %18
  %38 = load i8*, i8** @QLA82XX_ROM_DEV_INIT_TIMEOUT, align 8
  %39 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %40 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %39, i32 0, i32 1
  store i8* %38, i8** %40, align 8
  %41 = load i8*, i8** @QLA82XX_ROM_DRV_RESET_ACK_TIMEOUT, align 8
  %42 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %43 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %42, i32 0, i32 0
  store i8* %41, i8** %43, align 8
  br label %57

44:                                               ; preds = %18
  %45 = load i64*, i64** %3, align 8
  %46 = load i64, i64* %45, align 8
  %47 = call i8* @le32_to_cpu(i64 %46)
  %48 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %49 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %48, i32 0, i32 1
  store i8* %47, i8** %49, align 8
  %50 = load i64*, i64** %3, align 8
  %51 = getelementptr inbounds i64, i64* %50, i32 1
  store i64* %51, i64** %3, align 8
  %52 = load i64*, i64** %3, align 8
  %53 = load i64, i64* %52, align 8
  %54 = call i8* @le32_to_cpu(i64 %53)
  %55 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %56 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %55, i32 0, i32 0
  store i8* %54, i8** %56, align 8
  br label %57

57:                                               ; preds = %44, %37
  %58 = load i32, i32* @ql_dbg_init, align 4
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %60 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %61 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %60, i32 0, i32 1
  %62 = load i8*, i8** %61, align 8
  %63 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %64 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = call i32 @ql_dbg(i32 %58, %struct.TYPE_7__* %59, i32 78, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i8* %62, i8* %65)
  br label %67

67:                                               ; preds = %57, %17
  ret void
}

declare dso_local i32 @IS_P3P_TYPE(%struct.qla_hw_data*) #1

declare dso_local i64 @cpu_to_le32(i32) #1

declare dso_local i8* @le32_to_cpu(i64) #1

declare dso_local i32 @ql_dbg(i32, %struct.TYPE_7__*, i32, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
