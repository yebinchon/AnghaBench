; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_sun_esp.c_esp_sbus_register_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_sun_esp.c_esp_sbus_register_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esp = type { i32, %struct.Scsi_Host* }
%struct.Scsi_Host = type { i32 }
%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@scsi_esp_intr = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"ESP\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.esp*)* @esp_sbus_register_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @esp_sbus_register_irq(%struct.esp* %0) #0 {
  %2 = alloca %struct.esp*, align 8
  %3 = alloca %struct.Scsi_Host*, align 8
  %4 = alloca %struct.platform_device*, align 8
  store %struct.esp* %0, %struct.esp** %2, align 8
  %5 = load %struct.esp*, %struct.esp** %2, align 8
  %6 = getelementptr inbounds %struct.esp, %struct.esp* %5, i32 0, i32 1
  %7 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  store %struct.Scsi_Host* %7, %struct.Scsi_Host** %3, align 8
  %8 = load %struct.esp*, %struct.esp** %2, align 8
  %9 = getelementptr inbounds %struct.esp, %struct.esp* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call %struct.platform_device* @to_platform_device(i32 %10)
  store %struct.platform_device* %11, %struct.platform_device** %4, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %19 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  %20 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %21 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @scsi_esp_intr, align 4
  %24 = load i32, i32* @IRQF_SHARED, align 4
  %25 = load %struct.esp*, %struct.esp** %2, align 8
  %26 = call i32 @request_irq(i32 %22, i32 %23, i32 %24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), %struct.esp* %25)
  ret i32 %26
}

declare dso_local %struct.platform_device* @to_platform_device(i32) #1

declare dso_local i32 @request_irq(i32, i32, i32, i8*, %struct.esp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
