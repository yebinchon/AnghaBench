; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl1251/extr_boot.c_wl1251_boot_soft_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl1251/extr_boot.c_wl1251_boot_soft_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1251 = type { i32 }

@ACX_REG_SLV_SOFT_RESET = common dso_local global i32 0, align 4
@ACX_SLV_SOFT_RESET_BIT = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@SOFT_RESET_MAX_TIME = common dso_local global i32 0, align 4
@DEBUG_BOOT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"soft reset bootdata 0x%x\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"soft reset timeout\00", align 1
@SOFT_RESET_STALL_TIME = common dso_local global i32 0, align 4
@ENABLE = common dso_local global i32 0, align 4
@SPARE_A2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wl1251_boot_soft_reset(%struct.wl1251* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wl1251*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.wl1251* %0, %struct.wl1251** %3, align 8
  %6 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %7 = load i32, i32* @ACX_REG_SLV_SOFT_RESET, align 4
  %8 = load i32, i32* @ACX_SLV_SOFT_RESET_BIT, align 4
  %9 = call i32 @wl1251_reg_write32(%struct.wl1251* %6, i32 %7, i32 %8)
  %10 = load i64, i64* @jiffies, align 8
  %11 = load i32, i32* @SOFT_RESET_MAX_TIME, align 4
  %12 = call i64 @usecs_to_jiffies(i32 %11)
  %13 = add i64 %10, %12
  store i64 %13, i64* %4, align 8
  br label %14

14:                                               ; preds = %1, %33
  %15 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %16 = load i32, i32* @ACX_REG_SLV_SOFT_RESET, align 4
  %17 = call i32 @wl1251_reg_read32(%struct.wl1251* %15, i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* @DEBUG_BOOT, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @wl1251_debug(i32 %18, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @ACX_SLV_SOFT_RESET_BIT, align 4
  %23 = and i32 %21, %22
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %14
  br label %36

26:                                               ; preds = %14
  %27 = load i64, i64* @jiffies, align 8
  %28 = load i64, i64* %4, align 8
  %29 = call i64 @time_after(i64 %27, i64 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = call i32 @wl1251_error(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %43

33:                                               ; preds = %26
  %34 = load i32, i32* @SOFT_RESET_STALL_TIME, align 4
  %35 = call i32 @udelay(i32 %34)
  br label %14

36:                                               ; preds = %25
  %37 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %38 = load i32, i32* @ENABLE, align 4
  %39 = call i32 @wl1251_reg_write32(%struct.wl1251* %37, i32 %38, i32 0)
  %40 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %41 = load i32, i32* @SPARE_A2, align 4
  %42 = call i32 @wl1251_reg_write32(%struct.wl1251* %40, i32 %41, i32 65535)
  store i32 0, i32* %2, align 4
  br label %43

43:                                               ; preds = %36, %31
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i32 @wl1251_reg_write32(%struct.wl1251*, i32, i32) #1

declare dso_local i64 @usecs_to_jiffies(i32) #1

declare dso_local i32 @wl1251_reg_read32(%struct.wl1251*, i32) #1

declare dso_local i32 @wl1251_debug(i32, i8*, i32) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @wl1251_error(i8*) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
