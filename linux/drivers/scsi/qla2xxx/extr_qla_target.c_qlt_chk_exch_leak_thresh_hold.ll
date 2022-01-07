; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_target.c_qlt_chk_exch_leak_thresh_hold.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_target.c_qlt_chk_exch_leak_thresh_hold.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64 }

@ql_dbg_tgt = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Chip reset due to exchange starvation: %d/%d.\0A\00", align 1
@FCOE_CTX_RESET_NEEDED = common dso_local global i32 0, align 4
@ISP_ABORT_NEEDED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_qla_host*)* @qlt_chk_exch_leak_thresh_hold to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qlt_chk_exch_leak_thresh_hold(%struct.scsi_qla_host* %0) #0 {
  %2 = alloca %struct.scsi_qla_host*, align 8
  %3 = alloca i64, align 8
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %2, align 8
  %4 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %5 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %4, i32 0, i32 1
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %3, align 8
  %10 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %11 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %10, i32 0, i32 1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %54

17:                                               ; preds = %1
  %18 = load i64, i64* %3, align 8
  %19 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %20 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %19, i32 0, i32 1
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp sgt i64 %18, %24
  br i1 %25, label %26, label %54

26:                                               ; preds = %17
  %27 = load i32, i32* @ql_dbg_tgt, align 4
  %28 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %29 = load i64, i64* %3, align 8
  %30 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %31 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %30, i32 0, i32 1
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @ql_dbg(i32 %27, %struct.scsi_qla_host* %28, i32 57465, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i64 %29, i32 %34)
  %36 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %37 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %36, i32 0, i32 1
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = call i64 @IS_P3P_TYPE(%struct.TYPE_4__* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %26
  %42 = load i32, i32* @FCOE_CTX_RESET_NEEDED, align 4
  %43 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %44 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %43, i32 0, i32 0
  %45 = call i32 @set_bit(i32 %42, i32* %44)
  br label %51

46:                                               ; preds = %26
  %47 = load i32, i32* @ISP_ABORT_NEEDED, align 4
  %48 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %49 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %48, i32 0, i32 0
  %50 = call i32 @set_bit(i32 %47, i32* %49)
  br label %51

51:                                               ; preds = %46, %41
  %52 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %53 = call i32 @qla2xxx_wake_dpc(%struct.scsi_qla_host* %52)
  br label %54

54:                                               ; preds = %51, %17, %1
  ret void
}

declare dso_local i32 @ql_dbg(i32, %struct.scsi_qla_host*, i32, i8*, i64, i32) #1

declare dso_local i64 @IS_P3P_TYPE(%struct.TYPE_4__*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @qla2xxx_wake_dpc(%struct.scsi_qla_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
