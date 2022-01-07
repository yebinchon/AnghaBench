; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_fsclient.c_afs_deliver_fs_store_data.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_fsclient.c_afs_deliver_fs_store_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_call = type { i32, i32, i32* }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [12 x i8] c" = 0 [done]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.afs_call*)* @afs_deliver_fs_store_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @afs_deliver_fs_store_data(%struct.afs_call* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.afs_call*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.afs_call* %0, %struct.afs_call** %3, align 8
  %6 = call i32 @_enter(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %8 = call i32 @afs_transfer_reply(%struct.afs_call* %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %5, align 4
  store i32 %12, i32* %2, align 4
  br label %32

13:                                               ; preds = %1
  %14 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %15 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %14, i32 0, i32 2
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %4, align 8
  %17 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %18 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %19 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @xdr_decode_AFSFetchStatus(i32** %4, %struct.afs_call* %17, i32 %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %13
  %25 = load i32, i32* %5, align 4
  store i32 %25, i32* %2, align 4
  br label %32

26:                                               ; preds = %13
  %27 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %28 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @xdr_decode_AFSVolSync(i32** %4, i32 %29)
  %31 = call i32 @_leave(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %32

32:                                               ; preds = %26, %24, %11
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i32 @_enter(i8*) #1

declare dso_local i32 @afs_transfer_reply(%struct.afs_call*) #1

declare dso_local i32 @xdr_decode_AFSFetchStatus(i32**, %struct.afs_call*, i32) #1

declare dso_local i32 @xdr_decode_AFSVolSync(i32**, i32) #1

declare dso_local i32 @_leave(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
