; ModuleID = '/home/carl/AnghaBench/linux/drivers/ntb/hw/intel/extr_ntb_hw_gen1.c_intel_ntb_peer_spad_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ntb/hw/intel/extr_ntb_hw_gen1.c_intel_ntb_peer_spad_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntb_dev = type { i32 }
%struct.intel_ntb_dev = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_ntb_peer_spad_write(%struct.ntb_dev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ntb_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.intel_ntb_dev*, align 8
  store %struct.ntb_dev* %0, %struct.ntb_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.ntb_dev*, %struct.ntb_dev** %5, align 8
  %11 = call %struct.intel_ntb_dev* @ntb_ndev(%struct.ntb_dev* %10)
  store %struct.intel_ntb_dev* %11, %struct.intel_ntb_dev** %9, align 8
  %12 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %9, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* %8, align 4
  %15 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %9, align 8
  %16 = getelementptr inbounds %struct.intel_ntb_dev, %struct.intel_ntb_dev* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %9, align 8
  %19 = getelementptr inbounds %struct.intel_ntb_dev, %struct.intel_ntb_dev* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %17, %22
  %24 = call i32 @ndev_spad_write(%struct.intel_ntb_dev* %12, i32 %13, i32 %14, i64 %23)
  ret i32 %24
}

declare dso_local %struct.intel_ntb_dev* @ntb_ndev(%struct.ntb_dev*) #1

declare dso_local i32 @ndev_spad_write(%struct.intel_ntb_dev*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
