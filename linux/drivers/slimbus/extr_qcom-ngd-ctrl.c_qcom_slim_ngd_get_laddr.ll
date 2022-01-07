; ModuleID = '/home/carl/AnghaBench/linux/drivers/slimbus/extr_qcom-ngd-ctrl.c_qcom_slim_ngd_get_laddr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/slimbus/extr_qcom-ngd-ctrl.c_qcom_slim_ngd_get_laddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slim_controller = type { i32 }
%struct.slim_eaddr = type { i32 }
%struct.slim_val_inf = type { i32, i64*, i64*, i32 }
%struct.slim_msg_txn = type { i32, i64, %struct.slim_val_inf*, i32, i64, i32, i32, i32 }

@SLIM_MSG_MT_DEST_REFERRED_USER = common dso_local global i32 0, align 4
@SLIM_MSG_DEST_LOGICALADDR = common dso_local global i32 0, align 4
@SLIM_LA_MGR = common dso_local global i32 0, align 4
@SLIM_USR_MC_ADDR_QUERY = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.slim_controller*, %struct.slim_eaddr*, i64*)* @qcom_slim_ngd_get_laddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qcom_slim_ngd_get_laddr(%struct.slim_controller* %0, %struct.slim_eaddr* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.slim_controller*, align 8
  %6 = alloca %struct.slim_eaddr*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.slim_val_inf, align 8
  %9 = alloca [6 x i64], align 16
  %10 = alloca %struct.slim_msg_txn, align 8
  %11 = alloca [10 x i64], align 16
  %12 = alloca [10 x i64], align 16
  %13 = alloca i32, align 4
  store %struct.slim_controller* %0, %struct.slim_controller** %5, align 8
  store %struct.slim_eaddr* %1, %struct.slim_eaddr** %6, align 8
  store i64* %2, i64** %7, align 8
  %14 = bitcast %struct.slim_val_inf* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %14, i8 0, i64 32, i1 false)
  %15 = bitcast [6 x i64]* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %15, i8 0, i64 48, i1 false)
  %16 = bitcast [10 x i64]* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %16, i8 0, i64 80, i1 false)
  %17 = bitcast [10 x i64]* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %17, i8 0, i64 80, i1 false)
  %18 = load i32, i32* @SLIM_MSG_MT_DEST_REFERRED_USER, align 4
  %19 = getelementptr inbounds %struct.slim_msg_txn, %struct.slim_msg_txn* %10, i32 0, i32 7
  store i32 %18, i32* %19, align 8
  %20 = load i32, i32* @SLIM_MSG_DEST_LOGICALADDR, align 4
  %21 = getelementptr inbounds %struct.slim_msg_txn, %struct.slim_msg_txn* %10, i32 0, i32 6
  store i32 %20, i32* %21, align 4
  %22 = load i32, i32* @SLIM_LA_MGR, align 4
  %23 = getelementptr inbounds %struct.slim_msg_txn, %struct.slim_msg_txn* %10, i32 0, i32 5
  store i32 %22, i32* %23, align 8
  %24 = getelementptr inbounds %struct.slim_msg_txn, %struct.slim_msg_txn* %10, i32 0, i32 4
  store i64 0, i64* %24, align 8
  %25 = load i32, i32* @SLIM_USR_MC_ADDR_QUERY, align 4
  %26 = getelementptr inbounds %struct.slim_msg_txn, %struct.slim_msg_txn* %10, i32 0, i32 3
  store i32 %25, i32* %26, align 8
  %27 = getelementptr inbounds %struct.slim_msg_txn, %struct.slim_msg_txn* %10, i32 0, i32 0
  store i32 11, i32* %27, align 8
  %28 = getelementptr inbounds %struct.slim_msg_txn, %struct.slim_msg_txn* %10, i32 0, i32 2
  store %struct.slim_val_inf* %8, %struct.slim_val_inf** %28, align 8
  %29 = getelementptr inbounds %struct.slim_msg_txn, %struct.slim_msg_txn* %10, i32 0, i32 2
  %30 = load %struct.slim_val_inf*, %struct.slim_val_inf** %29, align 8
  %31 = getelementptr inbounds %struct.slim_val_inf, %struct.slim_val_inf* %30, i32 0, i32 0
  store i32 7, i32* %31, align 8
  %32 = getelementptr inbounds [10 x i64], [10 x i64]* %11, i64 0, i64 0
  %33 = getelementptr inbounds %struct.slim_msg_txn, %struct.slim_msg_txn* %10, i32 0, i32 2
  %34 = load %struct.slim_val_inf*, %struct.slim_val_inf** %33, align 8
  %35 = getelementptr inbounds %struct.slim_val_inf, %struct.slim_val_inf* %34, i32 0, i32 2
  store i64* %32, i64** %35, align 8
  %36 = getelementptr inbounds [10 x i64], [10 x i64]* %12, i64 0, i64 0
  %37 = getelementptr inbounds %struct.slim_msg_txn, %struct.slim_msg_txn* %10, i32 0, i32 2
  %38 = load %struct.slim_val_inf*, %struct.slim_val_inf** %37, align 8
  %39 = getelementptr inbounds %struct.slim_val_inf, %struct.slim_val_inf* %38, i32 0, i32 1
  store i64* %36, i64** %39, align 8
  %40 = load %struct.slim_controller*, %struct.slim_controller** %5, align 8
  %41 = call i32 @slim_alloc_txn_tid(%struct.slim_controller* %40, %struct.slim_msg_txn* %10)
  store i32 %41, i32* %13, align 4
  %42 = load i32, i32* %13, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %3
  %45 = load i32, i32* %13, align 4
  store i32 %45, i32* %4, align 4
  br label %74

