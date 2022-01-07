; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_smb2ops.c_decrypt_raw_data.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_smb2ops.c_decrypt_raw_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TCP_Server_Info = type { i32 }
%struct.page = type { i32 }
%struct.kvec = type { i8*, i32 }
%struct.smb_rqst = type { i32, i32, i32, i32, %struct.page**, %struct.kvec*, i32* }

@PAGE_SIZE = common dso_local global i32 0, align 4
@FYI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Decrypt message returned %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TCP_Server_Info*, i8*, i32, %struct.page**, i32, i32)* @decrypt_raw_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decrypt_raw_data(%struct.TCP_Server_Info* %0, i8* %1, i32 %2, %struct.page** %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TCP_Server_Info*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.page**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [2 x %struct.kvec], align 16
  %15 = alloca %struct.smb_rqst, align 8
  %16 = alloca i32, align 4
  store %struct.TCP_Server_Info* %0, %struct.TCP_Server_Info** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store %struct.page** %3, %struct.page*** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %17 = bitcast %struct.smb_rqst* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %17, i8 0, i64 40, i1 false)
  %18 = load i8*, i8** %9, align 8
  %19 = getelementptr inbounds [2 x %struct.kvec], [2 x %struct.kvec]* %14, i64 0, i64 0
  %20 = getelementptr inbounds %struct.kvec, %struct.kvec* %19, i32 0, i32 0
  store i8* %18, i8** %20, align 16
  %21 = getelementptr inbounds [2 x %struct.kvec], [2 x %struct.kvec]* %14, i64 0, i64 0
  %22 = getelementptr inbounds %struct.kvec, %struct.kvec* %21, i32 0, i32 1
  store i32 4, i32* %22, align 8
  %23 = load i8*, i8** %9, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 4
  %25 = getelementptr inbounds [2 x %struct.kvec], [2 x %struct.kvec]* %14, i64 0, i64 1
  %26 = getelementptr inbounds %struct.kvec, %struct.kvec* %25, i32 0, i32 0
  store i8* %24, i8** %26, align 16
  %27 = load i32, i32* %10, align 4
  %28 = getelementptr inbounds [2 x %struct.kvec], [2 x %struct.kvec]* %14, i64 0, i64 1
  %29 = getelementptr inbounds %struct.kvec, %struct.kvec* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 8
  %30 = getelementptr inbounds [2 x %struct.kvec], [2 x %struct.kvec]* %14, i64 0, i64 0
  %31 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %15, i32 0, i32 5
  store %struct.kvec* %30, %struct.kvec** %31, align 8
  %32 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %15, i32 0, i32 0
  store i32 2, i32* %32, align 8
  %33 = load %struct.page**, %struct.page*** %11, align 8
  %34 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %15, i32 0, i32 4
  store %struct.page** %33, %struct.page*** %34, align 8
  %35 = load i32, i32* %12, align 4
  %36 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %15, i32 0, i32 1
  store i32 %35, i32* %36, align 4
  %37 = load i32, i32* @PAGE_SIZE, align 4
  %38 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %15, i32 0, i32 2
  store i32 %37, i32* %38, align 8
  %39 = load i32, i32* %13, align 4
  %40 = load i32, i32* @PAGE_SIZE, align 4
  %41 = urem i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %6
  br label %46

44:                                               ; preds = %6
  %45 = load i32, i32* @PAGE_SIZE, align 4
  br label %46

46:                                               ; preds = %44, %43
  %47 = phi i32 [ %41, %43 ], [ %45, %44 ]
  %48 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %15, i32 0, i32 3
  store i32 %47, i32* %48, align 4
  %49 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %8, align 8
  %50 = call i32 @crypt_message(%struct.TCP_Server_Info* %49, i32 1, %struct.smb_rqst* %15, i32 0)
  store i32 %50, i32* %16, align 4
  %51 = load i32, i32* @FYI, align 4
  %52 = load i32, i32* %16, align 4
  %53 = call i32 @cifs_dbg(i32 %51, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* %16, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %46
  %57 = load i32, i32* %16, align 4
  store i32 %57, i32* %7, align 4
  br label %71

58:                                               ; preds = %46
  %59 = load i8*, i8** %9, align 8
  %60 = getelementptr inbounds [2 x %struct.kvec], [2 x %struct.kvec]* %14, i64 0, i64 1
  %61 = getelementptr inbounds %struct.kvec, %struct.kvec* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 16
  %63 = load i32, i32* %10, align 4
  %64 = call i32 @memmove(i8* %59, i8* %62, i32 %63)
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* %13, align 4
  %67 = add i32 %65, %66
  %68 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %8, align 8
  %69 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 4
  %70 = load i32, i32* %16, align 4
  store i32 %70, i32* %7, align 4
  br label %71

71:                                               ; preds = %58, %56
  %72 = load i32, i32* %7, align 4
  ret i32 %72
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @crypt_message(%struct.TCP_Server_Info*, i32, %struct.smb_rqst*, i32) #2

declare dso_local i32 @cifs_dbg(i32, i8*, i32) #2

declare dso_local i32 @memmove(i8*, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
