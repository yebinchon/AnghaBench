; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_setup_card.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_setup_card.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { i32, i32, %struct.TYPE_7__, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"setupcrd\00", align 1
@CARD_STATE_DOWN = common dso_local global i32 0, align 4
@qeth_start_kernel_thread = common dso_local global i32 0, align 4
@qeth_buffer_reclaim_work = common dso_local global i32 0, align 4
@qeth_close_dev_handler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qeth_card*)* @qeth_setup_card to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qeth_setup_card(%struct.qeth_card* %0) #0 {
  %2 = alloca %struct.qeth_card*, align 8
  store %struct.qeth_card* %0, %struct.qeth_card** %2, align 8
  %3 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %4 = call i32 @QETH_CARD_TEXT(%struct.qeth_card* %3, i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %5 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %6 = call %struct.TYPE_8__* @CARD_RDEV(%struct.qeth_card* %5)
  %7 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %11 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %10, i32 0, i32 11
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  store i32 %9, i32* %12, align 4
  %13 = load i32, i32* @CARD_STATE_DOWN, align 4
  %14 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %15 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %14, i32 0, i32 10
  store i32 %13, i32* %15, align 4
  %16 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %17 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %16, i32 0, i32 9
  %18 = call i32 @spin_lock_init(i32* %17)
  %19 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %20 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %19, i32 0, i32 8
  %21 = call i32 @spin_lock_init(i32* %20)
  %22 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %23 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %22, i32 0, i32 7
  %24 = call i32 @mutex_init(i32* %23)
  %25 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %26 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %25, i32 0, i32 6
  %27 = call i32 @mutex_init(i32* %26)
  %28 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %29 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %28, i32 0, i32 5
  %30 = load i32, i32* @qeth_start_kernel_thread, align 4
  %31 = call i32 @INIT_WORK(i32* %29, i32 %30)
  %32 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %33 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %32, i32 0, i32 4
  %34 = call i32 @INIT_LIST_HEAD(i32* %33)
  %35 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %36 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %35, i32 0, i32 3
  %37 = call i32 @init_waitqueue_head(i32* %36)
  %38 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %39 = call i32 @qeth_set_initial_options(%struct.qeth_card* %38)
  %40 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %41 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = call i32 @INIT_LIST_HEAD(i32* %42)
  %44 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %45 = call i32 @qeth_init_qdio_info(%struct.qeth_card* %44)
  %46 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %47 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %46, i32 0, i32 1
  %48 = load i32, i32* @qeth_buffer_reclaim_work, align 4
  %49 = call i32 @INIT_DELAYED_WORK(i32* %47, i32 %48)
  %50 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %51 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %50, i32 0, i32 0
  %52 = load i32, i32* @qeth_close_dev_handler, align 4
  %53 = call i32 @INIT_WORK(i32* %51, i32 %52)
  ret void
}

declare dso_local i32 @QETH_CARD_TEXT(%struct.qeth_card*, i32, i8*) #1

declare dso_local %struct.TYPE_8__* @CARD_RDEV(%struct.qeth_card*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @qeth_set_initial_options(%struct.qeth_card*) #1

declare dso_local i32 @qeth_init_qdio_info(%struct.qeth_card*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
