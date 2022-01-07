; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_send.c_is_inode_existent.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_send.c_is_inode_existent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.send_ctx = type { i32 }

@BTRFS_FIRST_FREE_OBJECTID = common dso_local global i64 0, align 8
@inode_state_no_change = common dso_local global i32 0, align 4
@inode_state_did_create = common dso_local global i32 0, align 4
@inode_state_will_delete = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.send_ctx*, i64, i64)* @is_inode_existent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_inode_existent(%struct.send_ctx* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.send_ctx*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.send_ctx* %0, %struct.send_ctx** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i64, i64* %6, align 8
  %10 = load i64, i64* @BTRFS_FIRST_FREE_OBJECTID, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %38

13:                                               ; preds = %3
  %14 = load %struct.send_ctx*, %struct.send_ctx** %5, align 8
  %15 = load i64, i64* %6, align 8
  %16 = load i64, i64* %7, align 8
  %17 = call i32 @get_cur_inode_state(%struct.send_ctx* %14, i64 %15, i64 %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %13
  br label %36

21:                                               ; preds = %13
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @inode_state_no_change, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %33, label %25

25:                                               ; preds = %21
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @inode_state_did_create, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @inode_state_will_delete, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %29, %25, %21
  store i32 1, i32* %8, align 4
  br label %35

34:                                               ; preds = %29
  store i32 0, i32* %8, align 4
  br label %35

35:                                               ; preds = %34, %33
  br label %36

36:                                               ; preds = %35, %20
  %37 = load i32, i32* %8, align 4
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %36, %12
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local i32 @get_cur_inode_state(%struct.send_ctx*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
