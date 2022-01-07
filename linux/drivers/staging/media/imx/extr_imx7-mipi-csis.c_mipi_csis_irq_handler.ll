; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx7-mipi-csis.c_mipi_csis_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx7-mipi-csis.c_mipi_csis_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csi_state = type { i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32, i32 }

@MIPI_CSIS_INTSRC = common dso_local global i32 0, align 4
@MIPI_CSIS_INTSRC_ERRORS = common dso_local global i32 0, align 4
@MIPI_CSIS_NUM_EVENTS = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @mipi_csis_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mipi_csis_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.csi_state*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.csi_state*
  store %struct.csi_state* %10, %struct.csi_state** %5, align 8
  %11 = load %struct.csi_state*, %struct.csi_state** %5, align 8
  %12 = load i32, i32* @MIPI_CSIS_INTSRC, align 4
  %13 = call i32 @mipi_csis_read(%struct.csi_state* %11, i32 %12)
  store i32 %13, i32* %8, align 4
  %14 = load %struct.csi_state*, %struct.csi_state** %5, align 8
  %15 = getelementptr inbounds %struct.csi_state, %struct.csi_state* %14, i32 0, i32 0
  %16 = load i64, i64* %6, align 8
  %17 = call i32 @spin_lock_irqsave(i32* %15, i64 %16)
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @MIPI_CSIS_INTSRC_ERRORS, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %2
  %23 = load %struct.csi_state*, %struct.csi_state** %5, align 8
  %24 = getelementptr inbounds %struct.csi_state, %struct.csi_state* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %59

27:                                               ; preds = %22, %2
  store i32 0, i32* %7, align 4
  br label %28

28:                                               ; preds = %55, %27
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @MIPI_CSIS_NUM_EVENTS, align 4
  %31 = icmp ult i32 %29, %30
  br i1 %31, label %32, label %58

32:                                               ; preds = %28
  %33 = load i32, i32* %8, align 4
  %34 = load %struct.csi_state*, %struct.csi_state** %5, align 8
  %35 = getelementptr inbounds %struct.csi_state, %struct.csi_state* %34, i32 0, i32 1
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = load i32, i32* %7, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %33, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %32
  br label %55

45:                                               ; preds = %32
  %46 = load %struct.csi_state*, %struct.csi_state** %5, align 8
  %47 = getelementptr inbounds %struct.csi_state, %struct.csi_state* %46, i32 0, i32 1
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = load i32, i32* %7, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %52, align 4
  br label %55

55:                                               ; preds = %45, %44
  %56 = load i32, i32* %7, align 4
  %57 = add i32 %56, 1
  store i32 %57, i32* %7, align 4
  br label %28

58:                                               ; preds = %28
  br label %59

59:                                               ; preds = %58, %22
  %60 = load %struct.csi_state*, %struct.csi_state** %5, align 8
  %61 = getelementptr inbounds %struct.csi_state, %struct.csi_state* %60, i32 0, i32 0
  %62 = load i64, i64* %6, align 8
  %63 = call i32 @spin_unlock_irqrestore(i32* %61, i64 %62)
  %64 = load %struct.csi_state*, %struct.csi_state** %5, align 8
  %65 = load i32, i32* @MIPI_CSIS_INTSRC, align 4
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @mipi_csis_write(%struct.csi_state* %64, i32 %65, i32 %66)
  %68 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %68
}

declare dso_local i32 @mipi_csis_read(%struct.csi_state*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @mipi_csis_write(%struct.csi_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
