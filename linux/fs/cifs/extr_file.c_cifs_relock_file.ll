; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_file.c_cifs_relock_file.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_file.c_cifs_relock_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifsFileInfo = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.cifs_sb_info = type { i32 }
%struct.cifsInodeInfo = type { i32, i64 }
%struct.cifs_tcon = type { %struct.TYPE_10__*, %struct.TYPE_6__ }
%struct.TYPE_10__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 (%struct.cifsFileInfo*)* }
%struct.TYPE_6__ = type { i32 }

@SINGLE_DEPTH_NESTING = common dso_local global i32 0, align 4
@CIFS_UNIX_FCNTL_CAP = common dso_local global i32 0, align 4
@CIFS_MOUNT_NOPOSIXBRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cifsFileInfo*)* @cifs_relock_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cifs_relock_file(%struct.cifsFileInfo* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cifsFileInfo*, align 8
  %4 = alloca %struct.cifs_sb_info*, align 8
  %5 = alloca %struct.cifsInodeInfo*, align 8
  %6 = alloca %struct.cifs_tcon*, align 8
  %7 = alloca i32, align 4
  store %struct.cifsFileInfo* %0, %struct.cifsFileInfo** %3, align 8
  %8 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %3, align 8
  %9 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %8, i32 0, i32 1
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.cifs_sb_info* @CIFS_SB(i32 %12)
  store %struct.cifs_sb_info* %13, %struct.cifs_sb_info** %4, align 8
  %14 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %3, align 8
  %15 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %14, i32 0, i32 1
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %17 = call i32 @d_inode(%struct.TYPE_9__* %16)
  %18 = call %struct.cifsInodeInfo* @CIFS_I(i32 %17)
  store %struct.cifsInodeInfo* %18, %struct.cifsInodeInfo** %5, align 8
  %19 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %3, align 8
  %20 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call %struct.cifs_tcon* @tlink_tcon(i32 %21)
  store %struct.cifs_tcon* %22, %struct.cifs_tcon** %6, align 8
  store i32 0, i32* %7, align 4
  %23 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %5, align 8
  %24 = getelementptr inbounds %struct.cifsInodeInfo, %struct.cifsInodeInfo* %23, i32 0, i32 0
  %25 = load i32, i32* @SINGLE_DEPTH_NESTING, align 4
  %26 = call i32 @down_read_nested(i32* %24, i32 %25)
  %27 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %5, align 8
  %28 = getelementptr inbounds %struct.cifsInodeInfo, %struct.cifsInodeInfo* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %1
  %32 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %5, align 8
  %33 = getelementptr inbounds %struct.cifsInodeInfo, %struct.cifsInodeInfo* %32, i32 0, i32 0
  %34 = call i32 @up_read(i32* %33)
  %35 = load i32, i32* %7, align 4
  store i32 %35, i32* %2, align 4
  br label %78

36:                                               ; preds = %1
  %37 = load %struct.cifs_tcon*, %struct.cifs_tcon** %6, align 8
  %38 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %37, i32 0, i32 0
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %38, align 8
  %40 = call i64 @cap_unix(%struct.TYPE_10__* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %61

42:                                               ; preds = %36
  %43 = load i32, i32* @CIFS_UNIX_FCNTL_CAP, align 4
  %44 = load %struct.cifs_tcon*, %struct.cifs_tcon** %6, align 8
  %45 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @le64_to_cpu(i32 %47)
  %49 = and i32 %43, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %61

51:                                               ; preds = %42
  %52 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %4, align 8
  %53 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @CIFS_MOUNT_NOPOSIXBRL, align 4
  %56 = and i32 %54, %55
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %51
  %59 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %3, align 8
  %60 = call i32 @cifs_push_posix_locks(%struct.cifsFileInfo* %59)
  store i32 %60, i32* %7, align 4
  br label %73

61:                                               ; preds = %51, %42, %36
  %62 = load %struct.cifs_tcon*, %struct.cifs_tcon** %6, align 8
  %63 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %62, i32 0, i32 0
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load i32 (%struct.cifsFileInfo*)*, i32 (%struct.cifsFileInfo*)** %69, align 8
  %71 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %3, align 8
  %72 = call i32 %70(%struct.cifsFileInfo* %71)
  store i32 %72, i32* %7, align 4
  br label %73

73:                                               ; preds = %61, %58
  %74 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %5, align 8
  %75 = getelementptr inbounds %struct.cifsInodeInfo, %struct.cifsInodeInfo* %74, i32 0, i32 0
  %76 = call i32 @up_read(i32* %75)
  %77 = load i32, i32* %7, align 4
  store i32 %77, i32* %2, align 4
  br label %78

78:                                               ; preds = %73, %31
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local %struct.cifs_sb_info* @CIFS_SB(i32) #1

declare dso_local %struct.cifsInodeInfo* @CIFS_I(i32) #1

declare dso_local i32 @d_inode(%struct.TYPE_9__*) #1

declare dso_local %struct.cifs_tcon* @tlink_tcon(i32) #1

declare dso_local i32 @down_read_nested(i32*, i32) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i64 @cap_unix(%struct.TYPE_10__*) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @cifs_push_posix_locks(%struct.cifsFileInfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
