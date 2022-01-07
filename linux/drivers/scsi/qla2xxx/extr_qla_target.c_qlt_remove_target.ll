; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_target.c_qlt_remove_target.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_target.c_qlt_remove_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qla_hw_data = type { i32 }
%struct.scsi_qla_host = type { %struct.TYPE_2__, i32, i64 }
%struct.TYPE_2__ = type { i32 }

@ql_dbg_tgt = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Unregistering target for host %ld(%p)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qlt_remove_target(%struct.qla_hw_data* %0, %struct.scsi_qla_host* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qla_hw_data*, align 8
  %5 = alloca %struct.scsi_qla_host*, align 8
  store %struct.qla_hw_data* %0, %struct.qla_hw_data** %4, align 8
  store %struct.scsi_qla_host* %1, %struct.scsi_qla_host** %5, align 8
  %6 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %7 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %38

12:                                               ; preds = %2
  %13 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %14 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %12
  %18 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %19 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @qlt_release(i32 %21)
  store i32 0, i32* %3, align 4
  br label %38

23:                                               ; preds = %12
  %24 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %25 = call i32 @qlt_init_term_exchange(%struct.scsi_qla_host* %24)
  %26 = load i32, i32* @ql_dbg_tgt, align 4
  %27 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %28 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %29 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %32 = call i32 @ql_dbg(i32 %26, %struct.scsi_qla_host* %27, i32 57404, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %30, %struct.qla_hw_data* %31)
  %33 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %34 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @qlt_release(i32 %36)
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %23, %17, %11
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @qlt_release(i32) #1

declare dso_local i32 @qlt_init_term_exchange(%struct.scsi_qla_host*) #1

declare dso_local i32 @ql_dbg(i32, %struct.scsi_qla_host*, i32, i8*, i32, %struct.qla_hw_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
