; ModuleID = '/home/carl/AnghaBench/linux/drivers/vhost/extr_vhost.c_vhost_add_used_and_signal_n.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vhost/extr_vhost.c_vhost_add_used_and_signal_n.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vhost_dev = type { i32 }
%struct.vhost_virtqueue = type { i32 }
%struct.vring_used_elem = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vhost_add_used_and_signal_n(%struct.vhost_dev* %0, %struct.vhost_virtqueue* %1, %struct.vring_used_elem* %2, i32 %3) #0 {
  %5 = alloca %struct.vhost_dev*, align 8
  %6 = alloca %struct.vhost_virtqueue*, align 8
  %7 = alloca %struct.vring_used_elem*, align 8
  %8 = alloca i32, align 4
  store %struct.vhost_dev* %0, %struct.vhost_dev** %5, align 8
  store %struct.vhost_virtqueue* %1, %struct.vhost_virtqueue** %6, align 8
  store %struct.vring_used_elem* %2, %struct.vring_used_elem** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %6, align 8
  %10 = load %struct.vring_used_elem*, %struct.vring_used_elem** %7, align 8
  %11 = load i32, i32* %8, align 4
  %12 = call i32 @vhost_add_used_n(%struct.vhost_virtqueue* %9, %struct.vring_used_elem* %10, i32 %11)
  %13 = load %struct.vhost_dev*, %struct.vhost_dev** %5, align 8
  %14 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %6, align 8
  %15 = call i32 @vhost_signal(%struct.vhost_dev* %13, %struct.vhost_virtqueue* %14)
  ret void
}

declare dso_local i32 @vhost_add_used_n(%struct.vhost_virtqueue*, %struct.vring_used_elem*, i32) #1

declare dso_local i32 @vhost_signal(%struct.vhost_dev*, %struct.vhost_virtqueue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
