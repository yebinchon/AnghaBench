; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/rtl8192e/extr_r8192E_firmware.c__rtl92e_fw_boot_cpu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/rtl8192e/extr_r8192E_firmware.c__rtl92e_fw_boot_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }

@CPU_GEN_PUT_CODE_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Firmware download failed.\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Download Firmware: Put code ok!\0A\00", align 1
@CPU_GEN = common dso_local global i32 0, align 4
@CPU_GEN_PWR_STB_CPU = common dso_local global i32 0, align 4
@CPU_GEN_BOOT_RDY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"Firmware boot failed.\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"Download Firmware: Boot ready!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @_rtl92e_fw_boot_cpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_rtl92e_fw_boot_cpu(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.net_device*, %struct.net_device** %3, align 8
  %6 = load i32, i32* @CPU_GEN_PUT_CODE_OK, align 4
  %7 = call i32 @_rtl92e_wait_for_fw(%struct.net_device* %5, i32 %6, i32 200)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = call i32 @netdev_err(%struct.net_device* %10, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %36

12:                                               ; preds = %1
  %13 = load %struct.net_device*, %struct.net_device** %3, align 8
  %14 = call i32 @netdev_dbg(%struct.net_device* %13, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %15 = load %struct.net_device*, %struct.net_device** %3, align 8
  %16 = load i32, i32* @CPU_GEN, align 4
  %17 = call i32 @rtl92e_readl(%struct.net_device* %15, i32 %16)
  store i32 %17, i32* %4, align 4
  %18 = load %struct.net_device*, %struct.net_device** %3, align 8
  %19 = load i32, i32* @CPU_GEN, align 4
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @CPU_GEN_PWR_STB_CPU, align 4
  %22 = or i32 %20, %21
  %23 = and i32 %22, 255
  %24 = call i32 @rtl92e_writeb(%struct.net_device* %18, i32 %19, i32 %23)
  %25 = call i32 @mdelay(i32 1)
  %26 = load %struct.net_device*, %struct.net_device** %3, align 8
  %27 = load i32, i32* @CPU_GEN_BOOT_RDY, align 4
  %28 = call i32 @_rtl92e_wait_for_fw(%struct.net_device* %26, i32 %27, i32 200)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %12
  %31 = load %struct.net_device*, %struct.net_device** %3, align 8
  %32 = call i32 @netdev_err(%struct.net_device* %31, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %36

33:                                               ; preds = %12
  %34 = load %struct.net_device*, %struct.net_device** %3, align 8
  %35 = call i32 @netdev_dbg(%struct.net_device* %34, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %36

36:                                               ; preds = %33, %30, %9
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i32 @_rtl92e_wait_for_fw(%struct.net_device*, i32, i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @netdev_dbg(%struct.net_device*, i8*) #1

declare dso_local i32 @rtl92e_readl(%struct.net_device*, i32) #1

declare dso_local i32 @rtl92e_writeb(%struct.net_device*, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
