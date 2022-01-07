; ModuleID = '/home/carl/AnghaBench/linux/drivers/pnp/pnpacpi/extr_rsparser.c_vendor_resource_matches.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pnp/pnpacpi/extr_rsparser.c_vendor_resource_matches.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnp_dev = type { i32 }
%struct.acpi_resource_vendor_typed = type { i64, i32, i64* }
%struct.acpi_vendor_uuid = type { i64, i32 }

@.str = private unnamed_addr constant [59 x i8] c"wrong vendor descriptor size; expected %d, found %d bytes\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pnp_dev*, %struct.acpi_resource_vendor_typed*, %struct.acpi_vendor_uuid*, i32)* @vendor_resource_matches to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vendor_resource_matches(%struct.pnp_dev* %0, %struct.acpi_resource_vendor_typed* %1, %struct.acpi_vendor_uuid* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pnp_dev*, align 8
  %7 = alloca %struct.acpi_resource_vendor_typed*, align 8
  %8 = alloca %struct.acpi_vendor_uuid*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32, align 4
  store %struct.pnp_dev* %0, %struct.pnp_dev** %6, align 8
  store %struct.acpi_resource_vendor_typed* %1, %struct.acpi_resource_vendor_typed** %7, align 8
  store %struct.acpi_vendor_uuid* %2, %struct.acpi_vendor_uuid** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 8, i32* %10, align 4
  %14 = load %struct.acpi_resource_vendor_typed*, %struct.acpi_resource_vendor_typed** %7, align 8
  %15 = getelementptr inbounds %struct.acpi_resource_vendor_typed, %struct.acpi_resource_vendor_typed* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %11, align 8
  %17 = load %struct.acpi_resource_vendor_typed*, %struct.acpi_resource_vendor_typed** %7, align 8
  %18 = getelementptr inbounds %struct.acpi_resource_vendor_typed, %struct.acpi_resource_vendor_typed* %17, i32 0, i32 2
  %19 = load i64*, i64** %18, align 8
  store i64* %19, i64** %12, align 8
  %20 = load %struct.acpi_resource_vendor_typed*, %struct.acpi_resource_vendor_typed** %7, align 8
  %21 = getelementptr inbounds %struct.acpi_resource_vendor_typed, %struct.acpi_resource_vendor_typed* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* %10, align 4
  %24 = sub nsw i32 %22, %23
  %25 = sub nsw i32 %24, 1
  store i32 %25, i32* %13, align 4
  %26 = load i64, i64* %11, align 8
  %27 = load %struct.acpi_vendor_uuid*, %struct.acpi_vendor_uuid** %8, align 8
  %28 = getelementptr inbounds %struct.acpi_vendor_uuid, %struct.acpi_vendor_uuid* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %26, %29
  br i1 %30, label %31, label %57

31:                                               ; preds = %4
  %32 = load i32, i32* %10, align 4
  %33 = sext i32 %32 to i64
  %34 = icmp eq i64 %33, 4
  br i1 %34, label %35, label %57

35:                                               ; preds = %31
  %36 = load i64*, i64** %12, align 8
  %37 = load %struct.acpi_vendor_uuid*, %struct.acpi_vendor_uuid** %8, align 8
  %38 = getelementptr inbounds %struct.acpi_vendor_uuid, %struct.acpi_vendor_uuid* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %10, align 4
  %41 = call i64 @memcmp(i64* %36, i32 %39, i32 %40)
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %57

43:                                               ; preds = %35
  %44 = load i32, i32* %9, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %56

46:                                               ; preds = %43
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* %13, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %46
  %51 = load %struct.pnp_dev*, %struct.pnp_dev** %6, align 8
  %52 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %51, i32 0, i32 0
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* %13, align 4
  %55 = call i32 @dev_err(i32* %52, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %53, i32 %54)
  store i32 0, i32* %5, align 4
  br label %58

56:                                               ; preds = %46, %43
  store i32 1, i32* %5, align 4
  br label %58

57:                                               ; preds = %35, %31, %4
  store i32 0, i32* %5, align 4
  br label %58

58:                                               ; preds = %57, %56, %50
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local i64 @memcmp(i64*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
