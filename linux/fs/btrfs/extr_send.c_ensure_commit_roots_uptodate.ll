; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_send.c_ensure_commit_roots_uptodate.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_send.c_ensure_commit_roots_uptodate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.send_ctx = type { i32, i32, %struct.TYPE_5__*, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_6__ = type { i64, i64 }
%struct.btrfs_trans_handle = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.send_ctx*)* @ensure_commit_roots_uptodate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ensure_commit_roots_uptodate(%struct.send_ctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.send_ctx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.btrfs_trans_handle*, align 8
  store %struct.send_ctx* %0, %struct.send_ctx** %3, align 8
  store %struct.btrfs_trans_handle* null, %struct.btrfs_trans_handle** %5, align 8
  br label %6

6:                                                ; preds = %79, %1
  %7 = load %struct.send_ctx*, %struct.send_ctx** %3, align 8
  %8 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %7, i32 0, i32 3
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %10 = icmp ne %struct.TYPE_6__* %9, null
  br i1 %10, label %11, label %24

11:                                               ; preds = %6
  %12 = load %struct.send_ctx*, %struct.send_ctx** %3, align 8
  %13 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %12, i32 0, i32 3
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.send_ctx*, %struct.send_ctx** %3, align 8
  %18 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %17, i32 0, i32 3
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %16, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %11
  br label %65

24:                                               ; preds = %11, %6
  store i32 0, i32* %4, align 4
  br label %25

25:                                               ; preds = %55, %24
  %26 = load i32, i32* %4, align 4
  %27 = load %struct.send_ctx*, %struct.send_ctx** %3, align 8
  %28 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %58

31:                                               ; preds = %25
  %32 = load %struct.send_ctx*, %struct.send_ctx** %3, align 8
  %33 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %32, i32 0, i32 2
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = load i32, i32* %4, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.send_ctx*, %struct.send_ctx** %3, align 8
  %43 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %42, i32 0, i32 2
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = load i32, i32* %4, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %41, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %31
  br label %65

54:                                               ; preds = %31
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %4, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %4, align 4
  br label %25

58:                                               ; preds = %25
  %59 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %5, align 8
  %60 = icmp ne %struct.btrfs_trans_handle* %59, null
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %5, align 8
  %63 = call i32 @btrfs_end_transaction(%struct.btrfs_trans_handle* %62)
  store i32 %63, i32* %2, align 4
  br label %83

64:                                               ; preds = %58
  store i32 0, i32* %2, align 4
  br label %83

65:                                               ; preds = %53, %23
  %66 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %5, align 8
  %67 = icmp ne %struct.btrfs_trans_handle* %66, null
  br i1 %67, label %80, label %68

68:                                               ; preds = %65
  %69 = load %struct.send_ctx*, %struct.send_ctx** %3, align 8
  %70 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call %struct.btrfs_trans_handle* @btrfs_join_transaction(i32 %71)
  store %struct.btrfs_trans_handle* %72, %struct.btrfs_trans_handle** %5, align 8
  %73 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %5, align 8
  %74 = call i64 @IS_ERR(%struct.btrfs_trans_handle* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %68
  %77 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %5, align 8
  %78 = call i32 @PTR_ERR(%struct.btrfs_trans_handle* %77)
  store i32 %78, i32* %2, align 4
  br label %83

79:                                               ; preds = %68
  br label %6

80:                                               ; preds = %65
  %81 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %5, align 8
  %82 = call i32 @btrfs_commit_transaction(%struct.btrfs_trans_handle* %81)
  store i32 %82, i32* %2, align 4
  br label %83

83:                                               ; preds = %80, %76, %64, %61
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local i32 @btrfs_end_transaction(%struct.btrfs_trans_handle*) #1

declare dso_local %struct.btrfs_trans_handle* @btrfs_join_transaction(i32) #1

declare dso_local i64 @IS_ERR(%struct.btrfs_trans_handle*) #1

declare dso_local i32 @PTR_ERR(%struct.btrfs_trans_handle*) #1

declare dso_local i32 @btrfs_commit_transaction(%struct.btrfs_trans_handle*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
