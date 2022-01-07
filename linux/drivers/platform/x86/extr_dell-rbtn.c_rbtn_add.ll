; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_dell-rbtn.c_rbtn_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_dell-rbtn.c_rbtn_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.acpi_device = type { %struct.rbtn_data*, i32 }
%struct.rbtn_data = type { i32 }

@RBTN_UNKNOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Unknown device type\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Cannot enable device\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@auto_remove_rfkill = common dso_local global i32 0, align 4
@rbtn_chain_head = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_device*)* @rbtn_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rbtn_add(%struct.acpi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_device*, align 8
  %4 = alloca %struct.rbtn_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.acpi_device* %0, %struct.acpi_device** %3, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %8 = call i32 @rbtn_check(%struct.acpi_device* %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @RBTN_UNKNOWN, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %14 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %13, i32 0, i32 1
  %15 = call i32 @dev_info(i32* %14, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %67

18:                                               ; preds = %1
  %19 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %20 = call i32 @rbtn_acquire(%struct.acpi_device* %19, i32 1)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %18
  %24 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %25 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %24, i32 0, i32 1
  %26 = call i32 @dev_err(i32* %25, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* %2, align 4
  br label %67

28:                                               ; preds = %18
  %29 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %30 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %29, i32 0, i32 1
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call %struct.rbtn_data* @devm_kzalloc(i32* %30, i32 4, i32 %31)
  store %struct.rbtn_data* %32, %struct.rbtn_data** %4, align 8
  %33 = load %struct.rbtn_data*, %struct.rbtn_data** %4, align 8
  %34 = icmp ne %struct.rbtn_data* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %28
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %67

38:                                               ; preds = %28
  %39 = load i32, i32* %5, align 4
  %40 = load %struct.rbtn_data*, %struct.rbtn_data** %4, align 8
  %41 = getelementptr inbounds %struct.rbtn_data, %struct.rbtn_data* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  %42 = load %struct.rbtn_data*, %struct.rbtn_data** %4, align 8
  %43 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %44 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %43, i32 0, i32 0
  store %struct.rbtn_data* %42, %struct.rbtn_data** %44, align 8
  %45 = load %struct.rbtn_data*, %struct.rbtn_data** %4, align 8
  %46 = getelementptr inbounds %struct.rbtn_data, %struct.rbtn_data* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  switch i32 %47, label %62 [
    i32 128, label %48
    i32 129, label %51
  ]

48:                                               ; preds = %38
  %49 = load %struct.rbtn_data*, %struct.rbtn_data** %4, align 8
  %50 = call i32 @rbtn_input_init(%struct.rbtn_data* %49)
  store i32 %50, i32* %6, align 4
  br label %65

51:                                               ; preds = %38
  %52 = load i32, i32* @auto_remove_rfkill, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %51
  %55 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rbtn_chain_head, i32 0, i32 0), align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  store i32 0, i32* %6, align 4
  br label %61

58:                                               ; preds = %54, %51
  %59 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %60 = call i32 @rbtn_rfkill_init(%struct.acpi_device* %59)
  store i32 %60, i32* %6, align 4
  br label %61

61:                                               ; preds = %58, %57
  br label %65

62:                                               ; preds = %38
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %6, align 4
  br label %65

65:                                               ; preds = %62, %61, %48
  %66 = load i32, i32* %6, align 4
  store i32 %66, i32* %2, align 4
  br label %67

67:                                               ; preds = %65, %35, %23, %12
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i32 @rbtn_check(%struct.acpi_device*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @rbtn_acquire(%struct.acpi_device*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local %struct.rbtn_data* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @rbtn_input_init(%struct.rbtn_data*) #1

declare dso_local i32 @rbtn_rfkill_init(%struct.acpi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
