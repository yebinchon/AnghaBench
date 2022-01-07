; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/sm750fb/extr_sm750_hw.c_hw_sm750_initAccel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/sm750fb/extr_sm750_hw.c_hw_sm750_initAccel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sm750_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.TYPE_2__*)* }

@SM750LE = common dso_local global i64 0, align 8
@DE_STATE1 = common dso_local global i32 0, align 4
@DE_STATE1_DE_ABORT = common dso_local global i32 0, align 4
@SYSTEM_CTRL = common dso_local global i32 0, align 4
@SYSTEM_CTRL_DE_ABORT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hw_sm750_initAccel(%struct.sm750_dev* %0) #0 {
  %2 = alloca %struct.sm750_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.sm750_dev* %0, %struct.sm750_dev** %2, align 8
  %4 = call i32 @sm750_enable_2d_engine(i32 1)
  %5 = call i64 (...) @sm750_get_chip_type()
  %6 = load i64, i64* @SM750LE, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %26

8:                                                ; preds = %1
  %9 = load i32, i32* @DE_STATE1, align 4
  %10 = call i32 @peek32(i32 %9)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* @DE_STATE1_DE_ABORT, align 4
  %12 = load i32, i32* %3, align 4
  %13 = or i32 %12, %11
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* @DE_STATE1, align 4
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @poke32(i32 %14, i32 %15)
  %17 = load i32, i32* @DE_STATE1, align 4
  %18 = call i32 @peek32(i32 %17)
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* @DE_STATE1_DE_ABORT, align 4
  %20 = xor i32 %19, -1
  %21 = load i32, i32* %3, align 4
  %22 = and i32 %21, %20
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* @DE_STATE1, align 4
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @poke32(i32 %23, i32 %24)
  br label %44

26:                                               ; preds = %1
  %27 = load i32, i32* @SYSTEM_CTRL, align 4
  %28 = call i32 @peek32(i32 %27)
  store i32 %28, i32* %3, align 4
  %29 = load i32, i32* @SYSTEM_CTRL_DE_ABORT, align 4
  %30 = load i32, i32* %3, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %3, align 4
  %32 = load i32, i32* @SYSTEM_CTRL, align 4
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @poke32(i32 %32, i32 %33)
  %35 = load i32, i32* @SYSTEM_CTRL, align 4
  %36 = call i32 @peek32(i32 %35)
  store i32 %36, i32* %3, align 4
  %37 = load i32, i32* @SYSTEM_CTRL_DE_ABORT, align 4
  %38 = xor i32 %37, -1
  %39 = load i32, i32* %3, align 4
  %40 = and i32 %39, %38
  store i32 %40, i32* %3, align 4
  %41 = load i32, i32* @SYSTEM_CTRL, align 4
  %42 = load i32, i32* %3, align 4
  %43 = call i32 @poke32(i32 %41, i32 %42)
  br label %44

44:                                               ; preds = %26, %8
  %45 = load %struct.sm750_dev*, %struct.sm750_dev** %2, align 8
  %46 = getelementptr inbounds %struct.sm750_dev, %struct.sm750_dev* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32 (%struct.TYPE_2__*)*, i32 (%struct.TYPE_2__*)** %47, align 8
  %49 = load %struct.sm750_dev*, %struct.sm750_dev** %2, align 8
  %50 = getelementptr inbounds %struct.sm750_dev, %struct.sm750_dev* %49, i32 0, i32 0
  %51 = call i32 %48(%struct.TYPE_2__* %50)
  ret void
}

declare dso_local i32 @sm750_enable_2d_engine(i32) #1

declare dso_local i64 @sm750_get_chip_type(...) #1

declare dso_local i32 @peek32(i32) #1

declare dso_local i32 @poke32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
