; ModuleID = '/home/carl/AnghaBench/linux/drivers/vhost/extr_net.c_tx_can_batch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vhost/extr_net.c_tx_can_batch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vhost_virtqueue = type { i32 }

@VHOST_NET_WEIGHT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vhost_virtqueue*, i64)* @tx_can_batch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tx_can_batch(%struct.vhost_virtqueue* %0, i64 %1) #0 {
  %3 = alloca %struct.vhost_virtqueue*, align 8
  %4 = alloca i64, align 8
  store %struct.vhost_virtqueue* %0, %struct.vhost_virtqueue** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @VHOST_NET_WEIGHT, align 8
  %7 = icmp ult i64 %5, %6
  br i1 %7, label %8, label %16

8:                                                ; preds = %2
  %9 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %3, align 8
  %10 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %3, align 8
  %13 = call i32 @vhost_vq_avail_empty(i32 %11, %struct.vhost_virtqueue* %12)
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  br label %16

16:                                               ; preds = %8, %2
  %17 = phi i1 [ false, %2 ], [ %15, %8 ]
  %18 = zext i1 %17 to i32
  ret i32 %18
}

declare dso_local i32 @vhost_vq_avail_empty(i32, %struct.vhost_virtqueue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
