; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_smb2ops.c_smb2_set_fid.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_smb2ops.c_smb2_set_fid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifsFileInfo = type { %struct.TYPE_7__, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }
%struct.cifs_fid = type { i32, i32, i32, i32, i32, i32 }
%struct.cifsInodeInfo = type { i32 }
%struct.TCP_Server_Info = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.cifsInodeInfo*, i32, i32, i32*)* }
%struct.TYPE_8__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TCP_Server_Info* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cifsFileInfo*, %struct.cifs_fid*, i32)* @smb2_set_fid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smb2_set_fid(%struct.cifsFileInfo* %0, %struct.cifs_fid* %1, i32 %2) #0 {
  %4 = alloca %struct.cifsFileInfo*, align 8
  %5 = alloca %struct.cifs_fid*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.cifsInodeInfo*, align 8
  %8 = alloca %struct.TCP_Server_Info*, align 8
  store %struct.cifsFileInfo* %0, %struct.cifsFileInfo** %4, align 8
  store %struct.cifs_fid* %1, %struct.cifs_fid** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %4, align 8
  %10 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @d_inode(i32 %11)
  %13 = call %struct.cifsInodeInfo* @CIFS_I(i32 %12)
  store %struct.cifsInodeInfo* %13, %struct.cifsInodeInfo** %7, align 8
  %14 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %4, align 8
  %15 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.TYPE_8__* @tlink_tcon(i32 %16)
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %20, align 8
  store %struct.TCP_Server_Info* %21, %struct.TCP_Server_Info** %8, align 8
  %22 = load %struct.cifs_fid*, %struct.cifs_fid** %5, align 8
  %23 = getelementptr inbounds %struct.cifs_fid, %struct.cifs_fid* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %4, align 8
  %26 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 3
  store i32 %24, i32* %27, align 4
  %28 = load %struct.cifs_fid*, %struct.cifs_fid** %5, align 8
  %29 = getelementptr inbounds %struct.cifs_fid, %struct.cifs_fid* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %4, align 8
  %32 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 2
  store i32 %30, i32* %33, align 4
  %34 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %8, align 8
  %35 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %34, i32 0, i32 0
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32 (%struct.cifsInodeInfo*, i32, i32, i32*)*, i32 (%struct.cifsInodeInfo*, i32, i32, i32*)** %37, align 8
  %39 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %7, align 8
  %40 = load i32, i32* %6, align 4
  %41 = load %struct.cifs_fid*, %struct.cifs_fid** %5, align 8
  %42 = getelementptr inbounds %struct.cifs_fid, %struct.cifs_fid* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.cifs_fid*, %struct.cifs_fid** %5, align 8
  %45 = getelementptr inbounds %struct.cifs_fid, %struct.cifs_fid* %44, i32 0, i32 1
  %46 = call i32 %38(%struct.cifsInodeInfo* %39, i32 %40, i32 %43, i32* %45)
  %47 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %7, align 8
  %48 = call i32 @CIFS_CACHE_WRITE(%struct.cifsInodeInfo* %47)
  %49 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %7, align 8
  %50 = getelementptr inbounds %struct.cifsInodeInfo, %struct.cifsInodeInfo* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  %51 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %4, align 8
  %52 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.cifs_fid*, %struct.cifs_fid** %5, align 8
  %56 = getelementptr inbounds %struct.cifs_fid, %struct.cifs_fid* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @memcpy(i32 %54, i32 %57, i32 16)
  ret void
}

declare dso_local %struct.cifsInodeInfo* @CIFS_I(i32) #1

declare dso_local i32 @d_inode(i32) #1

declare dso_local %struct.TYPE_8__* @tlink_tcon(i32) #1

declare dso_local i32 @CIFS_CACHE_WRITE(%struct.cifsInodeInfo*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
