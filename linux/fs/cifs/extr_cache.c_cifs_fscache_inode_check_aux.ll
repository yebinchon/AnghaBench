; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_cache.c_cifs_fscache_inode_check_aux.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_cache.c_cifs_fscache_inode_check_aux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_fscache_inode_auxdata = type { i32, i32, i32, i32, i32 }
%struct.cifsInodeInfo = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@FSCACHE_CHECKAUX_OBSOLETE = common dso_local global i32 0, align 4
@FSCACHE_CHECKAUX_OKAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, i32)* @cifs_fscache_inode_check_aux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cifs_fscache_inode_check_aux(i8* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.cifs_fscache_inode_auxdata, align 4
  %11 = alloca %struct.cifsInodeInfo*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.cifsInodeInfo*
  store %struct.cifsInodeInfo* %13, %struct.cifsInodeInfo** %11, align 8
  %14 = load i32, i32* %8, align 4
  %15 = sext i32 %14 to i64
  %16 = icmp ne i64 %15, 20
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = load i32, i32* @FSCACHE_CHECKAUX_OBSOLETE, align 4
  store i32 %18, i32* %5, align 4
  br label %57

19:                                               ; preds = %4
  %20 = call i32 @memset(%struct.cifs_fscache_inode_auxdata* %10, i32 0, i32 20)
  %21 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %11, align 8
  %22 = getelementptr inbounds %struct.cifsInodeInfo, %struct.cifsInodeInfo* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds %struct.cifs_fscache_inode_auxdata, %struct.cifs_fscache_inode_auxdata* %10, i32 0, i32 4
  store i32 %23, i32* %24, align 4
  %25 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %11, align 8
  %26 = getelementptr inbounds %struct.cifsInodeInfo, %struct.cifsInodeInfo* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds %struct.cifs_fscache_inode_auxdata, %struct.cifs_fscache_inode_auxdata* %10, i32 0, i32 3
  store i32 %29, i32* %30, align 4
  %31 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %11, align 8
  %32 = getelementptr inbounds %struct.cifsInodeInfo, %struct.cifsInodeInfo* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds %struct.cifs_fscache_inode_auxdata, %struct.cifs_fscache_inode_auxdata* %10, i32 0, i32 2
  store i32 %35, i32* %36, align 4
  %37 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %11, align 8
  %38 = getelementptr inbounds %struct.cifsInodeInfo, %struct.cifsInodeInfo* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds %struct.cifs_fscache_inode_auxdata, %struct.cifs_fscache_inode_auxdata* %10, i32 0, i32 1
  store i32 %41, i32* %42, align 4
  %43 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %11, align 8
  %44 = getelementptr inbounds %struct.cifsInodeInfo, %struct.cifsInodeInfo* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = getelementptr inbounds %struct.cifs_fscache_inode_auxdata, %struct.cifs_fscache_inode_auxdata* %10, i32 0, i32 0
  store i32 %47, i32* %48, align 4
  %49 = load i8*, i8** %7, align 8
  %50 = load i32, i32* %8, align 4
  %51 = call i64 @memcmp(i8* %49, %struct.cifs_fscache_inode_auxdata* %10, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %19
  %54 = load i32, i32* @FSCACHE_CHECKAUX_OBSOLETE, align 4
  store i32 %54, i32* %5, align 4
  br label %57

55:                                               ; preds = %19
  %56 = load i32, i32* @FSCACHE_CHECKAUX_OKAY, align 4
  store i32 %56, i32* %5, align 4
  br label %57

57:                                               ; preds = %55, %53, %17
  %58 = load i32, i32* %5, align 4
  ret i32 %58
}

declare dso_local i32 @memset(%struct.cifs_fscache_inode_auxdata*, i32, i32) #1

declare dso_local i64 @memcmp(i8*, %struct.cifs_fscache_inode_auxdata*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
