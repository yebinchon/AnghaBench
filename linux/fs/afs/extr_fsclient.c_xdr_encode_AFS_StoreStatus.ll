; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_fsclient.c_xdr_encode_AFS_StoreStatus.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_fsclient.c_xdr_encode_AFS_StoreStatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iattr = type { i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

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
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32**, %struct.iattr*)* @xdr_encode_AFS_StoreStatus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xdr_encode_AFS_StoreStatus(i32** %0, %struct.iattr* %1) #0 {
  %3 = alloca i32**, align 8
  %4 = alloca %struct.iattr*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32** %0, i32*** %3, align 8
  store %struct.iattr* %1, %struct.iattr** %4, align 8
  %11 = load i32**, i32*** %3, align 8
  %12 = load i32*, i32** %11, align 8
  store i32* %12, i32** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %6, align 4
  %13 = load %struct.iattr*, %struct.iattr** %4, align 8
  %14 = getelementptr inbounds %struct.iattr, %struct.iattr* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @ATTR_MTIME, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %2
  %20 = load i32, i32* @AFS_SET_MTIME, align 4
  %21 = load i32, i32* %6, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %6, align 4
  %23 = load %struct.iattr*, %struct.iattr** %4, align 8
  %24 = getelementptr inbounds %struct.iattr, %struct.iattr* %23, i32 0, i32 4
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %7, align 4
  br label %27

27:                                               ; preds = %19, %2
  %28 = load %struct.iattr*, %struct.iattr** %4, align 8
  %29 = getelementptr inbounds %struct.iattr, %struct.iattr* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @ATTR_UID, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %27
  %35 = load i32, i32* @AFS_SET_OWNER, align 4
  %36 = load i32, i32* %6, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %6, align 4
  %38 = load %struct.iattr*, %struct.iattr** %4, align 8
  %39 = getelementptr inbounds %struct.iattr, %struct.iattr* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @from_kuid(i32* @init_user_ns, i32 %40)
  store i32 %41, i32* %8, align 4
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
  %51 = load i32, i32* %6, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %6, align 4
  %53 = load %struct.iattr*, %struct.iattr** %4, align 8
  %54 = getelementptr inbounds %struct.iattr, %struct.iattr* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @from_kgid(i32* @init_user_ns, i32 %55)
  store i32 %56, i32* %9, align 4
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
  %66 = load i32, i32* %6, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %6, align 4
  %68 = load %struct.iattr*, %struct.iattr** %4, align 8
  %69 = getelementptr inbounds %struct.iattr, %struct.iattr* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @S_IALLUGO, align 4
  %72 = and i32 %70, %71
  store i32 %72, i32* %10, align 4
  br label %73

73:                                               ; preds = %64, %57
  %74 = load i32, i32* %6, align 4
  %75 = call i8* @htonl(i32 %74)
  %76 = ptrtoint i8* %75 to i32
  %77 = load i32*, i32** %5, align 8
  %78 = getelementptr inbounds i32, i32* %77, i32 1
  store i32* %78, i32** %5, align 8
  store i32 %76, i32* %77, align 4
  %79 = load i32, i32* %7, align 4
  %80 = call i8* @htonl(i32 %79)
  %81 = ptrtoint i8* %80 to i32
  %82 = load i32*, i32** %5, align 8
  %83 = getelementptr inbounds i32, i32* %82, i32 1
  store i32* %83, i32** %5, align 8
  store i32 %81, i32* %82, align 4
  %84 = load i32, i32* %8, align 4
  %85 = call i8* @htonl(i32 %84)
  %86 = ptrtoint i8* %85 to i32
  %87 = load i32*, i32** %5, align 8
  %88 = getelementptr inbounds i32, i32* %87, i32 1
  store i32* %88, i32** %5, align 8
  store i32 %86, i32* %87, align 4
  %89 = load i32, i32* %9, align 4
  %90 = call i8* @htonl(i32 %89)
  %91 = ptrtoint i8* %90 to i32
  %92 = load i32*, i32** %5, align 8
  %93 = getelementptr inbounds i32, i32* %92, i32 1
  store i32* %93, i32** %5, align 8
  store i32 %91, i32* %92, align 4
  %94 = load i32, i32* %10, align 4
  %95 = call i8* @htonl(i32 %94)
  %96 = ptrtoint i8* %95 to i32
  %97 = load i32*, i32** %5, align 8
  %98 = getelementptr inbounds i32, i32* %97, i32 1
  store i32* %98, i32** %5, align 8
  store i32 %96, i32* %97, align 4
  %99 = load i32*, i32** %5, align 8
  %100 = getelementptr inbounds i32, i32* %99, i32 1
  store i32* %100, i32** %5, align 8
  store i32 0, i32* %99, align 4
  %101 = load i32*, i32** %5, align 8
  %102 = load i32**, i32*** %3, align 8
  store i32* %101, i32** %102, align 8
  ret void
}

declare dso_local i32 @from_kuid(i32*, i32) #1

declare dso_local i32 @from_kgid(i32*, i32) #1

declare dso_local i8* @htonl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
