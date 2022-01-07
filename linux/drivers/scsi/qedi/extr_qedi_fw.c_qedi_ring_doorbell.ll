; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_fw.c_qedi_ring_doorbell.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_fw.c_qedi_ring_doorbell.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qedi_conn = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.iscsi_db_data = type { i32, i32, i64, i32 }

@DB_DEST_XCM = common dso_local global i32 0, align 4
@ISCSI_DB_DATA_DEST_SHIFT = common dso_local global i32 0, align 4
@DB_AGG_CMD_SET = common dso_local global i32 0, align 4
@ISCSI_DB_DATA_AGG_CMD_SHIFT = common dso_local global i32 0, align 4
@DQ_XCM_ISCSI_SQ_PROD_CMD = common dso_local global i32 0, align 4
@ISCSI_DB_DATA_AGG_VAL_SEL_SHIFT = common dso_local global i32 0, align 4
@QEDI_LOG_MP_REQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"prod_idx=0x%x, fw_prod_idx=0x%x, cid=0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qedi_conn*)* @qedi_ring_doorbell to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qedi_ring_doorbell(%struct.qedi_conn* %0) #0 {
  %2 = alloca %struct.qedi_conn*, align 8
  %3 = alloca %struct.iscsi_db_data, align 8
  store %struct.qedi_conn* %0, %struct.qedi_conn** %2, align 8
  %4 = bitcast %struct.iscsi_db_data* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %4, i8 0, i64 24, i1 false)
  %5 = getelementptr inbounds %struct.iscsi_db_data, %struct.iscsi_db_data* %3, i32 0, i32 2
  store i64 0, i64* %5, align 8
  %6 = load i32, i32* @DB_DEST_XCM, align 4
  %7 = load i32, i32* @ISCSI_DB_DATA_DEST_SHIFT, align 4
  %8 = shl i32 %6, %7
  %9 = getelementptr inbounds %struct.iscsi_db_data, %struct.iscsi_db_data* %3, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = or i32 %10, %8
  store i32 %11, i32* %9, align 8
  %12 = load i32, i32* @DB_AGG_CMD_SET, align 4
  %13 = load i32, i32* @ISCSI_DB_DATA_AGG_CMD_SHIFT, align 4
  %14 = shl i32 %12, %13
  %15 = getelementptr inbounds %struct.iscsi_db_data, %struct.iscsi_db_data* %3, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = or i32 %16, %14
  store i32 %17, i32* %15, align 8
  %18 = load i32, i32* @DQ_XCM_ISCSI_SQ_PROD_CMD, align 4
  %19 = load i32, i32* @ISCSI_DB_DATA_AGG_VAL_SEL_SHIFT, align 4
  %20 = shl i32 %18, %19
  %21 = getelementptr inbounds %struct.iscsi_db_data, %struct.iscsi_db_data* %3, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = or i32 %22, %20
  store i32 %23, i32* %21, align 8
  %24 = load %struct.qedi_conn*, %struct.qedi_conn** %2, align 8
  %25 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %24, i32 0, i32 1
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds %struct.iscsi_db_data, %struct.iscsi_db_data* %3, i32 0, i32 1
  store i32 %28, i32* %29, align 4
  %30 = bitcast %struct.iscsi_db_data* %3 to i32*
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.qedi_conn*, %struct.qedi_conn** %2, align 8
  %33 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %32, i32 0, i32 1
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @writel(i32 %31, i32 %36)
  %38 = call i32 (...) @wmb()
  %39 = load %struct.qedi_conn*, %struct.qedi_conn** %2, align 8
  %40 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %39, i32 0, i32 2
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* @QEDI_LOG_MP_REQ, align 4
  %44 = load %struct.qedi_conn*, %struct.qedi_conn** %2, align 8
  %45 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %44, i32 0, i32 1
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.qedi_conn*, %struct.qedi_conn** %2, align 8
  %50 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %49, i32 0, i32 1
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.qedi_conn*, %struct.qedi_conn** %2, align 8
  %55 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @QEDI_INFO(i32* %42, i32 %43, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %48, i32 %53, i32 %56)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @writel(i32, i32) #2

declare dso_local i32 @wmb(...) #2

declare dso_local i32 @QEDI_INFO(i32*, i32, i8*, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
