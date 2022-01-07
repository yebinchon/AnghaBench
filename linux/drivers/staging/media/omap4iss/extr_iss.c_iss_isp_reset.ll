; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/omap4iss/extr_iss.c_iss_isp_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/omap4iss/extr_iss.c_iss_isp_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iss_device = type { i32 }

@OMAP4_ISS_MEM_ISP_SYS1 = common dso_local global i32 0, align 4
@ISP5_SYSCONFIG = common dso_local global i32 0, align 4
@ISP5_SYSCONFIG_STANDBYMODE_MASK = common dso_local global i32 0, align 4
@ISP5_SYSCONFIG_STANDBYMODE_SMART = common dso_local global i32 0, align 4
@ISP5_CTRL = common dso_local global i32 0, align 4
@ISP5_CTRL_MSTANDBY = common dso_local global i32 0, align 4
@ISP5_CTRL_MSTANDBY_WAIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"ISP5 standby timeout\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@ISP5_SYSCONFIG_SOFTRESET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"ISP5 reset timeout\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iss_device*)* @iss_isp_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iss_isp_reset(%struct.iss_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iss_device*, align 8
  %4 = alloca i32, align 4
  store %struct.iss_device* %0, %struct.iss_device** %3, align 8
  %5 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %6 = load i32, i32* @OMAP4_ISS_MEM_ISP_SYS1, align 4
  %7 = load i32, i32* @ISP5_SYSCONFIG, align 4
  %8 = load i32, i32* @ISP5_SYSCONFIG_STANDBYMODE_MASK, align 4
  %9 = load i32, i32* @ISP5_SYSCONFIG_STANDBYMODE_SMART, align 4
  %10 = call i32 @iss_reg_update(%struct.iss_device* %5, i32 %6, i32 %7, i32 %8, i32 %9)
  %11 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %12 = load i32, i32* @OMAP4_ISS_MEM_ISP_SYS1, align 4
  %13 = load i32, i32* @ISP5_CTRL, align 4
  %14 = load i32, i32* @ISP5_CTRL_MSTANDBY, align 4
  %15 = call i32 @iss_reg_set(%struct.iss_device* %11, i32 %12, i32 %13, i32 %14)
  %16 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %17 = load i32, i32* @OMAP4_ISS_MEM_ISP_SYS1, align 4
  %18 = load i32, i32* @ISP5_CTRL, align 4
  %19 = call i32 @iss_reg_read(%struct.iss_device* %16, i32 %17, i32 %18)
  %20 = load i32, i32* @ISP5_CTRL_MSTANDBY_WAIT, align 4
  %21 = and i32 %19, %20
  %22 = call i32 @iss_poll_condition_timeout(i32 %21, i32 1000000, i32 1000, i32 1500)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %1
  %26 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %27 = getelementptr inbounds %struct.iss_device, %struct.iss_device* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @dev_err(i32 %28, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @ETIMEDOUT, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %58

32:                                               ; preds = %1
  %33 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %34 = load i32, i32* @OMAP4_ISS_MEM_ISP_SYS1, align 4
  %35 = load i32, i32* @ISP5_SYSCONFIG, align 4
  %36 = load i32, i32* @ISP5_SYSCONFIG_SOFTRESET, align 4
  %37 = call i32 @iss_reg_set(%struct.iss_device* %33, i32 %34, i32 %35, i32 %36)
  %38 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %39 = load i32, i32* @OMAP4_ISS_MEM_ISP_SYS1, align 4
  %40 = load i32, i32* @ISP5_SYSCONFIG, align 4
  %41 = call i32 @iss_reg_read(%struct.iss_device* %38, i32 %39, i32 %40)
  %42 = load i32, i32* @ISP5_SYSCONFIG_SOFTRESET, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = call i32 @iss_poll_condition_timeout(i32 %46, i32 1000000, i32 1000, i32 1500)
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* %4, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %32
  %51 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %52 = getelementptr inbounds %struct.iss_device, %struct.iss_device* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @dev_err(i32 %53, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %55 = load i32, i32* @ETIMEDOUT, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %2, align 4
  br label %58

57:                                               ; preds = %32
  store i32 0, i32* %2, align 4
  br label %58

58:                                               ; preds = %57, %50, %25
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i32 @iss_reg_update(%struct.iss_device*, i32, i32, i32, i32) #1

declare dso_local i32 @iss_reg_set(%struct.iss_device*, i32, i32, i32) #1

declare dso_local i32 @iss_poll_condition_timeout(i32, i32, i32, i32) #1

declare dso_local i32 @iss_reg_read(%struct.iss_device*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
