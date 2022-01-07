; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic7xxx_core.c_ahc_pause_and_flushwork.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic7xxx_core.c_ahc_pause_and_flushwork.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahc_softc = type { i32, i32 }

@AHC_ALL_INTERRUPTS = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@SCSISEQ = common dso_local global i32 0, align 4
@ENSELO = common dso_local global i32 0, align 4
@INTSTAT = common dso_local global i32 0, align 4
@INT_PEND = common dso_local global i32 0, align 4
@AHC_REMOVABLE = common dso_local global i32 0, align 4
@SSTAT0 = common dso_local global i32 0, align 4
@SELDO = common dso_local global i32 0, align 4
@SELINGO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Infinite interrupt loop, INTSTAT = %x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ahc_pause_and_flushwork(%struct.ahc_softc* %0) #0 {
  %2 = alloca %struct.ahc_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ahc_softc* %0, %struct.ahc_softc** %2, align 8
  store i32 1000, i32* %4, align 4
  %6 = load i32, i32* @AHC_ALL_INTERRUPTS, align 4
  %7 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %8 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = or i32 %9, %6
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* @FALSE, align 4
  store i32 %11, i32* %5, align 4
  br label %12

12:                                               ; preds = %78, %1
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %12
  %16 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %17 = call i32 @ahc_unpause(%struct.ahc_softc* %16)
  %18 = call i32 @ahc_delay(i32 500)
  br label %19

19:                                               ; preds = %15, %12
  %20 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %21 = call i32 @ahc_intr(%struct.ahc_softc* %20)
  %22 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %23 = call i32 @ahc_pause(%struct.ahc_softc* %22)
  %24 = load i32, i32* @TRUE, align 4
  store i32 %24, i32* %5, align 4
  %25 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %26 = load i32, i32* @SCSISEQ, align 4
  %27 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %28 = load i32, i32* @SCSISEQ, align 4
  %29 = call i32 @ahc_inb(%struct.ahc_softc* %27, i32 %28)
  %30 = load i32, i32* @ENSELO, align 4
  %31 = xor i32 %30, -1
  %32 = and i32 %29, %31
  %33 = call i32 @ahc_outb(%struct.ahc_softc* %25, i32 %26, i32 %32)
  %34 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %35 = load i32, i32* @INTSTAT, align 4
  %36 = call i32 @ahc_inb(%struct.ahc_softc* %34, i32 %35)
  store i32 %36, i32* %3, align 4
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* @INT_PEND, align 4
  %39 = and i32 %37, %38
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %19
  %42 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %43 = call i32 @ahc_clear_critical_section(%struct.ahc_softc* %42)
  %44 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %45 = load i32, i32* @INTSTAT, align 4
  %46 = call i32 @ahc_inb(%struct.ahc_softc* %44, i32 %45)
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %41, %19
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %4, align 4
  %50 = add nsw i32 %49, -1
  store i32 %50, i32* %4, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %78

52:                                               ; preds = %48
  %53 = load i32, i32* %3, align 4
  %54 = icmp ne i32 %53, 255
  br i1 %54, label %62, label %55

55:                                               ; preds = %52
  %56 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %57 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @AHC_REMOVABLE, align 4
  %60 = and i32 %58, %59
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %78

62:                                               ; preds = %55, %52
  %63 = load i32, i32* %3, align 4
  %64 = load i32, i32* @INT_PEND, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %76, label %67

67:                                               ; preds = %62
  %68 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %69 = load i32, i32* @SSTAT0, align 4
  %70 = call i32 @ahc_inb(%struct.ahc_softc* %68, i32 %69)
  %71 = load i32, i32* @SELDO, align 4
  %72 = load i32, i32* @SELINGO, align 4
  %73 = or i32 %71, %72
  %74 = and i32 %70, %73
  %75 = icmp ne i32 %74, 0
  br label %76

76:                                               ; preds = %67, %62
  %77 = phi i1 [ true, %62 ], [ %75, %67 ]
  br label %78

78:                                               ; preds = %76, %55, %48
  %79 = phi i1 [ false, %55 ], [ false, %48 ], [ %77, %76 ]
  br i1 %79, label %12, label %80

80:                                               ; preds = %78
  %81 = load i32, i32* %4, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %80
  %84 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %85 = load i32, i32* @INTSTAT, align 4
  %86 = call i32 @ahc_inb(%struct.ahc_softc* %84, i32 %85)
  %87 = call i32 @printk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %86)
  br label %88

88:                                               ; preds = %83, %80
  %89 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %90 = call i32 @ahc_platform_flushwork(%struct.ahc_softc* %89)
  %91 = load i32, i32* @AHC_ALL_INTERRUPTS, align 4
  %92 = xor i32 %91, -1
  %93 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %94 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = and i32 %95, %92
  store i32 %96, i32* %94, align 4
  ret void
}

declare dso_local i32 @ahc_unpause(%struct.ahc_softc*) #1

declare dso_local i32 @ahc_delay(i32) #1

declare dso_local i32 @ahc_intr(%struct.ahc_softc*) #1

declare dso_local i32 @ahc_pause(%struct.ahc_softc*) #1

declare dso_local i32 @ahc_outb(%struct.ahc_softc*, i32, i32) #1

declare dso_local i32 @ahc_inb(%struct.ahc_softc*, i32) #1

declare dso_local i32 @ahc_clear_critical_section(%struct.ahc_softc*) #1

declare dso_local i32 @printk(i8*, i32) #1

declare dso_local i32 @ahc_platform_flushwork(%struct.ahc_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
