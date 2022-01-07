; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_smb2ops.c_smb2_queryfs.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_smb2ops.c_smb2_queryfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_tcon = type { i32 }
%struct.kstatfs = type { i32 }
%struct.smb2_query_info_rsp = type { i32, i32 }
%struct.smb2_fs_full_size_info = type { i32 }
%struct.kvec = type { i64, i32, i32* }

@CIFS_NO_BUFFER = common dso_local global i32 0, align 4
@FILE_READ_ATTRIBUTES = common dso_local global i32 0, align 4
@FS_FULL_SIZE_INFORMATION = common dso_local global i32 0, align 4
@SMB2_O_INFO_FILESYSTEM = common dso_local global i32 0, align 4
@SMB2_MAGIC_NUMBER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.cifs_tcon*, %struct.kstatfs*)* @smb2_queryfs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smb2_queryfs(i32 %0, %struct.cifs_tcon* %1, %struct.kstatfs* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cifs_tcon*, align 8
  %6 = alloca %struct.kstatfs*, align 8
  %7 = alloca %struct.smb2_query_info_rsp*, align 8
  %8 = alloca %struct.smb2_fs_full_size_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.kvec, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.cifs_tcon* %1, %struct.cifs_tcon** %5, align 8
  store %struct.kstatfs* %2, %struct.kstatfs** %6, align 8
  store %struct.smb2_fs_full_size_info* null, %struct.smb2_fs_full_size_info** %8, align 8
  store i32 0, i32* %9, align 4
  %13 = bitcast %struct.kvec* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %13, i8 0, i64 24, i1 false)
  %14 = load i32, i32* @CIFS_NO_BUFFER, align 4
  store i32 %14, i32* %11, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.cifs_tcon*, %struct.cifs_tcon** %5, align 8
  %17 = load i32, i32* @FILE_READ_ATTRIBUTES, align 4
  %18 = load i32, i32* @FS_FULL_SIZE_INFORMATION, align 4
  %19 = load i32, i32* @SMB2_O_INFO_FILESYSTEM, align 4
  %20 = call i32 @smb2_query_info_compound(i32 %15, %struct.cifs_tcon* %16, i32* %9, i32 %17, i32 %18, i32 %19, i32 4, %struct.kvec* %10, i32* %11, i32* null)
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %12, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  br label %56

24:                                               ; preds = %3
  %25 = getelementptr inbounds %struct.kvec, %struct.kvec* %10, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to %struct.smb2_query_info_rsp*
  store %struct.smb2_query_info_rsp* %27, %struct.smb2_query_info_rsp** %7, align 8
  %28 = load i32, i32* @SMB2_MAGIC_NUMBER, align 4
  %29 = load %struct.kstatfs*, %struct.kstatfs** %6, align 8
  %30 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load %struct.smb2_query_info_rsp*, %struct.smb2_query_info_rsp** %7, align 8
  %32 = getelementptr inbounds %struct.smb2_query_info_rsp, %struct.smb2_query_info_rsp* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @le16_to_cpu(i32 %33)
  %35 = load %struct.smb2_query_info_rsp*, %struct.smb2_query_info_rsp** %7, align 8
  %36 = bitcast %struct.smb2_query_info_rsp* %35 to i8*
  %37 = sext i32 %34 to i64
  %38 = getelementptr inbounds i8, i8* %36, i64 %37
  %39 = bitcast i8* %38 to %struct.smb2_fs_full_size_info*
  store %struct.smb2_fs_full_size_info* %39, %struct.smb2_fs_full_size_info** %8, align 8
  %40 = load %struct.smb2_query_info_rsp*, %struct.smb2_query_info_rsp** %7, align 8
  %41 = getelementptr inbounds %struct.smb2_query_info_rsp, %struct.smb2_query_info_rsp* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @le16_to_cpu(i32 %42)
  %44 = load %struct.smb2_query_info_rsp*, %struct.smb2_query_info_rsp** %7, align 8
  %45 = getelementptr inbounds %struct.smb2_query_info_rsp, %struct.smb2_query_info_rsp* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @le32_to_cpu(i32 %46)
  %48 = call i32 @smb2_validate_iov(i32 %43, i32 %47, %struct.kvec* %10, i32 4)
  store i32 %48, i32* %12, align 4
  %49 = load i32, i32* %12, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %24
  %52 = load %struct.smb2_fs_full_size_info*, %struct.smb2_fs_full_size_info** %8, align 8
  %53 = load %struct.kstatfs*, %struct.kstatfs** %6, align 8
  %54 = call i32 @smb2_copy_fs_info_to_kstatfs(%struct.smb2_fs_full_size_info* %52, %struct.kstatfs* %53)
  br label %55

55:                                               ; preds = %51, %24
  br label %56

56:                                               ; preds = %55, %23
  %57 = load i32, i32* %11, align 4
  %58 = getelementptr inbounds %struct.kvec, %struct.kvec* %10, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @free_rsp_buf(i32 %57, i64 %59)
  %61 = load i32, i32* %12, align 4
  ret i32 %61
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @smb2_query_info_compound(i32, %struct.cifs_tcon*, i32*, i32, i32, i32, i32, %struct.kvec*, i32*, i32*) #2

declare dso_local i32 @le16_to_cpu(i32) #2

declare dso_local i32 @smb2_validate_iov(i32, i32, %struct.kvec*, i32) #2

declare dso_local i32 @le32_to_cpu(i32) #2

declare dso_local i32 @smb2_copy_fs_info_to_kstatfs(%struct.smb2_fs_full_size_info*, %struct.kstatfs*) #2

declare dso_local i32 @free_rsp_buf(i32, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
