; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_scm_blk.c_scm_blk_handle_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_scm_blk.c_scm_blk_handle_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scm_request = type { i64, %struct.TYPE_6__*, %struct.scm_blk_dev* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.scm_blk_dev = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@BLK_STS_IOERR = common dso_local global i64 0, align 8
@SCM_WR_PROHIBIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"%lx: Write access to the SCM increment is suspended\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scm_request*)* @scm_blk_handle_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scm_blk_handle_error(%struct.scm_request* %0) #0 {
  %2 = alloca %struct.scm_request*, align 8
  %3 = alloca %struct.scm_blk_dev*, align 8
  %4 = alloca i64, align 8
  store %struct.scm_request* %0, %struct.scm_request** %2, align 8
  %5 = load %struct.scm_request*, %struct.scm_request** %2, align 8
  %6 = getelementptr inbounds %struct.scm_request, %struct.scm_request* %5, i32 0, i32 2
  %7 = load %struct.scm_blk_dev*, %struct.scm_blk_dev** %6, align 8
  store %struct.scm_blk_dev* %7, %struct.scm_blk_dev** %3, align 8
  %8 = load %struct.scm_request*, %struct.scm_request** %2, align 8
  %9 = getelementptr inbounds %struct.scm_request, %struct.scm_request* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @BLK_STS_IOERR, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %48

14:                                               ; preds = %1
  %15 = load %struct.scm_request*, %struct.scm_request** %2, align 8
  %16 = getelementptr inbounds %struct.scm_request, %struct.scm_request* %15, i32 0, i32 1
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %46 [
    i32 128, label %21
  ]

21:                                               ; preds = %14
  %22 = load %struct.scm_blk_dev*, %struct.scm_blk_dev** %3, align 8
  %23 = getelementptr inbounds %struct.scm_blk_dev, %struct.scm_blk_dev* %22, i32 0, i32 0
  %24 = load i64, i64* %4, align 8
  %25 = call i32 @spin_lock_irqsave(i32* %23, i64 %24)
  %26 = load %struct.scm_blk_dev*, %struct.scm_blk_dev** %3, align 8
  %27 = getelementptr inbounds %struct.scm_blk_dev, %struct.scm_blk_dev* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @SCM_WR_PROHIBIT, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %21
  %32 = load %struct.scm_blk_dev*, %struct.scm_blk_dev** %3, align 8
  %33 = getelementptr inbounds %struct.scm_blk_dev, %struct.scm_blk_dev* %32, i32 0, i32 2
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @pr_info(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i64 %36)
  br label %38

38:                                               ; preds = %31, %21
  %39 = load i32, i32* @SCM_WR_PROHIBIT, align 4
  %40 = load %struct.scm_blk_dev*, %struct.scm_blk_dev** %3, align 8
  %41 = getelementptr inbounds %struct.scm_blk_dev, %struct.scm_blk_dev* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = load %struct.scm_blk_dev*, %struct.scm_blk_dev** %3, align 8
  %43 = getelementptr inbounds %struct.scm_blk_dev, %struct.scm_blk_dev* %42, i32 0, i32 0
  %44 = load i64, i64* %4, align 8
  %45 = call i32 @spin_unlock_irqrestore(i32* %43, i64 %44)
  br label %56

46:                                               ; preds = %14
  br label %47

47:                                               ; preds = %46
  br label %48

48:                                               ; preds = %47, %13
  %49 = load %struct.scm_request*, %struct.scm_request** %2, align 8
  %50 = getelementptr inbounds %struct.scm_request, %struct.scm_request* %49, i32 0, i32 1
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = call i32 @eadm_start_aob(%struct.TYPE_6__* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %48
  br label %59

55:                                               ; preds = %48
  br label %56

56:                                               ; preds = %55, %38
  %57 = load %struct.scm_request*, %struct.scm_request** %2, align 8
  %58 = call i32 @scm_request_requeue(%struct.scm_request* %57)
  br label %59

59:                                               ; preds = %56, %54
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @pr_info(i8*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @eadm_start_aob(%struct.TYPE_6__*) #1

declare dso_local i32 @scm_request_requeue(%struct.scm_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
