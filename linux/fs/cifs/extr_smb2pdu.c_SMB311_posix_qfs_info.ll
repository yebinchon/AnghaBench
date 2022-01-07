; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_smb2pdu.c_SMB311_posix_qfs_info.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_smb2pdu.c_SMB311_posix_qfs_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_tcon = type { %struct.cifs_ses* }
%struct.cifs_ses = type { i32 }
%struct.kstatfs = type { i32 }
%struct.smb_rqst = type { i32, %struct.kvec* }
%struct.kvec = type { i64 }
%struct.smb2_query_info_rsp = type { i32, i32 }

@FS_POSIX_INFORMATION = common dso_local global i32 0, align 4
@CIFS_TRANSFORM_REQ = common dso_local global i32 0, align 4
@SMB2_QUERY_INFO_HE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SMB311_posix_qfs_info(i32 %0, %struct.cifs_tcon* %1, i32 %2, i32 %3, %struct.kstatfs* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.cifs_tcon*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.kstatfs*, align 8
  %12 = alloca %struct.smb_rqst, align 8
  %13 = alloca %struct.smb2_query_info_rsp*, align 8
  %14 = alloca %struct.kvec, align 8
  %15 = alloca %struct.kvec, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.cifs_ses*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store %struct.cifs_tcon* %1, %struct.cifs_tcon** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.kstatfs* %4, %struct.kstatfs** %11, align 8
  store %struct.smb2_query_info_rsp* null, %struct.smb2_query_info_rsp** %13, align 8
  store i32 0, i32* %16, align 4
  %21 = load %struct.cifs_tcon*, %struct.cifs_tcon** %8, align 8
  %22 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %21, i32 0, i32 0
  %23 = load %struct.cifs_ses*, %struct.cifs_ses** %22, align 8
  store %struct.cifs_ses* %23, %struct.cifs_ses** %18, align 8
  store i32* null, i32** %19, align 8
  store i32 0, i32* %20, align 4
  %24 = load %struct.cifs_tcon*, %struct.cifs_tcon** %8, align 8
  %25 = load i32, i32* @FS_POSIX_INFORMATION, align 4
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %10, align 4
  %28 = call i32 @build_qfs_info_req(%struct.kvec* %14, %struct.cifs_tcon* %24, i32 %25, i32 4, i32 %26, i32 %27)
  store i32 %28, i32* %16, align 4
  %29 = load i32, i32* %16, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %5
  %32 = load i32, i32* %16, align 4
  store i32 %32, i32* %6, align 4
  br label %93

33:                                               ; preds = %5
  %34 = load %struct.cifs_tcon*, %struct.cifs_tcon** %8, align 8
  %35 = call i64 @smb3_encryption_required(%struct.cifs_tcon* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = load i32, i32* @CIFS_TRANSFORM_REQ, align 4
  %39 = load i32, i32* %20, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %20, align 4
  br label %41

41:                                               ; preds = %37, %33
  %42 = call i32 @memset(%struct.smb_rqst* %12, i32 0, i32 16)
  %43 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %12, i32 0, i32 1
  store %struct.kvec* %14, %struct.kvec** %43, align 8
  %44 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %12, i32 0, i32 0
  store i32 1, i32* %44, align 8
  %45 = load i32, i32* %7, align 4
  %46 = load %struct.cifs_ses*, %struct.cifs_ses** %18, align 8
  %47 = load i32, i32* %20, align 4
  %48 = call i32 @cifs_send_recv(i32 %45, %struct.cifs_ses* %46, %struct.smb_rqst* %12, i32* %17, i32 %47, %struct.kvec* %15)
  store i32 %48, i32* %16, align 4
  %49 = getelementptr inbounds %struct.kvec, %struct.kvec* %14, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @cifs_small_buf_release(i64 %50)
  %52 = load i32, i32* %16, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %41
  %55 = load %struct.cifs_tcon*, %struct.cifs_tcon** %8, align 8
  %56 = load i32, i32* @SMB2_QUERY_INFO_HE, align 4
  %57 = call i32 @cifs_stats_fail_inc(%struct.cifs_tcon* %55, i32 %56)
  br label %87

58:                                               ; preds = %41
  %59 = getelementptr inbounds %struct.kvec, %struct.kvec* %15, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = inttoptr i64 %60 to %struct.smb2_query_info_rsp*
  store %struct.smb2_query_info_rsp* %61, %struct.smb2_query_info_rsp** %13, align 8
  %62 = load %struct.smb2_query_info_rsp*, %struct.smb2_query_info_rsp** %13, align 8
  %63 = getelementptr inbounds %struct.smb2_query_info_rsp, %struct.smb2_query_info_rsp* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @le16_to_cpu(i32 %64)
  %66 = load %struct.smb2_query_info_rsp*, %struct.smb2_query_info_rsp** %13, align 8
  %67 = bitcast %struct.smb2_query_info_rsp* %66 to i8*
  %68 = sext i32 %65 to i64
  %69 = getelementptr inbounds i8, i8* %67, i64 %68
  %70 = bitcast i8* %69 to i32*
  store i32* %70, i32** %19, align 8
  %71 = load %struct.smb2_query_info_rsp*, %struct.smb2_query_info_rsp** %13, align 8
  %72 = getelementptr inbounds %struct.smb2_query_info_rsp, %struct.smb2_query_info_rsp* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @le16_to_cpu(i32 %73)
  %75 = load %struct.smb2_query_info_rsp*, %struct.smb2_query_info_rsp** %13, align 8
  %76 = getelementptr inbounds %struct.smb2_query_info_rsp, %struct.smb2_query_info_rsp* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @le32_to_cpu(i32 %77)
  %79 = call i32 @smb2_validate_iov(i32 %74, i32 %78, %struct.kvec* %15, i32 4)
  store i32 %79, i32* %16, align 4
  %80 = load i32, i32* %16, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %86, label %82

82:                                               ; preds = %58
  %83 = load i32*, i32** %19, align 8
  %84 = load %struct.kstatfs*, %struct.kstatfs** %11, align 8
  %85 = call i32 @copy_posix_fs_info_to_kstatfs(i32* %83, %struct.kstatfs* %84)
  br label %86

86:                                               ; preds = %82, %58
  br label %87

87:                                               ; preds = %86, %54
  %88 = load i32, i32* %17, align 4
  %89 = getelementptr inbounds %struct.kvec, %struct.kvec* %15, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = call i32 @free_rsp_buf(i32 %88, i64 %90)
  %92 = load i32, i32* %16, align 4
  store i32 %92, i32* %6, align 4
  br label %93

93:                                               ; preds = %87, %31
  %94 = load i32, i32* %6, align 4
  ret i32 %94
}

declare dso_local i32 @build_qfs_info_req(%struct.kvec*, %struct.cifs_tcon*, i32, i32, i32, i32) #1

declare dso_local i64 @smb3_encryption_required(%struct.cifs_tcon*) #1

declare dso_local i32 @memset(%struct.smb_rqst*, i32, i32) #1

declare dso_local i32 @cifs_send_recv(i32, %struct.cifs_ses*, %struct.smb_rqst*, i32*, i32, %struct.kvec*) #1

declare dso_local i32 @cifs_small_buf_release(i64) #1

declare dso_local i32 @cifs_stats_fail_inc(%struct.cifs_tcon*, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @smb2_validate_iov(i32, i32, %struct.kvec*, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @copy_posix_fs_info_to_kstatfs(i32*, %struct.kstatfs*) #1

declare dso_local i32 @free_rsp_buf(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
