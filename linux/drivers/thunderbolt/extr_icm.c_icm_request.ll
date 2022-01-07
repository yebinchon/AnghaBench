; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_icm.c_icm_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_icm.c_icm_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb = type { i32 }
%struct.icm = type { i32 }
%struct.tb_cfg_request = type { i64, i64, i64, i32, i8*, i32, i8*, i32, i32 }
%struct.tb_cfg_result = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@icm_match = common dso_local global i32 0, align 4
@icm_copy = common dso_local global i32 0, align 4
@TB_CFG_PKG_ICM_CMD = common dso_local global i32 0, align 4
@TB_CFG_PKG_ICM_RESP = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tb*, i8*, i64, i8*, i64, i64, i32)* @icm_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @icm_request(%struct.tb* %0, i8* %1, i64 %2, i8* %3, i64 %4, i64 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.tb*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.icm*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.tb_cfg_request*, align 8
  %19 = alloca %struct.tb_cfg_result, align 4
  %20 = alloca %struct.tb_cfg_result, align 4
  store %struct.tb* %0, %struct.tb** %9, align 8
  store i8* %1, i8** %10, align 8
  store i64 %2, i64* %11, align 8
  store i8* %3, i8** %12, align 8
  store i64 %4, i64* %13, align 8
  store i64 %5, i64* %14, align 8
  store i32 %6, i32* %15, align 4
  %21 = load %struct.tb*, %struct.tb** %9, align 8
  %22 = call %struct.icm* @tb_priv(%struct.tb* %21)
  store %struct.icm* %22, %struct.icm** %16, align 8
  store i32 3, i32* %17, align 4
  br label %23

23:                                               ; preds = %94, %7
  %24 = call %struct.tb_cfg_request* (...) @tb_cfg_request_alloc()
  store %struct.tb_cfg_request* %24, %struct.tb_cfg_request** %18, align 8
  %25 = load %struct.tb_cfg_request*, %struct.tb_cfg_request** %18, align 8
  %26 = icmp ne %struct.tb_cfg_request* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %8, align 4
  br label %101

30:                                               ; preds = %23
  %31 = load i32, i32* @icm_match, align 4
  %32 = load %struct.tb_cfg_request*, %struct.tb_cfg_request** %18, align 8
  %33 = getelementptr inbounds %struct.tb_cfg_request, %struct.tb_cfg_request* %32, i32 0, i32 8
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* @icm_copy, align 4
  %35 = load %struct.tb_cfg_request*, %struct.tb_cfg_request** %18, align 8
  %36 = getelementptr inbounds %struct.tb_cfg_request, %struct.tb_cfg_request* %35, i32 0, i32 7
  store i32 %34, i32* %36, align 8
  %37 = load i8*, i8** %10, align 8
  %38 = load %struct.tb_cfg_request*, %struct.tb_cfg_request** %18, align 8
  %39 = getelementptr inbounds %struct.tb_cfg_request, %struct.tb_cfg_request* %38, i32 0, i32 6
  store i8* %37, i8** %39, align 8
  %40 = load i64, i64* %11, align 8
  %41 = load %struct.tb_cfg_request*, %struct.tb_cfg_request** %18, align 8
  %42 = getelementptr inbounds %struct.tb_cfg_request, %struct.tb_cfg_request* %41, i32 0, i32 0
  store i64 %40, i64* %42, align 8
  %43 = load i32, i32* @TB_CFG_PKG_ICM_CMD, align 4
  %44 = load %struct.tb_cfg_request*, %struct.tb_cfg_request** %18, align 8
  %45 = getelementptr inbounds %struct.tb_cfg_request, %struct.tb_cfg_request* %44, i32 0, i32 5
  store i32 %43, i32* %45, align 8
  %46 = load i8*, i8** %12, align 8
  %47 = load %struct.tb_cfg_request*, %struct.tb_cfg_request** %18, align 8
  %48 = getelementptr inbounds %struct.tb_cfg_request, %struct.tb_cfg_request* %47, i32 0, i32 4
  store i8* %46, i8** %48, align 8
  %49 = load i64, i64* %14, align 8
  %50 = load %struct.tb_cfg_request*, %struct.tb_cfg_request** %18, align 8
  %51 = getelementptr inbounds %struct.tb_cfg_request, %struct.tb_cfg_request* %50, i32 0, i32 1
  store i64 %49, i64* %51, align 8
  %52 = load i64, i64* %13, align 8
  %53 = load %struct.tb_cfg_request*, %struct.tb_cfg_request** %18, align 8
  %54 = getelementptr inbounds %struct.tb_cfg_request, %struct.tb_cfg_request* %53, i32 0, i32 2
  store i64 %52, i64* %54, align 8
  %55 = load i32, i32* @TB_CFG_PKG_ICM_RESP, align 4
  %56 = load %struct.tb_cfg_request*, %struct.tb_cfg_request** %18, align 8
  %57 = getelementptr inbounds %struct.tb_cfg_request, %struct.tb_cfg_request* %56, i32 0, i32 3
  store i32 %55, i32* %57, align 8
  %58 = load %struct.icm*, %struct.icm** %16, align 8
  %59 = getelementptr inbounds %struct.icm, %struct.icm* %58, i32 0, i32 0
  %60 = call i32 @mutex_lock(i32* %59)
  %61 = load %struct.tb*, %struct.tb** %9, align 8
  %62 = getelementptr inbounds %struct.tb, %struct.tb* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.tb_cfg_request*, %struct.tb_cfg_request** %18, align 8
  %65 = load i32, i32* %15, align 4
  %66 = call i32 @tb_cfg_request_sync(i32 %63, %struct.tb_cfg_request* %64, i32 %65)
  %67 = getelementptr inbounds %struct.tb_cfg_result, %struct.tb_cfg_result* %20, i32 0, i32 0
  store i32 %66, i32* %67, align 4
  %68 = bitcast %struct.tb_cfg_result* %19 to i8*
  %69 = bitcast %struct.tb_cfg_result* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %68, i8* align 4 %69, i64 4, i1 false)
  %70 = load %struct.icm*, %struct.icm** %16, align 8
  %71 = getelementptr inbounds %struct.icm, %struct.icm* %70, i32 0, i32 0
  %72 = call i32 @mutex_unlock(i32* %71)
  %73 = load %struct.tb_cfg_request*, %struct.tb_cfg_request** %18, align 8
  %74 = call i32 @tb_cfg_request_put(%struct.tb_cfg_request* %73)
  %75 = getelementptr inbounds %struct.tb_cfg_result, %struct.tb_cfg_result* %19, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @ETIMEDOUT, align 4
  %78 = sub nsw i32 0, %77
  %79 = icmp ne i32 %76, %78
  br i1 %79, label %80, label %92

