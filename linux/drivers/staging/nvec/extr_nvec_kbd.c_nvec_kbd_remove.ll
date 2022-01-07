; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/nvec/extr_nvec_kbd.c_nvec_kbd_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/nvec/extr_nvec_kbd.c_nvec_kbd_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.platform_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.nvec_chip = type { i32 }

@NVEC_KBD = common dso_local global i8 0, align 1
@DISABLE_KBD = common dso_local global i8 0, align 1
@CNFG_WAKE_KEY_REPORTING = common dso_local global i8 0, align 1
@keys_dev = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @nvec_kbd_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvec_kbd_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.nvec_chip*, align 8
  %4 = alloca [2 x i8], align 1
  %5 = alloca [3 x i8], align 1
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.nvec_chip* @dev_get_drvdata(i32 %9)
  store %struct.nvec_chip* %10, %struct.nvec_chip** %3, align 8
  %11 = getelementptr inbounds [2 x i8], [2 x i8]* %4, i64 0, i64 0
  %12 = load i8, i8* @NVEC_KBD, align 1
  store i8 %12, i8* %11, align 1
  %13 = getelementptr inbounds i8, i8* %11, i64 1
  %14 = load i8, i8* @DISABLE_KBD, align 1
  store i8 %14, i8* %13, align 1
  %15 = getelementptr inbounds [3 x i8], [3 x i8]* %5, i64 0, i64 0
  %16 = load i8, i8* @NVEC_KBD, align 1
  store i8 %16, i8* %15, align 1
  %17 = getelementptr inbounds i8, i8* %15, i64 1
  %18 = load i8, i8* @CNFG_WAKE_KEY_REPORTING, align 1
  store i8 %18, i8* %17, align 1
  %19 = getelementptr inbounds i8, i8* %17, i64 1
  store i8 0, i8* %19, align 1
  %20 = load %struct.nvec_chip*, %struct.nvec_chip** %3, align 8
  %21 = getelementptr inbounds [3 x i8], [3 x i8]* %5, i64 0, i64 0
  %22 = call i32 @nvec_write_async(%struct.nvec_chip* %20, i8* %21, i32 3)
  %23 = load %struct.nvec_chip*, %struct.nvec_chip** %3, align 8
  %24 = getelementptr inbounds [2 x i8], [2 x i8]* %4, i64 0, i64 0
  %25 = call i32 @nvec_write_async(%struct.nvec_chip* %23, i8* %24, i32 2)
  %26 = load %struct.nvec_chip*, %struct.nvec_chip** %3, align 8
  %27 = call i32 @nvec_unregister_notifier(%struct.nvec_chip* %26, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @keys_dev, i32 0, i32 0))
  ret i32 0
}

declare dso_local %struct.nvec_chip* @dev_get_drvdata(i32) #1

declare dso_local i32 @nvec_write_async(%struct.nvec_chip*, i8*, i32) #1

declare dso_local i32 @nvec_unregister_notifier(%struct.nvec_chip*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
