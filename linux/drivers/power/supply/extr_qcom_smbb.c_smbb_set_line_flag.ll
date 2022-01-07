; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_qcom_smbb.c_smbb_set_line_flag.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_qcom_smbb.c_smbb_set_line_flag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smbb_charger = type { i32, i32, i32 }

@IRQCHIP_STATE_LINE_LEVEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"failed to read irq line\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"status = %03lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.smbb_charger*, i32, i32)* @smbb_set_line_flag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smbb_set_line_flag(%struct.smbb_charger* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.smbb_charger*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.smbb_charger* %0, %struct.smbb_charger** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @IRQCHIP_STATE_LINE_LEVEL, align 4
  %11 = call i32 @irq_get_irqchip_state(i32 %9, i32 %10, i32* %7)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %3
  %15 = load %struct.smbb_charger*, %struct.smbb_charger** %4, align 8
  %16 = getelementptr inbounds %struct.smbb_charger, %struct.smbb_charger* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @dev_err(i32 %17, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %49

19:                                               ; preds = %3
  %20 = load %struct.smbb_charger*, %struct.smbb_charger** %4, align 8
  %21 = getelementptr inbounds %struct.smbb_charger, %struct.smbb_charger* %20, i32 0, i32 2
  %22 = call i32 @mutex_lock(i32* %21)
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %19
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.smbb_charger*, %struct.smbb_charger** %4, align 8
  %28 = getelementptr inbounds %struct.smbb_charger, %struct.smbb_charger* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %29, %26
  store i32 %30, i32* %28, align 4
  br label %38

31:                                               ; preds = %19
  %32 = load i32, i32* %6, align 4
  %33 = xor i32 %32, -1
  %34 = load %struct.smbb_charger*, %struct.smbb_charger** %4, align 8
  %35 = getelementptr inbounds %struct.smbb_charger, %struct.smbb_charger* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %36, %33
  store i32 %37, i32* %35, align 4
  br label %38

38:                                               ; preds = %31, %25
  %39 = load %struct.smbb_charger*, %struct.smbb_charger** %4, align 8
  %40 = getelementptr inbounds %struct.smbb_charger, %struct.smbb_charger* %39, i32 0, i32 2
  %41 = call i32 @mutex_unlock(i32* %40)
  %42 = load %struct.smbb_charger*, %struct.smbb_charger** %4, align 8
  %43 = getelementptr inbounds %struct.smbb_charger, %struct.smbb_charger* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.smbb_charger*, %struct.smbb_charger** %4, align 8
  %46 = getelementptr inbounds %struct.smbb_charger, %struct.smbb_charger* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @dev_dbg(i32 %44, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  br label %49

49:                                               ; preds = %38, %14
  ret void
}

declare dso_local i32 @irq_get_irqchip_state(i32, i32, i32*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
