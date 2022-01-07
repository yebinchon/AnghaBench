; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/meson/vdec/extr_esparser.c_esparser_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/meson/vdec/extr_esparser.c_esparser_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.amvdec_core = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"esparser\00", align 1
@esparser_isr = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"esparserirq\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Failed requesting ESPARSER IRQ\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Failed to get esparser_reset\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @esparser_init(%struct.platform_device* %0, %struct.amvdec_core* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.amvdec_core*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store %struct.amvdec_core* %1, %struct.amvdec_core** %5, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %6, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %12 = call i32 @platform_get_irq_byname(%struct.platform_device* %11, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %8, align 4
  store i32 %16, i32* %3, align 4
  br label %48

17:                                               ; preds = %2
  %18 = load %struct.device*, %struct.device** %6, align 8
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @esparser_isr, align 4
  %21 = load i32, i32* @IRQF_SHARED, align 4
  %22 = load %struct.amvdec_core*, %struct.amvdec_core** %5, align 8
  %23 = call i32 @devm_request_irq(%struct.device* %18, i32 %19, i32 %20, i32 %21, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), %struct.amvdec_core* %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %17
  %27 = load %struct.device*, %struct.device** %6, align 8
  %28 = call i32 @dev_err(%struct.device* %27, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %29 = load i32, i32* %7, align 4
  store i32 %29, i32* %3, align 4
  br label %48

30:                                               ; preds = %17
  %31 = load %struct.device*, %struct.device** %6, align 8
  %32 = call i32 @devm_reset_control_get_exclusive(%struct.device* %31, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %33 = load %struct.amvdec_core*, %struct.amvdec_core** %5, align 8
  %34 = getelementptr inbounds %struct.amvdec_core, %struct.amvdec_core* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load %struct.amvdec_core*, %struct.amvdec_core** %5, align 8
  %36 = getelementptr inbounds %struct.amvdec_core, %struct.amvdec_core* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @IS_ERR(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %30
  %41 = load %struct.device*, %struct.device** %6, align 8
  %42 = call i32 @dev_err(%struct.device* %41, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %43 = load %struct.amvdec_core*, %struct.amvdec_core** %5, align 8
  %44 = getelementptr inbounds %struct.amvdec_core, %struct.amvdec_core* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @PTR_ERR(i32 %45)
  store i32 %46, i32* %3, align 4
  br label %48

47:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %47, %40, %26, %15
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @platform_get_irq_byname(%struct.platform_device*, i8*) #1

declare dso_local i32 @devm_request_irq(%struct.device*, i32, i32, i32, i8*, %struct.amvdec_core*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @devm_reset_control_get_exclusive(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
