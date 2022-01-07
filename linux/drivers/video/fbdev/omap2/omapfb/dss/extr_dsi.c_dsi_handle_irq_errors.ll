; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dsi.c_dsi_handle_irq_errors.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dsi.c_dsi_handle_irq_errors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.dsi_data = type { i32, i32 }

@DSI_IRQ_ERROR_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"DSI error, irqstatus %x\0A\00", align 1
@debug_irq = common dso_local global i64 0, align 8
@DSI_VC_IRQ_ERROR_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"DSI VC(%d) error, vc irqstatus %x\0A\00", align 1
@DSI_CIO_IRQ_ERROR_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"DSI CIO error, cio irqstatus %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.platform_device*, i32, i32*, i32)* @dsi_handle_irq_errors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dsi_handle_irq_errors(%struct.platform_device* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.dsi_data*, align 8
  %10 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %12 = call %struct.dsi_data* @dsi_get_dsidrv_data(%struct.platform_device* %11)
  store %struct.dsi_data* %12, %struct.dsi_data** %9, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @DSI_IRQ_ERROR_MASK, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %35

17:                                               ; preds = %4
  %18 = load i32, i32* %6, align 4
  %19 = call i32 (i8*, i32, ...) @DSSERR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @print_irq_status(i32 %20)
  %22 = load %struct.dsi_data*, %struct.dsi_data** %9, align 8
  %23 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %22, i32 0, i32 1
  %24 = call i32 @spin_lock(i32* %23)
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @DSI_IRQ_ERROR_MASK, align 4
  %27 = and i32 %25, %26
  %28 = load %struct.dsi_data*, %struct.dsi_data** %9, align 8
  %29 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 4
  %32 = load %struct.dsi_data*, %struct.dsi_data** %9, align 8
  %33 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %32, i32 0, i32 1
  %34 = call i32 @spin_unlock(i32* %33)
  br label %42

35:                                               ; preds = %4
  %36 = load i64, i64* @debug_irq, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @print_irq_status(i32 %39)
  br label %41

41:                                               ; preds = %38, %35
  br label %42

42:                                               ; preds = %41, %17
  store i32 0, i32* %10, align 4
  br label %43

43:                                               ; preds = %83, %42
  %44 = load i32, i32* %10, align 4
  %45 = icmp slt i32 %44, 4
  br i1 %45, label %46, label %86

46:                                               ; preds = %43
  %47 = load i32*, i32** %7, align 8
  %48 = load i32, i32* %10, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @DSI_VC_IRQ_ERROR_MASK, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %70

55:                                               ; preds = %46
  %56 = load i32, i32* %10, align 4
  %57 = load i32*, i32** %7, align 8
  %58 = load i32, i32* %10, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = call i32 (i8*, i32, ...) @DSSERR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %56, i32 %61)
  %63 = load i32, i32* %10, align 4
  %64 = load i32*, i32** %7, align 8
  %65 = load i32, i32* %10, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @print_irq_status_vc(i32 %63, i32 %68)
  br label %82

70:                                               ; preds = %46
  %71 = load i64, i64* @debug_irq, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %70
  %74 = load i32, i32* %10, align 4
  %75 = load i32*, i32** %7, align 8
  %76 = load i32, i32* %10, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @print_irq_status_vc(i32 %74, i32 %79)
  br label %81

81:                                               ; preds = %73, %70
  br label %82

82:                                               ; preds = %81, %55
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %10, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %10, align 4
  br label %43

86:                                               ; preds = %43
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* @DSI_CIO_IRQ_ERROR_MASK, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %86
  %92 = load i32, i32* %8, align 4
  %93 = call i32 (i8*, i32, ...) @DSSERR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %92)
  %94 = load i32, i32* %8, align 4
  %95 = call i32 @print_irq_status_cio(i32 %94)
  br label %103

96:                                               ; preds = %86
  %97 = load i64, i64* @debug_irq, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %96
  %100 = load i32, i32* %8, align 4
  %101 = call i32 @print_irq_status_cio(i32 %100)
  br label %102

102:                                              ; preds = %99, %96
  br label %103

103:                                              ; preds = %102, %91
  ret void
}

declare dso_local %struct.dsi_data* @dsi_get_dsidrv_data(%struct.platform_device*) #1

declare dso_local i32 @DSSERR(i8*, i32, ...) #1

declare dso_local i32 @print_irq_status(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @print_irq_status_vc(i32, i32) #1

declare dso_local i32 @print_irq_status_cio(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
