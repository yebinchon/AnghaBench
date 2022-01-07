; ModuleID = '/home/carl/AnghaBench/linux/drivers/ntb/hw/intel/extr_ntb_hw_gen1.c_ndev_is_unsafe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ntb/hw/intel/extr_ntb_hw_gen1.c_ndev_is_unsafe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_ntb_dev = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_ntb_dev*, i64)* @ndev_is_unsafe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ndev_is_unsafe(%struct.intel_ntb_dev* %0, i64 %1) #0 {
  %3 = alloca %struct.intel_ntb_dev*, align 8
  %4 = alloca i64, align 8
  store %struct.intel_ntb_dev* %0, %struct.intel_ntb_dev** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  %6 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %3, align 8
  %7 = getelementptr inbounds %struct.intel_ntb_dev, %struct.intel_ntb_dev* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = and i64 %5, %8
  %10 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %3, align 8
  %11 = getelementptr inbounds %struct.intel_ntb_dev, %struct.intel_ntb_dev* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = xor i64 %12, -1
  %14 = and i64 %9, %13
  %15 = icmp ne i64 %14, 0
  %16 = xor i1 %15, true
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  ret i32 %18
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
