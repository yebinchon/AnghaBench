; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_fsclient.c_afs_deliver_fs_rename.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_fsclient.c_afs_deliver_fs_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_call = type { i32, i32, i32, i32* }

@.str = private unnamed_addr constant [12 x i8] c" = 0 [done]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.afs_call*)* @afs_deliver_fs_rename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @afs_deliver_fs_rename(%struct.afs_call* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.afs_call*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.afs_call* %0, %struct.afs_call** %3, align 8
  %6 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %7 = call i32 @afs_transfer_reply(%struct.afs_call* %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %5, align 4
  store i32 %11, i32* %2, align 4
  br label %50

12:                                               ; preds = %1
  %13 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %14 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %13, i32 0, i32 3
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %4, align 8
  %16 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %17 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %18 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @xdr_decode_AFSFetchStatus(i32** %4, %struct.afs_call* %16, i32 %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %12
  %24 = load i32, i32* %5, align 4
  store i32 %24, i32* %2, align 4
  br label %50

25:                                               ; preds = %12
  %26 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %27 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %30 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %28, %31
  br i1 %32, label %33, label %44

33:                                               ; preds = %25
  %34 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %35 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %36 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @xdr_decode_AFSFetchStatus(i32** %4, %struct.afs_call* %34, i32 %37)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %33
  %42 = load i32, i32* %5, align 4
  store i32 %42, i32* %2, align 4
  br label %50

43:                                               ; preds = %33
  br label %44

44:                                               ; preds = %43, %25
  %45 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %46 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @xdr_decode_AFSVolSync(i32** %4, i32 %47)
  %49 = call i32 @_leave(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %50

50:                                               ; preds = %44, %41, %23, %10
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

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
