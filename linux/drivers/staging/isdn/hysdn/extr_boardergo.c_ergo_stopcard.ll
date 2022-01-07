; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/isdn/hysdn/extr_boardergo.c_ergo_stopcard.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/isdn/hysdn/extr_boardergo.c_ergo_stopcard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i64, i64 }

@PCI9050_INTR_REG = common dso_local global i64 0, align 8
@PCI9050_INTR_REG_ENPCI = common dso_local global i8 0, align 1
@PCI9050_INTR_REG_EN1 = common dso_local global i8 0, align 1
@PCI9050_USER_IO = common dso_local global i64 0, align 8
@PCI9050_E1_RESET = common dso_local global i8 0, align 1
@CARD_STATE_UNUSED = common dso_local global i32 0, align 4
@ERRLOG_STATE_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*)* @ergo_stopcard to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ergo_stopcard(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8, align 1
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %6 = call i32 @hysdn_net_release(%struct.TYPE_5__* %5)
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load i64, i64* %3, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 3
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @PCI9050_INTR_REG, align 8
  %15 = add nsw i64 %13, %14
  %16 = call zeroext i8 @bytein(i64 %15)
  store i8 %16, i8* %4, align 1
  %17 = load i8, i8* @PCI9050_INTR_REG_ENPCI, align 1
  %18 = zext i8 %17 to i32
  %19 = load i8, i8* @PCI9050_INTR_REG_EN1, align 1
  %20 = zext i8 %19 to i32
  %21 = or i32 %18, %20
  %22 = xor i32 %21, -1
  %23 = load i8, i8* %4, align 1
  %24 = zext i8 %23 to i32
  %25 = and i32 %24, %22
  %26 = trunc i32 %25 to i8
  store i8 %26, i8* %4, align 1
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @PCI9050_INTR_REG, align 8
  %31 = add nsw i64 %29, %30
  %32 = load i8, i8* %4, align 1
  %33 = call i32 @byteout(i64 %31, i8 zeroext %32)
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 4
  store i64 0, i64* %35, align 8
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @PCI9050_USER_IO, align 8
  %40 = add nsw i64 %38, %39
  %41 = load i8, i8* @PCI9050_E1_RESET, align 1
  %42 = call i32 @byteout(i64 %40, i8 zeroext %41)
  %43 = load i32, i32* @CARD_STATE_UNUSED, align 4
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 8
  %46 = load i32, i32* @ERRLOG_STATE_OFF, align 4
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i64, i64* %3, align 8
  %52 = call i32 @spin_unlock_irqrestore(i32* %50, i64 %51)
  ret void
}

declare dso_local i32 @hysdn_net_release(%struct.TYPE_5__*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local zeroext i8 @bytein(i64) #1

declare dso_local i32 @byteout(i64, i8 zeroext) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
