; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_file.c_cifs_push_locks.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_file.c_cifs_push_locks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifsFileInfo = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.cifs_sb_info = type { i32 }
%struct.cifsInodeInfo = type { i32, i32 }
%struct.cifs_tcon = type { %struct.TYPE_10__*, %struct.TYPE_6__ }
%struct.TYPE_10__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 (%struct.cifsFileInfo*)* }
%struct.TYPE_6__ = type { i32 }

@CIFS_UNIX_FCNTL_CAP = common dso_local global i32 0, align 4
@CIFS_MOUNT_NOPOSIXBRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cifsFileInfo*)* @cifs_push_locks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cifs_push_locks(%struct.cifsFileInfo* %0) #0 {
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
  %24 = getelementptr inbounds %struct.cifsInodeInfo, %struct.cifsInodeInfo* %23, i32 0, i32 1
  %25 = call i32 @cifs_down_write(i32* %24)
  %26 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %5, align 8
  %27 = getelementptr inbounds %struct.cifsInodeInfo, %struct.cifsInodeInfo* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %1
  %31 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %5, align 8
  %32 = getelementptr inbounds %struct.cifsInodeInfo, %struct.cifsInodeInfo* %31, i32 0, i32 1
  %33 = call i32 @up_write(i32* %32)
  %34 = load i32, i32* %7, align 4
  store i32 %34, i32* %2, align 4
  br label %79

35:                                               ; preds = %1
  %36 = load %struct.cifs_tcon*, %struct.cifs_tcon** %6, align 8
  %37 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %36, i32 0, i32 0
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %37, align 8
  %39 = call i64 @cap_unix(%struct.TYPE_10__* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %60

41:                                               ; preds = %35
  %42 = load i32, i32* @CIFS_UNIX_FCNTL_CAP, align 4
  %43 = load %struct.cifs_tcon*, %struct.cifs_tcon** %6, align 8
  %44 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @le64_to_cpu(i32 %46)
  %48 = and i32 %42, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %60

50:                                               ; preds = %41
  %51 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %4, align 8
  %52 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @CIFS_MOUNT_NOPOSIXBRL, align 4
  %55 = and i32 %53, %54
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %50
  %58 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %3, align 8
  %59 = call i32 @cifs_push_posix_locks(%struct.cifsFileInfo* %58)
  store i32 %59, i32* %7, align 4
  br label %72

60:                                               ; preds = %50, %41, %35
  %61 = load %struct.cifs_tcon*, %struct.cifs_tcon** %6, align 8
  %62 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %61, i32 0, i32 0
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = load i32 (%struct.cifsFileInfo*)*, i32 (%struct.cifsFileInfo*)** %68, align 8
  %70 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %3, align 8
  %71 = call i32 %69(%struct.cifsFileInfo* %70)
  store i32 %71, i32* %7, align 4
  br label %72

72:                                               ; preds = %60, %57
  %73 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %5, align 8
  %74 = getelementptr inbounds %struct.cifsInodeInfo, %struct.cifsInodeInfo* %73, i32 0, i32 0
  store i32 0, i32* %74, align 4
  %75 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %5, align 8
  %76 = getelementptr inbounds %struct.cifsInodeInfo, %struct.cifsInodeInfo* %75, i32 0, i32 1
  %77 = call i32 @up_write(i32* %76)
  %78 = load i32, i32* %7, align 4
  store i32 %78, i32* %2, align 4
  br label %79

79:                                               ; preds = %72, %30
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local %struct.cifs_sb_info* @CIFS_SB(i32) #1

declare dso_local %struct.cifsInodeInfo* @CIFS_I(i32) #1

declare dso_local i32 @d_inode(%struct.TYPE_9__*) #1

declare dso_local %struct.cifs_tcon* @tlink_tcon(i32) #1

declare dso_local i32 @cifs_down_write(i32*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i64 @cap_unix(%struct.TYPE_10__*) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @cifs_push_posix_locks(%struct.cifsFileInfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
