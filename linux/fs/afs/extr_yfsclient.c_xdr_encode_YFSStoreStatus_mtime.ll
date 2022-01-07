; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_yfsclient.c_xdr_encode_YFSStoreStatus_mtime.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_yfsclient.c_xdr_encode_YFSStoreStatus_mtime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec64 = type { i32 }
%struct.yfs_xdr_YFSStoreStatus = type { i8*, i8*, i8*, i8*, i8* }

@AFS_SET_MTIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, %struct.timespec64*)* @xdr_encode_YFSStoreStatus_mtime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @xdr_encode_YFSStoreStatus_mtime(i32* %0, %struct.timespec64* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.timespec64*, align 8
  %5 = alloca %struct.yfs_xdr_YFSStoreStatus*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.timespec64* %1, %struct.timespec64** %4, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = bitcast i32* %7 to i8*
  %9 = bitcast i8* %8 to %struct.yfs_xdr_YFSStoreStatus*
  store %struct.yfs_xdr_YFSStoreStatus* %9, %struct.yfs_xdr_YFSStoreStatus** %5, align 8
  %10 = load %struct.timespec64*, %struct.timespec64** %4, align 8
  %11 = call i32 @linux_to_yfs_time(%struct.timespec64* %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* @AFS_SET_MTIME, align 4
  %13 = call i8* @htonl(i32 %12)
  %14 = load %struct.yfs_xdr_YFSStoreStatus*, %struct.yfs_xdr_YFSStoreStatus** %5, align 8
  %15 = getelementptr inbounds %struct.yfs_xdr_YFSStoreStatus, %struct.yfs_xdr_YFSStoreStatus* %14, i32 0, i32 4
  store i8* %13, i8** %15, align 8
  %16 = call i8* @htonl(i32 0)
  %17 = load %struct.yfs_xdr_YFSStoreStatus*, %struct.yfs_xdr_YFSStoreStatus** %5, align 8
  %18 = getelementptr inbounds %struct.yfs_xdr_YFSStoreStatus, %struct.yfs_xdr_YFSStoreStatus* %17, i32 0, i32 3
  store i8* %16, i8** %18, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call i8* @u64_to_xdr(i32 %19)
  %21 = load %struct.yfs_xdr_YFSStoreStatus*, %struct.yfs_xdr_YFSStoreStatus** %5, align 8
  %22 = getelementptr inbounds %struct.yfs_xdr_YFSStoreStatus, %struct.yfs_xdr_YFSStoreStatus* %21, i32 0, i32 2
  store i8* %20, i8** %22, align 8
  %23 = call i8* @u64_to_xdr(i32 0)
  %24 = load %struct.yfs_xdr_YFSStoreStatus*, %struct.yfs_xdr_YFSStoreStatus** %5, align 8
  %25 = getelementptr inbounds %struct.yfs_xdr_YFSStoreStatus, %struct.yfs_xdr_YFSStoreStatus* %24, i32 0, i32 1
  store i8* %23, i8** %25, align 8
  %26 = call i8* @u64_to_xdr(i32 0)
  %27 = load %struct.yfs_xdr_YFSStoreStatus*, %struct.yfs_xdr_YFSStoreStatus** %5, align 8
  %28 = getelementptr inbounds %struct.yfs_xdr_YFSStoreStatus, %struct.yfs_xdr_YFSStoreStatus* %27, i32 0, i32 0
  store i8* %26, i8** %28, align 8
  %29 = load i32*, i32** %3, align 8
  %30 = load %struct.yfs_xdr_YFSStoreStatus*, %struct.yfs_xdr_YFSStoreStatus** %5, align 8
  %31 = call i32 @xdr_size(%struct.yfs_xdr_YFSStoreStatus* %30)
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %29, i64 %32
  ret i32* %33
}

declare dso_local i32 @linux_to_yfs_time(%struct.timespec64*) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i8* @u64_to_xdr(i32) #1

declare dso_local i32 @xdr_size(%struct.yfs_xdr_YFSStoreStatus*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
