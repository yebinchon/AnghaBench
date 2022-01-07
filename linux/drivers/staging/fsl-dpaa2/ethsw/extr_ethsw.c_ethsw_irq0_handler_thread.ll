; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fsl-dpaa2/ethsw/extr_ethsw.c_ethsw_irq0_handler_thread.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fsl-dpaa2/ethsw/extr_ethsw.c_ethsw_irq0_handler_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.ethsw_core = type { i32, i32 }

@DPSW_IRQ_EVENT_LINK_CHANGED = common dso_local global i32 0, align 4
@DPSW_IRQ_INDEX_IF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Can't get irq status (err %d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Can't clear irq status (err %d)\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @ethsw_irq0_handler_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ethsw_irq0_handler_thread(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.ethsw_core*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.device*
  store %struct.device* %10, %struct.device** %5, align 8
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = call %struct.ethsw_core* @dev_get_drvdata(%struct.device* %11)
  store %struct.ethsw_core* %12, %struct.ethsw_core** %6, align 8
  %13 = load i32, i32* @DPSW_IRQ_EVENT_LINK_CHANGED, align 4
  %14 = or i32 %13, -65536
  store i32 %14, i32* %7, align 4
  %15 = load %struct.ethsw_core*, %struct.ethsw_core** %6, align 8
  %16 = getelementptr inbounds %struct.ethsw_core, %struct.ethsw_core* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.ethsw_core*, %struct.ethsw_core** %6, align 8
  %19 = getelementptr inbounds %struct.ethsw_core, %struct.ethsw_core* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @DPSW_IRQ_INDEX_IF, align 4
  %22 = call i32 @dpsw_get_irq_status(i32 %17, i32 0, i32 %20, i32 %21, i32* %7)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %44

25:                                               ; preds = %2
  %26 = load %struct.device*, %struct.device** %5, align 8
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @dev_err(%struct.device* %26, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load %struct.ethsw_core*, %struct.ethsw_core** %6, align 8
  %30 = getelementptr inbounds %struct.ethsw_core, %struct.ethsw_core* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.ethsw_core*, %struct.ethsw_core** %6, align 8
  %33 = getelementptr inbounds %struct.ethsw_core, %struct.ethsw_core* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @DPSW_IRQ_INDEX_IF, align 4
  %36 = call i32 @dpsw_clear_irq_status(i32 %31, i32 0, i32 %34, i32 %35, i32 -1)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %25
  %40 = load %struct.device*, %struct.device** %5, align 8
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @dev_err(%struct.device* %40, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  br label %43

43:                                               ; preds = %39, %25
  br label %53

44:                                               ; preds = %2
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @DPSW_IRQ_EVENT_LINK_CHANGED, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load %struct.ethsw_core*, %struct.ethsw_core** %6, align 8
  %51 = call i32 @ethsw_links_state_update(%struct.ethsw_core* %50)
  br label %52

52:                                               ; preds = %49, %44
  br label %53

53:                                               ; preds = %52, %43
  %54 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %54
}

declare dso_local %struct.ethsw_core* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @dpsw_get_irq_status(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @dpsw_clear_irq_status(i32, i32, i32, i32, i32) #1

declare dso_local i32 @ethsw_links_state_update(%struct.ethsw_core*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
