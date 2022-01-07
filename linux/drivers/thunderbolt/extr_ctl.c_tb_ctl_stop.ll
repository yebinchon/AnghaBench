; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_ctl.c_tb_ctl_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_ctl.c_tb_ctl_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb_ctl = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [35 x i8] c"dangling request in request_queue\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"control channel stopped\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tb_ctl_stop(%struct.tb_ctl* %0) #0 {
  %2 = alloca %struct.tb_ctl*, align 8
  store %struct.tb_ctl* %0, %struct.tb_ctl** %2, align 8
  %3 = load %struct.tb_ctl*, %struct.tb_ctl** %2, align 8
  %4 = getelementptr inbounds %struct.tb_ctl, %struct.tb_ctl* %3, i32 0, i32 4
  %5 = call i32 @mutex_lock(i32* %4)
  %6 = load %struct.tb_ctl*, %struct.tb_ctl** %2, align 8
  %7 = getelementptr inbounds %struct.tb_ctl, %struct.tb_ctl* %6, i32 0, i32 0
  store i32 0, i32* %7, align 4
  %8 = load %struct.tb_ctl*, %struct.tb_ctl** %2, align 8
  %9 = getelementptr inbounds %struct.tb_ctl, %struct.tb_ctl* %8, i32 0, i32 4
  %10 = call i32 @mutex_unlock(i32* %9)
  %11 = load %struct.tb_ctl*, %struct.tb_ctl** %2, align 8
  %12 = getelementptr inbounds %struct.tb_ctl, %struct.tb_ctl* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @tb_ring_stop(i32 %13)
  %15 = load %struct.tb_ctl*, %struct.tb_ctl** %2, align 8
  %16 = getelementptr inbounds %struct.tb_ctl, %struct.tb_ctl* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @tb_ring_stop(i32 %17)
  %19 = load %struct.tb_ctl*, %struct.tb_ctl** %2, align 8
  %20 = getelementptr inbounds %struct.tb_ctl, %struct.tb_ctl* %19, i32 0, i32 1
  %21 = call i32 @list_empty(i32* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %1
  %24 = load %struct.tb_ctl*, %struct.tb_ctl** %2, align 8
  %25 = call i32 @tb_ctl_WARN(%struct.tb_ctl* %24, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %26

26:                                               ; preds = %23, %1
  %27 = load %struct.tb_ctl*, %struct.tb_ctl** %2, align 8
  %28 = getelementptr inbounds %struct.tb_ctl, %struct.tb_ctl* %27, i32 0, i32 1
  %29 = call i32 @INIT_LIST_HEAD(i32* %28)
  %30 = load %struct.tb_ctl*, %struct.tb_ctl** %2, align 8
  %31 = call i32 @tb_ctl_dbg(%struct.tb_ctl* %30, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @tb_ring_stop(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @tb_ctl_WARN(%struct.tb_ctl*, i8*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @tb_ctl_dbg(%struct.tb_ctl*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
