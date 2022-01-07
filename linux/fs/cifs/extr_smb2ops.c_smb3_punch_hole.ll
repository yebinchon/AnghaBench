; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_smb2ops.c_smb3_punch_hole.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_smb2ops.c_smb3_punch_hole.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.cifsFileInfo* }
%struct.cifsFileInfo = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.cifs_tcon = type { i32 }
%struct.inode = type { i32 }
%struct.file_zero_data_information = type { i8*, i8* }

@EOPNOTSUPP = common dso_local global i64 0, align 8
@FYI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Offset %lld len %lld\0A\00", align 1
@FSCTL_SET_ZERO_DATA = common dso_local global i32 0, align 4
@CIFSMaxBufSize = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.file*, %struct.cifs_tcon*, i64, i64)* @smb3_punch_hole to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @smb3_punch_hole(%struct.file* %0, %struct.cifs_tcon* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.file*, align 8
  %7 = alloca %struct.cifs_tcon*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.cifsFileInfo*, align 8
  %12 = alloca %struct.file_zero_data_information, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %6, align 8
  store %struct.cifs_tcon* %1, %struct.cifs_tcon** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load %struct.file*, %struct.file** %6, align 8
  %17 = getelementptr inbounds %struct.file, %struct.file* %16, i32 0, i32 0
  %18 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %17, align 8
  store %struct.cifsFileInfo* %18, %struct.cifsFileInfo** %11, align 8
  store i32 1, i32* %15, align 4
  %19 = call i32 (...) @get_xid()
  store i32 %19, i32* %14, align 4
  %20 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %11, align 8
  %21 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.inode* @d_inode(i32 %22)
  store %struct.inode* %23, %struct.inode** %10, align 8
  %24 = load i32, i32* %14, align 4
  %25 = load %struct.cifs_tcon*, %struct.cifs_tcon** %7, align 8
  %26 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %11, align 8
  %27 = load %struct.inode*, %struct.inode** %10, align 8
  %28 = load i32, i32* %15, align 4
  %29 = call i32 @smb2_set_sparse(i32 %24, %struct.cifs_tcon* %25, %struct.cifsFileInfo* %26, %struct.inode* %27, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %4
  %32 = load i64, i64* @EOPNOTSUPP, align 8
  %33 = sub nsw i64 0, %32
  store i64 %33, i64* %13, align 8
  %34 = load i32, i32* %14, align 4
  %35 = call i32 @free_xid(i32 %34)
  %36 = load i64, i64* %13, align 8
  store i64 %36, i64* %5, align 8
  br label %67

37:                                               ; preds = %4
  %38 = load i32, i32* @FYI, align 4
  %39 = load i64, i64* %8, align 8
  %40 = load i64, i64* %9, align 8
  %41 = call i32 @cifs_dbg(i32 %38, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i64 %39, i64 %40)
  %42 = load i64, i64* %8, align 8
  %43 = call i8* @cpu_to_le64(i64 %42)
  %44 = getelementptr inbounds %struct.file_zero_data_information, %struct.file_zero_data_information* %12, i32 0, i32 1
  store i8* %43, i8** %44, align 8
  %45 = load i64, i64* %8, align 8
  %46 = load i64, i64* %9, align 8
  %47 = add nsw i64 %45, %46
  %48 = call i8* @cpu_to_le64(i64 %47)
  %49 = getelementptr inbounds %struct.file_zero_data_information, %struct.file_zero_data_information* %12, i32 0, i32 0
  store i8* %48, i8** %49, align 8
  %50 = load i32, i32* %14, align 4
  %51 = load %struct.cifs_tcon*, %struct.cifs_tcon** %7, align 8
  %52 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %11, align 8
  %53 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %11, align 8
  %57 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @FSCTL_SET_ZERO_DATA, align 4
  %61 = bitcast %struct.file_zero_data_information* %12 to i8*
  %62 = load i32, i32* @CIFSMaxBufSize, align 4
  %63 = call i64 @SMB2_ioctl(i32 %50, %struct.cifs_tcon* %51, i32 %55, i32 %59, i32 %60, i32 1, i8* %61, i32 16, i32 %62, i32* null, i32* null)
  store i64 %63, i64* %13, align 8
  %64 = load i32, i32* %14, align 4
  %65 = call i32 @free_xid(i32 %64)
  %66 = load i64, i64* %13, align 8
  store i64 %66, i64* %5, align 8
  br label %67

67:                                               ; preds = %37, %31
  %68 = load i64, i64* %5, align 8
  ret i64 %68
}

declare dso_local i32 @get_xid(...) #1

declare dso_local %struct.inode* @d_inode(i32) #1

declare dso_local i32 @smb2_set_sparse(i32, %struct.cifs_tcon*, %struct.cifsFileInfo*, %struct.inode*, i32) #1

declare dso_local i32 @free_xid(i32) #1

declare dso_local i32 @cifs_dbg(i32, i8*, i64, i64) #1

declare dso_local i8* @cpu_to_le64(i64) #1

declare dso_local i64 @SMB2_ioctl(i32, %struct.cifs_tcon*, i32, i32, i32, i32, i8*, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