80:                                               ; preds = %30
  %81 = getelementptr inbounds %struct.tb_cfg_result, %struct.tb_cfg_result* %19, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = icmp eq i32 %82, 1
  br i1 %83, label %84, label %87

84:                                               ; preds = %80
  %85 = load i32, i32* @EIO, align 4
  %86 = sub nsw i32 0, %85
  br label %90

87:                                               ; preds = %80
  %88 = getelementptr inbounds %struct.tb_cfg_result, %struct.tb_cfg_result* %19, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  br label %90

90:                                               ; preds = %87, %84
  %91 = phi i32 [ %86, %84 ], [ %89, %87 ]
  store i32 %91, i32* %8, align 4
  br label %101

92:                                               ; preds = %30
  %93 = call i32 @usleep_range(i32 20, i32 50)
  br label %94

94:                                               ; preds = %92
  %95 = load i32, i32* %17, align 4
  %96 = add nsw i32 %95, -1
  store i32 %96, i32* %17, align 4
  %97 = icmp ne i32 %95, 0
  br i1 %97, label %23, label %98

98:                                               ; preds = %94
  %99 = load i32, i32* @ETIMEDOUT, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %8, align 4
  br label %101

101:                                              ; preds = %98, %90, %27
  %102 = load i32, i32* %8, align 4
  ret i32 %102
}

declare dso_local %struct.icm* @tb_priv(%struct.tb*) #1

declare dso_local %struct.tb_cfg_request* @tb_cfg_request_alloc(...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @tb_cfg_request_sync(i32, %struct.tb_cfg_request*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @tb_cfg_request_put(%struct.tb_cfg_request*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
