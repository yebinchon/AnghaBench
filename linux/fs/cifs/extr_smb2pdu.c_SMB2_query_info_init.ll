; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_smb2pdu.c_SMB2_query_info_init.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_smb2pdu.c_SMB2_query_info_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_tcon = type { i32 }
%struct.smb_rqst = type { %struct.kvec* }
%struct.kvec = type { i8*, i32 }
%struct.smb2_query_info_req = type { i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@SMB2_QUERY_INFO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SMB2_query_info_init(%struct.cifs_tcon* %0, %struct.smb_rqst* %1, i8* %2, i8* %3, i8* %4, i8* %5, i64 %6, i64 %7, i64 %8, i8* %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca %struct.cifs_tcon*, align 8
  %13 = alloca %struct.smb_rqst*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i8*, align 8
  %22 = alloca %struct.smb2_query_info_req*, align 8
  %23 = alloca %struct.kvec*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store %struct.cifs_tcon* %0, %struct.cifs_tcon** %12, align 8
  store %struct.smb_rqst* %1, %struct.smb_rqst** %13, align 8
  store i8* %2, i8** %14, align 8
  store i8* %3, i8** %15, align 8
  store i8* %4, i8** %16, align 8
  store i8* %5, i8** %17, align 8
  store i64 %6, i64* %18, align 8
  store i64 %7, i64* %19, align 8
  store i64 %8, i64* %20, align 8
  store i8* %9, i8** %21, align 8
  %26 = load %struct.smb_rqst*, %struct.smb_rqst** %13, align 8
  %27 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %26, i32 0, i32 0
  %28 = load %struct.kvec*, %struct.kvec** %27, align 8
  store %struct.kvec* %28, %struct.kvec** %23, align 8
  %29 = load i32, i32* @SMB2_QUERY_INFO, align 4
  %30 = load %struct.cifs_tcon*, %struct.cifs_tcon** %12, align 8
  %31 = bitcast %struct.smb2_query_info_req** %22 to i8**
  %32 = call i32 @smb2_plain_req_init(i32 %29, %struct.cifs_tcon* %30, i8** %31, i32* %24)
  store i32 %32, i32* %25, align 4
  %33 = load i32, i32* %25, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %10
  %36 = load i32, i32* %25, align 4
  store i32 %36, i32* %11, align 4
  br label %91

37:                                               ; preds = %10
  %38 = load i8*, i8** %17, align 8
  %39 = load %struct.smb2_query_info_req*, %struct.smb2_query_info_req** %22, align 8
  %40 = getelementptr inbounds %struct.smb2_query_info_req, %struct.smb2_query_info_req* %39, i32 0, i32 8
  store i8* %38, i8** %40, align 8
  %41 = load i8*, i8** %16, align 8
  %42 = load %struct.smb2_query_info_req*, %struct.smb2_query_info_req** %22, align 8
  %43 = getelementptr inbounds %struct.smb2_query_info_req, %struct.smb2_query_info_req* %42, i32 0, i32 7
  store i8* %41, i8** %43, align 8
  %44 = load i8*, i8** %14, align 8
  %45 = load %struct.smb2_query_info_req*, %struct.smb2_query_info_req** %22, align 8
  %46 = getelementptr inbounds %struct.smb2_query_info_req, %struct.smb2_query_info_req* %45, i32 0, i32 6
  store i8* %44, i8** %46, align 8
  %47 = load i8*, i8** %15, align 8
  %48 = load %struct.smb2_query_info_req*, %struct.smb2_query_info_req** %22, align 8
  %49 = getelementptr inbounds %struct.smb2_query_info_req, %struct.smb2_query_info_req* %48, i32 0, i32 5
  store i8* %47, i8** %49, align 8
  %50 = load i64, i64* %18, align 8
  %51 = call i8* @cpu_to_le32(i64 %50)
  %52 = load %struct.smb2_query_info_req*, %struct.smb2_query_info_req** %22, align 8
  %53 = getelementptr inbounds %struct.smb2_query_info_req, %struct.smb2_query_info_req* %52, i32 0, i32 4
  store i8* %51, i8** %53, align 8
  %54 = load i64, i64* %19, align 8
  %55 = call i8* @cpu_to_le32(i64 %54)
  %56 = load %struct.smb2_query_info_req*, %struct.smb2_query_info_req** %22, align 8
  %57 = getelementptr inbounds %struct.smb2_query_info_req, %struct.smb2_query_info_req* %56, i32 0, i32 3
  store i8* %55, i8** %57, align 8
  %58 = load i64, i64* %20, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %76

60:                                               ; preds = %37
  %61 = load i64, i64* %20, align 8
  %62 = call i8* @cpu_to_le32(i64 %61)
  %63 = load %struct.smb2_query_info_req*, %struct.smb2_query_info_req** %22, align 8
  %64 = getelementptr inbounds %struct.smb2_query_info_req, %struct.smb2_query_info_req* %63, i32 0, i32 2
  store i8* %62, i8** %64, align 8
  %65 = load i32, i32* %24, align 4
  %66 = sub i32 %65, 1
  %67 = call i32 @cpu_to_le16(i32 %66)
  %68 = load %struct.smb2_query_info_req*, %struct.smb2_query_info_req** %22, align 8
  %69 = getelementptr inbounds %struct.smb2_query_info_req, %struct.smb2_query_info_req* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  %70 = load %struct.smb2_query_info_req*, %struct.smb2_query_info_req** %22, align 8
  %71 = getelementptr inbounds %struct.smb2_query_info_req, %struct.smb2_query_info_req* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i8*, i8** %21, align 8
  %74 = load i64, i64* %20, align 8
  %75 = call i32 @memcpy(i32 %72, i8* %73, i64 %74)
  br label %76

76:                                               ; preds = %60, %37
  %77 = load %struct.smb2_query_info_req*, %struct.smb2_query_info_req** %22, align 8
  %78 = bitcast %struct.smb2_query_info_req* %77 to i8*
  %79 = load %struct.kvec*, %struct.kvec** %23, align 8
  %80 = getelementptr inbounds %struct.kvec, %struct.kvec* %79, i64 0
  %81 = getelementptr inbounds %struct.kvec, %struct.kvec* %80, i32 0, i32 0
  store i8* %78, i8** %81, align 8
  %82 = load i32, i32* %24, align 4
  %83 = sub i32 %82, 1
  %84 = zext i32 %83 to i64
  %85 = load i64, i64* %20, align 8
  %86 = add i64 %84, %85
  %87 = trunc i64 %86 to i32
  %88 = load %struct.kvec*, %struct.kvec** %23, align 8
  %89 = getelementptr inbounds %struct.kvec, %struct.kvec* %88, i64 0
  %90 = getelementptr inbounds %struct.kvec, %struct.kvec* %89, i32 0, i32 1
  store i32 %87, i32* %90, align 8
  store i32 0, i32* %11, align 4
  br label %91

91:                                               ; preds = %76, %35
  %92 = load i32, i32* %11, align 4
  ret i32 %92
}

declare dso_local i32 @smb2_plain_req_init(i32, %struct.cifs_tcon*, i8**, i32*) #1

declare dso_local i8* @cpu_to_le32(i64) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @memcpy(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
