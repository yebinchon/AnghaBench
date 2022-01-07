; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/chrome/extr_cros_ec_spi.c_cros_ec_xfer_high_pri.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/chrome/extr_cros_ec_spi.c_cros_ec_xfer_high_pri.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cros_ec_device = type { %struct.cros_ec_spi* }
%struct.cros_ec_spi = type { i32 }
%struct.cros_ec_command = type { i32 }
%struct.cros_ec_xfer_work_params = type { i32, i32, i32, %struct.cros_ec_command*, %struct.cros_ec_device* }

@cros_ec_xfer_high_pri_work = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cros_ec_device*, %struct.cros_ec_command*, i32)* @cros_ec_xfer_high_pri to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cros_ec_xfer_high_pri(%struct.cros_ec_device* %0, %struct.cros_ec_command* %1, i32 %2) #0 {
  %4 = alloca %struct.cros_ec_device*, align 8
  %5 = alloca %struct.cros_ec_command*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.cros_ec_spi*, align 8
  %8 = alloca %struct.cros_ec_xfer_work_params, align 8
  store %struct.cros_ec_device* %0, %struct.cros_ec_device** %4, align 8
  store %struct.cros_ec_command* %1, %struct.cros_ec_command** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.cros_ec_device*, %struct.cros_ec_device** %4, align 8
  %10 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %9, i32 0, i32 0
  %11 = load %struct.cros_ec_spi*, %struct.cros_ec_spi** %10, align 8
  store %struct.cros_ec_spi* %11, %struct.cros_ec_spi** %7, align 8
  %12 = getelementptr inbounds %struct.cros_ec_xfer_work_params, %struct.cros_ec_xfer_work_params* %8, i32 0, i32 0
  store i32 0, i32* %12, align 8
  %13 = getelementptr inbounds %struct.cros_ec_xfer_work_params, %struct.cros_ec_xfer_work_params* %8, i32 0, i32 1
  %14 = getelementptr inbounds %struct.cros_ec_xfer_work_params, %struct.cros_ec_xfer_work_params* %8, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @cros_ec_xfer_high_pri_work, align 4
  %17 = call i32 @KTHREAD_WORK_INIT(i32 %15, i32 %16)
  store i32 %17, i32* %13, align 4
  %18 = getelementptr inbounds %struct.cros_ec_xfer_work_params, %struct.cros_ec_xfer_work_params* %8, i32 0, i32 2
  %19 = load i32, i32* %6, align 4
  store i32 %19, i32* %18, align 8
  %20 = getelementptr inbounds %struct.cros_ec_xfer_work_params, %struct.cros_ec_xfer_work_params* %8, i32 0, i32 3
  %21 = load %struct.cros_ec_command*, %struct.cros_ec_command** %5, align 8
  store %struct.cros_ec_command* %21, %struct.cros_ec_command** %20, align 8
  %22 = getelementptr inbounds %struct.cros_ec_xfer_work_params, %struct.cros_ec_xfer_work_params* %8, i32 0, i32 4
  %23 = load %struct.cros_ec_device*, %struct.cros_ec_device** %4, align 8
  store %struct.cros_ec_device* %23, %struct.cros_ec_device** %22, align 8
  %24 = load %struct.cros_ec_spi*, %struct.cros_ec_spi** %7, align 8
  %25 = getelementptr inbounds %struct.cros_ec_spi, %struct.cros_ec_spi* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.cros_ec_xfer_work_params, %struct.cros_ec_xfer_work_params* %8, i32 0, i32 1
  %28 = call i32 @kthread_queue_work(i32 %26, i32* %27)
  %29 = getelementptr inbounds %struct.cros_ec_xfer_work_params, %struct.cros_ec_xfer_work_params* %8, i32 0, i32 1
  %30 = call i32 @kthread_flush_work(i32* %29)
  %31 = getelementptr inbounds %struct.cros_ec_xfer_work_params, %struct.cros_ec_xfer_work_params* %8, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  ret i32 %32
}

declare dso_local i32 @KTHREAD_WORK_INIT(i32, i32) #1

declare dso_local i32 @kthread_queue_work(i32, i32*) #1

declare dso_local i32 @kthread_flush_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
