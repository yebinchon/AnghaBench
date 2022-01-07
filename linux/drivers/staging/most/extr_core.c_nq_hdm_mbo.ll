; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/most/extr_core.c_nq_hdm_mbo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/most/extr_core.c_nq_hdm_mbo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbo = type { i32, %struct.most_channel* }
%struct.most_channel = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mbo*)* @nq_hdm_mbo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nq_hdm_mbo(%struct.mbo* %0) #0 {
  %2 = alloca %struct.mbo*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.most_channel*, align 8
  store %struct.mbo* %0, %struct.mbo** %2, align 8
  %5 = load %struct.mbo*, %struct.mbo** %2, align 8
  %6 = getelementptr inbounds %struct.mbo, %struct.mbo* %5, i32 0, i32 1
  %7 = load %struct.most_channel*, %struct.most_channel** %6, align 8
  store %struct.most_channel* %7, %struct.most_channel** %4, align 8
  %8 = load %struct.most_channel*, %struct.most_channel** %4, align 8
  %9 = getelementptr inbounds %struct.most_channel, %struct.most_channel* %8, i32 0, i32 1
  %10 = load i64, i64* %3, align 8
  %11 = call i32 @spin_lock_irqsave(i32* %9, i64 %10)
  %12 = load %struct.mbo*, %struct.mbo** %2, align 8
  %13 = getelementptr inbounds %struct.mbo, %struct.mbo* %12, i32 0, i32 0
  %14 = load %struct.most_channel*, %struct.most_channel** %4, align 8
  %15 = getelementptr inbounds %struct.most_channel, %struct.most_channel* %14, i32 0, i32 2
  %16 = call i32 @list_add_tail(i32* %13, i32* %15)
  %17 = load %struct.most_channel*, %struct.most_channel** %4, align 8
  %18 = getelementptr inbounds %struct.most_channel, %struct.most_channel* %17, i32 0, i32 1
  %19 = load i64, i64* %3, align 8
  %20 = call i32 @spin_unlock_irqrestore(i32* %18, i64 %19)
  %21 = load %struct.most_channel*, %struct.most_channel** %4, align 8
  %22 = getelementptr inbounds %struct.most_channel, %struct.most_channel* %21, i32 0, i32 0
  %23 = call i32 @wake_up_interruptible(i32* %22)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
