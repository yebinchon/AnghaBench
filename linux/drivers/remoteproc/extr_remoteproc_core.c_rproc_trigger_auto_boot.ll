; ModuleID = '/home/carl/AnghaBench/linux/drivers/remoteproc/extr_remoteproc_core.c_rproc_trigger_auto_boot.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/remoteproc/extr_remoteproc_core.c_rproc_trigger_auto_boot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rproc = type { i32, i32 }

@THIS_MODULE = common dso_local global i32 0, align 4
@FW_ACTION_HOTPLUG = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@rproc_auto_boot_callback = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"request_firmware_nowait err: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rproc*)* @rproc_trigger_auto_boot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rproc_trigger_auto_boot(%struct.rproc* %0) #0 {
  %2 = alloca %struct.rproc*, align 8
  %3 = alloca i32, align 4
  store %struct.rproc* %0, %struct.rproc** %2, align 8
  %4 = load i32, i32* @THIS_MODULE, align 4
  %5 = load i32, i32* @FW_ACTION_HOTPLUG, align 4
  %6 = load %struct.rproc*, %struct.rproc** %2, align 8
  %7 = getelementptr inbounds %struct.rproc, %struct.rproc* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.rproc*, %struct.rproc** %2, align 8
  %10 = getelementptr inbounds %struct.rproc, %struct.rproc* %9, i32 0, i32 0
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = load %struct.rproc*, %struct.rproc** %2, align 8
  %13 = load i32, i32* @rproc_auto_boot_callback, align 4
  %14 = call i32 @request_firmware_nowait(i32 %4, i32 %5, i32 %8, i32* %10, i32 %11, %struct.rproc* %12, i32 %13)
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %1
  %18 = load %struct.rproc*, %struct.rproc** %2, align 8
  %19 = getelementptr inbounds %struct.rproc, %struct.rproc* %18, i32 0, i32 0
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @dev_err(i32* %19, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %20)
  br label %22

22:                                               ; preds = %17, %1
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

declare dso_local i32 @request_firmware_nowait(i32, i32, i32, i32*, i32, %struct.rproc*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
