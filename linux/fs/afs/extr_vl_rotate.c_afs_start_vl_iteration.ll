; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_vl_rotate.c_afs_start_vl_iteration.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_vl_rotate.c_afs_start_vl_iteration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_vl_cursor = type { i64, i32, %struct.TYPE_2__*, i32, %struct.afs_cell* }
%struct.TYPE_2__ = type { i64 }
%struct.afs_cell = type { i64, i64, i32, i32, i32, i32, i32 }

@DNS_RECORD_UNAVAILABLE = common dso_local global i64 0, align 8
@AFS_CELL_FL_DO_LOOKUP = common dso_local global i32 0, align 4
@afs_wq = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@EDESTADDRREQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.afs_vl_cursor*)* @afs_start_vl_iteration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @afs_start_vl_iteration(%struct.afs_vl_cursor* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.afs_vl_cursor*, align 8
  %4 = alloca %struct.afs_cell*, align 8
  %5 = alloca i32, align 4
  store %struct.afs_vl_cursor* %0, %struct.afs_vl_cursor** %3, align 8
  %6 = load %struct.afs_vl_cursor*, %struct.afs_vl_cursor** %3, align 8
  %7 = getelementptr inbounds %struct.afs_vl_cursor, %struct.afs_vl_cursor* %6, i32 0, i32 4
  %8 = load %struct.afs_cell*, %struct.afs_cell** %7, align 8
  store %struct.afs_cell* %8, %struct.afs_cell** %4, align 8
  %9 = load %struct.afs_cell*, %struct.afs_cell** %4, align 8
  %10 = getelementptr inbounds %struct.afs_cell, %struct.afs_cell* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @DNS_RECORD_UNAVAILABLE, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %20, label %14

14:                                               ; preds = %1
  %15 = load %struct.afs_cell*, %struct.afs_cell** %4, align 8
  %16 = getelementptr inbounds %struct.afs_cell, %struct.afs_cell* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = call i64 (...) @ktime_get_real_seconds()
  %19 = icmp sle i64 %17, %18
  br i1 %19, label %20, label %66

20:                                               ; preds = %14, %1
  %21 = load %struct.afs_cell*, %struct.afs_cell** %4, align 8
  %22 = getelementptr inbounds %struct.afs_cell, %struct.afs_cell* %21, i32 0, i32 4
  %23 = call i32 @smp_load_acquire(i32* %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* @AFS_CELL_FL_DO_LOOKUP, align 4
  %25 = load %struct.afs_cell*, %struct.afs_cell** %4, align 8
  %26 = getelementptr inbounds %struct.afs_cell, %struct.afs_cell* %25, i32 0, i32 6
  %27 = call i32 @set_bit(i32 %24, i32* %26)
  %28 = load i32, i32* @afs_wq, align 4
  %29 = load %struct.afs_cell*, %struct.afs_cell** %4, align 8
  %30 = getelementptr inbounds %struct.afs_cell, %struct.afs_cell* %29, i32 0, i32 5
  %31 = call i32 @queue_work(i32 %28, i32* %30)
  %32 = load %struct.afs_cell*, %struct.afs_cell** %4, align 8
  %33 = getelementptr inbounds %struct.afs_cell, %struct.afs_cell* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @DNS_RECORD_UNAVAILABLE, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %54

37:                                               ; preds = %20
  %38 = load %struct.afs_cell*, %struct.afs_cell** %4, align 8
  %39 = getelementptr inbounds %struct.afs_cell, %struct.afs_cell* %38, i32 0, i32 4
  %40 = load %struct.afs_cell*, %struct.afs_cell** %4, align 8
  %41 = getelementptr inbounds %struct.afs_cell, %struct.afs_cell* %40, i32 0, i32 4
  %42 = call i32 @smp_load_acquire(i32* %41)
  %43 = load i32, i32* %5, align 4
  %44 = icmp ne i32 %42, %43
  %45 = zext i1 %44 to i32
  %46 = call i64 @wait_var_event_interruptible(i32* %39, i32 %45)
  %47 = icmp slt i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %37
  %49 = load i32, i32* @ERESTARTSYS, align 4
  %50 = sub nsw i32 0, %49
  %51 = load %struct.afs_vl_cursor*, %struct.afs_vl_cursor** %3, align 8
  %52 = getelementptr inbounds %struct.afs_vl_cursor, %struct.afs_vl_cursor* %51, i32 0, i32 3
  store i32 %50, i32* %52, align 8
  store i32 0, i32* %2, align 4
  br label %102

53:                                               ; preds = %37
  br label %54

54:                                               ; preds = %53, %20
  %55 = load %struct.afs_cell*, %struct.afs_cell** %4, align 8
  %56 = getelementptr inbounds %struct.afs_cell, %struct.afs_cell* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @DNS_RECORD_UNAVAILABLE, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %65

60:                                               ; preds = %54
  %61 = load i32, i32* @EDESTADDRREQ, align 4
  %62 = sub nsw i32 0, %61
  %63 = load %struct.afs_vl_cursor*, %struct.afs_vl_cursor** %3, align 8
  %64 = getelementptr inbounds %struct.afs_vl_cursor, %struct.afs_vl_cursor* %63, i32 0, i32 3
  store i32 %62, i32* %64, align 8
  store i32 0, i32* %2, align 4
  br label %102

65:                                               ; preds = %54
  br label %66

66:                                               ; preds = %65, %14
  %67 = load %struct.afs_cell*, %struct.afs_cell** %4, align 8
  %68 = getelementptr inbounds %struct.afs_cell, %struct.afs_cell* %67, i32 0, i32 2
  %69 = call i32 @read_lock(i32* %68)
  %70 = load %struct.afs_cell*, %struct.afs_cell** %4, align 8
  %71 = getelementptr inbounds %struct.afs_cell, %struct.afs_cell* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.afs_cell*, %struct.afs_cell** %4, align 8
  %74 = getelementptr inbounds %struct.afs_cell, %struct.afs_cell* %73, i32 0, i32 2
  %75 = call i32 @lockdep_is_held(i32* %74)
  %76 = call i32 @rcu_dereference_protected(i32 %72, i32 %75)
  %77 = call %struct.TYPE_2__* @afs_get_vlserverlist(i32 %76)
  %78 = load %struct.afs_vl_cursor*, %struct.afs_vl_cursor** %3, align 8
  %79 = getelementptr inbounds %struct.afs_vl_cursor, %struct.afs_vl_cursor* %78, i32 0, i32 2
  store %struct.TYPE_2__* %77, %struct.TYPE_2__** %79, align 8
  %80 = load %struct.afs_cell*, %struct.afs_cell** %4, align 8
  %81 = getelementptr inbounds %struct.afs_cell, %struct.afs_cell* %80, i32 0, i32 2
  %82 = call i32 @read_unlock(i32* %81)
  %83 = load %struct.afs_vl_cursor*, %struct.afs_vl_cursor** %3, align 8
  %84 = getelementptr inbounds %struct.afs_vl_cursor, %struct.afs_vl_cursor* %83, i32 0, i32 2
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %66
  store i32 0, i32* %2, align 4
  br label %102

90:                                               ; preds = %66
  %91 = load %struct.afs_vl_cursor*, %struct.afs_vl_cursor** %3, align 8
  %92 = getelementptr inbounds %struct.afs_vl_cursor, %struct.afs_vl_cursor* %91, i32 0, i32 2
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = shl i64 1, %95
  %97 = sub i64 %96, 1
  %98 = load %struct.afs_vl_cursor*, %struct.afs_vl_cursor** %3, align 8
  %99 = getelementptr inbounds %struct.afs_vl_cursor, %struct.afs_vl_cursor* %98, i32 0, i32 0
  store i64 %97, i64* %99, align 8
  %100 = load %struct.afs_vl_cursor*, %struct.afs_vl_cursor** %3, align 8
  %101 = getelementptr inbounds %struct.afs_vl_cursor, %struct.afs_vl_cursor* %100, i32 0, i32 1
  store i32 -1, i32* %101, align 8
  store i32 1, i32* %2, align 4
  br label %102

102:                                              ; preds = %90, %89, %60, %48
  %103 = load i32, i32* %2, align 4
  ret i32 %103
}

declare dso_local i64 @ktime_get_real_seconds(...) #1

declare dso_local i32 @smp_load_acquire(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i64 @wait_var_event_interruptible(i32*, i32) #1

declare dso_local i32 @read_lock(i32*) #1

declare dso_local %struct.TYPE_2__* @afs_get_vlserverlist(i32) #1

declare dso_local i32 @rcu_dereference_protected(i32, i32) #1

declare dso_local i32 @lockdep_is_held(i32*) #1

declare dso_local i32 @read_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
