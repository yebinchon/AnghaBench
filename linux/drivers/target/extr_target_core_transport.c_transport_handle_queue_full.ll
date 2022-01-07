; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_transport.c_transport_handle_queue_full.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_transport.c_transport_handle_queue_full.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_cmd = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.se_device = type { i32, i32 }

@EAGAIN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@TRANSPORT_COMPLETE_QF_WP = common dso_local global i32 0, align 4
@TRANSPORT_COMPLETE_QF_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Got unknown fabric queue status: %d\0A\00", align 1
@TRANSPORT_COMPLETE_QF_ERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.se_cmd*, %struct.se_device*, i32, i32)* @transport_handle_queue_full to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @transport_handle_queue_full(%struct.se_cmd* %0, %struct.se_device* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.se_cmd*, align 8
  %6 = alloca %struct.se_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.se_cmd* %0, %struct.se_cmd** %5, align 8
  store %struct.se_device* %1, %struct.se_device** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* @EAGAIN, align 4
  %11 = sub nsw i32 0, %10
  %12 = icmp eq i32 %9, %11
  br i1 %12, label %18, label %13

13:                                               ; preds = %4
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  %17 = icmp eq i32 %14, %16
  br i1 %17, label %18, label %29

18:                                               ; preds = %13, %4
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = load i32, i32* @TRANSPORT_COMPLETE_QF_WP, align 4
  br label %25

23:                                               ; preds = %18
  %24 = load i32, i32* @TRANSPORT_COMPLETE_QF_OK, align 4
  br label %25

25:                                               ; preds = %23, %21
  %26 = phi i32 [ %22, %21 ], [ %24, %23 ]
  %27 = load %struct.se_cmd*, %struct.se_cmd** %5, align 8
  %28 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 4
  br label %35

29:                                               ; preds = %13
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @pr_warn_ratelimited(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* @TRANSPORT_COMPLETE_QF_ERR, align 4
  %33 = load %struct.se_cmd*, %struct.se_cmd** %5, align 8
  %34 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 4
  br label %35

35:                                               ; preds = %29, %25
  %36 = load %struct.se_device*, %struct.se_device** %6, align 8
  %37 = getelementptr inbounds %struct.se_device, %struct.se_device* %36, i32 0, i32 1
  %38 = call i32 @spin_lock_irq(i32* %37)
  %39 = load %struct.se_cmd*, %struct.se_cmd** %5, align 8
  %40 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %39, i32 0, i32 1
  %41 = load %struct.se_cmd*, %struct.se_cmd** %5, align 8
  %42 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 2
  %45 = call i32 @list_add_tail(i32* %40, i32* %44)
  %46 = load %struct.se_device*, %struct.se_device** %6, align 8
  %47 = getelementptr inbounds %struct.se_device, %struct.se_device* %46, i32 0, i32 0
  %48 = call i32 @atomic_inc_mb(i32* %47)
  %49 = load %struct.se_cmd*, %struct.se_cmd** %5, align 8
  %50 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = call i32 @spin_unlock_irq(i32* %52)
  %54 = load %struct.se_cmd*, %struct.se_cmd** %5, align 8
  %55 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %54, i32 0, i32 0
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = call i32 @schedule_work(i32* %57)
  ret void
}

declare dso_local i32 @pr_warn_ratelimited(i8*, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @atomic_inc_mb(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
