; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_vl_rotate.c_afs_begin_vlserver_operation.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_vl_rotate.c_afs_begin_vlserver_operation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_vl_cursor = type { i32, i32, %struct.TYPE_2__, %struct.key*, %struct.afs_cell* }
%struct.TYPE_2__ = type { i32 }
%struct.afs_cell = type { i32 }
%struct.key = type { i32 }

@EDESTADDRREQ = common dso_local global i32 0, align 4
@SHRT_MAX = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@AFS_VL_CURSOR_STOP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @afs_begin_vlserver_operation(%struct.afs_vl_cursor* %0, %struct.afs_cell* %1, %struct.key* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.afs_vl_cursor*, align 8
  %6 = alloca %struct.afs_cell*, align 8
  %7 = alloca %struct.key*, align 8
  store %struct.afs_vl_cursor* %0, %struct.afs_vl_cursor** %5, align 8
  store %struct.afs_cell* %1, %struct.afs_cell** %6, align 8
  store %struct.key* %2, %struct.key** %7, align 8
  %8 = load %struct.afs_vl_cursor*, %struct.afs_vl_cursor** %5, align 8
  %9 = call i32 @memset(%struct.afs_vl_cursor* %8, i32 0, i32 32)
  %10 = load %struct.afs_cell*, %struct.afs_cell** %6, align 8
  %11 = load %struct.afs_vl_cursor*, %struct.afs_vl_cursor** %5, align 8
  %12 = getelementptr inbounds %struct.afs_vl_cursor, %struct.afs_vl_cursor* %11, i32 0, i32 4
  store %struct.afs_cell* %10, %struct.afs_cell** %12, align 8
  %13 = load %struct.key*, %struct.key** %7, align 8
  %14 = load %struct.afs_vl_cursor*, %struct.afs_vl_cursor** %5, align 8
  %15 = getelementptr inbounds %struct.afs_vl_cursor, %struct.afs_vl_cursor* %14, i32 0, i32 3
  store %struct.key* %13, %struct.key** %15, align 8
  %16 = load i32, i32* @EDESTADDRREQ, align 4
  %17 = sub nsw i32 0, %16
  %18 = load %struct.afs_vl_cursor*, %struct.afs_vl_cursor** %5, align 8
  %19 = getelementptr inbounds %struct.afs_vl_cursor, %struct.afs_vl_cursor* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* @SHRT_MAX, align 4
  %21 = load %struct.afs_vl_cursor*, %struct.afs_vl_cursor** %5, align 8
  %22 = getelementptr inbounds %struct.afs_vl_cursor, %struct.afs_vl_cursor* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i32 %20, i32* %23, align 8
  %24 = load i32, i32* @current, align 4
  %25 = call i64 @signal_pending(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %3
  %28 = load i32, i32* @EINTR, align 4
  %29 = sub nsw i32 0, %28
  %30 = load %struct.afs_vl_cursor*, %struct.afs_vl_cursor** %5, align 8
  %31 = getelementptr inbounds %struct.afs_vl_cursor, %struct.afs_vl_cursor* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* @AFS_VL_CURSOR_STOP, align 4
  %33 = load %struct.afs_vl_cursor*, %struct.afs_vl_cursor** %5, align 8
  %34 = getelementptr inbounds %struct.afs_vl_cursor, %struct.afs_vl_cursor* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = or i32 %35, %32
  store i32 %36, i32* %34, align 8
  store i32 0, i32* %4, align 4
  br label %38

37:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %38

38:                                               ; preds = %37, %27
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local i32 @memset(%struct.afs_vl_cursor*, i32, i32) #1

declare dso_local i64 @signal_pending(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
