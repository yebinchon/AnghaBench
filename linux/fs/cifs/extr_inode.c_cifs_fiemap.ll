; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_inode.c_cifs_fiemap.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_inode.c_cifs_fiemap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64 }
%struct.fiemap_extent_info = type { i32 }
%struct.cifsInodeInfo = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.cifs_sb_info = type { i32 }
%struct.cifs_tcon = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TCP_Server_Info* }
%struct.TCP_Server_Info = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 (%struct.cifs_tcon*, %struct.cifsFileInfo*, %struct.fiemap_extent_info*, i32, i32)* }
%struct.cifsFileInfo = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cifs_fiemap(%struct.inode* %0, %struct.fiemap_extent_info* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.fiemap_extent_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.cifsInodeInfo*, align 8
  %11 = alloca %struct.cifs_sb_info*, align 8
  %12 = alloca %struct.cifs_tcon*, align 8
  %13 = alloca %struct.TCP_Server_Info*, align 8
  %14 = alloca %struct.cifsFileInfo*, align 8
  %15 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.fiemap_extent_info* %1, %struct.fiemap_extent_info** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load %struct.inode*, %struct.inode** %6, align 8
  %17 = call %struct.cifsInodeInfo* @CIFS_I(%struct.inode* %16)
  store %struct.cifsInodeInfo* %17, %struct.cifsInodeInfo** %10, align 8
  %18 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %10, align 8
  %19 = getelementptr inbounds %struct.cifsInodeInfo, %struct.cifsInodeInfo* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.cifs_sb_info* @CIFS_SB(i32 %21)
  store %struct.cifs_sb_info* %22, %struct.cifs_sb_info** %11, align 8
  %23 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %11, align 8
  %24 = call %struct.cifs_tcon* @cifs_sb_master_tcon(%struct.cifs_sb_info* %23)
  store %struct.cifs_tcon* %24, %struct.cifs_tcon** %12, align 8
  %25 = load %struct.cifs_tcon*, %struct.cifs_tcon** %12, align 8
  %26 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %25, i32 0, i32 0
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %28, align 8
  store %struct.TCP_Server_Info* %29, %struct.TCP_Server_Info** %13, align 8
  %30 = load %struct.inode*, %struct.inode** %6, align 8
  %31 = call %struct.cifsInodeInfo* @CIFS_I(%struct.inode* %30)
  %32 = call i32 @CIFS_CACHE_READ(%struct.cifsInodeInfo* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %61, label %34

34:                                               ; preds = %4
  %35 = load %struct.inode*, %struct.inode** %6, align 8
  %36 = getelementptr inbounds %struct.inode, %struct.inode* %35, i32 0, i32 0
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %36, align 8
  %38 = icmp ne %struct.TYPE_9__* %37, null
  br i1 %38, label %39, label %61

39:                                               ; preds = %34
  %40 = load %struct.inode*, %struct.inode** %6, align 8
  %41 = getelementptr inbounds %struct.inode, %struct.inode* %40, i32 0, i32 0
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %61

46:                                               ; preds = %39
  %47 = load %struct.inode*, %struct.inode** %6, align 8
  %48 = getelementptr inbounds %struct.inode, %struct.inode* %47, i32 0, i32 0
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %48, align 8
  %50 = call i32 @filemap_fdatawait(%struct.TYPE_9__* %49)
  store i32 %50, i32* %15, align 4
  %51 = load i32, i32* %15, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %46
  %54 = load %struct.inode*, %struct.inode** %6, align 8
  %55 = getelementptr inbounds %struct.inode, %struct.inode* %54, i32 0, i32 0
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %55, align 8
  %57 = load i32, i32* %15, align 4
  %58 = call i32 @mapping_set_error(%struct.TYPE_9__* %56, i32 %57)
  %59 = load i32, i32* %15, align 4
  store i32 %59, i32* %5, align 4
  br label %96

60:                                               ; preds = %46
  br label %61

61:                                               ; preds = %60, %39, %34, %4
  %62 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %10, align 8
  %63 = call %struct.cifsFileInfo* @find_readable_file(%struct.cifsInodeInfo* %62, i32 0)
  store %struct.cifsFileInfo* %63, %struct.cifsFileInfo** %14, align 8
  %64 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %14, align 8
  %65 = icmp eq %struct.cifsFileInfo* %64, null
  br i1 %65, label %66, label %69

66:                                               ; preds = %61
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %5, align 4
  br label %96

69:                                               ; preds = %61
  %70 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %13, align 8
  %71 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %70, i32 0, i32 0
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = load i32 (%struct.cifs_tcon*, %struct.cifsFileInfo*, %struct.fiemap_extent_info*, i32, i32)*, i32 (%struct.cifs_tcon*, %struct.cifsFileInfo*, %struct.fiemap_extent_info*, i32, i32)** %73, align 8
  %75 = icmp ne i32 (%struct.cifs_tcon*, %struct.cifsFileInfo*, %struct.fiemap_extent_info*, i32, i32)* %74, null
  br i1 %75, label %76, label %91

76:                                               ; preds = %69
  %77 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %13, align 8
  %78 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %77, i32 0, i32 0
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = load i32 (%struct.cifs_tcon*, %struct.cifsFileInfo*, %struct.fiemap_extent_info*, i32, i32)*, i32 (%struct.cifs_tcon*, %struct.cifsFileInfo*, %struct.fiemap_extent_info*, i32, i32)** %80, align 8
  %82 = load %struct.cifs_tcon*, %struct.cifs_tcon** %12, align 8
  %83 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %14, align 8
  %84 = load %struct.fiemap_extent_info*, %struct.fiemap_extent_info** %7, align 8
  %85 = load i32, i32* %8, align 4
  %86 = load i32, i32* %9, align 4
  %87 = call i32 %81(%struct.cifs_tcon* %82, %struct.cifsFileInfo* %83, %struct.fiemap_extent_info* %84, i32 %85, i32 %86)
  store i32 %87, i32* %15, align 4
  %88 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %14, align 8
  %89 = call i32 @cifsFileInfo_put(%struct.cifsFileInfo* %88)
  %90 = load i32, i32* %15, align 4
  store i32 %90, i32* %5, align 4
  br label %96

91:                                               ; preds = %69
  %92 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %14, align 8
  %93 = call i32 @cifsFileInfo_put(%struct.cifsFileInfo* %92)
  %94 = load i32, i32* @ENOTSUPP, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %5, align 4
  br label %96

96:                                               ; preds = %91, %76, %66, %53
  %97 = load i32, i32* %5, align 4
  ret i32 %97
}

declare dso_local %struct.cifsInodeInfo* @CIFS_I(%struct.inode*) #1

declare dso_local %struct.cifs_sb_info* @CIFS_SB(i32) #1

declare dso_local %struct.cifs_tcon* @cifs_sb_master_tcon(%struct.cifs_sb_info*) #1

declare dso_local i32 @CIFS_CACHE_READ(%struct.cifsInodeInfo*) #1

declare dso_local i32 @filemap_fdatawait(%struct.TYPE_9__*) #1

declare dso_local i32 @mapping_set_error(%struct.TYPE_9__*, i32) #1

declare dso_local %struct.cifsFileInfo* @find_readable_file(%struct.cifsInodeInfo*, i32) #1

declare dso_local i32 @cifsFileInfo_put(%struct.cifsFileInfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
