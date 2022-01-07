; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_apple-gmux.c_gmux_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_apple-gmux.c_gmux_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnp_dev = type { i32 }
%struct.apple_gmux_data = type { i64, i32, i32, i32, i32 }

@ACPI_DEVICE_NOTIFY = common dso_local global i32 0, align 4
@gmux_notify_handler = common dso_local global i32 0, align 4
@apple_gmux_data = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pnp_dev*)* @gmux_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gmux_remove(%struct.pnp_dev* %0) #0 {
  %2 = alloca %struct.pnp_dev*, align 8
  %3 = alloca %struct.apple_gmux_data*, align 8
  store %struct.pnp_dev* %0, %struct.pnp_dev** %2, align 8
  %4 = load %struct.pnp_dev*, %struct.pnp_dev** %2, align 8
  %5 = call %struct.apple_gmux_data* @pnp_get_drvdata(%struct.pnp_dev* %4)
  store %struct.apple_gmux_data* %5, %struct.apple_gmux_data** %3, align 8
  %6 = call i32 (...) @vga_switcheroo_unregister_handler()
  %7 = load %struct.apple_gmux_data*, %struct.apple_gmux_data** %3, align 8
  %8 = call i32 @gmux_disable_interrupts(%struct.apple_gmux_data* %7)
  %9 = load %struct.apple_gmux_data*, %struct.apple_gmux_data** %3, align 8
  %10 = getelementptr inbounds %struct.apple_gmux_data, %struct.apple_gmux_data* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp sge i64 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %1
  %14 = load %struct.apple_gmux_data*, %struct.apple_gmux_data** %3, align 8
  %15 = getelementptr inbounds %struct.apple_gmux_data, %struct.apple_gmux_data* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @acpi_disable_gpe(i32* null, i64 %16)
  %18 = load %struct.apple_gmux_data*, %struct.apple_gmux_data** %3, align 8
  %19 = getelementptr inbounds %struct.apple_gmux_data, %struct.apple_gmux_data* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @ACPI_DEVICE_NOTIFY, align 4
  %22 = call i32 @acpi_remove_notify_handler(i32 %20, i32 %21, i32* @gmux_notify_handler)
  br label %23

23:                                               ; preds = %13, %1
  %24 = load %struct.apple_gmux_data*, %struct.apple_gmux_data** %3, align 8
  %25 = getelementptr inbounds %struct.apple_gmux_data, %struct.apple_gmux_data* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @backlight_device_unregister(i32 %26)
  %28 = load %struct.apple_gmux_data*, %struct.apple_gmux_data** %3, align 8
  %29 = getelementptr inbounds %struct.apple_gmux_data, %struct.apple_gmux_data* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.apple_gmux_data*, %struct.apple_gmux_data** %3, align 8
  %32 = getelementptr inbounds %struct.apple_gmux_data, %struct.apple_gmux_data* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @release_region(i32 %30, i32 %33)
  store i32* null, i32** @apple_gmux_data, align 8
  %35 = load %struct.apple_gmux_data*, %struct.apple_gmux_data** %3, align 8
  %36 = call i32 @kfree(%struct.apple_gmux_data* %35)
  %37 = call i32 (...) @acpi_video_register()
  %38 = call i32 (...) @apple_bl_register()
  ret void
}

declare dso_local %struct.apple_gmux_data* @pnp_get_drvdata(%struct.pnp_dev*) #1

declare dso_local i32 @vga_switcheroo_unregister_handler(...) #1

declare dso_local i32 @gmux_disable_interrupts(%struct.apple_gmux_data*) #1

declare dso_local i32 @acpi_disable_gpe(i32*, i64) #1

declare dso_local i32 @acpi_remove_notify_handler(i32, i32, i32*) #1

declare dso_local i32 @backlight_device_unregister(i32) #1

declare dso_local i32 @release_region(i32, i32) #1

declare dso_local i32 @kfree(%struct.apple_gmux_data*) #1

declare dso_local i32 @acpi_video_register(...) #1

declare dso_local i32 @apple_bl_register(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
