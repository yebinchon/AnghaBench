; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/octeon/extr_ethernet-rx.c_cvm_oct_rx_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/octeon/extr_ethernet-rx.c_cvm_oct_rx_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@oct_rx_group = common dso_local global %struct.TYPE_3__* null, align 8
@pow_receive_groups = common dso_local global i32 0, align 4
@OCTEON_CN68XX = common dso_local global i32 0, align 4
@cvm_oct_device = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cvm_oct_rx_shutdown() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %2

2:                                                ; preds = %41, %0
  %3 = load i32, i32* %1, align 4
  %4 = load %struct.TYPE_3__*, %struct.TYPE_3__** @oct_rx_group, align 8
  %5 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %4)
  %6 = icmp slt i32 %3, %5
  br i1 %6, label %7, label %44

7:                                                ; preds = %2
  %8 = load i32, i32* @pow_receive_groups, align 4
  %9 = load i32, i32* %1, align 4
  %10 = call i32 @BIT(i32 %9)
  %11 = and i32 %8, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %7
  br label %41

14:                                               ; preds = %7
  %15 = load i32, i32* @OCTEON_CN68XX, align 4
  %16 = call i64 @OCTEON_IS_MODEL(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = load i32, i32* %1, align 4
  %20 = call i32 @CVMX_SSO_WQ_INT_THRX(i32 %19)
  %21 = call i32 @cvmx_write_csr(i32 %20, i32 0)
  br label %26

22:                                               ; preds = %14
  %23 = load i32, i32* %1, align 4
  %24 = call i32 @CVMX_POW_WQ_INT_THRX(i32 %23)
  %25 = call i32 @cvmx_write_csr(i32 %24, i32 0)
  br label %26

26:                                               ; preds = %22, %18
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** @oct_rx_group, align 8
  %28 = load i32, i32* %1, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @cvm_oct_device, align 4
  %34 = call i32 @free_irq(i32 %32, i32 %33)
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** @oct_rx_group, align 8
  %36 = load i32, i32* %1, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = call i32 @netif_napi_del(i32* %39)
  br label %41

41:                                               ; preds = %26, %13
  %42 = load i32, i32* %1, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %1, align 4
  br label %2

44:                                               ; preds = %2
  ret void
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i64 @OCTEON_IS_MODEL(i32) #1

declare dso_local i32 @cvmx_write_csr(i32, i32) #1

declare dso_local i32 @CVMX_SSO_WQ_INT_THRX(i32) #1

declare dso_local i32 @CVMX_POW_WQ_INT_THRX(i32) #1

declare dso_local i32 @free_irq(i32, i32) #1

declare dso_local i32 @netif_napi_del(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
