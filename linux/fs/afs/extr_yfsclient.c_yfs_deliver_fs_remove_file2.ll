; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_yfsclient.c_yfs_deliver_fs_remove_file2.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_yfsclient.c_yfs_deliver_fs_remove_file2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_call = type { i32, i32, i32, i32*, i32 }
%struct.afs_fid = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"{%u}\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.afs_call*)* @yfs_deliver_fs_remove_file2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @yfs_deliver_fs_remove_file2(%struct.afs_call* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.afs_call*, align 8
  %4 = alloca %struct.afs_fid, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.afs_call* %0, %struct.afs_call** %3, align 8
  %7 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %8 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %7, i32 0, i32 4
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @_enter(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %12 = call i32 @afs_transfer_reply(%struct.afs_call* %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* %2, align 4
  br label %46

17:                                               ; preds = %1
  %18 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %19 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %18, i32 0, i32 3
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %5, align 8
  %21 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %22 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %23 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @xdr_decode_YFSFetchStatus(i32** %5, %struct.afs_call* %21, i32 %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %17
  %29 = load i32, i32* %6, align 4
  store i32 %29, i32* %2, align 4
  br label %46

30:                                               ; preds = %17
  %31 = call i32 @xdr_decode_YFSFid(i32** %5, %struct.afs_fid* %4)
  %32 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %33 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %34 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @xdr_decode_YFSFetchStatus(i32** %5, %struct.afs_call* %32, i32 %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %30
  %40 = load i32, i32* %6, align 4
  store i32 %40, i32* %2, align 4
  br label %46

41:                                               ; preds = %30
  %42 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %43 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @xdr_decode_YFSVolSync(i32** %5, i32 %44)
  store i32 0, i32* %2, align 4
  br label %46

46:                                               ; preds = %41, %39, %28, %15
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @_enter(i8*, i32) #1

declare dso_local i32 @afs_transfer_reply(%struct.afs_call*) #1

declare dso_local i32 @xdr_decode_YFSFetchStatus(i32**, %struct.afs_call*, i32) #1

declare dso_local i32 @xdr_decode_YFSFid(i32**, %struct.afs_fid*) #1

declare dso_local i32 @xdr_decode_YFSVolSync(i32**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
