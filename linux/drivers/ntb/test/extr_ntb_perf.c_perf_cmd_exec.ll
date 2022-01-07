; ModuleID = '/home/carl/AnghaBench/linux/drivers/ntb/test/extr_ntb_perf.c_perf_cmd_exec.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ntb/test/extr_ntb_perf.c_perf_cmd_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_peer = type { i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"Exec invalid command\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"CMD exec: %d\0A\00", align 1
@system_highpri_wq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_peer*, i32)* @perf_cmd_exec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perf_cmd_exec(%struct.perf_peer* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.perf_peer*, align 8
  %5 = alloca i32, align 4
  store %struct.perf_peer* %0, %struct.perf_peer** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %8 [
    i32 129, label %7
    i32 131, label %7
    i32 128, label %7
    i32 130, label %7
    i32 132, label %7
  ]

7:                                                ; preds = %2, %2, %2, %2, %2
  br label %18

8:                                                ; preds = %2
  %9 = load %struct.perf_peer*, %struct.perf_peer** %4, align 8
  %10 = getelementptr inbounds %struct.perf_peer, %struct.perf_peer* %9, i32 0, i32 1
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = call i32 @dev_err(i32* %14, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %35

18:                                               ; preds = %7
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.perf_peer*, %struct.perf_peer** %4, align 8
  %21 = getelementptr inbounds %struct.perf_peer, %struct.perf_peer* %20, i32 0, i32 2
  %22 = call i32 @set_bit(i32 %19, i32* %21)
  %23 = load %struct.perf_peer*, %struct.perf_peer** %4, align 8
  %24 = getelementptr inbounds %struct.perf_peer, %struct.perf_peer* %23, i32 0, i32 1
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @dev_dbg(i32* %28, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* @system_highpri_wq, align 4
  %32 = load %struct.perf_peer*, %struct.perf_peer** %4, align 8
  %33 = getelementptr inbounds %struct.perf_peer, %struct.perf_peer* %32, i32 0, i32 0
  %34 = call i32 @queue_work(i32 %31, i32* %33)
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %18, %8
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
