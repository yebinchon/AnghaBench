; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_smb2ops.c_smb2_set_sparse.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_smb2ops.c_smb2_set_sparse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_tcon = type { i32 }
%struct.cifsFileInfo = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.inode = type { i32 }
%struct.cifsInodeInfo = type { i32 }

@FILE_ATTRIBUTE_SPARSE_FILE = common dso_local global i32 0, align 4
@FSCTL_SET_SPARSE = common dso_local global i32 0, align 4
@CIFSMaxBufSize = common dso_local global i32 0, align 4
@FYI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"set sparse rc = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.cifs_tcon*, %struct.cifsFileInfo*, %struct.inode*, i64)* @smb2_set_sparse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smb2_set_sparse(i32 %0, %struct.cifs_tcon* %1, %struct.cifsFileInfo* %2, %struct.inode* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.cifs_tcon*, align 8
  %9 = alloca %struct.cifsFileInfo*, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.cifsInodeInfo*, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store %struct.cifs_tcon* %1, %struct.cifs_tcon** %8, align 8
  store %struct.cifsFileInfo* %2, %struct.cifsFileInfo** %9, align 8
  store %struct.inode* %3, %struct.inode** %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load %struct.inode*, %struct.inode** %10, align 8
  %15 = call %struct.cifsInodeInfo* @CIFS_I(%struct.inode* %14)
  store %struct.cifsInodeInfo* %15, %struct.cifsInodeInfo** %12, align 8
  %16 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %12, align 8
  %17 = getelementptr inbounds %struct.cifsInodeInfo, %struct.cifsInodeInfo* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @FILE_ATTRIBUTE_SPARSE_FILE, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %5
  %23 = load i64, i64* %11, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  store i32 1, i32* %6, align 4
  br label %82

26:                                               ; preds = %22, %5
  %27 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %12, align 8
  %28 = getelementptr inbounds %struct.cifsInodeInfo, %struct.cifsInodeInfo* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @FILE_ATTRIBUTE_SPARSE_FILE, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %26
  %34 = load i64, i64* %11, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %33
  store i32 1, i32* %6, align 4
  br label %82

37:                                               ; preds = %33, %26
  %38 = load %struct.cifs_tcon*, %struct.cifs_tcon** %8, align 8
  %39 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  store i32 0, i32* %6, align 4
  br label %82

43:                                               ; preds = %37
  %44 = load i32, i32* %7, align 4
  %45 = load %struct.cifs_tcon*, %struct.cifs_tcon** %8, align 8
  %46 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %9, align 8
  %47 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %9, align 8
  %51 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @FSCTL_SET_SPARSE, align 4
  %55 = load i32, i32* @CIFSMaxBufSize, align 4
  %56 = call i32 @SMB2_ioctl(i32 %44, %struct.cifs_tcon* %45, i32 %49, i32 %53, i32 %54, i32 1, i64* %11, i32 1, i32 %55, i32* null, i32* null)
  store i32 %56, i32* %13, align 4
  %57 = load i32, i32* %13, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %43
  %60 = load %struct.cifs_tcon*, %struct.cifs_tcon** %8, align 8
  %61 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %60, i32 0, i32 0
  store i32 1, i32* %61, align 4
  %62 = load i32, i32* @FYI, align 4
  %63 = load i32, i32* %13, align 4
  %64 = call i32 @cifs_dbg(i32 %62, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %63)
  store i32 0, i32* %6, align 4
  br label %82

65:                                               ; preds = %43
  %66 = load i64, i64* %11, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %65
  %69 = load i32, i32* @FILE_ATTRIBUTE_SPARSE_FILE, align 4
  %70 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %12, align 8
  %71 = getelementptr inbounds %struct.cifsInodeInfo, %struct.cifsInodeInfo* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = or i32 %72, %69
  store i32 %73, i32* %71, align 4
  br label %81

74:                                               ; preds = %65
  %75 = load i32, i32* @FILE_ATTRIBUTE_SPARSE_FILE, align 4
  %76 = xor i32 %75, -1
  %77 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %12, align 8
  %78 = getelementptr inbounds %struct.cifsInodeInfo, %struct.cifsInodeInfo* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = and i32 %79, %76
  store i32 %80, i32* %78, align 4
  br label %81

81:                                               ; preds = %74, %68
  store i32 1, i32* %6, align 4
  br label %82

82:                                               ; preds = %81, %59, %42, %36, %25
  %83 = load i32, i32* %6, align 4
  ret i32 %83
}

declare dso_local %struct.cifsInodeInfo* @CIFS_I(%struct.inode*) #1

declare dso_local i32 @SMB2_ioctl(i32, %struct.cifs_tcon*, i32, i32, i32, i32, i64*, i32, i32, i32*, i32*) #1

declare dso_local i32 @cifs_dbg(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
