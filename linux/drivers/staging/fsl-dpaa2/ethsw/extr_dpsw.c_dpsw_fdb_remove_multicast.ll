; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fsl-dpaa2/ethsw/extr_dpsw.c_dpsw_fdb_remove_multicast.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fsl-dpaa2/ethsw/extr_dpsw.c_dpsw_fdb_remove_multicast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_mc_io = type { i32 }
%struct.dpsw_fdb_multicast_cfg = type { i32*, i32, i32, i32 }
%struct.fsl_mc_command = type { i64, i32, i32 }
%struct.dpsw_cmd_fdb_multicast_op = type { i32*, i32, i32, i8*, i8* }

@DPSW_CMDID_FDB_REMOVE_MULTICAST = common dso_local global i32 0, align 4
@ENTRY_TYPE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dpsw_fdb_remove_multicast(%struct.fsl_mc_io* %0, i32 %1, i32 %2, i32 %3, %struct.dpsw_fdb_multicast_cfg* %4) #0 {
  %6 = alloca %struct.fsl_mc_io*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.dpsw_fdb_multicast_cfg*, align 8
  %11 = alloca %struct.fsl_mc_command, align 8
  %12 = alloca %struct.dpsw_cmd_fdb_multicast_op*, align 8
  %13 = alloca i32, align 4
  store %struct.fsl_mc_io* %0, %struct.fsl_mc_io** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.dpsw_fdb_multicast_cfg* %4, %struct.dpsw_fdb_multicast_cfg** %10, align 8
  %14 = bitcast %struct.fsl_mc_command* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %14, i8 0, i64 16, i1 false)
  %15 = load i32, i32* @DPSW_CMDID_FDB_REMOVE_MULTICAST, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* %8, align 4
  %18 = call i32 @mc_encode_cmd_header(i32 %15, i32 %16, i32 %17)
  %19 = getelementptr inbounds %struct.fsl_mc_command, %struct.fsl_mc_command* %11, i32 0, i32 1
  store i32 %18, i32* %19, align 8
  %20 = getelementptr inbounds %struct.fsl_mc_command, %struct.fsl_mc_command* %11, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.dpsw_cmd_fdb_multicast_op*
  store %struct.dpsw_cmd_fdb_multicast_op* %22, %struct.dpsw_cmd_fdb_multicast_op** %12, align 8
  %23 = load i32, i32* %9, align 4
  %24 = call i8* @cpu_to_le16(i32 %23)
  %25 = load %struct.dpsw_cmd_fdb_multicast_op*, %struct.dpsw_cmd_fdb_multicast_op** %12, align 8
  %26 = getelementptr inbounds %struct.dpsw_cmd_fdb_multicast_op, %struct.dpsw_cmd_fdb_multicast_op* %25, i32 0, i32 4
  store i8* %24, i8** %26, align 8
  %27 = load %struct.dpsw_fdb_multicast_cfg*, %struct.dpsw_fdb_multicast_cfg** %10, align 8
  %28 = getelementptr inbounds %struct.dpsw_fdb_multicast_cfg, %struct.dpsw_fdb_multicast_cfg* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i8* @cpu_to_le16(i32 %29)
  %31 = load %struct.dpsw_cmd_fdb_multicast_op*, %struct.dpsw_cmd_fdb_multicast_op** %12, align 8
  %32 = getelementptr inbounds %struct.dpsw_cmd_fdb_multicast_op, %struct.dpsw_cmd_fdb_multicast_op* %31, i32 0, i32 3
  store i8* %30, i8** %32, align 8
  %33 = load %struct.dpsw_cmd_fdb_multicast_op*, %struct.dpsw_cmd_fdb_multicast_op** %12, align 8
  %34 = getelementptr inbounds %struct.dpsw_cmd_fdb_multicast_op, %struct.dpsw_cmd_fdb_multicast_op* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @ENTRY_TYPE, align 4
  %37 = load %struct.dpsw_fdb_multicast_cfg*, %struct.dpsw_fdb_multicast_cfg** %10, align 8
  %38 = getelementptr inbounds %struct.dpsw_fdb_multicast_cfg, %struct.dpsw_fdb_multicast_cfg* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @dpsw_set_field(i32 %35, i32 %36, i32 %39)
  %41 = load %struct.dpsw_cmd_fdb_multicast_op*, %struct.dpsw_cmd_fdb_multicast_op** %12, align 8
  %42 = getelementptr inbounds %struct.dpsw_cmd_fdb_multicast_op, %struct.dpsw_cmd_fdb_multicast_op* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.dpsw_fdb_multicast_cfg*, %struct.dpsw_fdb_multicast_cfg** %10, align 8
  %45 = getelementptr inbounds %struct.dpsw_fdb_multicast_cfg, %struct.dpsw_fdb_multicast_cfg* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.dpsw_fdb_multicast_cfg*, %struct.dpsw_fdb_multicast_cfg** %10, align 8
  %48 = getelementptr inbounds %struct.dpsw_fdb_multicast_cfg, %struct.dpsw_fdb_multicast_cfg* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @build_if_id_bitmap(i32 %43, i32 %46, i32 %49)
  store i32 0, i32* %13, align 4
  br label %51

51:                                               ; preds = %69, %5
  %52 = load i32, i32* %13, align 4
  %53 = icmp slt i32 %52, 6
  br i1 %53, label %54, label %72

54:                                               ; preds = %51
  %55 = load %struct.dpsw_fdb_multicast_cfg*, %struct.dpsw_fdb_multicast_cfg** %10, align 8
  %56 = getelementptr inbounds %struct.dpsw_fdb_multicast_cfg, %struct.dpsw_fdb_multicast_cfg* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %13, align 4
  %59 = sub nsw i32 5, %58
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %57, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.dpsw_cmd_fdb_multicast_op*, %struct.dpsw_cmd_fdb_multicast_op** %12, align 8
  %64 = getelementptr inbounds %struct.dpsw_cmd_fdb_multicast_op, %struct.dpsw_cmd_fdb_multicast_op* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %13, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  store i32 %62, i32* %68, align 4
  br label %69

69:                                               ; preds = %54
  %70 = load i32, i32* %13, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %13, align 4
  br label %51

72:                                               ; preds = %51
  %73 = load %struct.fsl_mc_io*, %struct.fsl_mc_io** %6, align 8
  %74 = call i32 @mc_send_command(%struct.fsl_mc_io* %73, %struct.fsl_mc_command* %11)
  ret i32 %74
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @mc_encode_cmd_header(i32, i32, i32) #2

declare dso_local i8* @cpu_to_le16(i32) #2

declare dso_local i32 @dpsw_set_field(i32, i32, i32) #2

declare dso_local i32 @build_if_id_bitmap(i32, i32, i32) #2

declare dso_local i32 @mc_send_command(%struct.fsl_mc_io*, %struct.fsl_mc_command*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
