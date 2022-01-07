; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_nx2.c_qla8044_update_idc_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_nx2.c_qla8044_update_idc_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { %struct.TYPE_2__, %struct.qla_hw_data* }
%struct.TYPE_2__ = type { i64 }
%struct.qla_hw_data = type { i32 }

@QLA_SUCCESS = common dso_local global i32 0, align 4
@QLA8044_CRB_DRV_ACTIVE_INDEX = common dso_local global i32 0, align 4
@ql2xdontresethba = common dso_local global i32 0, align 4
@QLA_FUNCTION_FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_qla_host*)* @qla8044_update_idc_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla8044_update_idc_reg(%struct.scsi_qla_host* %0) #0 {
  %2 = alloca %struct.scsi_qla_host*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.qla_hw_data*, align 8
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %2, align 8
  %6 = load i32, i32* @QLA_SUCCESS, align 4
  store i32 %6, i32* %4, align 4
  %7 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %8 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %7, i32 0, i32 1
  %9 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  store %struct.qla_hw_data* %9, %struct.qla_hw_data** %5, align 8
  %10 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %11 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %48

16:                                               ; preds = %1
  %17 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %18 = call i32 @qla8044_idc_lock(%struct.qla_hw_data* %17)
  %19 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %20 = call i32 @qla8044_set_drv_active(%struct.scsi_qla_host* %19)
  %21 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %22 = load i32, i32* @QLA8044_CRB_DRV_ACTIVE_INDEX, align 4
  %23 = call i32 @qla8044_rd_direct(%struct.scsi_qla_host* %21, i32 %22)
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* %3, align 4
  %25 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %26 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = shl i32 1, %27
  %29 = icmp eq i32 %24, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %16
  %31 = load i32, i32* @ql2xdontresethba, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %30
  %34 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %35 = call i32 @qla8044_clear_idc_dontreset(%struct.scsi_qla_host* %34)
  br label %36

36:                                               ; preds = %33, %30, %16
  %37 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %38 = call i32 @qla8044_set_idc_ver(%struct.scsi_qla_host* %37)
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @QLA_FUNCTION_FAILED, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %44 = call i32 @qla8044_clear_drv_active(%struct.qla_hw_data* %43)
  br label %45

45:                                               ; preds = %42, %36
  %46 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %47 = call i32 @qla8044_idc_unlock(%struct.qla_hw_data* %46)
  br label %48

48:                                               ; preds = %45, %15
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i32 @qla8044_idc_lock(%struct.qla_hw_data*) #1

declare dso_local i32 @qla8044_set_drv_active(%struct.scsi_qla_host*) #1

declare dso_local i32 @qla8044_rd_direct(%struct.scsi_qla_host*, i32) #1

declare dso_local i32 @qla8044_clear_idc_dontreset(%struct.scsi_qla_host*) #1

declare dso_local i32 @qla8044_set_idc_ver(%struct.scsi_qla_host*) #1

declare dso_local i32 @qla8044_clear_drv_active(%struct.qla_hw_data*) #1

declare dso_local i32 @qla8044_idc_unlock(%struct.qla_hw_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
