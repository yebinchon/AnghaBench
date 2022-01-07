; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic79xx_core.c_ahd_probe_stack_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic79xx_core.c_ahd_probe_stack_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahd_softc = type { i32 }

@STACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahd_softc*)* @ahd_probe_stack_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ahd_probe_stack_size(%struct.ahd_softc* %0) #0 {
  %2 = alloca %struct.ahd_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ahd_softc* %0, %struct.ahd_softc** %2, align 8
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %1, %50
  store i32 1, i32* %4, align 4
  br label %7

7:                                                ; preds = %24, %6
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* %3, align 4
  %10 = add nsw i32 %9, 1
  %11 = icmp sle i32 %8, %10
  br i1 %11, label %12, label %27

12:                                               ; preds = %7
  %13 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %14 = load i32, i32* @STACK, align 4
  %15 = load i32, i32* %4, align 4
  %16 = and i32 %15, 255
  %17 = call i32 @ahd_outb(%struct.ahd_softc* %13, i32 %14, i32 %16)
  %18 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %19 = load i32, i32* @STACK, align 4
  %20 = load i32, i32* %4, align 4
  %21 = ashr i32 %20, 8
  %22 = and i32 %21, 255
  %23 = call i32 @ahd_outb(%struct.ahd_softc* %18, i32 %19, i32 %22)
  br label %24

24:                                               ; preds = %12
  %25 = load i32, i32* %4, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %4, align 4
  br label %7

27:                                               ; preds = %7
  %28 = load i32, i32* %3, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %4, align 4
  br label %30

30:                                               ; preds = %47, %27
  %31 = load i32, i32* %4, align 4
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %50

33:                                               ; preds = %30
  %34 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %35 = load i32, i32* @STACK, align 4
  %36 = call i32 @ahd_inb(%struct.ahd_softc* %34, i32 %35)
  %37 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %38 = load i32, i32* @STACK, align 4
  %39 = call i32 @ahd_inb(%struct.ahd_softc* %37, i32 %38)
  %40 = shl i32 %39, 8
  %41 = or i32 %36, %40
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* %4, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %33
  br label %53

46:                                               ; preds = %33
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %4, align 4
  %49 = add nsw i32 %48, -1
  store i32 %49, i32* %4, align 4
  br label %30

50:                                               ; preds = %30
  %51 = load i32, i32* %3, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %3, align 4
  br label %6

53:                                               ; preds = %45
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @ahd_outb(%struct.ahd_softc*, i32, i32) #1

declare dso_local i32 @ahd_inb(%struct.ahd_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
