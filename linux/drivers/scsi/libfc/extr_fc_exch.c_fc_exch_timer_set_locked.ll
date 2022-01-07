; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_exch.c_fc_exch_timer_set_locked.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_exch.c_fc_exch_timer_set_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_exch = type { i32, i32 }

@FC_EX_RST_CLEANUP = common dso_local global i32 0, align 4
@FC_EX_DONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Exchange timer armed : %d msecs\0A\00", align 1
@fc_exch_workqueue = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Exchange already queued\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fc_exch*, i32)* @fc_exch_timer_set_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fc_exch_timer_set_locked(%struct.fc_exch* %0, i32 %1) #0 {
  %3 = alloca %struct.fc_exch*, align 8
  %4 = alloca i32, align 4
  store %struct.fc_exch* %0, %struct.fc_exch** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.fc_exch*, %struct.fc_exch** %3, align 8
  %6 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @FC_EX_RST_CLEANUP, align 4
  %9 = load i32, i32* @FC_EX_DONE, align 4
  %10 = or i32 %8, %9
  %11 = and i32 %7, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %32

14:                                               ; preds = %2
  %15 = load %struct.fc_exch*, %struct.fc_exch** %3, align 8
  %16 = load i32, i32* %4, align 4
  %17 = call i32 (%struct.fc_exch*, i8*, ...) @FC_EXCH_DBG(%struct.fc_exch* %15, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load %struct.fc_exch*, %struct.fc_exch** %3, align 8
  %19 = call i32 @fc_exch_hold(%struct.fc_exch* %18)
  %20 = load i32, i32* @fc_exch_workqueue, align 4
  %21 = load %struct.fc_exch*, %struct.fc_exch** %3, align 8
  %22 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %21, i32 0, i32 1
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @msecs_to_jiffies(i32 %23)
  %25 = call i32 @queue_delayed_work(i32 %20, i32* %22, i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %14
  %28 = load %struct.fc_exch*, %struct.fc_exch** %3, align 8
  %29 = call i32 (%struct.fc_exch*, i8*, ...) @FC_EXCH_DBG(%struct.fc_exch* %28, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %30 = load %struct.fc_exch*, %struct.fc_exch** %3, align 8
  %31 = call i32 @fc_exch_release(%struct.fc_exch* %30)
  br label %32

32:                                               ; preds = %13, %27, %14
  ret void
}

declare dso_local i32 @FC_EXCH_DBG(%struct.fc_exch*, i8*, ...) #1

declare dso_local i32 @fc_exch_hold(%struct.fc_exch*) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @fc_exch_release(%struct.fc_exch*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
