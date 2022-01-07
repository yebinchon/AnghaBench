; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_yfsclient.c_xdr_encode_YFSStoreStatus_mode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_yfsclient.c_xdr_encode_YFSStoreStatus_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.yfs_xdr_YFSStoreStatus = type { i8*, i8*, i8*, i8*, i8* }

@AFS_SET_MODE = common dso_local global i32 0, align 4
@S_IALLUGO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32)* @xdr_encode_YFSStoreStatus_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @xdr_encode_YFSStoreStatus_mode(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.yfs_xdr_YFSStoreStatus*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32*, i32** %3, align 8
  %7 = bitcast i32* %6 to i8*
  %8 = bitcast i8* %7 to %struct.yfs_xdr_YFSStoreStatus*
  store %struct.yfs_xdr_YFSStoreStatus* %8, %struct.yfs_xdr_YFSStoreStatus** %5, align 8
  %9 = load i32, i32* @AFS_SET_MODE, align 4
  %10 = call i8* @htonl(i32 %9)
  %11 = load %struct.yfs_xdr_YFSStoreStatus*, %struct.yfs_xdr_YFSStoreStatus** %5, align 8
  %12 = getelementptr inbounds %struct.yfs_xdr_YFSStoreStatus, %struct.yfs_xdr_YFSStoreStatus* %11, i32 0, i32 4
  store i8* %10, i8** %12, align 8
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @S_IALLUGO, align 4
  %15 = and i32 %13, %14
  %16 = call i8* @htonl(i32 %15)
  %17 = load %struct.yfs_xdr_YFSStoreStatus*, %struct.yfs_xdr_YFSStoreStatus** %5, align 8
  %18 = getelementptr inbounds %struct.yfs_xdr_YFSStoreStatus, %struct.yfs_xdr_YFSStoreStatus* %17, i32 0, i32 3
  store i8* %16, i8** %18, align 8
  %19 = call i8* @u64_to_xdr(i32 0)
  %20 = load %struct.yfs_xdr_YFSStoreStatus*, %struct.yfs_xdr_YFSStoreStatus** %5, align 8
  %21 = getelementptr inbounds %struct.yfs_xdr_YFSStoreStatus, %struct.yfs_xdr_YFSStoreStatus* %20, i32 0, i32 2
  store i8* %19, i8** %21, align 8
  %22 = call i8* @u64_to_xdr(i32 0)
  %23 = load %struct.yfs_xdr_YFSStoreStatus*, %struct.yfs_xdr_YFSStoreStatus** %5, align 8
  %24 = getelementptr inbounds %struct.yfs_xdr_YFSStoreStatus, %struct.yfs_xdr_YFSStoreStatus* %23, i32 0, i32 1
  store i8* %22, i8** %24, align 8
  %25 = call i8* @u64_to_xdr(i32 0)
  %26 = load %struct.yfs_xdr_YFSStoreStatus*, %struct.yfs_xdr_YFSStoreStatus** %5, align 8
  %27 = getelementptr inbounds %struct.yfs_xdr_YFSStoreStatus, %struct.yfs_xdr_YFSStoreStatus* %26, i32 0, i32 0
  store i8* %25, i8** %27, align 8
  %28 = load i32*, i32** %3, align 8
  %29 = load %struct.yfs_xdr_YFSStoreStatus*, %struct.yfs_xdr_YFSStoreStatus** %5, align 8
  %30 = call i32 @xdr_size(%struct.yfs_xdr_YFSStoreStatus* %29)
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %28, i64 %31
  ret i32* %32
}

declare dso_local i8* @htonl(i32) #1

declare dso_local i8* @u64_to_xdr(i32) #1

declare dso_local i32 @xdr_size(%struct.yfs_xdr_YFSStoreStatus*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
