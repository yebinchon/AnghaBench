; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_bcma-hcd.c_bcma_hcd_usb20_ns_init_hc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_bcma-hcd.c_bcma_hcd_usb20_ns_init_hc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcma_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bcma_device*)* @bcma_hcd_usb20_ns_init_hc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcma_hcd_usb20_ns_init_hc(%struct.bcma_device* %0) #0 {
  %2 = alloca %struct.bcma_device*, align 8
  %3 = alloca i32, align 4
  store %struct.bcma_device* %0, %struct.bcma_device** %2, align 8
  %4 = load %struct.bcma_device*, %struct.bcma_device** %2, align 8
  %5 = call i32 @bcma_read32(%struct.bcma_device* %4, i32 148)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = and i32 %6, 65535
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = or i32 %8, 8388608
  store i32 %9, i32* %3, align 4
  %10 = load %struct.bcma_device*, %struct.bcma_device** %2, align 8
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @bcma_write32(%struct.bcma_device* %10, i32 148, i32 %11)
  %13 = load %struct.bcma_device*, %struct.bcma_device** %2, align 8
  %14 = call i32 @bcma_read32(%struct.bcma_device* %13, i32 156)
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = or i32 %15, 1
  store i32 %16, i32* %3, align 4
  %17 = load %struct.bcma_device*, %struct.bcma_device** %2, align 8
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @bcma_write32(%struct.bcma_device* %17, i32 156, i32 %18)
  %20 = call i32 @usleep_range(i32 1000, i32 2000)
  ret void
}

declare dso_local i32 @bcma_read32(%struct.bcma_device*, i32) #1

declare dso_local i32 @bcma_write32(%struct.bcma_device*, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
