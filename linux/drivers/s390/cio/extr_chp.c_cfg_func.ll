; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_chp.c_cfg_func.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_chp.c_cfg_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.work_struct = type { i32 }
%struct.chp_id = type { i32, i32 }

@cfg_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"chp: sclp_chp_configure(%x.%02x)=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"chp: sclp_chp_deconfigure(%x.%02x)=%d\0A\00", align 1
@cfg_wait_queue = common dso_local global i32 0, align 4
@cfg_work = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.work_struct*)* @cfg_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cfg_func(%struct.work_struct* %0) #0 {
  %2 = alloca %struct.work_struct*, align 8
  %3 = alloca %struct.chp_id, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.work_struct* %0, %struct.work_struct** %2, align 8
  %6 = call i32 @spin_lock(i32* @cfg_lock)
  %7 = call i32 @chp_cfg_fetch_task(%struct.chp_id* %3)
  store i32 %7, i32* %4, align 4
  %8 = call i32 @spin_unlock(i32* @cfg_lock)
  %9 = load i32, i32* %4, align 4
  switch i32 %9, label %51 [
    i32 130, label %10
    i32 129, label %29
    i32 128, label %48
  ]

10:                                               ; preds = %1
  %11 = bitcast %struct.chp_id* %3 to i64*
  %12 = load i64, i64* %11, align 4
  %13 = call i32 @sclp_chp_configure(i64 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.chp_id, %struct.chp_id* %3, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = getelementptr inbounds %struct.chp_id, %struct.chp_id* %3, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @CIO_MSG_EVENT(i32 2, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %20, i32 %21)
  br label %28

23:                                               ; preds = %10
  %24 = call i32 (...) @info_expire()
  %25 = bitcast %struct.chp_id* %3 to i64*
  %26 = load i64, i64* %25, align 4
  %27 = call i32 @chsc_chp_online(i64 %26)
  br label %28

28:                                               ; preds = %23, %16
  br label %51

29:                                               ; preds = %1
  %30 = bitcast %struct.chp_id* %3 to i64*
  %31 = load i64, i64* %30, align 4
  %32 = call i32 @sclp_chp_deconfigure(i64 %31)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.chp_id, %struct.chp_id* %3, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.chp_id, %struct.chp_id* %3, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @CIO_MSG_EVENT(i32 2, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %37, i32 %39, i32 %40)
  br label %47

42:                                               ; preds = %29
  %43 = call i32 (...) @info_expire()
  %44 = bitcast %struct.chp_id* %3 to i64*
  %45 = load i64, i64* %44, align 4
  %46 = call i32 @chsc_chp_offline(i64 %45)
  br label %47

47:                                               ; preds = %42, %35
  br label %51

48:                                               ; preds = %1
  %49 = call i32 (...) @info_update()
  %50 = call i32 @wake_up_interruptible(i32* @cfg_wait_queue)
  br label %65

51:                                               ; preds = %1, %47, %28
  %52 = call i32 @spin_lock(i32* @cfg_lock)
  %53 = load i32, i32* %4, align 4
  %54 = bitcast %struct.chp_id* %3 to i64*
  %55 = load i64, i64* %54, align 4
  %56 = call i32 @cfg_get_task(i64 %55)
  %57 = icmp eq i32 %53, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %51
  %59 = bitcast %struct.chp_id* %3 to i64*
  %60 = load i64, i64* %59, align 4
  %61 = call i32 @cfg_set_task(i64 %60, i32 128)
  br label %62

62:                                               ; preds = %58, %51
  %63 = call i32 @spin_unlock(i32* @cfg_lock)
  %64 = call i32 @schedule_work(i32* @cfg_work)
  br label %65

65:                                               ; preds = %62, %48
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @chp_cfg_fetch_task(%struct.chp_id*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @sclp_chp_configure(i64) #1

declare dso_local i32 @CIO_MSG_EVENT(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @info_expire(...) #1

declare dso_local i32 @chsc_chp_online(i64) #1

declare dso_local i32 @sclp_chp_deconfigure(i64) #1

declare dso_local i32 @chsc_chp_offline(i64) #1

declare dso_local i32 @info_update(...) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @cfg_get_task(i64) #1

declare dso_local i32 @cfg_set_task(i64, i32) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
