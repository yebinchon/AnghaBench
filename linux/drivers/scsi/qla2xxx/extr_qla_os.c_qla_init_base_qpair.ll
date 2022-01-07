; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_os.c_qla_init_base_qpair.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_os.c_qla_init_base_qpair.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { %struct.qla_hw_data* }
%struct.qla_hw_data = type { %struct.TYPE_2__*, i32, i32, i32*, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32*, i32*, %struct.scsi_qla_host*, %struct.rsp_que*, %struct.req_que*, %struct.qla_hw_data* }
%struct.req_que = type { i32 }
%struct.rsp_que = type { %struct.TYPE_2__*, %struct.req_que* }

@QLA_MSIX_RSP_Q = common dso_local global i64 0, align 8
@ql2xenableclass2 = common dso_local global i32 0, align 4
@qla_83xx_start_iocbs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_qla_host*, %struct.req_que*, %struct.rsp_que*)* @qla_init_base_qpair to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qla_init_base_qpair(%struct.scsi_qla_host* %0, %struct.req_que* %1, %struct.rsp_que* %2) #0 {
  %4 = alloca %struct.scsi_qla_host*, align 8
  %5 = alloca %struct.req_que*, align 8
  %6 = alloca %struct.rsp_que*, align 8
  %7 = alloca %struct.qla_hw_data*, align 8
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %4, align 8
  store %struct.req_que* %1, %struct.req_que** %5, align 8
  store %struct.rsp_que* %2, %struct.rsp_que** %6, align 8
  %8 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %9 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %8, i32 0, i32 0
  %10 = load %struct.qla_hw_data*, %struct.qla_hw_data** %9, align 8
  store %struct.qla_hw_data* %10, %struct.qla_hw_data** %7, align 8
  %11 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %12 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = load %struct.rsp_que*, %struct.rsp_que** %6, align 8
  %15 = getelementptr inbounds %struct.rsp_que, %struct.rsp_que* %14, i32 0, i32 0
  store %struct.TYPE_2__* %13, %struct.TYPE_2__** %15, align 8
  %16 = load %struct.req_que*, %struct.req_que** %5, align 8
  %17 = load %struct.rsp_que*, %struct.rsp_que** %6, align 8
  %18 = getelementptr inbounds %struct.rsp_que, %struct.rsp_que* %17, i32 0, i32 1
  store %struct.req_que* %16, %struct.req_que** %18, align 8
  %19 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %20 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %21 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 11
  store %struct.qla_hw_data* %19, %struct.qla_hw_data** %23, align 8
  %24 = load %struct.req_que*, %struct.req_que** %5, align 8
  %25 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %26 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 10
  store %struct.req_que* %24, %struct.req_que** %28, align 8
  %29 = load %struct.rsp_que*, %struct.rsp_que** %6, align 8
  %30 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %31 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 9
  store %struct.rsp_que* %29, %struct.rsp_que** %33, align 8
  %34 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %35 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %36 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 8
  store %struct.scsi_qla_host* %34, %struct.scsi_qla_host** %38, align 8
  %39 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %40 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %39, i32 0, i32 4
  %41 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %42 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 7
  store i32* %40, i32** %44, align 8
  %45 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %46 = call i64 @IS_SHADOW_REG_CAPABLE(%struct.qla_hw_data* %45)
  %47 = icmp ne i64 %46, 0
  %48 = zext i1 %47 to i64
  %49 = select i1 %47, i32 1, i32 0
  %50 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %51 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  store i32 %49, i32* %53, align 8
  %54 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %55 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %54, i32 0, i32 3
  %56 = load i32*, i32** %55, align 8
  %57 = load i64, i64* @QLA_MSIX_RSP_Q, align 8
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  %59 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %60 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %59, i32 0, i32 0
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 6
  store i32* %58, i32** %62, align 8
  %63 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %64 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %67 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %66, i32 0, i32 0
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 5
  store i32 %65, i32* %69, align 4
  %70 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %71 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %70, i32 0, i32 0
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 4
  %74 = call i32 @INIT_LIST_HEAD(i32* %73)
  %75 = load i32, i32* @ql2xenableclass2, align 4
  %76 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %77 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %76, i32 0, i32 0
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 3
  store i32 %75, i32* %79, align 4
  %80 = load %struct.rsp_que*, %struct.rsp_que** %6, align 8
  %81 = getelementptr inbounds %struct.rsp_que, %struct.rsp_que* %80, i32 0, i32 0
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = call i32 (...) @raw_smp_processor_id()
  %84 = call i32 @qla_cpu_update(%struct.TYPE_2__* %82, i32 %83)
  %85 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %86 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %89 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %88, i32 0, i32 0
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 2
  store i32 %87, i32* %91, align 8
  %92 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %93 = call i64 @IS_QLA27XX(%struct.qla_hw_data* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %103, label %95

95:                                               ; preds = %3
  %96 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %97 = call i64 @IS_QLA83XX(%struct.qla_hw_data* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %103, label %99

99:                                               ; preds = %95
  %100 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %101 = call i64 @IS_QLA28XX(%struct.qla_hw_data* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %99, %95, %3
  %104 = load i32, i32* @qla_83xx_start_iocbs, align 4
  %105 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %106 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %105, i32 0, i32 0
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 1
  store i32 %104, i32* %108, align 4
  br label %109

109:                                              ; preds = %103, %99
  ret void
}

declare dso_local i64 @IS_SHADOW_REG_CAPABLE(%struct.qla_hw_data*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @qla_cpu_update(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @raw_smp_processor_id(...) #1

declare dso_local i64 @IS_QLA27XX(%struct.qla_hw_data*) #1

declare dso_local i64 @IS_QLA83XX(%struct.qla_hw_data*) #1

declare dso_local i64 @IS_QLA28XX(%struct.qla_hw_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
