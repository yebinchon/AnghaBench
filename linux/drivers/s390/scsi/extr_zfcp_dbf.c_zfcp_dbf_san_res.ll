; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_dbf.c_zfcp_dbf_san_res.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_dbf.c_zfcp_dbf_san_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_fsf_req = type { i32, %struct.zfcp_fsf_ct_els*, %struct.TYPE_2__* }
%struct.zfcp_fsf_ct_els = type { i32, i32 }
%struct.TYPE_2__ = type { %struct.zfcp_dbf* }
%struct.zfcp_dbf = type { i32 }

@ZFCP_DBF_SAN_LEVEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"san_res\00", align 1
@ZFCP_DBF_SAN_RES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfcp_dbf_san_res(i8* %0, %struct.zfcp_fsf_req* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.zfcp_fsf_req*, align 8
  %5 = alloca %struct.zfcp_dbf*, align 8
  %6 = alloca %struct.zfcp_fsf_ct_els*, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store %struct.zfcp_fsf_req* %1, %struct.zfcp_fsf_req** %4, align 8
  %8 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %4, align 8
  %9 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %8, i32 0, i32 2
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.zfcp_dbf*, %struct.zfcp_dbf** %11, align 8
  store %struct.zfcp_dbf* %12, %struct.zfcp_dbf** %5, align 8
  %13 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %4, align 8
  %14 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %13, i32 0, i32 1
  %15 = load %struct.zfcp_fsf_ct_els*, %struct.zfcp_fsf_ct_els** %14, align 8
  store %struct.zfcp_fsf_ct_els* %15, %struct.zfcp_fsf_ct_els** %6, align 8
  %16 = load %struct.zfcp_dbf*, %struct.zfcp_dbf** %5, align 8
  %17 = getelementptr inbounds %struct.zfcp_dbf, %struct.zfcp_dbf* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @ZFCP_DBF_SAN_LEVEL, align 4
  %20 = call i32 @debug_level_enabled(i32 %18, i32 %19)
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i64 @unlikely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %2
  br label %50

27:                                               ; preds = %2
  %28 = load %struct.zfcp_fsf_ct_els*, %struct.zfcp_fsf_ct_els** %6, align 8
  %29 = getelementptr inbounds %struct.zfcp_fsf_ct_els, %struct.zfcp_fsf_ct_els* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @zfcp_qdio_real_bytes(i32 %30)
  store i64 %31, i64* %7, align 8
  %32 = load i8*, i8** %3, align 8
  %33 = load %struct.zfcp_dbf*, %struct.zfcp_dbf** %5, align 8
  %34 = load %struct.zfcp_fsf_ct_els*, %struct.zfcp_fsf_ct_els** %6, align 8
  %35 = getelementptr inbounds %struct.zfcp_fsf_ct_els, %struct.zfcp_fsf_ct_els* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @ZFCP_DBF_SAN_RES, align 4
  %38 = load i64, i64* %7, align 8
  %39 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %4, align 8
  %40 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.zfcp_fsf_ct_els*, %struct.zfcp_fsf_ct_els** %6, align 8
  %43 = getelementptr inbounds %struct.zfcp_fsf_ct_els, %struct.zfcp_fsf_ct_els* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i8*, i8** %3, align 8
  %46 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %4, align 8
  %47 = load i64, i64* %7, align 8
  %48 = call i32 @zfcp_dbf_san_res_cap_len_if_gpn_ft(i8* %45, %struct.zfcp_fsf_req* %46, i64 %47)
  %49 = call i32 @zfcp_dbf_san(i8* %32, %struct.zfcp_dbf* %33, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %36, i32 %37, i64 %38, i32 %41, i32 %44, i32 %48)
  br label %50

50:                                               ; preds = %27, %26
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @debug_level_enabled(i32, i32) #1

declare dso_local i64 @zfcp_qdio_real_bytes(i32) #1

declare dso_local i32 @zfcp_dbf_san(i8*, %struct.zfcp_dbf*, i8*, i32, i32, i64, i32, i32, i32) #1

declare dso_local i32 @zfcp_dbf_san_res_cap_len_if_gpn_ft(i8*, %struct.zfcp_fsf_req*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
