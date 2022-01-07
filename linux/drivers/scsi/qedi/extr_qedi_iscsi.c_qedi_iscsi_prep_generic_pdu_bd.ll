; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_iscsi.c_qedi_iscsi_prep_generic_pdu_bd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_iscsi.c_qedi_iscsi_prep_generic_pdu_bd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qedi_conn = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64, i64, i64, i64, i64 }
%struct.scsi_sge = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8*, i8* }

@ISCSI_DEF_MAX_RECV_SEG_LEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qedi_conn*)* @qedi_iscsi_prep_generic_pdu_bd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qedi_iscsi_prep_generic_pdu_bd(%struct.qedi_conn* %0) #0 {
  %2 = alloca %struct.qedi_conn*, align 8
  %3 = alloca %struct.scsi_sge*, align 8
  store %struct.qedi_conn* %0, %struct.qedi_conn** %2, align 8
  %4 = load %struct.qedi_conn*, %struct.qedi_conn** %2, align 8
  %5 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 5
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to %struct.scsi_sge*
  store %struct.scsi_sge* %8, %struct.scsi_sge** %3, align 8
  %9 = load %struct.qedi_conn*, %struct.qedi_conn** %2, align 8
  %10 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 4
  %12 = load i64, i64* %11, align 8
  %13 = trunc i64 %12 to i32
  %14 = ashr i32 %13, 32
  %15 = sext i32 %14 to i64
  %16 = inttoptr i64 %15 to i8*
  %17 = load %struct.scsi_sge*, %struct.scsi_sge** %3, align 8
  %18 = getelementptr inbounds %struct.scsi_sge, %struct.scsi_sge* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  store i8* %16, i8** %19, align 8
  %20 = load %struct.qedi_conn*, %struct.qedi_conn** %2, align 8
  %21 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 4
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to i8*
  %25 = load %struct.scsi_sge*, %struct.scsi_sge** %3, align 8
  %26 = getelementptr inbounds %struct.scsi_sge, %struct.scsi_sge* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  store i8* %24, i8** %27, align 8
  %28 = load %struct.qedi_conn*, %struct.qedi_conn** %2, align 8
  %29 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.qedi_conn*, %struct.qedi_conn** %2, align 8
  %33 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = sub nsw i64 %31, %35
  %37 = load %struct.scsi_sge*, %struct.scsi_sge** %3, align 8
  %38 = getelementptr inbounds %struct.scsi_sge, %struct.scsi_sge* %37, i32 0, i32 0
  store i64 %36, i64* %38, align 8
  %39 = load %struct.qedi_conn*, %struct.qedi_conn** %2, align 8
  %40 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = inttoptr i64 %42 to %struct.scsi_sge*
  store %struct.scsi_sge* %43, %struct.scsi_sge** %3, align 8
  %44 = load %struct.qedi_conn*, %struct.qedi_conn** %2, align 8
  %45 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = trunc i64 %47 to i32
  %49 = ashr i32 %48, 32
  %50 = sext i32 %49 to i64
  %51 = inttoptr i64 %50 to i8*
  %52 = load %struct.scsi_sge*, %struct.scsi_sge** %3, align 8
  %53 = getelementptr inbounds %struct.scsi_sge, %struct.scsi_sge* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  store i8* %51, i8** %54, align 8
  %55 = load %struct.qedi_conn*, %struct.qedi_conn** %2, align 8
  %56 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = inttoptr i64 %58 to i8*
  %60 = load %struct.scsi_sge*, %struct.scsi_sge** %3, align 8
  %61 = getelementptr inbounds %struct.scsi_sge, %struct.scsi_sge* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  store i8* %59, i8** %62, align 8
  %63 = load i64, i64* @ISCSI_DEF_MAX_RECV_SEG_LEN, align 8
  %64 = load %struct.scsi_sge*, %struct.scsi_sge** %3, align 8
  %65 = getelementptr inbounds %struct.scsi_sge, %struct.scsi_sge* %64, i32 0, i32 0
  store i64 %63, i64* %65, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
