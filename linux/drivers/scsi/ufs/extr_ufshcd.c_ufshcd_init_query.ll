; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufshcd.c_ufshcd_init_query.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufshcd.c_ufshcd_init_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ufs_hba = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.ufs_query_res, %struct.ufs_query_res }
%struct.ufs_query_res = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i8*, i8*, i8* }
%struct.ufs_query_req = type { %struct.TYPE_6__ }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ufs_hba*, %struct.ufs_query_req**, %struct.ufs_query_res**, i32, i8*, i8*, i8*)* @ufshcd_init_query to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ufshcd_init_query(%struct.ufs_hba* %0, %struct.ufs_query_req** %1, %struct.ufs_query_res** %2, i32 %3, i8* %4, i8* %5, i8* %6) #0 {
  %8 = alloca %struct.ufs_hba*, align 8
  %9 = alloca %struct.ufs_query_req**, align 8
  %10 = alloca %struct.ufs_query_res**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store %struct.ufs_hba* %0, %struct.ufs_hba** %8, align 8
  store %struct.ufs_query_req** %1, %struct.ufs_query_req*** %9, align 8
  store %struct.ufs_query_res** %2, %struct.ufs_query_res*** %10, align 8
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  store i8* %6, i8** %14, align 8
  %15 = load %struct.ufs_hba*, %struct.ufs_hba** %8, align 8
  %16 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = bitcast %struct.ufs_query_res* %18 to %struct.ufs_query_req*
  %20 = load %struct.ufs_query_req**, %struct.ufs_query_req*** %9, align 8
  store %struct.ufs_query_req* %19, %struct.ufs_query_req** %20, align 8
  %21 = load %struct.ufs_hba*, %struct.ufs_hba** %8, align 8
  %22 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load %struct.ufs_query_res**, %struct.ufs_query_res*** %10, align 8
  store %struct.ufs_query_res* %24, %struct.ufs_query_res** %25, align 8
  %26 = load %struct.ufs_query_req**, %struct.ufs_query_req*** %9, align 8
  %27 = load %struct.ufs_query_req*, %struct.ufs_query_req** %26, align 8
  %28 = bitcast %struct.ufs_query_req* %27 to %struct.ufs_query_res*
  %29 = call i32 @memset(%struct.ufs_query_res* %28, i32 0, i32 32)
  %30 = load %struct.ufs_query_res**, %struct.ufs_query_res*** %10, align 8
  %31 = load %struct.ufs_query_res*, %struct.ufs_query_res** %30, align 8
  %32 = call i32 @memset(%struct.ufs_query_res* %31, i32 0, i32 32)
  %33 = load i32, i32* %11, align 4
  %34 = load %struct.ufs_query_req**, %struct.ufs_query_req*** %9, align 8
  %35 = load %struct.ufs_query_req*, %struct.ufs_query_req** %34, align 8
  %36 = getelementptr inbounds %struct.ufs_query_req, %struct.ufs_query_req* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  store i32 %33, i32* %37, align 8
  %38 = load i8*, i8** %12, align 8
  %39 = load %struct.ufs_query_req**, %struct.ufs_query_req*** %9, align 8
  %40 = load %struct.ufs_query_req*, %struct.ufs_query_req** %39, align 8
  %41 = getelementptr inbounds %struct.ufs_query_req, %struct.ufs_query_req* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 3
  store i8* %38, i8** %42, align 8
  %43 = load i8*, i8** %13, align 8
  %44 = load %struct.ufs_query_req**, %struct.ufs_query_req*** %9, align 8
  %45 = load %struct.ufs_query_req*, %struct.ufs_query_req** %44, align 8
  %46 = getelementptr inbounds %struct.ufs_query_req, %struct.ufs_query_req* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 2
  store i8* %43, i8** %47, align 8
  %48 = load i8*, i8** %14, align 8
  %49 = load %struct.ufs_query_req**, %struct.ufs_query_req*** %9, align 8
  %50 = load %struct.ufs_query_req*, %struct.ufs_query_req** %49, align 8
  %51 = getelementptr inbounds %struct.ufs_query_req, %struct.ufs_query_req* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  store i8* %48, i8** %52, align 8
  ret void
}

declare dso_local i32 @memset(%struct.ufs_query_res*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
