; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vt6655/extr_card.c_CARDbRadioPowerOn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vt6655/extr_card.c_CARDbRadioPowerOn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnt_private = type { i32, i32, i32, i32, i64, i64 }

@.str = private unnamed_addr constant [18 x i8] c"chester power on\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"chester bHWRadioOff\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"chester bRadioControlOff\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"chester pbRadioOff\0A\00", align 1
@MAC_REG_HOSTCR = common dso_local global i32 0, align 4
@HOSTCR_RXON = common dso_local global i32 0, align 4
@MAC_REG_SOFTPWRCTL = common dso_local global i32 0, align 4
@SOFTPWRCTL_TXPEINV = common dso_local global i32 0, align 4
@SOFTPWRCTL_SWPE1 = common dso_local global i32 0, align 4
@SOFTPWRCTL_SWPE2 = common dso_local global i32 0, align 4
@SOFTPWRCTL_SWPE3 = common dso_local global i32 0, align 4
@MAC_REG_GPIOCTL0 = common dso_local global i32 0, align 4
@LED_ACTSET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CARDbRadioPowerOn(%struct.vnt_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vnt_private*, align 8
  %4 = alloca i32, align 4
  store %struct.vnt_private* %0, %struct.vnt_private** %3, align 8
  store i32 1, i32* %4, align 4
  %5 = call i32 @pr_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %7 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %6, i32 0, i32 4
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %25

10:                                               ; preds = %1
  %11 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %12 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %11, i32 0, i32 5
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = call i32 @pr_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %17

17:                                               ; preds = %15, %10
  %18 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %19 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %18, i32 0, i32 4
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = call i32 @pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %24

24:                                               ; preds = %22, %17
  store i32 0, i32* %2, align 4
  br label %80

25:                                               ; preds = %1
  %26 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %27 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %25
  %31 = call i32 @pr_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %80

32:                                               ; preds = %25
  %33 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %34 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %35 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @BBvExitDeepSleep(%struct.vnt_private* %33, i32 %36)
  %38 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %39 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @MAC_REG_HOSTCR, align 4
  %42 = load i32, i32* @HOSTCR_RXON, align 4
  %43 = call i32 @MACvRegBitsOn(i32 %40, i32 %41, i32 %42)
  %44 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %45 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  switch i32 %46, label %69 [
    i32 128, label %47
    i32 131, label %60
    i32 129, label %60
    i32 130, label %60
  ]

47:                                               ; preds = %32
  %48 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %49 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @MAC_REG_SOFTPWRCTL, align 4
  %52 = load i32, i32* @SOFTPWRCTL_TXPEINV, align 4
  %53 = call i32 @MACvWordRegBitsOn(i32 %50, i32 %51, i32 %52)
  %54 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %55 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @MAC_REG_SOFTPWRCTL, align 4
  %58 = load i32, i32* @SOFTPWRCTL_SWPE1, align 4
  %59 = call i32 @MACvWordRegBitsOff(i32 %56, i32 %57, i32 %58)
  br label %69

60:                                               ; preds = %32, %32, %32
  %61 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %62 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @MAC_REG_SOFTPWRCTL, align 4
  %65 = load i32, i32* @SOFTPWRCTL_SWPE2, align 4
  %66 = load i32, i32* @SOFTPWRCTL_SWPE3, align 4
  %67 = or i32 %65, %66
  %68 = call i32 @MACvWordRegBitsOn(i32 %63, i32 %64, i32 %67)
  br label %69

69:                                               ; preds = %32, %60, %47
  %70 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %71 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %70, i32 0, i32 0
  store i32 0, i32* %71, align 8
  %72 = call i32 @pr_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %73 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %74 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @MAC_REG_GPIOCTL0, align 4
  %77 = load i32, i32* @LED_ACTSET, align 4
  %78 = call i32 @MACvRegBitsOff(i32 %75, i32 %76, i32 %77)
  %79 = load i32, i32* %4, align 4
  store i32 %79, i32* %2, align 4
  br label %80

80:                                               ; preds = %69, %30, %24
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @BBvExitDeepSleep(%struct.vnt_private*, i32) #1

declare dso_local i32 @MACvRegBitsOn(i32, i32, i32) #1

declare dso_local i32 @MACvWordRegBitsOn(i32, i32, i32) #1

declare dso_local i32 @MACvWordRegBitsOff(i32, i32, i32) #1

declare dso_local i32 @MACvRegBitsOff(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
