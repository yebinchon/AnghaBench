; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_file.c_cifs_writev.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_file.c_cifs_writev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { i32, %struct.file* }
%struct.file = type { %struct.TYPE_5__*, i64 }
%struct.TYPE_5__ = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.iov_iter = type { i32 }
%struct.cifsFileInfo = type { i32 }
%struct.cifsInodeInfo = type { i32 }
%struct.TCP_Server_Info = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TCP_Server_Info* }

@CIFS_WRITE_OP = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kiocb*, %struct.iov_iter*)* @cifs_writev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cifs_writev(%struct.kiocb* %0, %struct.iov_iter* %1) #0 {
  %3 = alloca %struct.kiocb*, align 8
  %4 = alloca %struct.iov_iter*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.cifsFileInfo*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.cifsInodeInfo*, align 8
  %9 = alloca %struct.TCP_Server_Info*, align 8
  %10 = alloca i32, align 4
  store %struct.kiocb* %0, %struct.kiocb** %3, align 8
  store %struct.iov_iter* %1, %struct.iov_iter** %4, align 8
  %11 = load %struct.kiocb*, %struct.kiocb** %3, align 8
  %12 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %11, i32 0, i32 1
  %13 = load %struct.file*, %struct.file** %12, align 8
  store %struct.file* %13, %struct.file** %5, align 8
  %14 = load %struct.file*, %struct.file** %5, align 8
  %15 = getelementptr inbounds %struct.file, %struct.file* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.cifsFileInfo*
  store %struct.cifsFileInfo* %17, %struct.cifsFileInfo** %6, align 8
  %18 = load %struct.file*, %struct.file** %5, align 8
  %19 = getelementptr inbounds %struct.file, %struct.file* %18, i32 0, i32 0
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load %struct.inode*, %struct.inode** %21, align 8
  store %struct.inode* %22, %struct.inode** %7, align 8
  %23 = load %struct.inode*, %struct.inode** %7, align 8
  %24 = call %struct.cifsInodeInfo* @CIFS_I(%struct.inode* %23)
  store %struct.cifsInodeInfo* %24, %struct.cifsInodeInfo** %8, align 8
  %25 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %6, align 8
  %26 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.TYPE_8__* @tlink_tcon(i32 %27)
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %31, align 8
  store %struct.TCP_Server_Info* %32, %struct.TCP_Server_Info** %9, align 8
  %33 = load %struct.inode*, %struct.inode** %7, align 8
  %34 = call i32 @inode_lock(%struct.inode* %33)
  %35 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %8, align 8
  %36 = getelementptr inbounds %struct.cifsInodeInfo, %struct.cifsInodeInfo* %35, i32 0, i32 0
  %37 = call i32 @down_read(i32* %36)
  %38 = load %struct.kiocb*, %struct.kiocb** %3, align 8
  %39 = load %struct.iov_iter*, %struct.iov_iter** %4, align 8
  %40 = call i32 @generic_write_checks(%struct.kiocb* %38, %struct.iov_iter* %39)
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  %42 = icmp sle i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %2
  br label %67

44:                                               ; preds = %2
  %45 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %6, align 8
  %46 = load %struct.kiocb*, %struct.kiocb** %3, align 8
  %47 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.iov_iter*, %struct.iov_iter** %4, align 8
  %50 = call i32 @iov_iter_count(%struct.iov_iter* %49)
  %51 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %9, align 8
  %52 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %51, i32 0, i32 0
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @CIFS_WRITE_OP, align 4
  %57 = call i32 @cifs_find_lock_conflict(%struct.cifsFileInfo* %45, i32 %48, i32 %50, i32 %55, i32 0, i32* null, i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %44
  %60 = load %struct.kiocb*, %struct.kiocb** %3, align 8
  %61 = load %struct.iov_iter*, %struct.iov_iter** %4, align 8
  %62 = call i32 @__generic_file_write_iter(%struct.kiocb* %60, %struct.iov_iter* %61)
  store i32 %62, i32* %10, align 4
  br label %66

63:                                               ; preds = %44
  %64 = load i32, i32* @EACCES, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %10, align 4
  br label %66

66:                                               ; preds = %63, %59
  br label %67

67:                                               ; preds = %66, %43
  %68 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %8, align 8
  %69 = getelementptr inbounds %struct.cifsInodeInfo, %struct.cifsInodeInfo* %68, i32 0, i32 0
  %70 = call i32 @up_read(i32* %69)
  %71 = load %struct.inode*, %struct.inode** %7, align 8
  %72 = call i32 @inode_unlock(%struct.inode* %71)
  %73 = load i32, i32* %10, align 4
  %74 = icmp sgt i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %67
  %76 = load %struct.kiocb*, %struct.kiocb** %3, align 8
  %77 = load i32, i32* %10, align 4
  %78 = call i32 @generic_write_sync(%struct.kiocb* %76, i32 %77)
  store i32 %78, i32* %10, align 4
  br label %79

79:                                               ; preds = %75, %67
  %80 = load i32, i32* %10, align 4
  ret i32 %80
}

declare dso_local %struct.cifsInodeInfo* @CIFS_I(%struct.inode*) #1

declare dso_local %struct.TYPE_8__* @tlink_tcon(i32) #1

declare dso_local i32 @inode_lock(%struct.inode*) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @generic_write_checks(%struct.kiocb*, %struct.iov_iter*) #1

declare dso_local i32 @cifs_find_lock_conflict(%struct.cifsFileInfo*, i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @iov_iter_count(%struct.iov_iter*) #1

declare dso_local i32 @__generic_file_write_iter(%struct.kiocb*, %struct.iov_iter*) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @inode_unlock(%struct.inode*) #1

declare dso_local i32 @generic_write_sync(%struct.kiocb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
