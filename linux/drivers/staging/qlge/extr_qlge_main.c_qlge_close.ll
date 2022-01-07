; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/qlge/extr_qlge_main.c_qlge_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/qlge/extr_qlge_main.c_qlge_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ql_adapter = type { i32, i32 }

@QL_EEH_FATAL = common dso_local global i32 0, align 4
@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"EEH fatal did unload.\0A\00", align 1
@QL_ADAPTER_UP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @qlge_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlge_close(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ql_adapter*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %5 = load %struct.net_device*, %struct.net_device** %3, align 8
  %6 = call %struct.ql_adapter* @netdev_priv(%struct.net_device* %5)
  store %struct.ql_adapter* %6, %struct.ql_adapter** %4, align 8
  %7 = load i32, i32* @QL_EEH_FATAL, align 4
  %8 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %9 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %8, i32 0, i32 0
  %10 = call i64 @test_bit(i32 %7, i32* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %23

12:                                               ; preds = %1
  %13 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %14 = load i32, i32* @drv, align 4
  %15 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %16 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @netif_err(%struct.ql_adapter* %13, i32 %14, i32 %17, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @QL_EEH_FATAL, align 4
  %20 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %21 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %20, i32 0, i32 0
  %22 = call i32 @clear_bit(i32 %19, i32* %21)
  store i32 0, i32* %2, align 4
  br label %38

23:                                               ; preds = %1
  br label %24

24:                                               ; preds = %31, %23
  %25 = load i32, i32* @QL_ADAPTER_UP, align 4
  %26 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %27 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %26, i32 0, i32 0
  %28 = call i64 @test_bit(i32 %25, i32* %27)
  %29 = icmp ne i64 %28, 0
  %30 = xor i1 %29, true
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = call i32 @msleep(i32 1)
  br label %24

33:                                               ; preds = %24
  %34 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %35 = call i32 @ql_adapter_down(%struct.ql_adapter* %34)
  %36 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %37 = call i32 @ql_release_adapter_resources(%struct.ql_adapter* %36)
  store i32 0, i32* %2, align 4
  br label %38

38:                                               ; preds = %33, %12
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local %struct.ql_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @netif_err(%struct.ql_adapter*, i32, i32, i8*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @ql_adapter_down(%struct.ql_adapter*) #1

declare dso_local i32 @ql_release_adapter_resources(%struct.ql_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
