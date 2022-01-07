; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_yfsclient.c_xdr_decode_YFSCallBack.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_yfsclient.c_xdr_decode_YFSCallBack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_call = type { i32 }
%struct.afs_status_cb = type { i32, %struct.afs_callback }
%struct.afs_callback = type { i32 }
%struct.yfs_xdr_YFSCallBack = type { i32 }

@NSEC_PER_SEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32**, %struct.afs_call*, %struct.afs_status_cb*)* @xdr_decode_YFSCallBack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xdr_decode_YFSCallBack(i32** %0, %struct.afs_call* %1, %struct.afs_status_cb* %2) #0 {
  %4 = alloca i32**, align 8
  %5 = alloca %struct.afs_call*, align 8
  %6 = alloca %struct.afs_status_cb*, align 8
  %7 = alloca %struct.yfs_xdr_YFSCallBack*, align 8
  %8 = alloca %struct.afs_callback*, align 8
  %9 = alloca i32, align 4
  store i32** %0, i32*** %4, align 8
  store %struct.afs_call* %1, %struct.afs_call** %5, align 8
  store %struct.afs_status_cb* %2, %struct.afs_status_cb** %6, align 8
  %10 = load i32**, i32*** %4, align 8
  %11 = load i32*, i32** %10, align 8
  %12 = bitcast i32* %11 to i8*
  %13 = bitcast i8* %12 to %struct.yfs_xdr_YFSCallBack*
  store %struct.yfs_xdr_YFSCallBack* %13, %struct.yfs_xdr_YFSCallBack** %7, align 8
  %14 = load %struct.afs_status_cb*, %struct.afs_status_cb** %6, align 8
  %15 = getelementptr inbounds %struct.afs_status_cb, %struct.afs_status_cb* %14, i32 0, i32 1
  store %struct.afs_callback* %15, %struct.afs_callback** %8, align 8
  %16 = load %struct.afs_call*, %struct.afs_call** %5, align 8
  %17 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = load %struct.yfs_xdr_YFSCallBack*, %struct.yfs_xdr_YFSCallBack** %7, align 8
  %21 = getelementptr inbounds %struct.yfs_xdr_YFSCallBack, %struct.yfs_xdr_YFSCallBack* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @xdr_to_u64(i32 %22)
  %24 = mul nsw i32 %23, 100
  %25 = call i32 @ktime_add(i32 %19, i32 %24)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* @NSEC_PER_SEC, align 4
  %28 = call i32 @ktime_divns(i32 %26, i32 %27)
  %29 = load %struct.afs_callback*, %struct.afs_callback** %8, align 8
  %30 = getelementptr inbounds %struct.afs_callback, %struct.afs_callback* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load %struct.afs_status_cb*, %struct.afs_status_cb** %6, align 8
  %32 = getelementptr inbounds %struct.afs_status_cb, %struct.afs_status_cb* %31, i32 0, i32 0
  store i32 1, i32* %32, align 4
  %33 = load %struct.yfs_xdr_YFSCallBack*, %struct.yfs_xdr_YFSCallBack** %7, align 8
  %34 = call i32 @xdr_size(%struct.yfs_xdr_YFSCallBack* %33)
  %35 = load i32**, i32*** %4, align 8
  %36 = load i32*, i32** %35, align 8
  %37 = sext i32 %34 to i64
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  store i32* %38, i32** %35, align 8
  ret void
}

declare dso_local i32 @ktime_add(i32, i32) #1

declare dso_local i32 @xdr_to_u64(i32) #1

declare dso_local i32 @ktime_divns(i32, i32) #1

declare dso_local i32 @xdr_size(%struct.yfs_xdr_YFSCallBack*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
