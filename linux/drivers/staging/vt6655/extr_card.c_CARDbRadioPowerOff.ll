; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vt6655/extr_card.c_CARDbRadioPowerOff.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vt6655/extr_card.c_CARDbRadioPowerOff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnt_private = type { i32, i32, i32, i32 }

@MAC_REG_SOFTPWRCTL = common dso_local global i32 0, align 4
@SOFTPWRCTL_TXPEINV = common dso_local global i32 0, align 4
@SOFTPWRCTL_SWPE1 = common dso_local global i32 0, align 4
@SOFTPWRCTL_SWPE2 = common dso_local global i32 0, align 4
@SOFTPWRCTL_SWPE3 = common dso_local global i32 0, align 4
@MAC_REG_HOSTCR = common dso_local global i32 0, align 4
@HOSTCR_RXON = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"chester power off\0A\00", align 1
@MAC_REG_GPIOCTL0 = common dso_local global i32 0, align 4
@LED_ACTSET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CARDbRadioPowerOff(%struct.vnt_private* %0) #0 {
  %2 = alloca %struct.vnt_private*, align 8
  store %struct.vnt_private* %0, %struct.vnt_private** %2, align 8
  %3 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %4 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %59

8:                                                ; preds = %1
  %9 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %10 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %38 [
    i32 128, label %12
    i32 131, label %25
    i32 129, label %25
    i32 130, label %25
  ]

12:                                               ; preds = %8
  %13 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %14 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @MAC_REG_SOFTPWRCTL, align 4
  %17 = load i32, i32* @SOFTPWRCTL_TXPEINV, align 4
  %18 = call i32 @MACvWordRegBitsOff(i32 %15, i32 %16, i32 %17)
  %19 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %20 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @MAC_REG_SOFTPWRCTL, align 4
  %23 = load i32, i32* @SOFTPWRCTL_SWPE1, align 4
  %24 = call i32 @MACvWordRegBitsOn(i32 %21, i32 %22, i32 %23)
  br label %38

25:                                               ; preds = %8, %8, %8
  %26 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %27 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @MAC_REG_SOFTPWRCTL, align 4
  %30 = load i32, i32* @SOFTPWRCTL_SWPE2, align 4
  %31 = call i32 @MACvWordRegBitsOff(i32 %28, i32 %29, i32 %30)
  %32 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %33 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @MAC_REG_SOFTPWRCTL, align 4
  %36 = load i32, i32* @SOFTPWRCTL_SWPE3, align 4
  %37 = call i32 @MACvWordRegBitsOff(i32 %34, i32 %35, i32 %36)
  br label %38

38:                                               ; preds = %8, %25, %12
  %39 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %40 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @MAC_REG_HOSTCR, align 4
  %43 = load i32, i32* @HOSTCR_RXON, align 4
  %44 = call i32 @MACvRegBitsOff(i32 %41, i32 %42, i32 %43)
  %45 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %46 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %47 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @BBvSetDeepSleep(%struct.vnt_private* %45, i32 %48)
  %50 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %51 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %50, i32 0, i32 0
  store i32 1, i32* %51, align 4
  %52 = call i32 @pr_debug(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %53 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %54 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @MAC_REG_GPIOCTL0, align 4
  %57 = load i32, i32* @LED_ACTSET, align 4
  %58 = call i32 @MACvRegBitsOn(i32 %55, i32 %56, i32 %57)
  br label %59

59:                                               ; preds = %38, %7
  ret void
}

declare dso_local i32 @MACvWordRegBitsOff(i32, i32, i32) #1

declare dso_local i32 @MACvWordRegBitsOn(i32, i32, i32) #1

declare dso_local i32 @MACvRegBitsOff(i32, i32, i32) #1

declare dso_local i32 @BBvSetDeepSleep(%struct.vnt_private*, i32) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @MACvRegBitsOn(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
