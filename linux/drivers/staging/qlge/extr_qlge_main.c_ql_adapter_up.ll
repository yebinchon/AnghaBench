; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/qlge/extr_qlge_main.c_ql_adapter_up.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/qlge/extr_qlge_main.c_ql_adapter_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ql_adapter = type { i32, i32, i32, i32 }

@ifup = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Unable to initialize adapter.\0A\00", align 1
@QL_ADAPTER_UP = common dso_local global i32 0, align 4
@STS = common dso_local global i32 0, align 4
@QL_ALLMULTI = common dso_local global i32 0, align 4
@QL_PROMISCUOUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ql_adapter*)* @ql_adapter_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ql_adapter_up(%struct.ql_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ql_adapter*, align 8
  %4 = alloca i32, align 4
  store %struct.ql_adapter* %0, %struct.ql_adapter** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %6 = call i32 @ql_adapter_initialize(%struct.ql_adapter* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %1
  %10 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %11 = load i32, i32* @ifup, align 4
  %12 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %13 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @netif_info(%struct.ql_adapter* %10, i32 %11, i32 %14, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %66

16:                                               ; preds = %1
  %17 = load i32, i32* @QL_ADAPTER_UP, align 4
  %18 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %19 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %18, i32 0, i32 3
  %20 = call i32 @set_bit(i32 %17, i32* %19)
  %21 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %22 = call i32 @ql_alloc_rx_buffers(%struct.ql_adapter* %21)
  %23 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %24 = load i32, i32* @STS, align 4
  %25 = call i32 @ql_read32(%struct.ql_adapter* %23, i32 %24)
  %26 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %27 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %25, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %43

31:                                               ; preds = %16
  %32 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %33 = load i32, i32* @STS, align 4
  %34 = call i32 @ql_read32(%struct.ql_adapter* %32, i32 %33)
  %35 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %36 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %34, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %31
  %41 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %42 = call i32 @ql_link_on(%struct.ql_adapter* %41)
  br label %43

43:                                               ; preds = %40, %31, %16
  %44 = load i32, i32* @QL_ALLMULTI, align 4
  %45 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %46 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %45, i32 0, i32 3
  %47 = call i32 @clear_bit(i32 %44, i32* %46)
  %48 = load i32, i32* @QL_PROMISCUOUS, align 4
  %49 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %50 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %49, i32 0, i32 3
  %51 = call i32 @clear_bit(i32 %48, i32* %50)
  %52 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %53 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @qlge_set_multicast_list(i32 %54)
  %56 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %57 = call i32 @qlge_restore_vlan(%struct.ql_adapter* %56)
  %58 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %59 = call i32 @ql_enable_interrupts(%struct.ql_adapter* %58)
  %60 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %61 = call i32 @ql_enable_all_completion_interrupts(%struct.ql_adapter* %60)
  %62 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %63 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @netif_tx_start_all_queues(i32 %64)
  store i32 0, i32* %2, align 4
  br label %70

66:                                               ; preds = %9
  %67 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %68 = call i32 @ql_adapter_reset(%struct.ql_adapter* %67)
  %69 = load i32, i32* %4, align 4
  store i32 %69, i32* %2, align 4
  br label %70

70:                                               ; preds = %66, %43
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local i32 @ql_adapter_initialize(%struct.ql_adapter*) #1

declare dso_local i32 @netif_info(%struct.ql_adapter*, i32, i32, i8*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @ql_alloc_rx_buffers(%struct.ql_adapter*) #1

declare dso_local i32 @ql_read32(%struct.ql_adapter*, i32) #1

declare dso_local i32 @ql_link_on(%struct.ql_adapter*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @qlge_set_multicast_list(i32) #1

declare dso_local i32 @qlge_restore_vlan(%struct.ql_adapter*) #1

declare dso_local i32 @ql_enable_interrupts(%struct.ql_adapter*) #1

declare dso_local i32 @ql_enable_all_completion_interrupts(%struct.ql_adapter*) #1

declare dso_local i32 @netif_tx_start_all_queues(i32) #1

declare dso_local i32 @ql_adapter_reset(%struct.ql_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
