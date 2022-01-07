; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_ohci-sa1111.c_sa1111_stop_hc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_ohci-sa1111.c_sa1111_stop_hc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sa1111_dev = type { i64, i32 }

@.str = private unnamed_addr constant [38 x i8] c"stopping SA-1111 OHCI USB Controller\0A\00", align 1
@USB_RESET = common dso_local global i64 0, align 8
@USB_RESET_FORCEIFRESET = common dso_local global i32 0, align 4
@USB_RESET_FORCEHCRESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sa1111_dev*)* @sa1111_stop_hc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sa1111_stop_hc(%struct.sa1111_dev* %0) #0 {
  %2 = alloca %struct.sa1111_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.sa1111_dev* %0, %struct.sa1111_dev** %2, align 8
  %4 = load %struct.sa1111_dev*, %struct.sa1111_dev** %2, align 8
  %5 = getelementptr inbounds %struct.sa1111_dev, %struct.sa1111_dev* %4, i32 0, i32 1
  %6 = call i32 @dev_dbg(i32* %5, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.sa1111_dev*, %struct.sa1111_dev** %2, align 8
  %8 = getelementptr inbounds %struct.sa1111_dev, %struct.sa1111_dev* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @USB_RESET, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i32 @readl_relaxed(i64 %11)
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @USB_RESET_FORCEIFRESET, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @USB_RESET_FORCEHCRESET, align 4
  %17 = or i32 %15, %16
  %18 = load %struct.sa1111_dev*, %struct.sa1111_dev** %2, align 8
  %19 = getelementptr inbounds %struct.sa1111_dev, %struct.sa1111_dev* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @USB_RESET, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @writel_relaxed(i32 %17, i64 %22)
  %24 = load %struct.sa1111_dev*, %struct.sa1111_dev** %2, align 8
  %25 = call i32 @sa1111_disable_device(%struct.sa1111_dev* %24)
  ret void
}

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @sa1111_disable_device(%struct.sa1111_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
