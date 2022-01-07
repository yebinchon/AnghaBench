; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_cpcap-battery.c_cpcap_battery_init_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_cpcap-battery.c_cpcap_battery_init_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.cpcap_battery_ddata = type { i32, i32 }
%struct.cpcap_interrupt_desc = type { i8*, i32, i32, i32 }

@cpcap_battery_irq_thread = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"could not get irq %s: %i\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"lowbph\00", align 1
@CPCAP_BATTERY_IRQ_ACTION_BATTERY_LOW = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"lowbpl\00", align 1
@CPCAP_BATTERY_IRQ_ACTION_POWEROFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, %struct.cpcap_battery_ddata*, i8*)* @cpcap_battery_init_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpcap_battery_init_irq(%struct.platform_device* %0, %struct.cpcap_battery_ddata* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.cpcap_battery_ddata*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.cpcap_interrupt_desc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %5, align 8
  store %struct.cpcap_battery_ddata* %1, %struct.cpcap_battery_ddata** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = call i32 @platform_get_irq_byname(%struct.platform_device* %11, i8* %12)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* %9, align 4
  store i32 %17, i32* %4, align 4
  br label %78

18:                                               ; preds = %3
  %19 = load %struct.cpcap_battery_ddata*, %struct.cpcap_battery_ddata** %6, align 8
  %20 = getelementptr inbounds %struct.cpcap_battery_ddata, %struct.cpcap_battery_ddata* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* @cpcap_battery_irq_thread, align 4
  %24 = load i32, i32* @IRQF_SHARED, align 4
  %25 = load i8*, i8** %7, align 8
  %26 = load %struct.cpcap_battery_ddata*, %struct.cpcap_battery_ddata** %6, align 8
  %27 = call i32 @devm_request_threaded_irq(i32 %21, i32 %22, i32* null, i32 %23, i32 %24, i8* %25, %struct.cpcap_battery_ddata* %26)
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %18
  %31 = load %struct.cpcap_battery_ddata*, %struct.cpcap_battery_ddata** %6, align 8
  %32 = getelementptr inbounds %struct.cpcap_battery_ddata, %struct.cpcap_battery_ddata* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i8*, i8** %7, align 8
  %35 = load i32, i32* %10, align 4
  %36 = call i32 @dev_err(i32 %33, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %34, i32 %35)
  %37 = load i32, i32* %10, align 4
  store i32 %37, i32* %4, align 4
  br label %78

38:                                               ; preds = %18
  %39 = load %struct.cpcap_battery_ddata*, %struct.cpcap_battery_ddata** %6, align 8
  %40 = getelementptr inbounds %struct.cpcap_battery_ddata, %struct.cpcap_battery_ddata* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @GFP_KERNEL, align 4
  %43 = call %struct.cpcap_interrupt_desc* @devm_kzalloc(i32 %41, i32 24, i32 %42)
  store %struct.cpcap_interrupt_desc* %43, %struct.cpcap_interrupt_desc** %8, align 8
  %44 = load %struct.cpcap_interrupt_desc*, %struct.cpcap_interrupt_desc** %8, align 8
  %45 = icmp ne %struct.cpcap_interrupt_desc* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %38
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  br label %78

49:                                               ; preds = %38
  %50 = load i8*, i8** %7, align 8
  %51 = load %struct.cpcap_interrupt_desc*, %struct.cpcap_interrupt_desc** %8, align 8
  %52 = getelementptr inbounds %struct.cpcap_interrupt_desc, %struct.cpcap_interrupt_desc* %51, i32 0, i32 0
  store i8* %50, i8** %52, align 8
  %53 = load i32, i32* %9, align 4
  %54 = load %struct.cpcap_interrupt_desc*, %struct.cpcap_interrupt_desc** %8, align 8
  %55 = getelementptr inbounds %struct.cpcap_interrupt_desc, %struct.cpcap_interrupt_desc* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 8
  %56 = load i8*, i8** %7, align 8
  %57 = call i32 @strncmp(i8* %56, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 6)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %49
  %60 = load i32, i32* @CPCAP_BATTERY_IRQ_ACTION_BATTERY_LOW, align 4
  %61 = load %struct.cpcap_interrupt_desc*, %struct.cpcap_interrupt_desc** %8, align 8
  %62 = getelementptr inbounds %struct.cpcap_interrupt_desc, %struct.cpcap_interrupt_desc* %61, i32 0, i32 3
  store i32 %60, i32* %62, align 8
  br label %72

63:                                               ; preds = %49
  %64 = load i8*, i8** %7, align 8
  %65 = call i32 @strncmp(i8* %64, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 6)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %63
  %68 = load i32, i32* @CPCAP_BATTERY_IRQ_ACTION_POWEROFF, align 4
  %69 = load %struct.cpcap_interrupt_desc*, %struct.cpcap_interrupt_desc** %8, align 8
  %70 = getelementptr inbounds %struct.cpcap_interrupt_desc, %struct.cpcap_interrupt_desc* %69, i32 0, i32 3
  store i32 %68, i32* %70, align 8
  br label %71

71:                                               ; preds = %67, %63
  br label %72

72:                                               ; preds = %71, %59
  %73 = load %struct.cpcap_interrupt_desc*, %struct.cpcap_interrupt_desc** %8, align 8
  %74 = getelementptr inbounds %struct.cpcap_interrupt_desc, %struct.cpcap_interrupt_desc* %73, i32 0, i32 2
  %75 = load %struct.cpcap_battery_ddata*, %struct.cpcap_battery_ddata** %6, align 8
  %76 = getelementptr inbounds %struct.cpcap_battery_ddata, %struct.cpcap_battery_ddata* %75, i32 0, i32 0
  %77 = call i32 @list_add(i32* %74, i32* %76)
  store i32 0, i32* %4, align 4
  br label %78

78:                                               ; preds = %72, %46, %30, %16
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local i32 @platform_get_irq_byname(%struct.platform_device*, i8*) #1

declare dso_local i32 @devm_request_threaded_irq(i32, i32, i32*, i32, i32, i8*, %struct.cpcap_battery_ddata*) #1

declare dso_local i32 @dev_err(i32, i8*, i8*, i32) #1

declare dso_local %struct.cpcap_interrupt_desc* @devm_kzalloc(i32, i32, i32) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @list_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
