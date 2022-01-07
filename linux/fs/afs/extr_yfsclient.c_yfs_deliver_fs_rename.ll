; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_yfsclient.c_yfs_deliver_fs_rename.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_yfsclient.c_yfs_deliver_fs_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_call = type { i32, i32, i32, i32*, i32 }

@.str = private unnamed_addr constant [5 x i8] c"{%u}\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c" = 0 [done]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.afs_call*)* @yfs_deliver_fs_rename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @yfs_deliver_fs_rename(%struct.afs_call* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.afs_call*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.afs_call* %0, %struct.afs_call** %3, align 8
  %6 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %7 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %6, i32 0, i32 4
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
  %18 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %17, i32 0, i32 3
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %4, align 8
  %20 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %21 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %22 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @xdr_decode_YFSFetchStatus(i32** %4, %struct.afs_call* %20, i32 %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %16
  %28 = load i32, i32* %5, align 4
  store i32 %28, i32* %2, align 4
  br label %54

29:                                               ; preds = %16
  %30 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %31 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %34 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %32, %35
  br i1 %36, label %37, label %48

37:                                               ; preds = %29
  %38 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %39 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %40 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @xdr_decode_YFSFetchStatus(i32** %4, %struct.afs_call* %38, i32 %41)
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %37
  %46 = load i32, i32* %5, align 4
  store i32 %46, i32* %2, align 4
  br label %54

47:                                               ; preds = %37
  br label %48

48:                                               ; preds = %47, %29
  %49 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %50 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @xdr_decode_YFSVolSync(i32** %4, i32 %51)
  %53 = call i32 @_leave(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %54

54:                                               ; preds = %48, %45, %27, %14
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i32 @_enter(i8*, i32) #1

declare dso_local i32 @afs_transfer_reply(%struct.afs_call*) #1

declare dso_local i32 @xdr_decode_YFSFetchStatus(i32**, %struct.afs_call*, i32) #1

declare dso_local i32 @xdr_decode_YFSVolSync(i32**, i32) #1

declare dso_local i32 @_leave(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
