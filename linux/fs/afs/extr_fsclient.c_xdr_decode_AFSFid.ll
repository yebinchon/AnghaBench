; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_fsclient.c_xdr_decode_AFSFid.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_fsclient.c_xdr_decode_AFSFid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_fid = type { i8*, i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32**, %struct.afs_fid*)* @xdr_decode_AFSFid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xdr_decode_AFSFid(i32** %0, %struct.afs_fid* %1) #0 {
  %3 = alloca i32**, align 8
  %4 = alloca %struct.afs_fid*, align 8
  %5 = alloca i32*, align 8
  store i32** %0, i32*** %3, align 8
  store %struct.afs_fid* %1, %struct.afs_fid** %4, align 8
  %6 = load i32**, i32*** %3, align 8
  %7 = load i32*, i32** %6, align 8
  store i32* %7, i32** %5, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = getelementptr inbounds i32, i32* %8, i32 1
  store i32* %9, i32** %5, align 8
  %10 = load i32, i32* %8, align 4
  %11 = call i8* @ntohl(i32 %10)
  %12 = load %struct.afs_fid*, %struct.afs_fid** %4, align 8
  %13 = getelementptr inbounds %struct.afs_fid, %struct.afs_fid* %12, i32 0, i32 2
  store i8* %11, i8** %13, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = getelementptr inbounds i32, i32* %14, i32 1
  store i32* %15, i32** %5, align 8
  %16 = load i32, i32* %14, align 4
  %17 = call i8* @ntohl(i32 %16)
  %18 = load %struct.afs_fid*, %struct.afs_fid** %4, align 8
  %19 = getelementptr inbounds %struct.afs_fid, %struct.afs_fid* %18, i32 0, i32 1
  store i8* %17, i8** %19, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = getelementptr inbounds i32, i32* %20, i32 1
  store i32* %21, i32** %5, align 8
  %22 = load i32, i32* %20, align 4
  %23 = call i8* @ntohl(i32 %22)
  %24 = load %struct.afs_fid*, %struct.afs_fid** %4, align 8
  %25 = getelementptr inbounds %struct.afs_fid, %struct.afs_fid* %24, i32 0, i32 0
  store i8* %23, i8** %25, align 8
  %26 = load i32*, i32** %5, align 8
  %27 = load i32**, i32*** %3, align 8
  store i32* %26, i32** %27, align 8
  ret void
}

declare dso_local i8* @ntohl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
