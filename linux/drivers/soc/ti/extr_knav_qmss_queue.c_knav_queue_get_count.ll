; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/ti/extr_knav_qmss_queue.c_knav_queue_get_count.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/ti/extr_knav_qmss_queue.c_knav_queue_get_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.knav_queue = type { %struct.TYPE_2__*, %struct.knav_queue_inst* }
%struct.TYPE_2__ = type { i32 }
%struct.knav_queue_inst = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @knav_queue_get_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @knav_queue_get_count(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.knav_queue*, align 8
  %4 = alloca %struct.knav_queue_inst*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.knav_queue*
  store %struct.knav_queue* %6, %struct.knav_queue** %3, align 8
  %7 = load %struct.knav_queue*, %struct.knav_queue** %3, align 8
  %8 = getelementptr inbounds %struct.knav_queue, %struct.knav_queue* %7, i32 0, i32 1
  %9 = load %struct.knav_queue_inst*, %struct.knav_queue_inst** %8, align 8
  store %struct.knav_queue_inst* %9, %struct.knav_queue_inst** %4, align 8
  %10 = load %struct.knav_queue*, %struct.knav_queue** %3, align 8
  %11 = getelementptr inbounds %struct.knav_queue, %struct.knav_queue* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i64 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = call i32 @readl_relaxed(i32* %14)
  %16 = load %struct.knav_queue_inst*, %struct.knav_queue_inst** %4, align 8
  %17 = getelementptr inbounds %struct.knav_queue_inst, %struct.knav_queue_inst* %16, i32 0, i32 0
  %18 = call i32 @atomic_read(i32* %17)
  %19 = add nsw i32 %15, %18
  ret i32 %19
}

declare dso_local i32 @readl_relaxed(i32*) #1

declare dso_local i32 @atomic_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
