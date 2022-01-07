; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_yfsclient.c_yfs_deliver_fs_create_vnode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_yfsclient.c_yfs_deliver_fs_create_vnode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_call = type { i32, i32, i32, i32, i32*, i32 }

@.str = private unnamed_addr constant [5 x i8] c"{%u}\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c" = 0 [done]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.afs_call*)* @yfs_deliver_fs_create_vnode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @yfs_deliver_fs_create_vnode(%struct.afs_call* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.afs_call*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.afs_call* %0, %struct.afs_call** %3, align 8
  %6 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %7 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %6, i32 0, i32 5
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @_enter(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %11 = call i32 @afs_transfer_reply(%struct.afs_call* %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* %5, align 4
  store i32 %15, i32* %2, align 4
  br label %54

16:                                               ; preds = %1
  %17 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %18 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %17, i32 0, i32 4
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %4, align 8
  %20 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %21 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @xdr_decode_YFSFid(i32** %4, i32 %22)
  %24 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %25 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %26 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @xdr_decode_YFSFetchStatus(i32** %4, %struct.afs_call* %24, i32 %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %16
  %32 = load i32, i32* %5, align 4
  store i32 %32, i32* %2, align 4
  br label %54

33:                                               ; preds = %16
  %34 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %35 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %36 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @xdr_decode_YFSFetchStatus(i32** %4, %struct.afs_call* %34, i32 %37)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %33
  %42 = load i32, i32* %5, align 4
  store i32 %42, i32* %2, align 4
  br label %54

43:                                               ; preds = %33
  %44 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %45 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %46 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @xdr_decode_YFSCallBack(i32** %4, %struct.afs_call* %44, i32 %47)
  %49 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %50 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @xdr_decode_YFSVolSync(i32** %4, i32 %51)
  %53 = call i32 @_leave(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %54

54:                                               ; preds = %43, %41, %31, %14
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i32 @_enter(i8*, i32) #1

declare dso_local i32 @afs_transfer_reply(%struct.afs_call*) #1

declare dso_local i32 @xdr_decode_YFSFid(i32**, i32) #1

declare dso_local i32 @xdr_decode_YFSFetchStatus(i32**, %struct.afs_call*, i32) #1

declare dso_local i32 @xdr_decode_YFSCallBack(i32**, %struct.afs_call*, i32) #1

declare dso_local i32 @xdr_decode_YFSVolSync(i32**, i32) #1

declare dso_local i32 @_leave(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
