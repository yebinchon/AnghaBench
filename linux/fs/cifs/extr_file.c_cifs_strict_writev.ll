; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_file.c_cifs_strict_writev.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_file.c_cifs_strict_writev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.iov_iter = type { i32 }
%struct.inode = type { i32 }
%struct.cifsInodeInfo = type { i64 }
%struct.cifs_sb_info = type { i32 }
%struct.cifsFileInfo = type { i32 }
%struct.cifs_tcon = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }

@CIFS_UNIX_FCNTL_CAP = common dso_local global i32 0, align 4
@CIFS_MOUNT_NOPOSIXBRL = common dso_local global i32 0, align 4
@FYI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"Set Oplock/Lease to NONE for inode=%p after write\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @cifs_strict_writev(%struct.kiocb* %0, %struct.iov_iter* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.kiocb*, align 8
  %5 = alloca %struct.iov_iter*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.cifsInodeInfo*, align 8
  %8 = alloca %struct.cifs_sb_info*, align 8
  %9 = alloca %struct.cifsFileInfo*, align 8
  %10 = alloca %struct.cifs_tcon*, align 8
  %11 = alloca i64, align 8
  store %struct.kiocb* %0, %struct.kiocb** %4, align 8
  store %struct.iov_iter* %1, %struct.iov_iter** %5, align 8
  %12 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %13 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = call %struct.inode* @file_inode(%struct.TYPE_4__* %14)
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
  %23 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to %struct.cifsFileInfo*
  store %struct.cifsFileInfo* %27, %struct.cifsFileInfo** %9, align 8
  %28 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %9, align 8
  %29 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call %struct.cifs_tcon* @tlink_tcon(i32 %30)
  store %struct.cifs_tcon* %31, %struct.cifs_tcon** %10, align 8
  %32 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %7, align 8
  %33 = call i64 @cifs_get_writer(%struct.cifsInodeInfo* %32)
  store i64 %33, i64* %11, align 8
  %34 = load i64, i64* %11, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %2
  %37 = load i64, i64* %11, align 8
  store i64 %37, i64* %3, align 8
  br label %92

38:                                               ; preds = %2
  %39 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %7, align 8
  %40 = call i64 @CIFS_CACHE_WRITE(%struct.cifsInodeInfo* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %72

42:                                               ; preds = %38
  %43 = load %struct.cifs_tcon*, %struct.cifs_tcon** %10, align 8
  %44 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @cap_unix(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %68

48:                                               ; preds = %42
  %49 = load i32, i32* @CIFS_UNIX_FCNTL_CAP, align 4
  %50 = load %struct.cifs_tcon*, %struct.cifs_tcon** %10, align 8
  %51 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @le64_to_cpu(i32 %53)
  %55 = and i32 %49, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %68

57:                                               ; preds = %48
  %58 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %8, align 8
  %59 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @CIFS_MOUNT_NOPOSIXBRL, align 4
  %62 = and i32 %60, %61
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %57
  %65 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %66 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %67 = call i64 @generic_file_write_iter(%struct.kiocb* %65, %struct.iov_iter* %66)
  store i64 %67, i64* %11, align 8
  br label %88

68:                                               ; preds = %57, %48, %42
  %69 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %70 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %71 = call i64 @cifs_writev(%struct.kiocb* %69, %struct.iov_iter* %70)
  store i64 %71, i64* %11, align 8
  br label %88

72:                                               ; preds = %38
  %73 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %74 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %75 = call i64 @cifs_user_writev(%struct.kiocb* %73, %struct.iov_iter* %74)
  store i64 %75, i64* %11, align 8
  %76 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %7, align 8
  %77 = call i64 @CIFS_CACHE_READ(%struct.cifsInodeInfo* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %87

79:                                               ; preds = %72
  %80 = load %struct.inode*, %struct.inode** %6, align 8
  %81 = call i32 @cifs_zap_mapping(%struct.inode* %80)
  %82 = load i32, i32* @FYI, align 4
  %83 = load %struct.inode*, %struct.inode** %6, align 8
  %84 = call i32 @cifs_dbg(i32 %82, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), %struct.inode* %83)
  %85 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %7, align 8
  %86 = getelementptr inbounds %struct.cifsInodeInfo, %struct.cifsInodeInfo* %85, i32 0, i32 0
  store i64 0, i64* %86, align 8
  br label %87

87:                                               ; preds = %79, %72
  br label %88

88:                                               ; preds = %87, %68, %64
  %89 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %7, align 8
  %90 = call i32 @cifs_put_writer(%struct.cifsInodeInfo* %89)
  %91 = load i64, i64* %11, align 8
  store i64 %91, i64* %3, align 8
  br label %92

92:                                               ; preds = %88, %36
  %93 = load i64, i64* %3, align 8
  ret i64 %93
}

declare dso_local %struct.inode* @file_inode(%struct.TYPE_4__*) #1

declare dso_local %struct.cifsInodeInfo* @CIFS_I(%struct.inode*) #1

declare dso_local %struct.cifs_sb_info* @CIFS_SB(i32) #1

declare dso_local %struct.cifs_tcon* @tlink_tcon(i32) #1

declare dso_local i64 @cifs_get_writer(%struct.cifsInodeInfo*) #1

declare dso_local i64 @CIFS_CACHE_WRITE(%struct.cifsInodeInfo*) #1

declare dso_local i64 @cap_unix(i32) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i64 @generic_file_write_iter(%struct.kiocb*, %struct.iov_iter*) #1

declare dso_local i64 @cifs_writev(%struct.kiocb*, %struct.iov_iter*) #1

declare dso_local i64 @cifs_user_writev(%struct.kiocb*, %struct.iov_iter*) #1

declare dso_local i64 @CIFS_CACHE_READ(%struct.cifsInodeInfo*) #1

declare dso_local i32 @cifs_zap_mapping(%struct.inode*) #1

declare dso_local i32 @cifs_dbg(i32, i8*, %struct.inode*) #1

declare dso_local i32 @cifs_put_writer(%struct.cifsInodeInfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
