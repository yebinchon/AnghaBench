; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/qlge/extr_qlge_main.c_ql_timer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/qlge/extr_qlge_main.c_ql_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ql_adapter = type { i32, i32, i32 }
%struct.timer_list = type { i32 }

@timer = common dso_local global i32 0, align 4
@STS = common dso_local global i32 0, align 4
@ifup = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"EEH STS = 0x%.08x.\0A\00", align 1
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@qdev = common dso_local global %struct.ql_adapter* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @ql_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ql_timer(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.ql_adapter*, align 8
  %4 = alloca i32, align 4
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %5 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %6 = ptrtoint %struct.ql_adapter* %5 to i32
  %7 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %8 = load i32, i32* @timer, align 4
  %9 = call %struct.ql_adapter* @from_timer(i32 %6, %struct.timer_list* %7, i32 %8)
  store %struct.ql_adapter* %9, %struct.ql_adapter** %3, align 8
  store i32 0, i32* %4, align 4
  %10 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %11 = load i32, i32* @STS, align 4
  %12 = call i32 @ql_read32(%struct.ql_adapter* %10, i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %14 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @pci_channel_offline(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %1
  %19 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %20 = load i32, i32* @ifup, align 4
  %21 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %22 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @netif_err(%struct.ql_adapter* %19, i32 %20, i32 %23, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %24)
  br label %35

26:                                               ; preds = %1
  %27 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %28 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %27, i32 0, i32 0
  %29 = load i64, i64* @jiffies, align 8
  %30 = load i32, i32* @HZ, align 4
  %31 = mul nsw i32 5, %30
  %32 = sext i32 %31 to i64
  %33 = add nsw i64 %29, %32
  %34 = call i32 @mod_timer(i32* %28, i64 %33)
  br label %35

35:                                               ; preds = %26, %18
  ret void
}

declare dso_local %struct.ql_adapter* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @ql_read32(%struct.ql_adapter*, i32) #1

declare dso_local i64 @pci_channel_offline(i32) #1

declare dso_local i32 @netif_err(%struct.ql_adapter*, i32, i32, i8*, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
