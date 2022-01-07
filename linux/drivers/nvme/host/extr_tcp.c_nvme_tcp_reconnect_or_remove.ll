; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_tcp.c_nvme_tcp_reconnect_or_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_tcp.c_nvme_tcp_reconnect_or_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_ctrl = type { i64, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@NVME_CTRL_CONNECTING = common dso_local global i64 0, align 8
@NVME_CTRL_NEW = common dso_local global i64 0, align 8
@NVME_CTRL_LIVE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"Reconnecting in %d seconds...\0A\00", align 1
@nvme_wq = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Removing controller...\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvme_ctrl*)* @nvme_tcp_reconnect_or_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvme_tcp_reconnect_or_remove(%struct.nvme_ctrl* %0) #0 {
  %2 = alloca %struct.nvme_ctrl*, align 8
  store %struct.nvme_ctrl* %0, %struct.nvme_ctrl** %2, align 8
  %3 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %2, align 8
  %4 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @NVME_CTRL_CONNECTING, align 8
  %7 = icmp ne i64 %5, %6
  br i1 %7, label %8, label %24

8:                                                ; preds = %1
  %9 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %2, align 8
  %10 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @NVME_CTRL_NEW, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %20, label %14

14:                                               ; preds = %8
  %15 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %2, align 8
  %16 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @NVME_CTRL_LIVE, align 8
  %19 = icmp eq i64 %17, %18
  br label %20

20:                                               ; preds = %14, %8
  %21 = phi i1 [ true, %8 ], [ %19, %14 ]
  %22 = zext i1 %21 to i32
  %23 = call i32 @WARN_ON_ONCE(i32 %22)
  br label %57

24:                                               ; preds = %1
  %25 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %2, align 8
  %26 = call i64 @nvmf_should_reconnect(%struct.nvme_ctrl* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %50

28:                                               ; preds = %24
  %29 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %2, align 8
  %30 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %2, align 8
  %33 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %32, i32 0, i32 2
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 (i32, i8*, ...) @dev_info(i32 %31, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* @nvme_wq, align 4
  %39 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %2, align 8
  %40 = call %struct.TYPE_4__* @to_tcp_ctrl(%struct.nvme_ctrl* %39)
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %2, align 8
  %43 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %42, i32 0, i32 2
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @HZ, align 4
  %48 = mul nsw i32 %46, %47
  %49 = call i32 @queue_delayed_work(i32 %38, i32* %41, i32 %48)
  br label %57

50:                                               ; preds = %24
  %51 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %2, align 8
  %52 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = call i32 (i32, i8*, ...) @dev_info(i32 %53, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %55 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %2, align 8
  %56 = call i32 @nvme_delete_ctrl(%struct.nvme_ctrl* %55)
  br label %57

57:                                               ; preds = %20, %50, %28
  ret void
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i64 @nvmf_should_reconnect(%struct.nvme_ctrl*) #1

declare dso_local i32 @dev_info(i32, i8*, ...) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

declare dso_local %struct.TYPE_4__* @to_tcp_ctrl(%struct.nvme_ctrl*) #1

declare dso_local i32 @nvme_delete_ctrl(%struct.nvme_ctrl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
