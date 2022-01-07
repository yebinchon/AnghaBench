; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/extr_xen-acpi-processor.c_xen_copy_pss_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/extr_xen-acpi-processor.c_xen_copy_pss_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xen_processor_px = type { i32 }
%struct.acpi_processor = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32* }
%struct.xen_processor_performance = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.xen_processor_px* (%struct.acpi_processor*, %struct.xen_processor_performance*)* @xen_copy_pss_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.xen_processor_px* @xen_copy_pss_data(%struct.acpi_processor* %0, %struct.xen_processor_performance* %1) #0 {
  %3 = alloca %struct.xen_processor_px*, align 8
  %4 = alloca %struct.acpi_processor*, align 8
  %5 = alloca %struct.xen_processor_performance*, align 8
  %6 = alloca %struct.xen_processor_px*, align 8
  %7 = alloca i32, align 4
  store %struct.acpi_processor* %0, %struct.acpi_processor** %4, align 8
  store %struct.xen_processor_performance* %1, %struct.xen_processor_performance** %5, align 8
  store %struct.xen_processor_px* null, %struct.xen_processor_px** %6, align 8
  %8 = call i32 @BUILD_BUG_ON(i32 0)
  %9 = load %struct.acpi_processor*, %struct.acpi_processor** %4, align 8
  %10 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.xen_processor_px* @kcalloc(i32 %13, i32 4, i32 %14)
  store %struct.xen_processor_px* %15, %struct.xen_processor_px** %6, align 8
  %16 = load %struct.xen_processor_px*, %struct.xen_processor_px** %6, align 8
  %17 = icmp ne %struct.xen_processor_px* %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  %21 = call %struct.xen_processor_px* @ERR_PTR(i32 %20)
  store %struct.xen_processor_px* %21, %struct.xen_processor_px** %3, align 8
  br label %57

22:                                               ; preds = %2
  %23 = load %struct.acpi_processor*, %struct.acpi_processor** %4, align 8
  %24 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.xen_processor_performance*, %struct.xen_processor_performance** %5, align 8
  %29 = getelementptr inbounds %struct.xen_processor_performance, %struct.xen_processor_performance* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  store i32 0, i32* %7, align 4
  br label %30

30:                                               ; preds = %52, %22
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.acpi_processor*, %struct.acpi_processor** %4, align 8
  %33 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp ult i32 %31, %36
  br i1 %37, label %38, label %55

38:                                               ; preds = %30
  %39 = load %struct.xen_processor_px*, %struct.xen_processor_px** %6, align 8
  %40 = load i32, i32* %7, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.xen_processor_px, %struct.xen_processor_px* %39, i64 %41
  %43 = load %struct.acpi_processor*, %struct.acpi_processor** %4, align 8
  %44 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %7, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = call i32 @memcpy(%struct.xen_processor_px* %42, i32* %50, i32 4)
  br label %52

52:                                               ; preds = %38
  %53 = load i32, i32* %7, align 4
  %54 = add i32 %53, 1
  store i32 %54, i32* %7, align 4
  br label %30

55:                                               ; preds = %30
  %56 = load %struct.xen_processor_px*, %struct.xen_processor_px** %6, align 8
  store %struct.xen_processor_px* %56, %struct.xen_processor_px** %3, align 8
  br label %57

57:                                               ; preds = %55, %18
  %58 = load %struct.xen_processor_px*, %struct.xen_processor_px** %3, align 8
  ret %struct.xen_processor_px* %58
}

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local %struct.xen_processor_px* @kcalloc(i32, i32, i32) #1

declare dso_local %struct.xen_processor_px* @ERR_PTR(i32) #1

declare dso_local i32 @memcpy(%struct.xen_processor_px*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
