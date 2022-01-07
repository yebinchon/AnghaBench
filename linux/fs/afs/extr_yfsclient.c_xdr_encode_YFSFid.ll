; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_yfsclient.c_xdr_encode_YFSFid.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_yfsclient.c_xdr_encode_YFSFid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_fid = type { i32, i32, i32, i32 }
%struct.yfs_xdr_YFSFid = type { %struct.TYPE_2__, i8* }
%struct.TYPE_2__ = type { i8*, i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, %struct.afs_fid*)* @xdr_encode_YFSFid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @xdr_encode_YFSFid(i32* %0, %struct.afs_fid* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.afs_fid*, align 8
  %5 = alloca %struct.yfs_xdr_YFSFid*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.afs_fid* %1, %struct.afs_fid** %4, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = bitcast i32* %6 to i8*
  %8 = bitcast i8* %7 to %struct.yfs_xdr_YFSFid*
  store %struct.yfs_xdr_YFSFid* %8, %struct.yfs_xdr_YFSFid** %5, align 8
  %9 = load %struct.afs_fid*, %struct.afs_fid** %4, align 8
  %10 = getelementptr inbounds %struct.afs_fid, %struct.afs_fid* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = call i8* @u64_to_xdr(i32 %11)
  %13 = load %struct.yfs_xdr_YFSFid*, %struct.yfs_xdr_YFSFid** %5, align 8
  %14 = getelementptr inbounds %struct.yfs_xdr_YFSFid, %struct.yfs_xdr_YFSFid* %13, i32 0, i32 1
  store i8* %12, i8** %14, align 8
  %15 = load %struct.afs_fid*, %struct.afs_fid** %4, align 8
  %16 = getelementptr inbounds %struct.afs_fid, %struct.afs_fid* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i8* @u64_to_xdr(i32 %17)
  %19 = load %struct.yfs_xdr_YFSFid*, %struct.yfs_xdr_YFSFid** %5, align 8
  %20 = getelementptr inbounds %struct.yfs_xdr_YFSFid, %struct.yfs_xdr_YFSFid* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 2
  store i8* %18, i8** %21, align 8
  %22 = load %struct.afs_fid*, %struct.afs_fid** %4, align 8
  %23 = getelementptr inbounds %struct.afs_fid, %struct.afs_fid* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i8* @htonl(i32 %24)
  %26 = load %struct.yfs_xdr_YFSFid*, %struct.yfs_xdr_YFSFid** %5, align 8
  %27 = getelementptr inbounds %struct.yfs_xdr_YFSFid, %struct.yfs_xdr_YFSFid* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  store i8* %25, i8** %28, align 8
  %29 = load %struct.afs_fid*, %struct.afs_fid** %4, align 8
  %30 = getelementptr inbounds %struct.afs_fid, %struct.afs_fid* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i8* @htonl(i32 %31)
  %33 = load %struct.yfs_xdr_YFSFid*, %struct.yfs_xdr_YFSFid** %5, align 8
  %34 = getelementptr inbounds %struct.yfs_xdr_YFSFid, %struct.yfs_xdr_YFSFid* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  store i8* %32, i8** %35, align 8
  %36 = load i32*, i32** %3, align 8
  %37 = load %struct.yfs_xdr_YFSFid*, %struct.yfs_xdr_YFSFid** %5, align 8
  %38 = call i32 @xdr_size(%struct.yfs_xdr_YFSFid* %37)
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %36, i64 %39
  ret i32* %40
}

declare dso_local i8* @u64_to_xdr(i32) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i32 @xdr_size(%struct.yfs_xdr_YFSFid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
