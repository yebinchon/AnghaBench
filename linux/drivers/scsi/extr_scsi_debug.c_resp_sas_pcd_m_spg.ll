; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_debug.c_resp_sas_pcd_m_spg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_debug.c_resp_sas_pcd_m_spg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.resp_sas_pcd_m_spg.sas_pcd_m_pg = private unnamed_addr constant <{ [90 x i8], [14 x i8] }> <{ [90 x i8] c"Y\01\00d\00\06\00\02\00\00\00\00\10\09\08\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00\88\99\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\10\09\08\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\03\00\00\00\00\00\00\00\88\99", [14 x i8] zeroinitializer }>, align 16
@naa3_comp_a = common dso_local global i64 0, align 8
@naa3_comp_c = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32, i32)* @resp_sas_pcd_m_spg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @resp_sas_pcd_m_spg(i8* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [104 x i8], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = bitcast [104 x i8]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %12, i8* align 16 getelementptr inbounds (<{ [90 x i8], [14 x i8] }>, <{ [90 x i8], [14 x i8] }>* @__const.resp_sas_pcd_m_spg.sas_pcd_m_pg, i32 0, i32 0, i32 0), i64 104, i1 false)
  %13 = load i64, i64* @naa3_comp_a, align 8
  %14 = getelementptr inbounds [104 x i8], [104 x i8]* %9, i64 0, i64 0
  %15 = getelementptr inbounds i8, i8* %14, i64 16
  %16 = call i32 @put_unaligned_be64(i64 %13, i8* %15)
  %17 = load i64, i64* @naa3_comp_c, align 8
  %18 = add nsw i64 %17, 1
  %19 = getelementptr inbounds [104 x i8], [104 x i8]* %9, i64 0, i64 0
  %20 = getelementptr inbounds i8, i8* %19, i64 24
  %21 = call i32 @put_unaligned_be64(i64 %18, i8* %20)
  %22 = load i64, i64* @naa3_comp_a, align 8
  %23 = getelementptr inbounds [104 x i8], [104 x i8]* %9, i64 0, i64 0
  %24 = getelementptr inbounds i8, i8* %23, i64 64
  %25 = call i32 @put_unaligned_be64(i64 %22, i8* %24)
  %26 = load i64, i64* @naa3_comp_c, align 8
  %27 = add nsw i64 %26, 1
  %28 = getelementptr inbounds [104 x i8], [104 x i8]* %9, i64 0, i64 0
  %29 = getelementptr inbounds i8, i8* %28, i64 72
  %30 = call i32 @put_unaligned_be64(i64 %27, i8* %29)
  %31 = load i32, i32* %8, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %11, align 4
  %35 = load i8*, i8** %5, align 8
  %36 = getelementptr inbounds [104 x i8], [104 x i8]* %9, i64 0, i64 0
  %37 = call i32 @memcpy(i8* %35, i8* %36, i32 104)
  %38 = load i32, i32* %10, align 4
  %39 = load i8*, i8** %5, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 20
  %41 = call i32 @put_unaligned_be32(i32 %38, i8* %40)
  %42 = load i32, i32* %11, align 4
  %43 = load i8*, i8** %5, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 48
  %45 = getelementptr inbounds i8, i8* %44, i64 20
  %46 = call i32 @put_unaligned_be32(i32 %42, i8* %45)
  %47 = load i32, i32* %6, align 4
  %48 = icmp eq i32 1, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %4
  %50 = load i8*, i8** %5, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 4
  %52 = call i32 @memset(i8* %51, i32 0, i32 100)
  br label %53

53:                                               ; preds = %49, %4
  ret i32 104
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @put_unaligned_be64(i64, i8*) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

declare dso_local i32 @put_unaligned_be32(i32, i8*) #2

declare dso_local i32 @memset(i8*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
