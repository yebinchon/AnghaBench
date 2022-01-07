; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_hw.c_csio_hw_set_description.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_hw.c_csio_hw_set_description.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i8* }
%struct.csio_hw = type { i32, i32 }

@CSIO_VENDOR_ID = common dso_local global i64 0, align 8
@CSIO_ASIC_DEVID_PROTO_MASK = common dso_local global i64 0, align 8
@CSIO_ASIC_DEVID_TYPE_MASK = common dso_local global i64 0, align 8
@CSIO_T5_FCOE_ASIC = common dso_local global i64 0, align 8
@csio_t5_fcoe_adapters = common dso_local global %struct.TYPE_2__* null, align 8
@__const.csio_hw_set_description.tempName = private unnamed_addr constant [32 x i8] c"Chelsio FCoE Controller\00\00\00\00\00\00\00\00\00", align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.csio_hw*, i64, i64)* @csio_hw_set_description to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @csio_hw_set_description(%struct.csio_hw* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.csio_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca [32 x i8], align 16
  store %struct.csio_hw* %0, %struct.csio_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load i64, i64* %5, align 8
  %11 = load i64, i64* @CSIO_VENDOR_ID, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %50

13:                                               ; preds = %3
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* @CSIO_ASIC_DEVID_PROTO_MASK, align 8
  %16 = and i64 %14, %15
  store i64 %16, i64* %8, align 8
  %17 = load i64, i64* %6, align 8
  %18 = load i64, i64* @CSIO_ASIC_DEVID_TYPE_MASK, align 8
  %19 = and i64 %17, %18
  store i64 %19, i64* %7, align 8
  %20 = load i64, i64* %8, align 8
  %21 = load i64, i64* @CSIO_T5_FCOE_ASIC, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %42

23:                                               ; preds = %13
  %24 = load %struct.csio_hw*, %struct.csio_hw** %4, align 8
  %25 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @csio_t5_fcoe_adapters, align 8
  %28 = load i64, i64* %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 @memcpy(i32 %26, i8* %31, i32 16)
  %33 = load %struct.csio_hw*, %struct.csio_hw** %4, align 8
  %34 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** @csio_t5_fcoe_adapters, align 8
  %37 = load i64, i64* %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 @memcpy(i32 %35, i8* %40, i32 32)
  br label %49

42:                                               ; preds = %13
  %43 = bitcast [32 x i8]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %43, i8* align 16 getelementptr inbounds ([32 x i8], [32 x i8]* @__const.csio_hw_set_description.tempName, i32 0, i32 0), i64 32, i1 false)
  %44 = load %struct.csio_hw*, %struct.csio_hw** %4, align 8
  %45 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %48 = call i32 @memcpy(i32 %46, i8* %47, i32 32)
  br label %49

49:                                               ; preds = %42, %23
  br label %50

50:                                               ; preds = %49, %3
  ret void
}

declare dso_local i32 @memcpy(i32, i8*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
