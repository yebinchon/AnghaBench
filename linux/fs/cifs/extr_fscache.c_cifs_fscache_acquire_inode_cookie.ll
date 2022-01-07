; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_fscache.c_cifs_fscache_acquire_inode_cookie.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_fscache.c_cifs_fscache_acquire_inode_cookie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifsInodeInfo = type { %struct.TYPE_6__, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.cifs_tcon = type { i32 }
%struct.cifs_fscache_inode_auxdata = type { i32, i32, i32, i32, i32 }

@cifs_fscache_inode_object_def = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cifsInodeInfo*, %struct.cifs_tcon*)* @cifs_fscache_acquire_inode_cookie to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cifs_fscache_acquire_inode_cookie(%struct.cifsInodeInfo* %0, %struct.cifs_tcon* %1) #0 {
  %3 = alloca %struct.cifsInodeInfo*, align 8
  %4 = alloca %struct.cifs_tcon*, align 8
  %5 = alloca %struct.cifs_fscache_inode_auxdata, align 4
  store %struct.cifsInodeInfo* %0, %struct.cifsInodeInfo** %3, align 8
  store %struct.cifs_tcon* %1, %struct.cifs_tcon** %4, align 8
  %6 = call i32 @memset(%struct.cifs_fscache_inode_auxdata* %5, i32 0, i32 20)
  %7 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %3, align 8
  %8 = getelementptr inbounds %struct.cifsInodeInfo, %struct.cifsInodeInfo* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 4
  %10 = getelementptr inbounds %struct.cifs_fscache_inode_auxdata, %struct.cifs_fscache_inode_auxdata* %5, i32 0, i32 4
  store i32 %9, i32* %10, align 4
  %11 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %3, align 8
  %12 = getelementptr inbounds %struct.cifsInodeInfo, %struct.cifsInodeInfo* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = getelementptr inbounds %struct.cifs_fscache_inode_auxdata, %struct.cifs_fscache_inode_auxdata* %5, i32 0, i32 3
  store i32 %15, i32* %16, align 4
  %17 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %3, align 8
  %18 = getelementptr inbounds %struct.cifsInodeInfo, %struct.cifsInodeInfo* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds %struct.cifs_fscache_inode_auxdata, %struct.cifs_fscache_inode_auxdata* %5, i32 0, i32 2
  store i32 %21, i32* %22, align 4
  %23 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %3, align 8
  %24 = getelementptr inbounds %struct.cifsInodeInfo, %struct.cifsInodeInfo* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.cifs_fscache_inode_auxdata, %struct.cifs_fscache_inode_auxdata* %5, i32 0, i32 1
  store i32 %27, i32* %28, align 4
  %29 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %3, align 8
  %30 = getelementptr inbounds %struct.cifsInodeInfo, %struct.cifsInodeInfo* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds %struct.cifs_fscache_inode_auxdata, %struct.cifs_fscache_inode_auxdata* %5, i32 0, i32 0
  store i32 %33, i32* %34, align 4
  %35 = load %struct.cifs_tcon*, %struct.cifs_tcon** %4, align 8
  %36 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %3, align 8
  %39 = getelementptr inbounds %struct.cifsInodeInfo, %struct.cifsInodeInfo* %38, i32 0, i32 1
  %40 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %3, align 8
  %41 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %3, align 8
  %42 = getelementptr inbounds %struct.cifsInodeInfo, %struct.cifsInodeInfo* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @fscache_acquire_cookie(i32 %37, i32* @cifs_fscache_inode_object_def, i32* %39, i32 4, %struct.cifs_fscache_inode_auxdata* %5, i32 20, %struct.cifsInodeInfo* %40, i32 %44, i32 1)
  %46 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %3, align 8
  %47 = getelementptr inbounds %struct.cifsInodeInfo, %struct.cifsInodeInfo* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 4
  ret void
}

declare dso_local i32 @memset(%struct.cifs_fscache_inode_auxdata*, i32, i32) #1

declare dso_local i32 @fscache_acquire_cookie(i32, i32*, i32*, i32, %struct.cifs_fscache_inode_auxdata*, i32, %struct.cifsInodeInfo*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
