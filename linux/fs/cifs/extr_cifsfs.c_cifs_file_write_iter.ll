; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_cifsfs.c_cifs_file_write_iter.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_cifsfs.c_cifs_file_write_iter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.iov_iter = type { i32 }
%struct.inode = type { i32 }
%struct.cifsInodeInfo = type { i64 }

@O_DIRECT = common dso_local global i32 0, align 4
@FYI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"Set no oplock for inode=%p after a write operation\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"cifs_file_write_iter: %d rc on %p inode\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.kiocb*, %struct.iov_iter*)* @cifs_file_write_iter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @cifs_file_write_iter(%struct.kiocb* %0, %struct.iov_iter* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.kiocb*, align 8
  %5 = alloca %struct.iov_iter*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.cifsInodeInfo*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.kiocb* %0, %struct.kiocb** %4, align 8
  store %struct.iov_iter* %1, %struct.iov_iter** %5, align 8
  %10 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %11 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = call %struct.inode* @file_inode(%struct.TYPE_2__* %12)
  store %struct.inode* %13, %struct.inode** %6, align 8
  %14 = load %struct.inode*, %struct.inode** %6, align 8
  %15 = call %struct.cifsInodeInfo* @CIFS_I(%struct.inode* %14)
  store %struct.cifsInodeInfo* %15, %struct.cifsInodeInfo** %7, align 8
  %16 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %17 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @O_DIRECT, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %44

24:                                               ; preds = %2
  %25 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %26 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %27 = call i64 @cifs_user_writev(%struct.kiocb* %25, %struct.iov_iter* %26)
  store i64 %27, i64* %8, align 8
  %28 = load i64, i64* %8, align 8
  %29 = icmp sgt i64 %28, 0
  br i1 %29, label %30, label %42

30:                                               ; preds = %24
  %31 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %7, align 8
  %32 = call i64 @CIFS_CACHE_READ(%struct.cifsInodeInfo* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %30
  %35 = load %struct.inode*, %struct.inode** %6, align 8
  %36 = call i32 @cifs_zap_mapping(%struct.inode* %35)
  %37 = load i32, i32* @FYI, align 4
  %38 = load %struct.inode*, %struct.inode** %6, align 8
  %39 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %37, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), %struct.inode* %38)
  %40 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %7, align 8
  %41 = getelementptr inbounds %struct.cifsInodeInfo, %struct.cifsInodeInfo* %40, i32 0, i32 0
  store i64 0, i64* %41, align 8
  br label %42

42:                                               ; preds = %34, %30, %24
  %43 = load i64, i64* %8, align 8
  store i64 %43, i64* %3, align 8
  br label %77

44:                                               ; preds = %2
  %45 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %7, align 8
  %46 = call i64 @cifs_get_writer(%struct.cifsInodeInfo* %45)
  store i64 %46, i64* %8, align 8
  %47 = load i64, i64* %8, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = load i64, i64* %8, align 8
  store i64 %50, i64* %3, align 8
  br label %77

51:                                               ; preds = %44
  %52 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %53 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %54 = call i64 @generic_file_write_iter(%struct.kiocb* %52, %struct.iov_iter* %53)
  store i64 %54, i64* %8, align 8
  %55 = load %struct.inode*, %struct.inode** %6, align 8
  %56 = call %struct.cifsInodeInfo* @CIFS_I(%struct.inode* %55)
  %57 = call i64 @CIFS_CACHE_WRITE(%struct.cifsInodeInfo* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %51
  br label %73

60:                                               ; preds = %51
  %61 = load %struct.inode*, %struct.inode** %6, align 8
  %62 = getelementptr inbounds %struct.inode, %struct.inode* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @filemap_fdatawrite(i32 %63)
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* %9, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %60
  %68 = load i32, i32* @FYI, align 4
  %69 = load i32, i32* %9, align 4
  %70 = load %struct.inode*, %struct.inode** %6, align 8
  %71 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %68, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %69, %struct.inode* %70)
  br label %72

72:                                               ; preds = %67, %60
  br label %73

73:                                               ; preds = %72, %59
  %74 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %7, align 8
  %75 = call i32 @cifs_put_writer(%struct.cifsInodeInfo* %74)
  %76 = load i64, i64* %8, align 8
  store i64 %76, i64* %3, align 8
  br label %77

77:                                               ; preds = %73, %49, %42
  %78 = load i64, i64* %3, align 8
  ret i64 %78
}

declare dso_local %struct.inode* @file_inode(%struct.TYPE_2__*) #1

declare dso_local %struct.cifsInodeInfo* @CIFS_I(%struct.inode*) #1

declare dso_local i64 @cifs_user_writev(%struct.kiocb*, %struct.iov_iter*) #1

declare dso_local i64 @CIFS_CACHE_READ(%struct.cifsInodeInfo*) #1

declare dso_local i32 @cifs_zap_mapping(%struct.inode*) #1

declare dso_local i32 @cifs_dbg(i32, i8*, ...) #1

declare dso_local i64 @cifs_get_writer(%struct.cifsInodeInfo*) #1

declare dso_local i64 @generic_file_write_iter(%struct.kiocb*, %struct.iov_iter*) #1

declare dso_local i64 @CIFS_CACHE_WRITE(%struct.cifsInodeInfo*) #1

declare dso_local i32 @filemap_fdatawrite(i32) #1

declare dso_local i32 @cifs_put_writer(%struct.cifsInodeInfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
