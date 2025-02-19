; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/octeon/extr_ethernet-rgmii.c_cvm_oct_check_preamble_errors.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/octeon/extr_ethernet-rgmii.c_cvm_oct_check_preamble_errors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.octeon_ethernet = type { i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32 }
%union.cvmx_gmxx_rxx_int_reg = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@global_register_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"%s: Using 10Mbps with software preamble removal\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @cvm_oct_check_preamble_errors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cvm_oct_check_preamble_errors(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.octeon_ethernet*, align 8
  %4 = alloca %struct.TYPE_6__, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %union.cvmx_gmxx_rxx_int_reg, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = call %struct.octeon_ethernet* @netdev_priv(%struct.net_device* %9)
  store %struct.octeon_ethernet* %10, %struct.octeon_ethernet** %3, align 8
  %11 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %3, align 8
  %12 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 1
  store i32 %13, i32* %14, align 4
  %15 = load i64, i64* %5, align 8
  %16 = call i32 @spin_lock_irqsave(i32* @global_register_lock, i64 %15)
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %19, 10
  br i1 %20, label %21, label %52

21:                                               ; preds = %1
  %22 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %3, align 8
  %23 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %24, 10
  br i1 %25, label %26, label %52

26:                                               ; preds = %21
  %27 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %3, align 8
  %28 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @INTERFACE(i32 %29)
  store i32 %30, i32* %6, align 4
  %31 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %3, align 8
  %32 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @INDEX(i32 %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @CVMX_GMXX_RXX_INT_REG(i32 %35, i32 %36)
  %38 = call i32 @cvmx_read_csr(i32 %37)
  %39 = bitcast %union.cvmx_gmxx_rxx_int_reg* %8 to i32*
  store i32 %38, i32* %39, align 8
  %40 = bitcast %union.cvmx_gmxx_rxx_int_reg* %8 to %struct.TYPE_4__*
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %26
  %45 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %3, align 8
  %46 = call i32 @cvm_oct_set_hw_preamble(%struct.octeon_ethernet* %45, i32 0)
  %47 = load %struct.net_device*, %struct.net_device** %2, align 8
  %48 = getelementptr inbounds %struct.net_device, %struct.net_device* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @printk_ratelimited(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %49)
  br label %51

51:                                               ; preds = %44, %26
  br label %69

52:                                               ; preds = %21, %1
  %53 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %3, align 8
  %54 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %55, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %52
  %61 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %3, align 8
  %62 = call i32 @cvm_oct_set_hw_preamble(%struct.octeon_ethernet* %61, i32 1)
  br label %63

63:                                               ; preds = %60, %52
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %3, align 8
  %68 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 4
  br label %69

69:                                               ; preds = %63, %51
  %70 = load i64, i64* %5, align 8
  %71 = call i32 @spin_unlock_irqrestore(i32* @global_register_lock, i64 %70)
  ret void
}

declare dso_local %struct.octeon_ethernet* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @INTERFACE(i32) #1

declare dso_local i32 @INDEX(i32) #1

declare dso_local i32 @cvmx_read_csr(i32) #1

declare dso_local i32 @CVMX_GMXX_RXX_INT_REG(i32, i32) #1

declare dso_local i32 @cvm_oct_set_hw_preamble(%struct.octeon_ethernet*, i32) #1

declare dso_local i32 @printk_ratelimited(i8*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
