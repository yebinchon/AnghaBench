; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_target.c_qlt_find_host_by_d_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_target.c_qlt_find_host_by_d_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { %struct.TYPE_10__*, %struct.TYPE_11__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64, i64, i64 }
%struct.TYPE_13__ = type { i64, i64, i64 }
%struct.TYPE_14__ = type { i32 }

@ql_dbg_tgt_mgt = common dso_local global i64 0, align 8
@ql_dbg_verbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"Unable to find host %06x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.scsi_qla_host* (%struct.scsi_qla_host*, %struct.TYPE_13__*)* @qlt_find_host_by_d_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.scsi_qla_host* @qlt_find_host_by_d_id(%struct.scsi_qla_host* %0, %struct.TYPE_13__* byval(%struct.TYPE_13__) align 8 %1) #0 {
  %3 = alloca %struct.scsi_qla_host*, align 8
  %4 = alloca %struct.scsi_qla_host*, align 8
  %5 = alloca %struct.scsi_qla_host*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_14__, align 4
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %4, align 8
  %8 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %9 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %1, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %12, %14
  br i1 %15, label %16, label %36

16:                                               ; preds = %2
  %17 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %18 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %1, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %21, %23
  br i1 %24, label %25, label %36

25:                                               ; preds = %16
  %26 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %27 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %1, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %30, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %25
  %35 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  store %struct.scsi_qla_host* %35, %struct.scsi_qla_host** %3, align 8
  br label %59

36:                                               ; preds = %25, %16, %2
  %37 = call i32 @be_to_port_id(%struct.TYPE_13__* byval(%struct.TYPE_13__) align 8 %1)
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %7, i32 0, i32 0
  store i32 %37, i32* %38, align 4
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %7, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %6, align 4
  %41 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %42 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %41, i32 0, i32 0
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = load i32, i32* %6, align 4
  %47 = call %struct.scsi_qla_host* @btree_lookup32(i32* %45, i32 %46)
  store %struct.scsi_qla_host* %47, %struct.scsi_qla_host** %5, align 8
  %48 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %49 = icmp ne %struct.scsi_qla_host* %48, null
  br i1 %49, label %57, label %50

50:                                               ; preds = %36
  %51 = load i64, i64* @ql_dbg_tgt_mgt, align 8
  %52 = load i64, i64* @ql_dbg_verbose, align 8
  %53 = add nsw i64 %51, %52
  %54 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @ql_dbg(i64 %53, %struct.scsi_qla_host* %54, i32 61445, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %55)
  br label %57

57:                                               ; preds = %50, %36
  %58 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  store %struct.scsi_qla_host* %58, %struct.scsi_qla_host** %3, align 8
  br label %59

59:                                               ; preds = %57, %34
  %60 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  ret %struct.scsi_qla_host* %60
}

declare dso_local i32 @be_to_port_id(%struct.TYPE_13__* byval(%struct.TYPE_13__) align 8) #1

declare dso_local %struct.scsi_qla_host* @btree_lookup32(i32*, i32) #1

declare dso_local i32 @ql_dbg(i64, %struct.scsi_qla_host*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
