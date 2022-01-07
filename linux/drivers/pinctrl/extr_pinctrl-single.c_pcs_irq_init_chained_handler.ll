; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-single.c_pcs_irq_init_chained_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-single.c_pcs_irq_init_chained_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcs_device = type { i32, i32, %struct.TYPE_2__, i32, %struct.pcs_soc_data }
%struct.TYPE_2__ = type { i8*, i32, i32, i8*, i8* }
%struct.pcs_soc_data = type { i32, i32, i32 }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"pinctrl\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@pcs_irq_mask = common dso_local global i8* null, align 8
@pcs_irq_unmask = common dso_local global i32 0, align 4
@pcs_irq_set_wake = common dso_local global i32 0, align 4
@PCS_QUIRK_HAS_SHARED_IRQ = common dso_local global i64 0, align 8
@pcs_irq_handler = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@IRQF_NO_SUSPEND = common dso_local global i32 0, align 4
@IRQF_NO_THREAD = common dso_local global i32 0, align 4
@pcs_irq_chain_handler = common dso_local global i32 0, align 4
@pcs_irqdomain_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcs_device*, %struct.device_node*)* @pcs_irq_init_chained_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcs_irq_init_chained_handler(%struct.pcs_device* %0, %struct.device_node* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pcs_device*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.pcs_soc_data*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.pcs_device* %0, %struct.pcs_device** %4, align 8
  store %struct.device_node* %1, %struct.device_node** %5, align 8
  %10 = load %struct.pcs_device*, %struct.pcs_device** %4, align 8
  %11 = getelementptr inbounds %struct.pcs_device, %struct.pcs_device* %10, i32 0, i32 4
  store %struct.pcs_soc_data* %11, %struct.pcs_soc_data** %6, align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  %12 = load %struct.pcs_soc_data*, %struct.pcs_soc_data** %6, align 8
  %13 = getelementptr inbounds %struct.pcs_soc_data, %struct.pcs_soc_data* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load %struct.pcs_soc_data*, %struct.pcs_soc_data** %6, align 8
  %18 = getelementptr inbounds %struct.pcs_soc_data, %struct.pcs_soc_data* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %16, %2
  %22 = load %struct.pcs_soc_data*, %struct.pcs_soc_data** %6, align 8
  %23 = getelementptr inbounds %struct.pcs_soc_data, %struct.pcs_soc_data* %22, i32 0, i32 0
  store i32 -1, i32* %23, align 4
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %101

26:                                               ; preds = %16
  %27 = load %struct.pcs_device*, %struct.pcs_device** %4, align 8
  %28 = getelementptr inbounds %struct.pcs_device, %struct.pcs_device* %27, i32 0, i32 3
  %29 = call i32 @INIT_LIST_HEAD(i32* %28)
  %30 = load i8*, i8** %7, align 8
  %31 = load %struct.pcs_device*, %struct.pcs_device** %4, align 8
  %32 = getelementptr inbounds %struct.pcs_device, %struct.pcs_device* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store i8* %30, i8** %33, align 8
  %34 = load i8*, i8** @pcs_irq_mask, align 8
  %35 = load %struct.pcs_device*, %struct.pcs_device** %4, align 8
  %36 = getelementptr inbounds %struct.pcs_device, %struct.pcs_device* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 4
  store i8* %34, i8** %37, align 8
  %38 = load i8*, i8** @pcs_irq_mask, align 8
  %39 = load %struct.pcs_device*, %struct.pcs_device** %4, align 8
  %40 = getelementptr inbounds %struct.pcs_device, %struct.pcs_device* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 3
  store i8* %38, i8** %41, align 8
  %42 = load i32, i32* @pcs_irq_unmask, align 4
  %43 = load %struct.pcs_device*, %struct.pcs_device** %4, align 8
  %44 = getelementptr inbounds %struct.pcs_device, %struct.pcs_device* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 2
  store i32 %42, i32* %45, align 4
  %46 = load i32, i32* @pcs_irq_set_wake, align 4
  %47 = load %struct.pcs_device*, %struct.pcs_device** %4, align 8
  %48 = getelementptr inbounds %struct.pcs_device, %struct.pcs_device* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  store i32 %46, i32* %49, align 8
  %50 = load i64, i64* @PCS_QUIRK_HAS_SHARED_IRQ, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %72

52:                                               ; preds = %26
  %53 = load %struct.pcs_soc_data*, %struct.pcs_soc_data** %6, align 8
  %54 = getelementptr inbounds %struct.pcs_soc_data, %struct.pcs_soc_data* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @pcs_irq_handler, align 4
  %57 = load i32, i32* @IRQF_SHARED, align 4
  %58 = load i32, i32* @IRQF_NO_SUSPEND, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @IRQF_NO_THREAD, align 4
  %61 = or i32 %59, %60
  %62 = load i8*, i8** %7, align 8
  %63 = load %struct.pcs_soc_data*, %struct.pcs_soc_data** %6, align 8
  %64 = call i32 @request_irq(i32 %55, i32 %56, i32 %61, i8* %62, %struct.pcs_soc_data* %63)
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* %9, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %52
  %68 = load %struct.pcs_soc_data*, %struct.pcs_soc_data** %6, align 8
  %69 = getelementptr inbounds %struct.pcs_soc_data, %struct.pcs_soc_data* %68, i32 0, i32 0
  store i32 -1, i32* %69, align 4
  %70 = load i32, i32* %9, align 4
  store i32 %70, i32* %3, align 4
  br label %101

71:                                               ; preds = %52
  br label %79

72:                                               ; preds = %26
  %73 = load %struct.pcs_soc_data*, %struct.pcs_soc_data** %6, align 8
  %74 = getelementptr inbounds %struct.pcs_soc_data, %struct.pcs_soc_data* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @pcs_irq_chain_handler, align 4
  %77 = load %struct.pcs_soc_data*, %struct.pcs_soc_data** %6, align 8
  %78 = call i32 @irq_set_chained_handler_and_data(i32 %75, i32 %76, %struct.pcs_soc_data* %77)
  br label %79

79:                                               ; preds = %72, %71
  %80 = load %struct.pcs_device*, %struct.pcs_device** %4, align 8
  %81 = getelementptr inbounds %struct.pcs_device, %struct.pcs_device* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  store i32 %82, i32* %8, align 4
  %83 = load %struct.device_node*, %struct.device_node** %5, align 8
  %84 = load i32, i32* %8, align 4
  %85 = load %struct.pcs_soc_data*, %struct.pcs_soc_data** %6, align 8
  %86 = call i32 @irq_domain_add_simple(%struct.device_node* %83, i32 %84, i32 0, i32* @pcs_irqdomain_ops, %struct.pcs_soc_data* %85)
  %87 = load %struct.pcs_device*, %struct.pcs_device** %4, align 8
  %88 = getelementptr inbounds %struct.pcs_device, %struct.pcs_device* %87, i32 0, i32 1
  store i32 %86, i32* %88, align 4
  %89 = load %struct.pcs_device*, %struct.pcs_device** %4, align 8
  %90 = getelementptr inbounds %struct.pcs_device, %struct.pcs_device* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %100, label %93

93:                                               ; preds = %79
  %94 = load %struct.pcs_soc_data*, %struct.pcs_soc_data** %6, align 8
  %95 = getelementptr inbounds %struct.pcs_soc_data, %struct.pcs_soc_data* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @irq_set_chained_handler(i32 %96, i32* null)
  %98 = load i32, i32* @EINVAL, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %3, align 4
  br label %101

100:                                              ; preds = %79
  store i32 0, i32* %3, align 4
  br label %101

101:                                              ; preds = %100, %93, %67, %21
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i8*, %struct.pcs_soc_data*) #1

declare dso_local i32 @irq_set_chained_handler_and_data(i32, i32, %struct.pcs_soc_data*) #1

declare dso_local i32 @irq_domain_add_simple(%struct.device_node*, i32, i32, i32*, %struct.pcs_soc_data*) #1

declare dso_local i32 @irq_set_chained_handler(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
