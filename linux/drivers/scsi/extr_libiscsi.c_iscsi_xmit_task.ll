; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_libiscsi.c_iscsi_xmit_task.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_libiscsi.c_iscsi_xmit_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_conn = type { %struct.TYPE_4__*, %struct.iscsi_task*, i32 }
%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.iscsi_task*)* }
%struct.iscsi_task = type { i32 }

@ISCSI_SUSPEND_BIT = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscsi_conn*)* @iscsi_xmit_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iscsi_xmit_task(%struct.iscsi_conn* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iscsi_conn*, align 8
  %4 = alloca %struct.iscsi_task*, align 8
  %5 = alloca i32, align 4
  store %struct.iscsi_conn* %0, %struct.iscsi_conn** %3, align 8
  %6 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %7 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %6, i32 0, i32 1
  %8 = load %struct.iscsi_task*, %struct.iscsi_task** %7, align 8
  store %struct.iscsi_task* %8, %struct.iscsi_task** %4, align 8
  %9 = load i32, i32* @ISCSI_SUSPEND_BIT, align 4
  %10 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %11 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %10, i32 0, i32 2
  %12 = call i64 @test_bit(i32 %9, i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load i32, i32* @ENODATA, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %84

17:                                               ; preds = %1
  %18 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %19 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = call i32 @spin_lock_bh(i32* %21)
  %23 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %24 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %23, i32 0, i32 1
  %25 = load %struct.iscsi_task*, %struct.iscsi_task** %24, align 8
  %26 = icmp eq %struct.iscsi_task* %25, null
  br i1 %26, label %27, label %35

27:                                               ; preds = %17
  %28 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %29 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = call i32 @spin_unlock_bh(i32* %31)
  %33 = load i32, i32* @ENODATA, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %84

35:                                               ; preds = %17
  %36 = load %struct.iscsi_task*, %struct.iscsi_task** %4, align 8
  %37 = call i32 @__iscsi_get_task(%struct.iscsi_task* %36)
  %38 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %39 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %38, i32 0, i32 0
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = call i32 @spin_unlock_bh(i32* %41)
  %43 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %44 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %43, i32 0, i32 0
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = call i32 @spin_unlock_bh(i32* %46)
  %48 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %49 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %48, i32 0, i32 0
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 2
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32 (%struct.iscsi_task*)*, i32 (%struct.iscsi_task*)** %53, align 8
  %55 = load %struct.iscsi_task*, %struct.iscsi_task** %4, align 8
  %56 = call i32 %54(%struct.iscsi_task* %55)
  store i32 %56, i32* %5, align 4
  %57 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %58 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %57, i32 0, i32 0
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  %61 = call i32 @spin_lock_bh(i32* %60)
  %62 = load i32, i32* %5, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %70, label %64

64:                                               ; preds = %35
  %65 = load i32, i32* @jiffies, align 4
  %66 = load %struct.iscsi_task*, %struct.iscsi_task** %4, align 8
  %67 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 4
  %68 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %69 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %68, i32 0, i32 1
  store %struct.iscsi_task* null, %struct.iscsi_task** %69, align 8
  br label %70

70:                                               ; preds = %64, %35
  %71 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %72 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %71, i32 0, i32 0
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = call i32 @spin_lock(i32* %74)
  %76 = load %struct.iscsi_task*, %struct.iscsi_task** %4, align 8
  %77 = call i32 @__iscsi_put_task(%struct.iscsi_task* %76)
  %78 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %79 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %78, i32 0, i32 0
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = call i32 @spin_unlock(i32* %81)
  %83 = load i32, i32* %5, align 4
  store i32 %83, i32* %2, align 4
  br label %84

84:                                               ; preds = %70, %27, %14
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @__iscsi_get_task(%struct.iscsi_task*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @__iscsi_put_task(%struct.iscsi_task*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
