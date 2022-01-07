; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_send.c_process_recorded_refs_if_needed.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_send.c_process_recorded_refs_if_needed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.send_ctx = type { i64, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }

@BTRFS_INODE_EXTREF_KEY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.send_ctx*, i32, i32*, i32*)* @process_recorded_refs_if_needed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_recorded_refs_if_needed(%struct.send_ctx* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.send_ctx*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.send_ctx* %0, %struct.send_ctx** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.send_ctx*, %struct.send_ctx** %5, align 8
  %11 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %4
  br label %57

15:                                               ; preds = %4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %37, label %18

18:                                               ; preds = %15
  %19 = load %struct.send_ctx*, %struct.send_ctx** %5, align 8
  %20 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.send_ctx*, %struct.send_ctx** %5, align 8
  %23 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %22, i32 0, i32 3
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %21, %26
  br i1 %27, label %28, label %37

28:                                               ; preds = %18
  %29 = load %struct.send_ctx*, %struct.send_ctx** %5, align 8
  %30 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %29, i32 0, i32 3
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @BTRFS_INODE_EXTREF_KEY, align 8
  %35 = icmp sle i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %28
  br label %57

37:                                               ; preds = %28, %18, %15
  %38 = load %struct.send_ctx*, %struct.send_ctx** %5, align 8
  %39 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %38, i32 0, i32 2
  %40 = call i64 @list_empty(i32* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %37
  %43 = load %struct.send_ctx*, %struct.send_ctx** %5, align 8
  %44 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %43, i32 0, i32 1
  %45 = call i64 @list_empty(i32* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  br label %57

48:                                               ; preds = %42, %37
  %49 = load %struct.send_ctx*, %struct.send_ctx** %5, align 8
  %50 = load i32*, i32** %7, align 8
  %51 = call i32 @process_recorded_refs(%struct.send_ctx* %49, i32* %50)
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %9, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  br label %57

55:                                               ; preds = %48
  %56 = load i32*, i32** %8, align 8
  store i32 1, i32* %56, align 4
  br label %57

57:                                               ; preds = %55, %54, %47, %36, %14
  %58 = load i32, i32* %9, align 4
  ret i32 %58
}

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @process_recorded_refs(%struct.send_ctx*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
