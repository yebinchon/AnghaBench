; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_inode.c_cifs_get_file_info_unix.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_inode.c_cifs_get_file_info_unix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.cifsFileInfo* }
%struct.cifsFileInfo = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.cifs_fattr = type { i32 }
%struct.inode = type { i32 }
%struct.cifs_sb_info = type { i32 }
%struct.cifs_tcon = type { i32 }

@EREMOTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @cifs_get_file_info_unix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cifs_get_file_info_unix(%struct.file* %0) #0 {
  %2 = alloca %struct.file*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.cifs_fattr, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.cifs_sb_info*, align 8
  %9 = alloca %struct.cifsFileInfo*, align 8
  %10 = alloca %struct.cifs_tcon*, align 8
  store %struct.file* %0, %struct.file** %2, align 8
  %11 = load %struct.file*, %struct.file** %2, align 8
  %12 = call %struct.inode* @file_inode(%struct.file* %11)
  store %struct.inode* %12, %struct.inode** %7, align 8
  %13 = load %struct.inode*, %struct.inode** %7, align 8
  %14 = getelementptr inbounds %struct.inode, %struct.inode* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.cifs_sb_info* @CIFS_SB(i32 %15)
  store %struct.cifs_sb_info* %16, %struct.cifs_sb_info** %8, align 8
  %17 = load %struct.file*, %struct.file** %2, align 8
  %18 = getelementptr inbounds %struct.file, %struct.file* %17, i32 0, i32 0
  %19 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %18, align 8
  store %struct.cifsFileInfo* %19, %struct.cifsFileInfo** %9, align 8
  %20 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %9, align 8
  %21 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.cifs_tcon* @tlink_tcon(i32 %22)
  store %struct.cifs_tcon* %23, %struct.cifs_tcon** %10, align 8
  %24 = call i32 (...) @get_xid()
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = load %struct.cifs_tcon*, %struct.cifs_tcon** %10, align 8
  %27 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %9, align 8
  %28 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @CIFSSMBUnixQFileInfo(i32 %25, %struct.cifs_tcon* %26, i32 %30, i32* %5)
  store i32 %31, i32* %3, align 4
  %32 = load i32, i32* %3, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %1
  %35 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %8, align 8
  %36 = call i32 @cifs_unix_basic_to_fattr(%struct.cifs_fattr* %6, i32* %5, %struct.cifs_sb_info* %35)
  br label %48

37:                                               ; preds = %1
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* @EREMOTE, align 4
  %40 = sub nsw i32 0, %39
  %41 = icmp eq i32 %38, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = load %struct.inode*, %struct.inode** %7, align 8
  %44 = getelementptr inbounds %struct.inode, %struct.inode* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @cifs_create_dfs_fattr(%struct.cifs_fattr* %6, i32 %45)
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %42, %37
  br label %48

48:                                               ; preds = %47, %34
  %49 = load %struct.inode*, %struct.inode** %7, align 8
  %50 = call i32 @cifs_fattr_to_inode(%struct.inode* %49, %struct.cifs_fattr* %6)
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @free_xid(i32 %51)
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local %struct.inode* @file_inode(%struct.file*) #1

declare dso_local %struct.cifs_sb_info* @CIFS_SB(i32) #1

declare dso_local %struct.cifs_tcon* @tlink_tcon(i32) #1

declare dso_local i32 @get_xid(...) #1

declare dso_local i32 @CIFSSMBUnixQFileInfo(i32, %struct.cifs_tcon*, i32, i32*) #1

declare dso_local i32 @cifs_unix_basic_to_fattr(%struct.cifs_fattr*, i32*, %struct.cifs_sb_info*) #1

declare dso_local i32 @cifs_create_dfs_fattr(%struct.cifs_fattr*, i32) #1

declare dso_local i32 @cifs_fattr_to_inode(%struct.inode*, %struct.cifs_fattr*) #1

declare dso_local i32 @free_xid(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
