; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_yfsclient.c_xdr_decode_YFSFid.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_yfsclient.c_xdr_decode_YFSFid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_fid = type { i8*, i8*, i8*, i8* }
%struct.yfs_xdr_YFSFid = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32**, %struct.afs_fid*)* @xdr_decode_YFSFid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xdr_decode_YFSFid(i32** %0, %struct.afs_fid* %1) #0 {
  %3 = alloca i32**, align 8
  %4 = alloca %struct.afs_fid*, align 8
  %5 = alloca %struct.yfs_xdr_YFSFid*, align 8
  store i32** %0, i32*** %3, align 8
  store %struct.afs_fid* %1, %struct.afs_fid** %4, align 8
  %6 = load i32**, i32*** %3, align 8
  %7 = load i32*, i32** %6, align 8
  %8 = bitcast i32* %7 to i8*
  %9 = bitcast i8* %8 to %struct.yfs_xdr_YFSFid*
  store %struct.yfs_xdr_YFSFid* %9, %struct.yfs_xdr_YFSFid** %5, align 8
  %10 = load %struct.yfs_xdr_YFSFid*, %struct.yfs_xdr_YFSFid** %5, align 8
  %11 = getelementptr inbounds %struct.yfs_xdr_YFSFid, %struct.yfs_xdr_YFSFid* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i8* @xdr_to_u64(i32 %12)
  %14 = load %struct.afs_fid*, %struct.afs_fid** %4, align 8
  %15 = getelementptr inbounds %struct.afs_fid, %struct.afs_fid* %14, i32 0, i32 3
  store i8* %13, i8** %15, align 8
  %16 = load %struct.yfs_xdr_YFSFid*, %struct.yfs_xdr_YFSFid** %5, align 8
  %17 = getelementptr inbounds %struct.yfs_xdr_YFSFid, %struct.yfs_xdr_YFSFid* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i8* @xdr_to_u64(i32 %19)
  %21 = load %struct.afs_fid*, %struct.afs_fid** %4, align 8
  %22 = getelementptr inbounds %struct.afs_fid, %struct.afs_fid* %21, i32 0, i32 2
  store i8* %20, i8** %22, align 8
  %23 = load %struct.yfs_xdr_YFSFid*, %struct.yfs_xdr_YFSFid** %5, align 8
  %24 = getelementptr inbounds %struct.yfs_xdr_YFSFid, %struct.yfs_xdr_YFSFid* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i8* @ntohl(i32 %26)
  %28 = load %struct.afs_fid*, %struct.afs_fid** %4, align 8
  %29 = getelementptr inbounds %struct.afs_fid, %struct.afs_fid* %28, i32 0, i32 1
  store i8* %27, i8** %29, align 8
  %30 = load %struct.yfs_xdr_YFSFid*, %struct.yfs_xdr_YFSFid** %5, align 8
  %31 = getelementptr inbounds %struct.yfs_xdr_YFSFid, %struct.yfs_xdr_YFSFid* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i8* @ntohl(i32 %33)
  %35 = load %struct.afs_fid*, %struct.afs_fid** %4, align 8
  %36 = getelementptr inbounds %struct.afs_fid, %struct.afs_fid* %35, i32 0, i32 0
  store i8* %34, i8** %36, align 8
  %37 = load %struct.yfs_xdr_YFSFid*, %struct.yfs_xdr_YFSFid** %5, align 8
  %38 = call i32 @xdr_size(%struct.yfs_xdr_YFSFid* %37)
  %39 = load i32**, i32*** %3, align 8
  %40 = load i32*, i32** %39, align 8
  %41 = sext i32 %38 to i64
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  store i32* %42, i32** %39, align 8
  ret void
}

declare dso_local i8* @xdr_to_u64(i32) #1

declare dso_local i8* @ntohl(i32) #1

declare dso_local i32 @xdr_size(%struct.yfs_xdr_YFSFid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
