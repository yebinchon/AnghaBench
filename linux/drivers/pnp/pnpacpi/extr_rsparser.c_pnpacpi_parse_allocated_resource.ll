; ModuleID = '/home/carl/AnghaBench/linux/drivers/pnp/pnpacpi/extr_rsparser.c_pnpacpi_parse_allocated_resource.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pnp/pnpacpi/extr_rsparser.c_pnpacpi_parse_allocated_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnp_dev = type { i32, %struct.acpi_device* }
%struct.acpi_device = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"parse allocated resources\0A\00", align 1
@METHOD_NAME__CRS = common dso_local global i32 0, align 4
@pnpacpi_allocated_resource = common dso_local global i32 0, align 4
@AE_NOT_FOUND = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"can't evaluate _CRS: %d\00", align 1
@EPERM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pnpacpi_parse_allocated_resource(%struct.pnp_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pnp_dev*, align 8
  %4 = alloca %struct.acpi_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.pnp_dev* %0, %struct.pnp_dev** %3, align 8
  %7 = load %struct.pnp_dev*, %struct.pnp_dev** %3, align 8
  %8 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %7, i32 0, i32 1
  %9 = load %struct.acpi_device*, %struct.acpi_device** %8, align 8
  store %struct.acpi_device* %9, %struct.acpi_device** %4, align 8
  %10 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %11 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %5, align 4
  %13 = load %struct.pnp_dev*, %struct.pnp_dev** %3, align 8
  %14 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %13, i32 0, i32 0
  %15 = call i32 @pnp_dbg(i32* %14, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.pnp_dev*, %struct.pnp_dev** %3, align 8
  %17 = call i32 @pnp_init_resources(%struct.pnp_dev* %16)
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @METHOD_NAME__CRS, align 4
  %20 = load i32, i32* @pnpacpi_allocated_resource, align 4
  %21 = load %struct.pnp_dev*, %struct.pnp_dev** %3, align 8
  %22 = call i64 @acpi_walk_resources(i32 %18, i32 %19, i32 %20, %struct.pnp_dev* %21)
  store i64 %22, i64* %6, align 8
  %23 = load i64, i64* %6, align 8
  %24 = call i64 @ACPI_FAILURE(i64 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %38

26:                                               ; preds = %1
  %27 = load i64, i64* %6, align 8
  %28 = load i64, i64* @AE_NOT_FOUND, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %26
  %31 = load %struct.pnp_dev*, %struct.pnp_dev** %3, align 8
  %32 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %31, i32 0, i32 0
  %33 = load i64, i64* %6, align 8
  %34 = call i32 @dev_err(i32* %32, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i64 %33)
  br label %35

35:                                               ; preds = %30, %26
  %36 = load i32, i32* @EPERM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %39

38:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %39

39:                                               ; preds = %38, %35
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32 @pnp_dbg(i32*, i8*) #1

declare dso_local i32 @pnp_init_resources(%struct.pnp_dev*) #1

declare dso_local i64 @acpi_walk_resources(i32, i32, i32, %struct.pnp_dev*) #1

declare dso_local i64 @ACPI_FAILURE(i64) #1

declare dso_local i32 @dev_err(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
