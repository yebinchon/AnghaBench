; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_cell.c_afs_put_cell.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_cell.c_afs_put_cell.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_net = type { i32 }
%struct.afs_cell = type { i32, %struct.TYPE_2__*, i64, i32 }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@afs_cell_gc_delay = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @afs_put_cell(%struct.afs_net* %0, %struct.afs_cell* %1) #0 {
  %3 = alloca %struct.afs_net*, align 8
  %4 = alloca %struct.afs_cell*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.afs_net* %0, %struct.afs_net** %3, align 8
  store %struct.afs_cell* %1, %struct.afs_cell** %4, align 8
  %7 = load %struct.afs_cell*, %struct.afs_cell** %4, align 8
  %8 = icmp ne %struct.afs_cell* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  br label %37

10:                                               ; preds = %2
  %11 = load %struct.afs_cell*, %struct.afs_cell** %4, align 8
  %12 = getelementptr inbounds %struct.afs_cell, %struct.afs_cell* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @_enter(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = call i64 (...) @ktime_get_real_seconds()
  store i64 %15, i64* %5, align 8
  %16 = load i64, i64* %5, align 8
  %17 = load %struct.afs_cell*, %struct.afs_cell** %4, align 8
  %18 = getelementptr inbounds %struct.afs_cell, %struct.afs_cell* %17, i32 0, i32 2
  store i64 %16, i64* %18, align 8
  store i64 0, i64* %6, align 8
  %19 = load %struct.afs_cell*, %struct.afs_cell** %4, align 8
  %20 = getelementptr inbounds %struct.afs_cell, %struct.afs_cell* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %10
  %26 = load i64, i64* @afs_cell_gc_delay, align 8
  store i64 %26, i64* %6, align 8
  br label %27

27:                                               ; preds = %25, %10
  %28 = load %struct.afs_cell*, %struct.afs_cell** %4, align 8
  %29 = getelementptr inbounds %struct.afs_cell, %struct.afs_cell* %28, i32 0, i32 0
  %30 = call i32 @atomic_dec_return(i32* %29)
  %31 = icmp sgt i32 %30, 1
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  br label %37

33:                                               ; preds = %27
  %34 = load %struct.afs_net*, %struct.afs_net** %3, align 8
  %35 = load i64, i64* %6, align 8
  %36 = call i32 @afs_set_cell_timer(%struct.afs_net* %34, i64 %35)
  br label %37

37:                                               ; preds = %33, %32, %9
  ret void
}

declare dso_local i32 @_enter(i8*, i32) #1

declare dso_local i64 @ktime_get_real_seconds(...) #1

declare dso_local i32 @atomic_dec_return(i32*) #1

declare dso_local i32 @afs_set_cell_timer(%struct.afs_net*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
