; ModuleID = '/home/carl/AnghaBench/linux/drivers/pcmcia/extr_xxs1500_ss.c_xxs1500_pcmcia_get_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pcmcia/extr_xxs1500_ss.c_xxs1500_pcmcia_get_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_socket = type { i32 }

@GPIO_CDA = common dso_local global i32 0, align 4
@GPIO_CDB = common dso_local global i32 0, align 4
@SS_DETECT = common dso_local global i32 0, align 4
@GPIO_VSL = common dso_local global i32 0, align 4
@GPIO_VSH = common dso_local global i32 0, align 4
@SS_3VCARD = common dso_local global i32 0, align 4
@SS_XVCARD = common dso_local global i32 0, align 4
@GPIO_POWER = common dso_local global i32 0, align 4
@SS_POWERON = common dso_local global i32 0, align 4
@GPIO_RESET = common dso_local global i32 0, align 4
@SS_RESET = common dso_local global i32 0, align 4
@SS_READY = common dso_local global i32 0, align 4
@GPIO_BATTDEAD = common dso_local global i32 0, align 4
@SS_BATDEAD = common dso_local global i32 0, align 4
@GPIO_BATTWARN = common dso_local global i32 0, align 4
@SS_BATWARN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcmcia_socket*, i32*)* @xxs1500_pcmcia_get_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xxs1500_pcmcia_get_status(%struct.pcmcia_socket* %0, i32* %1) #0 {
  %3 = alloca %struct.pcmcia_socket*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.pcmcia_socket* %0, %struct.pcmcia_socket** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %5, align 4
  %7 = load i32, i32* @GPIO_CDA, align 4
  %8 = call i64 @gpio_get_value(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %18, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* @GPIO_CDB, align 4
  %12 = call i64 @gpio_get_value(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = load i32, i32* @SS_DETECT, align 4
  %16 = load i32, i32* %5, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %5, align 4
  br label %18

18:                                               ; preds = %14, %10, %2
  %19 = load i32, i32* @GPIO_VSL, align 4
  %20 = call i64 @gpio_get_value(i32 %19)
  %21 = icmp ne i64 %20, 0
  %22 = xor i1 %21, true
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = load i32, i32* @GPIO_VSH, align 4
  %26 = call i64 @gpio_get_value(i32 %25)
  %27 = icmp ne i64 %26, 0
  %28 = xor i1 %27, true
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = shl i32 %30, 1
  %32 = or i32 %24, %31
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  switch i32 %33, label %39 [
    i32 0, label %34
    i32 1, label %34
    i32 2, label %34
    i32 3, label %38
  ]

34:                                               ; preds = %18, %18, %18
  %35 = load i32, i32* @SS_3VCARD, align 4
  %36 = load i32, i32* %5, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %5, align 4
  br label %43

38:                                               ; preds = %18
  br label %39

39:                                               ; preds = %18, %38
  %40 = load i32, i32* @SS_XVCARD, align 4
  %41 = load i32, i32* %5, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %5, align 4
  br label %43

43:                                               ; preds = %39, %34
  %44 = load i32, i32* @GPIO_POWER, align 4
  %45 = call i64 @gpio_get_value(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  br label %50

48:                                               ; preds = %43
  %49 = load i32, i32* @SS_POWERON, align 4
  br label %50

50:                                               ; preds = %48, %47
  %51 = phi i32 [ 0, %47 ], [ %49, %48 ]
  %52 = load i32, i32* %5, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* @GPIO_RESET, align 4
  %55 = call i64 @gpio_get_value(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %50
  %58 = load i32, i32* @SS_RESET, align 4
  br label %61

59:                                               ; preds = %50
  %60 = load i32, i32* @SS_READY, align 4
  br label %61

61:                                               ; preds = %59, %57
  %62 = phi i32 [ %58, %57 ], [ %60, %59 ]
  %63 = load i32, i32* %5, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %5, align 4
  %65 = load i32, i32* @GPIO_BATTDEAD, align 4
  %66 = call i64 @gpio_get_value(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %61
  br label %71

69:                                               ; preds = %61
  %70 = load i32, i32* @SS_BATDEAD, align 4
  br label %71

71:                                               ; preds = %69, %68
  %72 = phi i32 [ 0, %68 ], [ %70, %69 ]
  %73 = load i32, i32* %5, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %5, align 4
  %75 = load i32, i32* @GPIO_BATTWARN, align 4
  %76 = call i64 @gpio_get_value(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %71
  br label %81

79:                                               ; preds = %71
  %80 = load i32, i32* @SS_BATWARN, align 4
  br label %81

81:                                               ; preds = %79, %78
  %82 = phi i32 [ 0, %78 ], [ %80, %79 ]
  %83 = load i32, i32* %5, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %5, align 4
  %85 = load i32, i32* %5, align 4
  %86 = load i32*, i32** %4, align 8
  store i32 %85, i32* %86, align 4
  ret i32 0
}

declare dso_local i64 @gpio_get_value(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
