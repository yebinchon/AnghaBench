; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/ti/extr_knav_qmss_queue.c_knav_queue_flush.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/ti/extr_knav_qmss_queue.c_knav_queue_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.knav_queue = type { %struct.knav_queue_inst* }
%struct.knav_queue_inst = type { i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.knav_queue*)* @knav_queue_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @knav_queue_flush(%struct.knav_queue* %0) #0 {
  %2 = alloca %struct.knav_queue*, align 8
  %3 = alloca %struct.knav_queue_inst*, align 8
  %4 = alloca i32, align 4
  store %struct.knav_queue* %0, %struct.knav_queue** %2, align 8
  %5 = load %struct.knav_queue*, %struct.knav_queue** %2, align 8
  %6 = getelementptr inbounds %struct.knav_queue, %struct.knav_queue* %5, i32 0, i32 0
  %7 = load %struct.knav_queue_inst*, %struct.knav_queue_inst** %6, align 8
  store %struct.knav_queue_inst* %7, %struct.knav_queue_inst** %3, align 8
  %8 = load %struct.knav_queue_inst*, %struct.knav_queue_inst** %3, align 8
  %9 = getelementptr inbounds %struct.knav_queue_inst, %struct.knav_queue_inst* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.knav_queue_inst*, %struct.knav_queue_inst** %3, align 8
  %12 = getelementptr inbounds %struct.knav_queue_inst, %struct.knav_queue_inst* %11, i32 0, i32 1
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = sub i32 %10, %15
  store i32 %16, i32* %4, align 4
  %17 = load %struct.knav_queue_inst*, %struct.knav_queue_inst** %3, align 8
  %18 = getelementptr inbounds %struct.knav_queue_inst, %struct.knav_queue_inst* %17, i32 0, i32 2
  %19 = call i32 @atomic_set(i32* %18, i32 0)
  %20 = load %struct.knav_queue_inst*, %struct.knav_queue_inst** %3, align 8
  %21 = getelementptr inbounds %struct.knav_queue_inst, %struct.knav_queue_inst* %20, i32 0, i32 1
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = load i32, i32* %4, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = call i32 @writel_relaxed(i32 0, i32* %28)
  ret i32 0
}

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @writel_relaxed(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
