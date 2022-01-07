; ModuleID = '/home/carl/AnghaBench/linux/drivers/pcmcia/extr_bcm63xx_pcmcia.c_bcm63xx_pcmcia_poll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pcmcia/extr_bcm63xx_pcmcia.c_bcm63xx_pcmcia_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timer_list = type { i32 }
%struct.bcm63xx_pcmcia_socket = type { i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@timer = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@BCM63XX_PCMCIA_POLL_RATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @bcm63xx_pcmcia_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm63xx_pcmcia_poll(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.bcm63xx_pcmcia_socket*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %6 = load %struct.bcm63xx_pcmcia_socket*, %struct.bcm63xx_pcmcia_socket** %3, align 8
  %7 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %8 = load i32, i32* @timer, align 4
  %9 = call %struct.bcm63xx_pcmcia_socket* @from_timer(%struct.bcm63xx_pcmcia_socket* %6, %struct.timer_list* %7, i32 %8)
  store %struct.bcm63xx_pcmcia_socket* %9, %struct.bcm63xx_pcmcia_socket** %3, align 8
  %10 = load %struct.bcm63xx_pcmcia_socket*, %struct.bcm63xx_pcmcia_socket** %3, align 8
  %11 = getelementptr inbounds %struct.bcm63xx_pcmcia_socket, %struct.bcm63xx_pcmcia_socket* %10, i32 0, i32 3
  %12 = call i32 @spin_lock_bh(i32* %11)
  %13 = load %struct.bcm63xx_pcmcia_socket*, %struct.bcm63xx_pcmcia_socket** %3, align 8
  %14 = call i32 @__get_socket_status(%struct.bcm63xx_pcmcia_socket* %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.bcm63xx_pcmcia_socket*, %struct.bcm63xx_pcmcia_socket** %3, align 8
  %17 = getelementptr inbounds %struct.bcm63xx_pcmcia_socket, %struct.bcm63xx_pcmcia_socket* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = xor i32 %15, %18
  %20 = load %struct.bcm63xx_pcmcia_socket*, %struct.bcm63xx_pcmcia_socket** %3, align 8
  %21 = getelementptr inbounds %struct.bcm63xx_pcmcia_socket, %struct.bcm63xx_pcmcia_socket* %20, i32 0, i32 4
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %19, %23
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %4, align 4
  %26 = load %struct.bcm63xx_pcmcia_socket*, %struct.bcm63xx_pcmcia_socket** %3, align 8
  %27 = getelementptr inbounds %struct.bcm63xx_pcmcia_socket, %struct.bcm63xx_pcmcia_socket* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load %struct.bcm63xx_pcmcia_socket*, %struct.bcm63xx_pcmcia_socket** %3, align 8
  %29 = getelementptr inbounds %struct.bcm63xx_pcmcia_socket, %struct.bcm63xx_pcmcia_socket* %28, i32 0, i32 3
  %30 = call i32 @spin_unlock_bh(i32* %29)
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %1
  %34 = load %struct.bcm63xx_pcmcia_socket*, %struct.bcm63xx_pcmcia_socket** %3, align 8
  %35 = getelementptr inbounds %struct.bcm63xx_pcmcia_socket, %struct.bcm63xx_pcmcia_socket* %34, i32 0, i32 2
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @pcmcia_parse_events(i32* %35, i32 %36)
  br label %38

38:                                               ; preds = %33, %1
  %39 = load %struct.bcm63xx_pcmcia_socket*, %struct.bcm63xx_pcmcia_socket** %3, align 8
  %40 = getelementptr inbounds %struct.bcm63xx_pcmcia_socket, %struct.bcm63xx_pcmcia_socket* %39, i32 0, i32 1
  %41 = load i64, i64* @jiffies, align 8
  %42 = load i32, i32* @BCM63XX_PCMCIA_POLL_RATE, align 4
  %43 = call i64 @msecs_to_jiffies(i32 %42)
  %44 = add nsw i64 %41, %43
  %45 = call i32 @mod_timer(i32* %40, i64 %44)
  ret void
}

declare dso_local %struct.bcm63xx_pcmcia_socket* @from_timer(%struct.bcm63xx_pcmcia_socket*, %struct.timer_list*, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @__get_socket_status(%struct.bcm63xx_pcmcia_socket*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @pcmcia_parse_events(i32*, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
