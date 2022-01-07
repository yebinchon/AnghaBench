; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_yfsclient.c_xdr_encode_YFS_StoreStatus.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_yfsclient.c_xdr_encode_YFS_StoreStatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iattr = type { i32, i32, i32, i32, i32 }
%struct.yfs_xdr_YFSStoreStatus = type { i8*, i8*, i8*, i8*, i8* }

@ATTR_MTIME = common dso_local global i32 0, align 4
@AFS_SET_MTIME = common dso_local global i32 0, align 4
@ATTR_UID = common dso_local global i32 0, align 4
@AFS_SET_OWNER = common dso_local global i32 0, align 4
@init_user_ns = common dso_local global i32 0, align 4
@ATTR_GID = common dso_local global i32 0, align 4
@AFS_SET_GROUP = common dso_local global i32 0, align 4
@ATTR_MODE = common dso_local global i32 0, align 4
@AFS_SET_MODE = common dso_local global i32 0, align 4
@S_IALLUGO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, %struct.iattr*)* @xdr_encode_YFS_StoreStatus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @xdr_encode_YFS_StoreStatus(i32* %0, %struct.iattr* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.iattr*, align 8
  %5 = alloca %struct.yfs_xdr_YFSStoreStatus*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.iattr* %1, %struct.iattr** %4, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = bitcast i32* %11 to i8*
  %13 = bitcast i8* %12 to %struct.yfs_xdr_YFSStoreStatus*
  store %struct.yfs_xdr_YFSStoreStatus* %13, %struct.yfs_xdr_YFSStoreStatus** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  %14 = load %struct.iattr*, %struct.iattr** %4, align 8
  %15 = getelementptr inbounds %struct.iattr, %struct.iattr* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @ATTR_MTIME, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %2
  %21 = load i32, i32* @AFS_SET_MTIME, align 4
  %22 = load i32, i32* %9, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %9, align 4
  %24 = load %struct.iattr*, %struct.iattr** %4, align 8
  %25 = getelementptr inbounds %struct.iattr, %struct.iattr* %24, i32 0, i32 4
  %26 = call i32 @linux_to_yfs_time(i32* %25)
  store i32 %26, i32* %6, align 4
  br label %27

27:                                               ; preds = %20, %2
  %28 = load %struct.iattr*, %struct.iattr** %4, align 8
  %29 = getelementptr inbounds %struct.iattr, %struct.iattr* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @ATTR_UID, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %27
  %35 = load i32, i32* @AFS_SET_OWNER, align 4
  %36 = load i32, i32* %9, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %9, align 4
  %38 = load %struct.iattr*, %struct.iattr** %4, align 8
  %39 = getelementptr inbounds %struct.iattr, %struct.iattr* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @from_kuid(i32* @init_user_ns, i32 %40)
  store i32 %41, i32* %7, align 4
  br label %42

42:                                               ; preds = %34, %27
  %43 = load %struct.iattr*, %struct.iattr** %4, align 8
  %44 = getelementptr inbounds %struct.iattr, %struct.iattr* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @ATTR_GID, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %42
  %50 = load i32, i32* @AFS_SET_GROUP, align 4
  %51 = load i32, i32* %9, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %9, align 4
  %53 = load %struct.iattr*, %struct.iattr** %4, align 8
  %54 = getelementptr inbounds %struct.iattr, %struct.iattr* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @from_kgid(i32* @init_user_ns, i32 %55)
  store i32 %56, i32* %8, align 4
  br label %57

57:                                               ; preds = %49, %42
  %58 = load %struct.iattr*, %struct.iattr** %4, align 8
  %59 = getelementptr inbounds %struct.iattr, %struct.iattr* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @ATTR_MODE, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %57
  %65 = load i32, i32* @AFS_SET_MODE, align 4
  %66 = load i32, i32* %9, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %9, align 4
  %68 = load %struct.iattr*, %struct.iattr** %4, align 8
  %69 = getelementptr inbounds %struct.iattr, %struct.iattr* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @S_IALLUGO, align 4
  %72 = and i32 %70, %71
  store i32 %72, i32* %10, align 4
  br label %73

73:                                               ; preds = %64, %57
  %74 = load i32, i32* %9, align 4
  %75 = call i8* @htonl(i32 %74)
  %76 = load %struct.yfs_xdr_YFSStoreStatus*, %struct.yfs_xdr_YFSStoreStatus** %5, align 8
  %77 = getelementptr inbounds %struct.yfs_xdr_YFSStoreStatus, %struct.yfs_xdr_YFSStoreStatus* %76, i32 0, i32 4
  store i8* %75, i8** %77, align 8
  %78 = load i32, i32* %10, align 4
  %79 = call i8* @htonl(i32 %78)
  %80 = load %struct.yfs_xdr_YFSStoreStatus*, %struct.yfs_xdr_YFSStoreStatus** %5, align 8
  %81 = getelementptr inbounds %struct.yfs_xdr_YFSStoreStatus, %struct.yfs_xdr_YFSStoreStatus* %80, i32 0, i32 3
  store i8* %79, i8** %81, align 8
  %82 = load i32, i32* %6, align 4
  %83 = call i8* @u64_to_xdr(i32 %82)
  %84 = load %struct.yfs_xdr_YFSStoreStatus*, %struct.yfs_xdr_YFSStoreStatus** %5, align 8
  %85 = getelementptr inbounds %struct.yfs_xdr_YFSStoreStatus, %struct.yfs_xdr_YFSStoreStatus* %84, i32 0, i32 2
  store i8* %83, i8** %85, align 8
  %86 = load i32, i32* %7, align 4
  %87 = call i8* @u64_to_xdr(i32 %86)
  %88 = load %struct.yfs_xdr_YFSStoreStatus*, %struct.yfs_xdr_YFSStoreStatus** %5, align 8
  %89 = getelementptr inbounds %struct.yfs_xdr_YFSStoreStatus, %struct.yfs_xdr_YFSStoreStatus* %88, i32 0, i32 1
  store i8* %87, i8** %89, align 8
  %90 = load i32, i32* %8, align 4
  %91 = call i8* @u64_to_xdr(i32 %90)
  %92 = load %struct.yfs_xdr_YFSStoreStatus*, %struct.yfs_xdr_YFSStoreStatus** %5, align 8
  %93 = getelementptr inbounds %struct.yfs_xdr_YFSStoreStatus, %struct.yfs_xdr_YFSStoreStatus* %92, i32 0, i32 0
  store i8* %91, i8** %93, align 8
  %94 = load i32*, i32** %3, align 8
  %95 = load %struct.yfs_xdr_YFSStoreStatus*, %struct.yfs_xdr_YFSStoreStatus** %5, align 8
  %96 = call i32 @xdr_size(%struct.yfs_xdr_YFSStoreStatus* %95)
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %94, i64 %97
  ret i32* %98
}

declare dso_local i32 @linux_to_yfs_time(i32*) #1

declare dso_local i32 @from_kuid(i32*, i32) #1

declare dso_local i32 @from_kgid(i32*, i32) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i8* @u64_to_xdr(i32) #1

declare dso_local i32 @xdr_size(%struct.yfs_xdr_YFSStoreStatus*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
