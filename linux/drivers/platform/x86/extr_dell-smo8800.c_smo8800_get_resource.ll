; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_dell-smo8800.c_smo8800_get_resource.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_dell-smo8800.c_smo8800_get_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_resource = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.acpi_resource_extended_irq }
%struct.acpi_resource_extended_irq = type { i32*, i32 }

@ACPI_RESOURCE_TYPE_EXTENDED_IRQ = common dso_local global i64 0, align 8
@AE_OK = common dso_local global i32 0, align 4
@AE_CTRL_TERMINATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_resource*, i8*)* @smo8800_get_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smo8800_get_resource(%struct.acpi_resource* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.acpi_resource*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.acpi_resource_extended_irq*, align 8
  store %struct.acpi_resource* %0, %struct.acpi_resource** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.acpi_resource*, %struct.acpi_resource** %4, align 8
  %8 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @ACPI_RESOURCE_TYPE_EXTENDED_IRQ, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @AE_OK, align 4
  store i32 %13, i32* %3, align 4
  br label %36

14:                                               ; preds = %2
  %15 = load %struct.acpi_resource*, %struct.acpi_resource** %4, align 8
  %16 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store %struct.acpi_resource_extended_irq* %17, %struct.acpi_resource_extended_irq** %6, align 8
  %18 = load %struct.acpi_resource_extended_irq*, %struct.acpi_resource_extended_irq** %6, align 8
  %19 = icmp ne %struct.acpi_resource_extended_irq* %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %14
  %21 = load %struct.acpi_resource_extended_irq*, %struct.acpi_resource_extended_irq** %6, align 8
  %22 = getelementptr inbounds %struct.acpi_resource_extended_irq, %struct.acpi_resource_extended_irq* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %20, %14
  %26 = load i32, i32* @AE_OK, align 4
  store i32 %26, i32* %3, align 4
  br label %36

27:                                               ; preds = %20
  %28 = load %struct.acpi_resource_extended_irq*, %struct.acpi_resource_extended_irq** %6, align 8
  %29 = getelementptr inbounds %struct.acpi_resource_extended_irq, %struct.acpi_resource_extended_irq* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = load i8*, i8** %5, align 8
  %34 = bitcast i8* %33 to i32*
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* @AE_CTRL_TERMINATE, align 4
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %27, %25, %12
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
