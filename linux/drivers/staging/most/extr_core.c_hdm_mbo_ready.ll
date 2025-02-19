; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/most/extr_core.c_hdm_mbo_ready.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/most/extr_core.c_hdm_mbo_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.most_channel = type { i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.most_channel*)* @hdm_mbo_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdm_mbo_ready(%struct.most_channel* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.most_channel*, align 8
  %4 = alloca i32, align 4
  store %struct.most_channel* %0, %struct.most_channel** %3, align 8
  %5 = load %struct.most_channel*, %struct.most_channel** %3, align 8
  %6 = getelementptr inbounds %struct.most_channel, %struct.most_channel* %5, i32 0, i32 2
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %24

10:                                               ; preds = %1
  %11 = load %struct.most_channel*, %struct.most_channel** %3, align 8
  %12 = getelementptr inbounds %struct.most_channel, %struct.most_channel* %11, i32 0, i32 0
  %13 = call i32 @spin_lock_irq(i32* %12)
  %14 = load %struct.most_channel*, %struct.most_channel** %3, align 8
  %15 = getelementptr inbounds %struct.most_channel, %struct.most_channel* %14, i32 0, i32 1
  %16 = call i32 @list_empty(i32* %15)
  store i32 %16, i32* %4, align 4
  %17 = load %struct.most_channel*, %struct.most_channel** %3, align 8
  %18 = getelementptr inbounds %struct.most_channel, %struct.most_channel* %17, i32 0, i32 0
  %19 = call i32 @spin_unlock_irq(i32* %18)
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %2, align 4
  br label %24

24:                                               ; preds = %10, %9
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
