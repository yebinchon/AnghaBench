; ModuleID = '/home/carl/AnghaBench/linux/drivers/vhost/extr_net.c_vhost_net_ubuf_put_and_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vhost/extr_net.c_vhost_net_ubuf_put_and_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vhost_net_ubuf_ref = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vhost_net_ubuf_ref*)* @vhost_net_ubuf_put_and_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vhost_net_ubuf_put_and_wait(%struct.vhost_net_ubuf_ref* %0) #0 {
  %2 = alloca %struct.vhost_net_ubuf_ref*, align 8
  store %struct.vhost_net_ubuf_ref* %0, %struct.vhost_net_ubuf_ref** %2, align 8
  %3 = load %struct.vhost_net_ubuf_ref*, %struct.vhost_net_ubuf_ref** %2, align 8
  %4 = call i32 @vhost_net_ubuf_put(%struct.vhost_net_ubuf_ref* %3)
  %5 = load %struct.vhost_net_ubuf_ref*, %struct.vhost_net_ubuf_ref** %2, align 8
  %6 = getelementptr inbounds %struct.vhost_net_ubuf_ref, %struct.vhost_net_ubuf_ref* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.vhost_net_ubuf_ref*, %struct.vhost_net_ubuf_ref** %2, align 8
  %9 = getelementptr inbounds %struct.vhost_net_ubuf_ref, %struct.vhost_net_ubuf_ref* %8, i32 0, i32 0
  %10 = call i32 @atomic_read(i32* %9)
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i32 @wait_event(i32 %7, i32 %13)
  ret void
}

declare dso_local i32 @vhost_net_ubuf_put(%struct.vhost_net_ubuf_ref*) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
