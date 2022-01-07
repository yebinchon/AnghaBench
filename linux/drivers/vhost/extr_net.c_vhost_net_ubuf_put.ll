; ModuleID = '/home/carl/AnghaBench/linux/drivers/vhost/extr_net.c_vhost_net_ubuf_put.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vhost/extr_net.c_vhost_net_ubuf_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vhost_net_ubuf_ref = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vhost_net_ubuf_ref*)* @vhost_net_ubuf_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vhost_net_ubuf_put(%struct.vhost_net_ubuf_ref* %0) #0 {
  %2 = alloca %struct.vhost_net_ubuf_ref*, align 8
  %3 = alloca i32, align 4
  store %struct.vhost_net_ubuf_ref* %0, %struct.vhost_net_ubuf_ref** %2, align 8
  %4 = load %struct.vhost_net_ubuf_ref*, %struct.vhost_net_ubuf_ref** %2, align 8
  %5 = getelementptr inbounds %struct.vhost_net_ubuf_ref, %struct.vhost_net_ubuf_ref* %4, i32 0, i32 1
  %6 = call i32 @atomic_sub_return(i32 1, i32* %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = icmp ne i32 %7, 0
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i64 @unlikely(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = load %struct.vhost_net_ubuf_ref*, %struct.vhost_net_ubuf_ref** %2, align 8
  %15 = getelementptr inbounds %struct.vhost_net_ubuf_ref, %struct.vhost_net_ubuf_ref* %14, i32 0, i32 0
  %16 = call i32 @wake_up(i32* %15)
  br label %17

17:                                               ; preds = %13, %1
  %18 = load i32, i32* %3, align 4
  ret i32 %18
}

declare dso_local i32 @atomic_sub_return(i32, i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
