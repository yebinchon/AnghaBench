; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/musb/extr_musb_dsps.c_dsps_setup_optional_vbus_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/musb/extr_musb_dsps.c_dsps_setup_optional_vbus_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.dsps_glue = type { i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"vbus\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@dsps_vbus_threaded_irq = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"VBUS irq %i configured\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, %struct.dsps_glue*)* @dsps_setup_optional_vbus_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsps_setup_optional_vbus_irq(%struct.platform_device* %0, %struct.dsps_glue* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.dsps_glue*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store %struct.dsps_glue* %1, %struct.dsps_glue** %5, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %8 = call i32 @platform_get_irq_byname(%struct.platform_device* %7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.dsps_glue*, %struct.dsps_glue** %5, align 8
  %10 = getelementptr inbounds %struct.dsps_glue, %struct.dsps_glue* %9, i32 0, i32 0
  store i32 %8, i32* %10, align 4
  %11 = load %struct.dsps_glue*, %struct.dsps_glue** %5, align 8
  %12 = getelementptr inbounds %struct.dsps_glue, %struct.dsps_glue* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @EPROBE_DEFER, align 4
  %15 = sub nsw i32 0, %14
  %16 = icmp eq i32 %13, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @EPROBE_DEFER, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %53

20:                                               ; preds = %2
  %21 = load %struct.dsps_glue*, %struct.dsps_glue** %5, align 8
  %22 = getelementptr inbounds %struct.dsps_glue, %struct.dsps_glue* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp sle i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load %struct.dsps_glue*, %struct.dsps_glue** %5, align 8
  %27 = getelementptr inbounds %struct.dsps_glue, %struct.dsps_glue* %26, i32 0, i32 0
  store i32 0, i32* %27, align 4
  store i32 0, i32* %3, align 4
  br label %53

28:                                               ; preds = %20
  %29 = load %struct.dsps_glue*, %struct.dsps_glue** %5, align 8
  %30 = getelementptr inbounds %struct.dsps_glue, %struct.dsps_glue* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.dsps_glue*, %struct.dsps_glue** %5, align 8
  %33 = getelementptr inbounds %struct.dsps_glue, %struct.dsps_glue* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @dsps_vbus_threaded_irq, align 4
  %36 = load i32, i32* @IRQF_ONESHOT, align 4
  %37 = load %struct.dsps_glue*, %struct.dsps_glue** %5, align 8
  %38 = call i32 @devm_request_threaded_irq(i32 %31, i32 %34, i32* null, i32 %35, i32 %36, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), %struct.dsps_glue* %37)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %28
  %42 = load %struct.dsps_glue*, %struct.dsps_glue** %5, align 8
  %43 = getelementptr inbounds %struct.dsps_glue, %struct.dsps_glue* %42, i32 0, i32 0
  store i32 0, i32* %43, align 4
  %44 = load i32, i32* %6, align 4
  store i32 %44, i32* %3, align 4
  br label %53

45:                                               ; preds = %28
  %46 = load %struct.dsps_glue*, %struct.dsps_glue** %5, align 8
  %47 = getelementptr inbounds %struct.dsps_glue, %struct.dsps_glue* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.dsps_glue*, %struct.dsps_glue** %5, align 8
  %50 = getelementptr inbounds %struct.dsps_glue, %struct.dsps_glue* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @dev_dbg(i32 %48, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %45, %41, %25, %17
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @platform_get_irq_byname(%struct.platform_device*, i8*) #1

declare dso_local i32 @devm_request_threaded_irq(i32, i32, i32*, i32, i32, i8*, %struct.dsps_glue*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
