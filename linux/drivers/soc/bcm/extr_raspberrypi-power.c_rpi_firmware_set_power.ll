; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/bcm/extr_raspberrypi-power.c_rpi_firmware_set_power.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/bcm/extr_raspberrypi-power.c_rpi_firmware_set_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpi_power_domain = type { i64, i32, i32 }
%struct.rpi_power_domain_packet = type { i32, i32 }

@RPI_FIRMWARE_SET_POWER_STATE = common dso_local global i32 0, align 4
@RPI_FIRMWARE_SET_DOMAIN_STATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpi_power_domain*, i32)* @rpi_firmware_set_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpi_firmware_set_power(%struct.rpi_power_domain* %0, i32 %1) #0 {
  %3 = alloca %struct.rpi_power_domain*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rpi_power_domain_packet, align 4
  store %struct.rpi_power_domain* %0, %struct.rpi_power_domain** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.rpi_power_domain*, %struct.rpi_power_domain** %3, align 8
  %7 = getelementptr inbounds %struct.rpi_power_domain, %struct.rpi_power_domain* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = getelementptr inbounds %struct.rpi_power_domain_packet, %struct.rpi_power_domain_packet* %5, i32 0, i32 1
  store i32 %8, i32* %9, align 4
  %10 = load i32, i32* %4, align 4
  %11 = getelementptr inbounds %struct.rpi_power_domain_packet, %struct.rpi_power_domain_packet* %5, i32 0, i32 0
  store i32 %10, i32* %11, align 4
  %12 = load %struct.rpi_power_domain*, %struct.rpi_power_domain** %3, align 8
  %13 = getelementptr inbounds %struct.rpi_power_domain, %struct.rpi_power_domain* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.rpi_power_domain*, %struct.rpi_power_domain** %3, align 8
  %16 = getelementptr inbounds %struct.rpi_power_domain, %struct.rpi_power_domain* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* @RPI_FIRMWARE_SET_POWER_STATE, align 4
  br label %23

21:                                               ; preds = %2
  %22 = load i32, i32* @RPI_FIRMWARE_SET_DOMAIN_STATE, align 4
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi i32 [ %20, %19 ], [ %22, %21 ]
  %25 = call i32 @rpi_firmware_property(i32 %14, i32 %24, %struct.rpi_power_domain_packet* %5, i32 8)
  ret i32 %25
}

declare dso_local i32 @rpi_firmware_property(i32, i32, %struct.rpi_power_domain_packet*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
