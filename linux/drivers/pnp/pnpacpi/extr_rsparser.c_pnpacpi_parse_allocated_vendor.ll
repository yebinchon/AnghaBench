; ModuleID = '/home/carl/AnghaBench/linux/drivers/pnp/pnpacpi/extr_rsparser.c_pnpacpi_parse_allocated_vendor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pnp/pnpacpi/extr_rsparser.c_pnpacpi_parse_allocated_vendor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnp_dev = type { i32 }
%struct.acpi_resource_vendor_typed = type { i64 }

@hp_ccsr_uuid = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pnp_dev*, %struct.acpi_resource_vendor_typed*)* @pnpacpi_parse_allocated_vendor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pnpacpi_parse_allocated_vendor(%struct.pnp_dev* %0, %struct.acpi_resource_vendor_typed* %1) #0 {
  %3 = alloca %struct.pnp_dev*, align 8
  %4 = alloca %struct.acpi_resource_vendor_typed*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.pnp_dev* %0, %struct.pnp_dev** %3, align 8
  store %struct.acpi_resource_vendor_typed* %1, %struct.acpi_resource_vendor_typed** %4, align 8
  %7 = load %struct.pnp_dev*, %struct.pnp_dev** %3, align 8
  %8 = load %struct.acpi_resource_vendor_typed*, %struct.acpi_resource_vendor_typed** %4, align 8
  %9 = call i64 @vendor_resource_matches(%struct.pnp_dev* %7, %struct.acpi_resource_vendor_typed* %8, i32* @hp_ccsr_uuid, i32 16)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %28

11:                                               ; preds = %2
  %12 = load %struct.acpi_resource_vendor_typed*, %struct.acpi_resource_vendor_typed** %4, align 8
  %13 = getelementptr inbounds %struct.acpi_resource_vendor_typed, %struct.acpi_resource_vendor_typed* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = call i32 @memcpy(i64* %5, i64 %14, i32 8)
  %16 = load %struct.acpi_resource_vendor_typed*, %struct.acpi_resource_vendor_typed** %4, align 8
  %17 = getelementptr inbounds %struct.acpi_resource_vendor_typed, %struct.acpi_resource_vendor_typed* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = add nsw i64 %18, 8
  %20 = call i32 @memcpy(i64* %6, i64 %19, i32 8)
  %21 = load %struct.pnp_dev*, %struct.pnp_dev** %3, align 8
  %22 = load i64, i64* %5, align 8
  %23 = load i64, i64* %5, align 8
  %24 = load i64, i64* %6, align 8
  %25 = add nsw i64 %23, %24
  %26 = sub nsw i64 %25, 1
  %27 = call i32 @pnp_add_mem_resource(%struct.pnp_dev* %21, i64 %22, i64 %26, i32 0)
  br label %28

28:                                               ; preds = %11, %2
  ret void
}

declare dso_local i64 @vendor_resource_matches(%struct.pnp_dev*, %struct.acpi_resource_vendor_typed*, i32*, i32) #1

declare dso_local i32 @memcpy(i64*, i64, i32) #1

declare dso_local i32 @pnp_add_mem_resource(%struct.pnp_dev*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
