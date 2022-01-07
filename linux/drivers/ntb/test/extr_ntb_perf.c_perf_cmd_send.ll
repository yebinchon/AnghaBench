; ModuleID = '/home/carl/AnghaBench/linux/drivers/ntb/test/extr_ntb_perf.c_perf_cmd_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ntb/test/extr_ntb_perf.c_perf_cmd_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_peer = type { %struct.perf_ctx* }
%struct.perf_ctx = type { i32 (%struct.perf_peer*, i32, i32)*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@PERF_CMD_SSIZE = common dso_local global i32 0, align 4
@PERF_CMD_SXLAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Send invalid command\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_peer*, i32, i32)* @perf_cmd_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perf_cmd_send(%struct.perf_peer* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.perf_peer*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.perf_ctx*, align 8
  store %struct.perf_peer* %0, %struct.perf_peer** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.perf_peer*, %struct.perf_peer** %5, align 8
  %10 = getelementptr inbounds %struct.perf_peer, %struct.perf_peer* %9, i32 0, i32 0
  %11 = load %struct.perf_ctx*, %struct.perf_ctx** %10, align 8
  store %struct.perf_ctx* %11, %struct.perf_ctx** %8, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @PERF_CMD_SSIZE, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %19, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @PERF_CMD_SXLAT, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %27

19:                                               ; preds = %15, %3
  %20 = load %struct.perf_ctx*, %struct.perf_ctx** %8, align 8
  %21 = getelementptr inbounds %struct.perf_ctx, %struct.perf_ctx* %20, i32 0, i32 0
  %22 = load i32 (%struct.perf_peer*, i32, i32)*, i32 (%struct.perf_peer*, i32, i32)** %21, align 8
  %23 = load %struct.perf_peer*, %struct.perf_peer** %5, align 8
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %7, align 4
  %26 = call i32 %22(%struct.perf_peer* %23, i32 %24, i32 %25)
  store i32 %26, i32* %4, align 4
  br label %35

27:                                               ; preds = %15
  %28 = load %struct.perf_ctx*, %struct.perf_ctx** %8, align 8
  %29 = getelementptr inbounds %struct.perf_ctx, %struct.perf_ctx* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = call i32 @dev_err(i32* %31, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %27, %19
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
