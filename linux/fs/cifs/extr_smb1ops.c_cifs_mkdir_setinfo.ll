; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_smb1ops.c_cifs_mkdir_setinfo.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_smb1ops.c_cifs_mkdir_setinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.cifs_sb_info = type { i32 }
%struct.cifs_tcon = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.cifsInodeInfo = type { i32 }

@ATTR_READONLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*, i8*, %struct.cifs_sb_info*, %struct.cifs_tcon*, i32)* @cifs_mkdir_setinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cifs_mkdir_setinfo(%struct.inode* %0, i8* %1, %struct.cifs_sb_info* %2, %struct.cifs_tcon* %3, i32 %4) #0 {
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.cifs_sb_info*, align 8
  %9 = alloca %struct.cifs_tcon*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_4__, align 4
  %12 = alloca %struct.cifsInodeInfo*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.cifs_sb_info* %2, %struct.cifs_sb_info** %8, align 8
  store %struct.cifs_tcon* %3, %struct.cifs_tcon** %9, align 8
  store i32 %4, i32* %10, align 4
  %15 = call i32 @memset(%struct.TYPE_4__* %11, i32 0, i32 4)
  %16 = load %struct.inode*, %struct.inode** %6, align 8
  %17 = call %struct.cifsInodeInfo* @CIFS_I(%struct.inode* %16)
  store %struct.cifsInodeInfo* %17, %struct.cifsInodeInfo** %12, align 8
  %18 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %12, align 8
  %19 = getelementptr inbounds %struct.cifsInodeInfo, %struct.cifsInodeInfo* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @ATTR_READONLY, align 4
  %22 = or i32 %20, %21
  store i32 %22, i32* %13, align 4
  %23 = load i32, i32* %13, align 4
  %24 = call i32 @cpu_to_le32(i32 %23)
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  store i32 %24, i32* %25, align 4
  %26 = load i32, i32* %10, align 4
  %27 = load %struct.cifs_tcon*, %struct.cifs_tcon** %9, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %8, align 8
  %30 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %8, align 8
  %33 = call i32 @cifs_remap(%struct.cifs_sb_info* %32)
  %34 = call i32 @CIFSSMBSetPathInfo(i32 %26, %struct.cifs_tcon* %27, i8* %28, %struct.TYPE_4__* %11, i32 %31, i32 %33)
  store i32 %34, i32* %14, align 4
  %35 = load i32, i32* %14, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %5
  %38 = load i32, i32* %13, align 4
  %39 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %12, align 8
  %40 = getelementptr inbounds %struct.cifsInodeInfo, %struct.cifsInodeInfo* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  br label %41

41:                                               ; preds = %37, %5
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local %struct.cifsInodeInfo* @CIFS_I(%struct.inode*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @CIFSSMBSetPathInfo(i32, %struct.cifs_tcon*, i8*, %struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @cifs_remap(%struct.cifs_sb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
