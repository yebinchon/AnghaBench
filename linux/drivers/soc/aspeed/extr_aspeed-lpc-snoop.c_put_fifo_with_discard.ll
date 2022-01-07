; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/aspeed/extr_aspeed-lpc-snoop.c_put_fifo_with_discard.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/aspeed/extr_aspeed-lpc-snoop.c_put_fifo_with_discard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aspeed_lpc_snoop_channel = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aspeed_lpc_snoop_channel*, i32)* @put_fifo_with_discard to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @put_fifo_with_discard(%struct.aspeed_lpc_snoop_channel* %0, i32 %1) #0 {
  %3 = alloca %struct.aspeed_lpc_snoop_channel*, align 8
  %4 = alloca i32, align 4
  store %struct.aspeed_lpc_snoop_channel* %0, %struct.aspeed_lpc_snoop_channel** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.aspeed_lpc_snoop_channel*, %struct.aspeed_lpc_snoop_channel** %3, align 8
  %6 = getelementptr inbounds %struct.aspeed_lpc_snoop_channel, %struct.aspeed_lpc_snoop_channel* %5, i32 0, i32 1
  %7 = call i32 @kfifo_initialized(i32* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  br label %27

10:                                               ; preds = %2
  %11 = load %struct.aspeed_lpc_snoop_channel*, %struct.aspeed_lpc_snoop_channel** %3, align 8
  %12 = getelementptr inbounds %struct.aspeed_lpc_snoop_channel, %struct.aspeed_lpc_snoop_channel* %11, i32 0, i32 1
  %13 = call i64 @kfifo_is_full(i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %10
  %16 = load %struct.aspeed_lpc_snoop_channel*, %struct.aspeed_lpc_snoop_channel** %3, align 8
  %17 = getelementptr inbounds %struct.aspeed_lpc_snoop_channel, %struct.aspeed_lpc_snoop_channel* %16, i32 0, i32 1
  %18 = call i32 @kfifo_skip(i32* %17)
  br label %19

19:                                               ; preds = %15, %10
  %20 = load %struct.aspeed_lpc_snoop_channel*, %struct.aspeed_lpc_snoop_channel** %3, align 8
  %21 = getelementptr inbounds %struct.aspeed_lpc_snoop_channel, %struct.aspeed_lpc_snoop_channel* %20, i32 0, i32 1
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @kfifo_put(i32* %21, i32 %22)
  %24 = load %struct.aspeed_lpc_snoop_channel*, %struct.aspeed_lpc_snoop_channel** %3, align 8
  %25 = getelementptr inbounds %struct.aspeed_lpc_snoop_channel, %struct.aspeed_lpc_snoop_channel* %24, i32 0, i32 0
  %26 = call i32 @wake_up_interruptible(i32* %25)
  br label %27

27:                                               ; preds = %19, %9
  ret void
}

declare dso_local i32 @kfifo_initialized(i32*) #1

declare dso_local i64 @kfifo_is_full(i32*) #1

declare dso_local i32 @kfifo_skip(i32*) #1

declare dso_local i32 @kfifo_put(i32*, i32) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
