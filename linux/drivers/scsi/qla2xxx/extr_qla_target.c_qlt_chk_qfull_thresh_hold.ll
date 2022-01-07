; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_target.c_qlt_chk_qfull_thresh_hold.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_target.c_qlt_chk_qfull_thresh_hold.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { %struct.qla_hw_data* }
%struct.qla_hw_data = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.qla_qpair = type { i32 }
%struct.atio_from_isp = type { i32 }

@qla_sam_status = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_qla_host*, %struct.qla_qpair*, %struct.atio_from_isp*, i32)* @qlt_chk_qfull_thresh_hold to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlt_chk_qfull_thresh_hold(%struct.scsi_qla_host* %0, %struct.qla_qpair* %1, %struct.atio_from_isp* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.scsi_qla_host*, align 8
  %7 = alloca %struct.qla_qpair*, align 8
  %8 = alloca %struct.atio_from_isp*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.qla_hw_data*, align 8
  %11 = alloca i64, align 8
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %6, align 8
  store %struct.qla_qpair* %1, %struct.qla_qpair** %7, align 8
  store %struct.atio_from_isp* %2, %struct.atio_from_isp** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %13 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %12, i32 0, i32 0
  %14 = load %struct.qla_hw_data*, %struct.qla_hw_data** %13, align 8
  store %struct.qla_hw_data* %14, %struct.qla_hw_data** %10, align 8
  %15 = load %struct.qla_hw_data*, %struct.qla_hw_data** %10, align 8
  %16 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.qla_hw_data*, %struct.qla_hw_data** %10, align 8
  %20 = call i64 @Q_FULL_THRESH_HOLD(%struct.qla_hw_data* %19)
  %21 = icmp slt i64 %18, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %44

23:                                               ; preds = %4
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %23
  %27 = load %struct.qla_hw_data*, %struct.qla_hw_data** %10, align 8
  %28 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %27, i32 0, i32 0
  %29 = load i64, i64* %11, align 8
  %30 = call i32 @spin_lock_irqsave(i32* %28, i64 %29)
  br label %31

31:                                               ; preds = %26, %23
  %32 = load %struct.qla_qpair*, %struct.qla_qpair** %7, align 8
  %33 = load %struct.atio_from_isp*, %struct.atio_from_isp** %8, align 8
  %34 = load i32, i32* @qla_sam_status, align 4
  %35 = call i32 @qlt_send_busy(%struct.qla_qpair* %32, %struct.atio_from_isp* %33, i32 %34)
  %36 = load i32, i32* %9, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %31
  %39 = load %struct.qla_hw_data*, %struct.qla_hw_data** %10, align 8
  %40 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %39, i32 0, i32 0
  %41 = load i64, i64* %11, align 8
  %42 = call i32 @spin_unlock_irqrestore(i32* %40, i64 %41)
  br label %43

43:                                               ; preds = %38, %31
  store i32 1, i32* %5, align 4
  br label %44

44:                                               ; preds = %43, %22
  %45 = load i32, i32* %5, align 4
  ret i32 %45
}

declare dso_local i64 @Q_FULL_THRESH_HOLD(%struct.qla_hw_data*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @qlt_send_busy(%struct.qla_qpair*, %struct.atio_from_isp*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
