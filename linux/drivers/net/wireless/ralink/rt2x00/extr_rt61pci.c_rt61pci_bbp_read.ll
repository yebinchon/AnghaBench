; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt61pci.c_rt61pci_bbp_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt61pci.c_rt61pci_bbp_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32 }

@PHY_CSR3_REGNUM = common dso_local global i32 0, align 4
@PHY_CSR3_BUSY = common dso_local global i32 0, align 4
@PHY_CSR3_READ_CONTROL = common dso_local global i32 0, align 4
@PHY_CSR3 = common dso_local global i32 0, align 4
@PHY_CSR3_VALUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rt2x00_dev*, i32)* @rt61pci_bbp_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt61pci_bbp_read(%struct.rt2x00_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.rt2x00_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %8 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %7, i32 0, i32 0
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %11 = call i64 @WAIT_FOR_BBP(%struct.rt2x00_dev* %10, i64* %5)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %27

13:                                               ; preds = %2
  store i64 0, i64* %5, align 8
  %14 = load i32, i32* @PHY_CSR3_REGNUM, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @rt2x00_set_field32(i64* %5, i32 %14, i32 %15)
  %17 = load i32, i32* @PHY_CSR3_BUSY, align 4
  %18 = call i32 @rt2x00_set_field32(i64* %5, i32 %17, i32 1)
  %19 = load i32, i32* @PHY_CSR3_READ_CONTROL, align 4
  %20 = call i32 @rt2x00_set_field32(i64* %5, i32 %19, i32 1)
  %21 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %22 = load i32, i32* @PHY_CSR3, align 4
  %23 = load i64, i64* %5, align 8
  %24 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %21, i32 %22, i64 %23)
  %25 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %26 = call i64 @WAIT_FOR_BBP(%struct.rt2x00_dev* %25, i64* %5)
  br label %27

27:                                               ; preds = %13, %2
  %28 = load i64, i64* %5, align 8
  %29 = load i32, i32* @PHY_CSR3_VALUE, align 4
  %30 = call i32 @rt2x00_get_field32(i64 %28, i32 %29)
  store i32 %30, i32* %6, align 4
  %31 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %32 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %31, i32 0, i32 0
  %33 = call i32 @mutex_unlock(i32* %32)
  %34 = load i32, i32* %6, align 4
  ret i32 %34
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @WAIT_FOR_BBP(%struct.rt2x00_dev*, i64*) #1

declare dso_local i32 @rt2x00_set_field32(i64*, i32, i32) #1

declare dso_local i32 @rt2x00mmio_register_write(%struct.rt2x00_dev*, i32, i64) #1

declare dso_local i32 @rt2x00_get_field32(i64, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
