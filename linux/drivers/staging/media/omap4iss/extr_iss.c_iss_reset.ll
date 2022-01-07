; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/omap4iss/extr_iss.c_iss_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/omap4iss/extr_iss.c_iss_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iss_device = type { i32, i32 }

@OMAP4_ISS_MEM_TOP = common dso_local global i32 0, align 4
@ISS_HL_SYSCONFIG = common dso_local global i32 0, align 4
@ISS_HL_SYSCONFIG_SOFTRESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"ISS reset timeout\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iss_device*)* @iss_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iss_reset(%struct.iss_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iss_device*, align 8
  %4 = alloca i32, align 4
  store %struct.iss_device* %0, %struct.iss_device** %3, align 8
  %5 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %6 = load i32, i32* @OMAP4_ISS_MEM_TOP, align 4
  %7 = load i32, i32* @ISS_HL_SYSCONFIG, align 4
  %8 = load i32, i32* @ISS_HL_SYSCONFIG_SOFTRESET, align 4
  %9 = call i32 @iss_reg_set(%struct.iss_device* %5, i32 %6, i32 %7, i32 %8)
  %10 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %11 = load i32, i32* @OMAP4_ISS_MEM_TOP, align 4
  %12 = load i32, i32* @ISS_HL_SYSCONFIG, align 4
  %13 = call i32 @iss_reg_read(%struct.iss_device* %10, i32 %11, i32 %12)
  %14 = load i32, i32* @ISS_HL_SYSCONFIG_SOFTRESET, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i32 @iss_poll_condition_timeout(i32 %18, i32 1000, i32 10, i32 100)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %1
  %23 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %24 = getelementptr inbounds %struct.iss_device, %struct.iss_device* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @dev_err(i32 %25, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @ETIMEDOUT, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %33

29:                                               ; preds = %1
  %30 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %31 = getelementptr inbounds %struct.iss_device, %struct.iss_device* %30, i32 0, i32 0
  %32 = call i32 @media_entity_enum_zero(i32* %31)
  store i32 0, i32* %2, align 4
  br label %33

33:                                               ; preds = %29, %22
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @iss_reg_set(%struct.iss_device*, i32, i32, i32) #1

declare dso_local i32 @iss_poll_condition_timeout(i32, i32, i32, i32) #1

declare dso_local i32 @iss_reg_read(%struct.iss_device*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @media_entity_enum_zero(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
