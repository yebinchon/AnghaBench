; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_rport.c_fc_rport_enter_ready.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_rport.c_fc_rport_enter_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_rport_priv = type { i64, i32, i32, i32 }

@RPORT_ST_READY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Port is Ready\0A\00", align 1
@RPORT_EV_NONE = common dso_local global i64 0, align 8
@rport_event_queue = common dso_local global i32 0, align 4
@fc_rport_destroy = common dso_local global i32 0, align 4
@RPORT_EV_READY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fc_rport_priv*)* @fc_rport_enter_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fc_rport_enter_ready(%struct.fc_rport_priv* %0) #0 {
  %2 = alloca %struct.fc_rport_priv*, align 8
  store %struct.fc_rport_priv* %0, %struct.fc_rport_priv** %2, align 8
  %3 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %2, align 8
  %4 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %3, i32 0, i32 3
  %5 = call i32 @lockdep_assert_held(i32* %4)
  %6 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %2, align 8
  %7 = load i32, i32* @RPORT_ST_READY, align 4
  %8 = call i32 @fc_rport_state_enter(%struct.fc_rport_priv* %6, i32 %7)
  %9 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %2, align 8
  %10 = call i32 @FC_RPORT_DBG(%struct.fc_rport_priv* %9, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %2, align 8
  %12 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %11, i32 0, i32 1
  %13 = call i32 @kref_get(i32* %12)
  %14 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %2, align 8
  %15 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @RPORT_EV_NONE, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %30

19:                                               ; preds = %1
  %20 = load i32, i32* @rport_event_queue, align 4
  %21 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %2, align 8
  %22 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %21, i32 0, i32 2
  %23 = call i32 @queue_work(i32 %20, i32* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %19
  %26 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %2, align 8
  %27 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %26, i32 0, i32 1
  %28 = load i32, i32* @fc_rport_destroy, align 4
  %29 = call i32 @kref_put(i32* %27, i32 %28)
  br label %30

30:                                               ; preds = %25, %19, %1
  %31 = load i64, i64* @RPORT_EV_READY, align 8
  %32 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %2, align 8
  %33 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @fc_rport_state_enter(%struct.fc_rport_priv*, i32) #1

declare dso_local i32 @FC_RPORT_DBG(%struct.fc_rport_priv*, i8*) #1

declare dso_local i32 @kref_get(i32*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @kref_put(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
