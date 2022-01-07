; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/intel/extr_intel_powerclamp.c_find_target_mwait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/intel/extr_intel_powerclamp.c_find_target_mwait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@boot_cpu_data = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@CPUID_MWAIT_LEAF = common dso_local global i64 0, align 8
@CPUID5_ECX_EXTENSIONS_SUPPORTED = common dso_local global i32 0, align 4
@CPUID5_ECX_INTERRUPT_BREAK = common dso_local global i32 0, align 4
@MWAIT_SUBSTATE_SIZE = common dso_local global i32 0, align 4
@MWAIT_SUBSTATE_MASK = common dso_local global i32 0, align 4
@target_mwait = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @find_target_mwait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @find_target_mwait() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %8 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @boot_cpu_data, i32 0, i32 0), align 8
  %9 = load i64, i64* @CPUID_MWAIT_LEAF, align 8
  %10 = icmp slt i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %0
  br label %61

12:                                               ; preds = %0
  %13 = load i64, i64* @CPUID_MWAIT_LEAF, align 8
  %14 = call i32 @cpuid(i64 %13, i32* %1, i32* %2, i32* %3, i32* %4)
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @CPUID5_ECX_EXTENSIONS_SUPPORTED, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %12
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @CPUID5_ECX_INTERRUPT_BREAK, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %19, %12
  br label %61

25:                                               ; preds = %19
  %26 = load i32, i32* @MWAIT_SUBSTATE_SIZE, align 4
  %27 = load i32, i32* %4, align 4
  %28 = lshr i32 %27, %26
  store i32 %28, i32* %4, align 4
  store i32 0, i32* %7, align 4
  br label %29

29:                                               ; preds = %48, %25
  %30 = load i32, i32* %7, align 4
  %31 = icmp slt i32 %30, 7
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %33, 0
  br label %35

35:                                               ; preds = %32, %29
  %36 = phi i1 [ false, %29 ], [ %34, %32 ]
  br i1 %36, label %37, label %54

37:                                               ; preds = %35
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @MWAIT_SUBSTATE_MASK, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = load i32, i32* %7, align 4
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* @MWAIT_SUBSTATE_MASK, align 4
  %46 = and i32 %44, %45
  store i32 %46, i32* %6, align 4
  br label %47

47:                                               ; preds = %42, %37
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %7, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* @MWAIT_SUBSTATE_SIZE, align 4
  %52 = load i32, i32* %4, align 4
  %53 = lshr i32 %52, %51
  store i32 %53, i32* %4, align 4
  br label %29

54:                                               ; preds = %35
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* @MWAIT_SUBSTATE_SIZE, align 4
  %57 = shl i32 %55, %56
  %58 = load i32, i32* %6, align 4
  %59 = sub i32 %58, 1
  %60 = or i32 %57, %59
  store i32 %60, i32* @target_mwait, align 4
  br label %61

61:                                               ; preds = %54, %24, %11
  ret void
}

declare dso_local i32 @cpuid(i64, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
