; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/isdn/avm/extr_c4.c_c4_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/isdn/avm/extr_c4.c_c4_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@DOORBELL = common dso_local global i64 0, align 8
@DBELL_RESET_ARM = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@DBELL_ADDR = common dso_local global i32 0, align 4
@DC21285_ARMCSR_BASE = common dso_local global i64 0, align 8
@CHAN_1_CONTROL = common dso_local global i64 0, align 8
@CHAN_2_CONTROL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*)* @c4_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @c4_reset(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %4 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @DOORBELL, align 8
  %8 = add nsw i64 %6, %7
  %9 = load i32, i32* @DBELL_RESET_ARM, align 4
  %10 = call i32 @c4outmeml(i64 %8, i32 %9)
  %11 = load i32, i32* @jiffies, align 4
  %12 = load i32, i32* @HZ, align 4
  %13 = mul nsw i32 %12, 10
  %14 = add nsw i32 %11, %13
  %15 = sext i32 %14 to i64
  store i64 %15, i64* %3, align 8
  br label %16

16:                                               ; preds = %30, %1
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @DOORBELL, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @c4inmeml(i64 %21)
  %23 = icmp ne i32 %22, -1
  br i1 %23, label %24, label %39

24:                                               ; preds = %16
  %25 = load i32, i32* @jiffies, align 4
  %26 = load i64, i64* %3, align 8
  %27 = call i32 @time_before(i32 %25, i64 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %24
  br label %50

30:                                               ; preds = %24
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @DOORBELL, align 8
  %35 = add nsw i64 %33, %34
  %36 = load i32, i32* @DBELL_ADDR, align 4
  %37 = call i32 @c4outmeml(i64 %35, i32 %36)
  %38 = call i32 (...) @mb()
  br label %16

39:                                               ; preds = %16
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %41 = load i64, i64* @DC21285_ARMCSR_BASE, align 8
  %42 = load i64, i64* @CHAN_1_CONTROL, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @c4_poke(%struct.TYPE_4__* %40, i64 %43, i32 0)
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %46 = load i64, i64* @DC21285_ARMCSR_BASE, align 8
  %47 = load i64, i64* @CHAN_2_CONTROL, align 8
  %48 = add nsw i64 %46, %47
  %49 = call i32 @c4_poke(%struct.TYPE_4__* %45, i64 %48, i32 0)
  br label %50

50:                                               ; preds = %39, %29
  ret void
}

declare dso_local i32 @c4outmeml(i64, i32) #1

declare dso_local i32 @c4inmeml(i64) #1

declare dso_local i32 @time_before(i32, i64) #1

declare dso_local i32 @mb(...) #1

declare dso_local i32 @c4_poke(%struct.TYPE_4__*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
