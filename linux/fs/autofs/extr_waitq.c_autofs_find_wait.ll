; ModuleID = '/home/carl/AnghaBench/linux/fs/autofs/extr_waitq.c_autofs_find_wait.c'
source_filename = "/home/carl/AnghaBench/linux/fs/autofs/extr_waitq.c_autofs_find_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.autofs_wait_queue = type { %struct.TYPE_2__, %struct.autofs_wait_queue* }
%struct.TYPE_2__ = type { i64, i64, i64 }
%struct.autofs_sb_info = type { %struct.autofs_wait_queue* }
%struct.qstr = type { i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.autofs_wait_queue* (%struct.autofs_sb_info*, %struct.qstr*)* @autofs_find_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.autofs_wait_queue* @autofs_find_wait(%struct.autofs_sb_info* %0, %struct.qstr* %1) #0 {
  %3 = alloca %struct.autofs_sb_info*, align 8
  %4 = alloca %struct.qstr*, align 8
  %5 = alloca %struct.autofs_wait_queue*, align 8
  store %struct.autofs_sb_info* %0, %struct.autofs_sb_info** %3, align 8
  store %struct.qstr* %1, %struct.qstr** %4, align 8
  %6 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %3, align 8
  %7 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %6, i32 0, i32 0
  %8 = load %struct.autofs_wait_queue*, %struct.autofs_wait_queue** %7, align 8
  store %struct.autofs_wait_queue* %8, %struct.autofs_wait_queue** %5, align 8
  br label %9

9:                                                ; preds = %51, %2
  %10 = load %struct.autofs_wait_queue*, %struct.autofs_wait_queue** %5, align 8
  %11 = icmp ne %struct.autofs_wait_queue* %10, null
  br i1 %11, label %12, label %55

12:                                               ; preds = %9
  %13 = load %struct.autofs_wait_queue*, %struct.autofs_wait_queue** %5, align 8
  %14 = getelementptr inbounds %struct.autofs_wait_queue, %struct.autofs_wait_queue* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.qstr*, %struct.qstr** %4, align 8
  %18 = getelementptr inbounds %struct.qstr, %struct.qstr* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %16, %19
  br i1 %20, label %21, label %50

21:                                               ; preds = %12
  %22 = load %struct.autofs_wait_queue*, %struct.autofs_wait_queue** %5, align 8
  %23 = getelementptr inbounds %struct.autofs_wait_queue, %struct.autofs_wait_queue* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.qstr*, %struct.qstr** %4, align 8
  %27 = getelementptr inbounds %struct.qstr, %struct.qstr* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %25, %28
  br i1 %29, label %30, label %50

30:                                               ; preds = %21
  %31 = load %struct.autofs_wait_queue*, %struct.autofs_wait_queue** %5, align 8
  %32 = getelementptr inbounds %struct.autofs_wait_queue, %struct.autofs_wait_queue* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %50

36:                                               ; preds = %30
  %37 = load %struct.autofs_wait_queue*, %struct.autofs_wait_queue** %5, align 8
  %38 = getelementptr inbounds %struct.autofs_wait_queue, %struct.autofs_wait_queue* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.qstr*, %struct.qstr** %4, align 8
  %42 = getelementptr inbounds %struct.qstr, %struct.qstr* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.qstr*, %struct.qstr** %4, align 8
  %45 = getelementptr inbounds %struct.qstr, %struct.qstr* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @memcmp(i64 %40, i32 %43, i64 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %36
  br label %55

50:                                               ; preds = %36, %30, %21, %12
  br label %51

51:                                               ; preds = %50
  %52 = load %struct.autofs_wait_queue*, %struct.autofs_wait_queue** %5, align 8
  %53 = getelementptr inbounds %struct.autofs_wait_queue, %struct.autofs_wait_queue* %52, i32 0, i32 1
  %54 = load %struct.autofs_wait_queue*, %struct.autofs_wait_queue** %53, align 8
  store %struct.autofs_wait_queue* %54, %struct.autofs_wait_queue** %5, align 8
  br label %9

55:                                               ; preds = %49, %9
  %56 = load %struct.autofs_wait_queue*, %struct.autofs_wait_queue** %5, align 8
  ret %struct.autofs_wait_queue* %56
}

declare dso_local i32 @memcmp(i64, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
