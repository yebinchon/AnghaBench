; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_file.c_cifs_strict_readv.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_file.c_cifs_strict_readv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64 }
%struct.iov_iter = type { i32 }
%struct.inode = type { i32 }
%struct.cifsInodeInfo = type { i32 }
%struct.cifs_sb_info = type { i32 }
%struct.cifsFileInfo = type { i32 }
%struct.cifs_tcon = type { %struct.TYPE_10__*, %struct.TYPE_6__ }
%struct.TYPE_10__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@EACCES = common dso_local global i32 0, align 4
@CIFS_UNIX_FCNTL_CAP = common dso_local global i32 0, align 4
@CIFS_MOUNT_NOPOSIXBRL = common dso_local global i32 0, align 4
@CIFS_READ_OP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cifs_strict_readv(%struct.kiocb* %0, %struct.iov_iter* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kiocb*, align 8
  %5 = alloca %struct.iov_iter*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.cifsInodeInfo*, align 8
  %8 = alloca %struct.cifs_sb_info*, align 8
  %9 = alloca %struct.cifsFileInfo*, align 8
  %10 = alloca %struct.cifs_tcon*, align 8
  %11 = alloca i32, align 4
  store %struct.kiocb* %0, %struct.kiocb** %4, align 8
  store %struct.iov_iter* %1, %struct.iov_iter** %5, align 8
  %12 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %13 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %12, i32 0, i32 1
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %15 = call %struct.inode* @file_inode(%struct.TYPE_9__* %14)
  store %struct.inode* %15, %struct.inode** %6, align 8
  %16 = load %struct.inode*, %struct.inode** %6, align 8
  %17 = call %struct.cifsInodeInfo* @CIFS_I(%struct.inode* %16)
  store %struct.cifsInodeInfo* %17, %struct.cifsInodeInfo** %7, align 8
  %18 = load %struct.inode*, %struct.inode** %6, align 8
  %19 = getelementptr inbounds %struct.inode, %struct.inode* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.cifs_sb_info* @CIFS_SB(i32 %20)
  store %struct.cifs_sb_info* %21, %struct.cifs_sb_info** %8, align 8
  %22 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %23 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %22, i32 0, i32 1
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to %struct.cifsFileInfo*
  store %struct.cifsFileInfo* %27, %struct.cifsFileInfo** %9, align 8
  %28 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %9, align 8
  %29 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call %struct.cifs_tcon* @tlink_tcon(i32 %30)
  store %struct.cifs_tcon* %31, %struct.cifs_tcon** %10, align 8
  %32 = load i32, i32* @EACCES, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %11, align 4
  %34 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %7, align 8
  %35 = call i32 @CIFS_CACHE_READ(%struct.cifsInodeInfo* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %2
  %38 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %39 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %40 = call i32 @cifs_user_readv(%struct.kiocb* %38, %struct.iov_iter* %39)
  store i32 %40, i32* %3, align 4
  br label %98

41:                                               ; preds = %2
  %42 = load %struct.cifs_tcon*, %struct.cifs_tcon** %10, align 8
  %43 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %42, i32 0, i32 0
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %43, align 8
  %45 = call i64 @cap_unix(%struct.TYPE_10__* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %67

47:                                               ; preds = %41
  %48 = load i32, i32* @CIFS_UNIX_FCNTL_CAP, align 4
  %49 = load %struct.cifs_tcon*, %struct.cifs_tcon** %10, align 8
  %50 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @le64_to_cpu(i32 %52)
  %54 = and i32 %48, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %67

56:                                               ; preds = %47
  %57 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %8, align 8
  %58 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @CIFS_MOUNT_NOPOSIXBRL, align 4
  %61 = and i32 %59, %60
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %56
  %64 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %65 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %66 = call i32 @generic_file_read_iter(%struct.kiocb* %64, %struct.iov_iter* %65)
  store i32 %66, i32* %3, align 4
  br label %98

67:                                               ; preds = %56, %47, %41
  %68 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %7, align 8
  %69 = getelementptr inbounds %struct.cifsInodeInfo, %struct.cifsInodeInfo* %68, i32 0, i32 0
  %70 = call i32 @down_read(i32* %69)
  %71 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %9, align 8
  %72 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %73 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %76 = call i32 @iov_iter_count(%struct.iov_iter* %75)
  %77 = load %struct.cifs_tcon*, %struct.cifs_tcon** %10, align 8
  %78 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %77, i32 0, i32 0
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @CIFS_READ_OP, align 4
  %87 = call i32 @cifs_find_lock_conflict(%struct.cifsFileInfo* %71, i32 %74, i32 %76, i32 %85, i32 0, i32* null, i32 %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %93, label %89

89:                                               ; preds = %67
  %90 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %91 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %92 = call i32 @generic_file_read_iter(%struct.kiocb* %90, %struct.iov_iter* %91)
  store i32 %92, i32* %11, align 4
  br label %93

93:                                               ; preds = %89, %67
  %94 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %7, align 8
  %95 = getelementptr inbounds %struct.cifsInodeInfo, %struct.cifsInodeInfo* %94, i32 0, i32 0
  %96 = call i32 @up_read(i32* %95)
  %97 = load i32, i32* %11, align 4
  store i32 %97, i32* %3, align 4
  br label %98

98:                                               ; preds = %93, %63, %37
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local %struct.inode* @file_inode(%struct.TYPE_9__*) #1

declare dso_local %struct.cifsInodeInfo* @CIFS_I(%struct.inode*) #1

declare dso_local %struct.cifs_sb_info* @CIFS_SB(i32) #1

declare dso_local %struct.cifs_tcon* @tlink_tcon(i32) #1

declare dso_local i32 @CIFS_CACHE_READ(%struct.cifsInodeInfo*) #1

declare dso_local i32 @cifs_user_readv(%struct.kiocb*, %struct.iov_iter*) #1

declare dso_local i64 @cap_unix(%struct.TYPE_10__*) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @generic_file_read_iter(%struct.kiocb*, %struct.iov_iter*) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @cifs_find_lock_conflict(%struct.cifsFileInfo*, i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @iov_iter_count(%struct.iov_iter*) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
