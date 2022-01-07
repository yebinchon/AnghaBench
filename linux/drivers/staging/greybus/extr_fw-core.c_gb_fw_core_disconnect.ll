; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_fw-core.c_gb_fw_core_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_fw-core.c_gb_fw_core_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_bundle = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.gb_fw_core = type { i32, i32, i32, i32 }

@GB_INTERFACE_QUIRK_NO_PM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gb_bundle*)* @gb_fw_core_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gb_fw_core_disconnect(%struct.gb_bundle* %0) #0 {
  %2 = alloca %struct.gb_bundle*, align 8
  %3 = alloca %struct.gb_fw_core*, align 8
  %4 = alloca i32, align 4
  store %struct.gb_bundle* %0, %struct.gb_bundle** %2, align 8
  %5 = load %struct.gb_bundle*, %struct.gb_bundle** %2, align 8
  %6 = call %struct.gb_fw_core* @greybus_get_drvdata(%struct.gb_bundle* %5)
  store %struct.gb_fw_core* %6, %struct.gb_fw_core** %3, align 8
  %7 = load %struct.gb_bundle*, %struct.gb_bundle** %2, align 8
  %8 = getelementptr inbounds %struct.gb_bundle, %struct.gb_bundle* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @GB_INTERFACE_QUIRK_NO_PM, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %24, label %15

15:                                               ; preds = %1
  %16 = load %struct.gb_bundle*, %struct.gb_bundle** %2, align 8
  %17 = call i32 @gb_pm_runtime_get_sync(%struct.gb_bundle* %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load %struct.gb_bundle*, %struct.gb_bundle** %2, align 8
  %22 = call i32 @gb_pm_runtime_get_noresume(%struct.gb_bundle* %21)
  br label %23

23:                                               ; preds = %20, %15
  br label %24

24:                                               ; preds = %23, %1
  %25 = load %struct.gb_fw_core*, %struct.gb_fw_core** %3, align 8
  %26 = getelementptr inbounds %struct.gb_fw_core, %struct.gb_fw_core* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @gb_fw_mgmt_connection_exit(i32 %27)
  %29 = load %struct.gb_fw_core*, %struct.gb_fw_core** %3, align 8
  %30 = getelementptr inbounds %struct.gb_fw_core, %struct.gb_fw_core* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @gb_cap_connection_exit(i32 %31)
  %33 = load %struct.gb_fw_core*, %struct.gb_fw_core** %3, align 8
  %34 = getelementptr inbounds %struct.gb_fw_core, %struct.gb_fw_core* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @gb_fw_spi_connection_exit(i32 %35)
  %37 = load %struct.gb_fw_core*, %struct.gb_fw_core** %3, align 8
  %38 = getelementptr inbounds %struct.gb_fw_core, %struct.gb_fw_core* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @gb_fw_download_connection_exit(i32 %39)
  %41 = load %struct.gb_fw_core*, %struct.gb_fw_core** %3, align 8
  %42 = getelementptr inbounds %struct.gb_fw_core, %struct.gb_fw_core* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @gb_connection_destroy(i32 %43)
  %45 = load %struct.gb_fw_core*, %struct.gb_fw_core** %3, align 8
  %46 = getelementptr inbounds %struct.gb_fw_core, %struct.gb_fw_core* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @gb_connection_destroy(i32 %47)
  %49 = load %struct.gb_fw_core*, %struct.gb_fw_core** %3, align 8
  %50 = getelementptr inbounds %struct.gb_fw_core, %struct.gb_fw_core* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @gb_connection_destroy(i32 %51)
  %53 = load %struct.gb_fw_core*, %struct.gb_fw_core** %3, align 8
  %54 = getelementptr inbounds %struct.gb_fw_core, %struct.gb_fw_core* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @gb_connection_destroy(i32 %55)
  %57 = load %struct.gb_fw_core*, %struct.gb_fw_core** %3, align 8
  %58 = call i32 @kfree(%struct.gb_fw_core* %57)
  ret void
}

declare dso_local %struct.gb_fw_core* @greybus_get_drvdata(%struct.gb_bundle*) #1

declare dso_local i32 @gb_pm_runtime_get_sync(%struct.gb_bundle*) #1

declare dso_local i32 @gb_pm_runtime_get_noresume(%struct.gb_bundle*) #1

declare dso_local i32 @gb_fw_mgmt_connection_exit(i32) #1

declare dso_local i32 @gb_cap_connection_exit(i32) #1

declare dso_local i32 @gb_fw_spi_connection_exit(i32) #1

declare dso_local i32 @gb_fw_download_connection_exit(i32) #1

declare dso_local i32 @gb_connection_destroy(i32) #1

declare dso_local i32 @kfree(%struct.gb_fw_core*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
