; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/ti/extr_knav_qmss_queue.c_knav_queue_match_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/ti/extr_knav_qmss_queue.c_knav_queue_match_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.knav_queue_inst = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@KNAV_QUEUE_QPEND = common dso_local global i32 0, align 4
@RANGE_HAS_IRQ = common dso_local global i32 0, align 4
@KNAV_QUEUE_ACC = common dso_local global i32 0, align 4
@RANGE_HAS_ACCUMULATOR = common dso_local global i32 0, align 4
@KNAV_QUEUE_GP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.knav_queue_inst*, i32)* @knav_queue_match_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @knav_queue_match_type(%struct.knav_queue_inst* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.knav_queue_inst*, align 8
  %5 = alloca i32, align 4
  store %struct.knav_queue_inst* %0, %struct.knav_queue_inst** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @KNAV_QUEUE_QPEND, align 4
  %8 = icmp eq i32 %6, %7
  br i1 %8, label %9, label %19

9:                                                ; preds = %2
  %10 = load %struct.knav_queue_inst*, %struct.knav_queue_inst** %4, align 8
  %11 = getelementptr inbounds %struct.knav_queue_inst, %struct.knav_queue_inst* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @RANGE_HAS_IRQ, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %9
  store i32 1, i32* %3, align 4
  br label %52

19:                                               ; preds = %9, %2
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @KNAV_QUEUE_ACC, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %33

23:                                               ; preds = %19
  %24 = load %struct.knav_queue_inst*, %struct.knav_queue_inst** %4, align 8
  %25 = getelementptr inbounds %struct.knav_queue_inst, %struct.knav_queue_inst* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @RANGE_HAS_ACCUMULATOR, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %23
  store i32 1, i32* %3, align 4
  br label %52

33:                                               ; preds = %23, %19
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @KNAV_QUEUE_GP, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %49

37:                                               ; preds = %33
  %38 = load %struct.knav_queue_inst*, %struct.knav_queue_inst** %4, align 8
  %39 = getelementptr inbounds %struct.knav_queue_inst, %struct.knav_queue_inst* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @RANGE_HAS_ACCUMULATOR, align 4
  %44 = load i32, i32* @RANGE_HAS_IRQ, align 4
  %45 = or i32 %43, %44
  %46 = and i32 %42, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %37
  store i32 1, i32* %3, align 4
  br label %52

49:                                               ; preds = %37, %33
  br label %50

50:                                               ; preds = %49
  br label %51

51:                                               ; preds = %50
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %51, %48, %32, %18
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
