; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_cpcap-charger.c_cpcap_usb_init_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_cpcap-charger.c_cpcap_usb_init_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.cpcap_charger_ddata = type { i32, i32 }
%struct.cpcap_interrupt_desc = type { i8*, i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@cpcap_charger_irq_thread = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"could not get irq %s: %i\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, %struct.cpcap_charger_ddata*, i8*)* @cpcap_usb_init_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpcap_usb_init_irq(%struct.platform_device* %0, %struct.cpcap_charger_ddata* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.cpcap_charger_ddata*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.cpcap_interrupt_desc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %5, align 8
  store %struct.cpcap_charger_ddata* %1, %struct.cpcap_charger_ddata** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = call i32 @platform_get_irq_byname(%struct.platform_device* %11, i8* %12)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %62

19:                                               ; preds = %3
  %20 = load %struct.cpcap_charger_ddata*, %struct.cpcap_charger_ddata** %6, align 8
  %21 = getelementptr inbounds %struct.cpcap_charger_ddata, %struct.cpcap_charger_ddata* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @cpcap_charger_irq_thread, align 4
  %25 = load i32, i32* @IRQF_SHARED, align 4
  %26 = load i8*, i8** %7, align 8
  %27 = load %struct.cpcap_charger_ddata*, %struct.cpcap_charger_ddata** %6, align 8
  %28 = call i32 @devm_request_threaded_irq(i32 %22, i32 %23, i32* null, i32 %24, i32 %25, i8* %26, %struct.cpcap_charger_ddata* %27)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %19
  %32 = load %struct.cpcap_charger_ddata*, %struct.cpcap_charger_ddata** %6, align 8
  %33 = getelementptr inbounds %struct.cpcap_charger_ddata, %struct.cpcap_charger_ddata* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i8*, i8** %7, align 8
  %36 = load i32, i32* %10, align 4
  %37 = call i32 @dev_err(i32 %34, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %35, i32 %36)
  %38 = load i32, i32* %10, align 4
  store i32 %38, i32* %4, align 4
  br label %62

39:                                               ; preds = %19
  %40 = load %struct.cpcap_charger_ddata*, %struct.cpcap_charger_ddata** %6, align 8
  %41 = getelementptr inbounds %struct.cpcap_charger_ddata, %struct.cpcap_charger_ddata* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @GFP_KERNEL, align 4
  %44 = call %struct.cpcap_interrupt_desc* @devm_kzalloc(i32 %42, i32 16, i32 %43)
  store %struct.cpcap_interrupt_desc* %44, %struct.cpcap_interrupt_desc** %8, align 8
  %45 = load %struct.cpcap_interrupt_desc*, %struct.cpcap_interrupt_desc** %8, align 8
  %46 = icmp ne %struct.cpcap_interrupt_desc* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %39
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %62

50:                                               ; preds = %39
  %51 = load i8*, i8** %7, align 8
  %52 = load %struct.cpcap_interrupt_desc*, %struct.cpcap_interrupt_desc** %8, align 8
  %53 = getelementptr inbounds %struct.cpcap_interrupt_desc, %struct.cpcap_interrupt_desc* %52, i32 0, i32 0
  store i8* %51, i8** %53, align 8
  %54 = load i32, i32* %9, align 4
  %55 = load %struct.cpcap_interrupt_desc*, %struct.cpcap_interrupt_desc** %8, align 8
  %56 = getelementptr inbounds %struct.cpcap_interrupt_desc, %struct.cpcap_interrupt_desc* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 8
  %57 = load %struct.cpcap_interrupt_desc*, %struct.cpcap_interrupt_desc** %8, align 8
  %58 = getelementptr inbounds %struct.cpcap_interrupt_desc, %struct.cpcap_interrupt_desc* %57, i32 0, i32 2
  %59 = load %struct.cpcap_charger_ddata*, %struct.cpcap_charger_ddata** %6, align 8
  %60 = getelementptr inbounds %struct.cpcap_charger_ddata, %struct.cpcap_charger_ddata* %59, i32 0, i32 0
  %61 = call i32 @list_add(i32* %58, i32* %60)
  store i32 0, i32* %4, align 4
  br label %62

62:                                               ; preds = %50, %47, %31, %16
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i32 @platform_get_irq_byname(%struct.platform_device*, i8*) #1

declare dso_local i32 @devm_request_threaded_irq(i32, i32, i32*, i32, i32, i8*, %struct.cpcap_charger_ddata*) #1

declare dso_local i32 @dev_err(i32, i8*, i8*, i32) #1

declare dso_local %struct.cpcap_interrupt_desc* @devm_kzalloc(i32, i32, i32) #1

declare dso_local i32 @list_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