46:                                               ; preds = %3
  %47 = getelementptr inbounds %struct.slim_msg_txn, %struct.slim_msg_txn* %10, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds [10 x i64], [10 x i64]* %11, i64 0, i64 0
  store i64 %48, i64* %49, align 16
  %50 = getelementptr inbounds [10 x i64], [10 x i64]* %11, i64 0, i64 1
  %51 = load %struct.slim_eaddr*, %struct.slim_eaddr** %6, align 8
  %52 = call i32 @memcpy(i64* %50, %struct.slim_eaddr* %51, i32 4)
  %53 = load %struct.slim_controller*, %struct.slim_controller** %5, align 8
  %54 = call i32 @qcom_slim_ngd_xfer_msg_sync(%struct.slim_controller* %53, %struct.slim_msg_txn* %10)
  store i32 %54, i32* %13, align 4
  %55 = load i32, i32* %13, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %46
  %58 = load %struct.slim_controller*, %struct.slim_controller** %5, align 8
  %59 = call i32 @slim_free_txn_tid(%struct.slim_controller* %58, %struct.slim_msg_txn* %10)
  %60 = load i32, i32* %13, align 4
  store i32 %60, i32* %4, align 4
  br label %74

61:                                               ; preds = %46
  %62 = getelementptr inbounds [10 x i64], [10 x i64]* %12, i64 0, i64 0
  %63 = getelementptr inbounds [6 x i64], [6 x i64]* %9, i64 0, i64 0
  %64 = call i32 @memcmp(i64* %62, i64* %63, i32 6)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %61
  %67 = load i32, i32* @ENXIO, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %4, align 4
  br label %74

69:                                               ; preds = %61
  %70 = getelementptr inbounds [10 x i64], [10 x i64]* %12, i64 0, i64 6
  %71 = load i64, i64* %70, align 16
  %72 = load i64*, i64** %7, align 8
  store i64 %71, i64* %72, align 8
  %73 = load i32, i32* %13, align 4
  store i32 %73, i32* %4, align 4
  br label %74

74:                                               ; preds = %69, %66, %57, %44
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @slim_alloc_txn_tid(%struct.slim_controller*, %struct.slim_msg_txn*) #2

declare dso_local i32 @memcpy(i64*, %struct.slim_eaddr*, i32) #2

declare dso_local i32 @qcom_slim_ngd_xfer_msg_sync(%struct.slim_controller*, %struct.slim_msg_txn*) #2

declare dso_local i32 @slim_free_txn_tid(%struct.slim_controller*, %struct.slim_msg_txn*) #2

declare dso_local i32 @memcmp(i64*, i64*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
