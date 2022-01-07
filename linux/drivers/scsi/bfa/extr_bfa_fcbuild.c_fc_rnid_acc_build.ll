; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcbuild.c_fc_rnid_acc_build.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcbuild.c_fc_rnid_acc_build.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fchs_s = type { i32 }
%struct.fc_rnid_acc_s = type { i32, i32, %struct.fc_rnid_general_topology_data_s, %struct.fc_rnid_common_id_data_s, i64, %struct.TYPE_2__ }
%struct.fc_rnid_general_topology_data_s = type { i32 }
%struct.fc_rnid_common_id_data_s = type { i32 }
%struct.TYPE_2__ = type { i32 }

@FC_ELS_ACC = common dso_local global i32 0, align 4
@RNID_NODEID_DATA_FORMAT_DISCOVERY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fc_rnid_acc_build(%struct.fchs_s* %0, %struct.fc_rnid_acc_s* %1, i64 %2, i64 %3, i32 %4, i64 %5, %struct.fc_rnid_common_id_data_s* %6, %struct.fc_rnid_general_topology_data_s* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.fchs_s*, align 8
  %11 = alloca %struct.fc_rnid_acc_s*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca %struct.fc_rnid_common_id_data_s*, align 8
  %17 = alloca %struct.fc_rnid_general_topology_data_s*, align 8
  store %struct.fchs_s* %0, %struct.fchs_s** %10, align 8
  store %struct.fc_rnid_acc_s* %1, %struct.fc_rnid_acc_s** %11, align 8
  store i64 %2, i64* %12, align 8
  store i64 %3, i64* %13, align 8
  store i32 %4, i32* %14, align 4
  store i64 %5, i64* %15, align 8
  store %struct.fc_rnid_common_id_data_s* %6, %struct.fc_rnid_common_id_data_s** %16, align 8
  store %struct.fc_rnid_general_topology_data_s* %7, %struct.fc_rnid_general_topology_data_s** %17, align 8
  %18 = load %struct.fc_rnid_acc_s*, %struct.fc_rnid_acc_s** %11, align 8
  %19 = call i32 @memset(%struct.fc_rnid_acc_s* %18, i32 0, i32 32)
  %20 = load %struct.fchs_s*, %struct.fchs_s** %10, align 8
  %21 = load i64, i64* %12, align 8
  %22 = load i64, i64* %13, align 8
  %23 = load i32, i32* %14, align 4
  %24 = call i32 @fc_els_rsp_build(%struct.fchs_s* %20, i64 %21, i64 %22, i32 %23)
  %25 = load i32, i32* @FC_ELS_ACC, align 4
  %26 = load %struct.fc_rnid_acc_s*, %struct.fc_rnid_acc_s** %11, align 8
  %27 = getelementptr inbounds %struct.fc_rnid_acc_s, %struct.fc_rnid_acc_s* %26, i32 0, i32 5
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i32 %25, i32* %28, align 8
  %29 = load i64, i64* %15, align 8
  %30 = load %struct.fc_rnid_acc_s*, %struct.fc_rnid_acc_s** %11, align 8
  %31 = getelementptr inbounds %struct.fc_rnid_acc_s, %struct.fc_rnid_acc_s* %30, i32 0, i32 4
  store i64 %29, i64* %31, align 8
  %32 = load %struct.fc_rnid_acc_s*, %struct.fc_rnid_acc_s** %11, align 8
  %33 = getelementptr inbounds %struct.fc_rnid_acc_s, %struct.fc_rnid_acc_s* %32, i32 0, i32 0
  store i32 4, i32* %33, align 8
  %34 = load %struct.fc_rnid_acc_s*, %struct.fc_rnid_acc_s** %11, align 8
  %35 = getelementptr inbounds %struct.fc_rnid_acc_s, %struct.fc_rnid_acc_s* %34, i32 0, i32 3
  %36 = load %struct.fc_rnid_common_id_data_s*, %struct.fc_rnid_common_id_data_s** %16, align 8
  %37 = bitcast %struct.fc_rnid_common_id_data_s* %35 to i8*
  %38 = bitcast %struct.fc_rnid_common_id_data_s* %36 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %37, i8* align 4 %38, i64 4, i1 false)
  %39 = load i64, i64* %15, align 8
  %40 = load i64, i64* @RNID_NODEID_DATA_FORMAT_DISCOVERY, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %50

42:                                               ; preds = %8
  %43 = load %struct.fc_rnid_acc_s*, %struct.fc_rnid_acc_s** %11, align 8
  %44 = getelementptr inbounds %struct.fc_rnid_acc_s, %struct.fc_rnid_acc_s* %43, i32 0, i32 1
  store i32 4, i32* %44, align 4
  %45 = load %struct.fc_rnid_acc_s*, %struct.fc_rnid_acc_s** %11, align 8
  %46 = getelementptr inbounds %struct.fc_rnid_acc_s, %struct.fc_rnid_acc_s* %45, i32 0, i32 2
  %47 = load %struct.fc_rnid_general_topology_data_s*, %struct.fc_rnid_general_topology_data_s** %17, align 8
  %48 = bitcast %struct.fc_rnid_general_topology_data_s* %46 to i8*
  %49 = bitcast %struct.fc_rnid_general_topology_data_s* %47 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %48, i8* align 4 %49, i64 4, i1 false)
  store i32 32, i32* %9, align 4
  br label %51

50:                                               ; preds = %8
  store i32 28, i32* %9, align 4
  br label %51

51:                                               ; preds = %50, %42
  %52 = load i32, i32* %9, align 4
  ret i32 %52
}

declare dso_local i32 @memset(%struct.fc_rnid_acc_s*, i32, i32) #1

declare dso_local i32 @fc_els_rsp_build(%struct.fchs_s*, i64, i64, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
