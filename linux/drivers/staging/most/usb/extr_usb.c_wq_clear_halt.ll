; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/most/usb/extr_usb.c_wq_clear_halt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/most/usb/extr_usb.c_wq_clear_halt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.work_struct = type { i32 }
%struct.clear_hold_work = type { i32, i32, %struct.most_dev* }
%struct.most_dev = type { i32*, i32, i32, %struct.TYPE_5__*, i32*, %struct.TYPE_4__*, i32* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64, i64 }

@.str = private unnamed_addr constant [27 x i8] c"Failed to reset endpoint.\0A\00", align 1
@MOST_CH_ASYNC = common dso_local global i64 0, align 8
@MOST_CH_RX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.work_struct*)* @wq_clear_halt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wq_clear_halt(%struct.work_struct* %0) #0 {
  %2 = alloca %struct.work_struct*, align 8
  %3 = alloca %struct.clear_hold_work*, align 8
  %4 = alloca %struct.most_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.work_struct* %0, %struct.work_struct** %2, align 8
  %9 = load %struct.work_struct*, %struct.work_struct** %2, align 8
  %10 = call %struct.clear_hold_work* @to_clear_hold_work(%struct.work_struct* %9)
  store %struct.clear_hold_work* %10, %struct.clear_hold_work** %3, align 8
  %11 = load %struct.clear_hold_work*, %struct.clear_hold_work** %3, align 8
  %12 = getelementptr inbounds %struct.clear_hold_work, %struct.clear_hold_work* %11, i32 0, i32 2
  %13 = load %struct.most_dev*, %struct.most_dev** %12, align 8
  store %struct.most_dev* %13, %struct.most_dev** %4, align 8
  %14 = load %struct.clear_hold_work*, %struct.clear_hold_work** %3, align 8
  %15 = getelementptr inbounds %struct.clear_hold_work, %struct.clear_hold_work* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %5, align 4
  %17 = load %struct.clear_hold_work*, %struct.clear_hold_work** %3, align 8
  %18 = getelementptr inbounds %struct.clear_hold_work, %struct.clear_hold_work* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %6, align 4
  %20 = load %struct.most_dev*, %struct.most_dev** %4, align 8
  %21 = getelementptr inbounds %struct.most_dev, %struct.most_dev* %20, i32 0, i32 1
  %22 = call i32 @mutex_lock(i32* %21)
  %23 = load %struct.most_dev*, %struct.most_dev** %4, align 8
  %24 = getelementptr inbounds %struct.most_dev, %struct.most_dev* %23, i32 0, i32 2
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @most_stop_enqueue(i32* %24, i32 %25)
  %27 = load %struct.most_dev*, %struct.most_dev** %4, align 8
  %28 = getelementptr inbounds %struct.most_dev, %struct.most_dev* %27, i32 0, i32 6
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = call i32 @usb_kill_anchored_urbs(i32* %32)
  %34 = load %struct.most_dev*, %struct.most_dev** %4, align 8
  %35 = getelementptr inbounds %struct.most_dev, %struct.most_dev* %34, i32 0, i32 3
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = load i32, i32* %6, align 4
  %38 = call i64 @usb_clear_halt(%struct.TYPE_5__* %36, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %1
  %41 = load %struct.most_dev*, %struct.most_dev** %4, align 8
  %42 = getelementptr inbounds %struct.most_dev, %struct.most_dev* %41, i32 0, i32 3
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = call i32 @dev_warn(i32* %44, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %46

46:                                               ; preds = %40, %1
  %47 = load %struct.most_dev*, %struct.most_dev** %4, align 8
  %48 = getelementptr inbounds %struct.most_dev, %struct.most_dev* %47, i32 0, i32 5
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = load i32, i32* %5, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @MOST_CH_ASYNC, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %87

57:                                               ; preds = %46
  %58 = load %struct.most_dev*, %struct.most_dev** %4, align 8
  %59 = getelementptr inbounds %struct.most_dev, %struct.most_dev* %58, i32 0, i32 5
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = load i32, i32* %5, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @MOST_CH_RX, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %87

68:                                               ; preds = %57
  %69 = load i32, i32* %5, align 4
  %70 = sub i32 1, %69
  store i32 %70, i32* %7, align 4
  %71 = load %struct.most_dev*, %struct.most_dev** %4, align 8
  %72 = getelementptr inbounds %struct.most_dev, %struct.most_dev* %71, i32 0, i32 3
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %72, align 8
  %74 = load %struct.most_dev*, %struct.most_dev** %4, align 8
  %75 = getelementptr inbounds %struct.most_dev, %struct.most_dev* %74, i32 0, i32 4
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %7, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @usb_sndbulkpipe(%struct.TYPE_5__* %73, i32 %80)
  store i32 %81, i32* %8, align 4
  %82 = load %struct.most_dev*, %struct.most_dev** %4, align 8
  %83 = getelementptr inbounds %struct.most_dev, %struct.most_dev* %82, i32 0, i32 3
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %83, align 8
  %85 = load i32, i32* %8, align 4
  %86 = call i64 @usb_clear_halt(%struct.TYPE_5__* %84, i32 %85)
  br label %87

87:                                               ; preds = %68, %57, %46
  %88 = load %struct.most_dev*, %struct.most_dev** %4, align 8
  %89 = getelementptr inbounds %struct.most_dev, %struct.most_dev* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* %5, align 4
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  store i32 1, i32* %93, align 4
  %94 = load %struct.most_dev*, %struct.most_dev** %4, align 8
  %95 = getelementptr inbounds %struct.most_dev, %struct.most_dev* %94, i32 0, i32 2
  %96 = load i32, i32* %5, align 4
  %97 = call i32 @most_resume_enqueue(i32* %95, i32 %96)
  %98 = load %struct.most_dev*, %struct.most_dev** %4, align 8
  %99 = getelementptr inbounds %struct.most_dev, %struct.most_dev* %98, i32 0, i32 1
  %100 = call i32 @mutex_unlock(i32* %99)
  ret void
}

declare dso_local %struct.clear_hold_work* @to_clear_hold_work(%struct.work_struct*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @most_stop_enqueue(i32*, i32) #1

declare dso_local i32 @usb_kill_anchored_urbs(i32*) #1

declare dso_local i64 @usb_clear_halt(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @usb_sndbulkpipe(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @most_resume_enqueue(i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
