; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_esp_scsi.c_esp_bootup_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_esp_scsi.c_esp_bootup_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esp = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.esp*)* }

@ESP_CFG1 = common dso_local global i32 0, align 4
@ESP_CONFIG1_SRRDISAB = common dso_local global i32 0, align 4
@ESP_CMD_RS = common dso_local global i32 0, align 4
@ESP_INTRPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.esp*)* @esp_bootup_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @esp_bootup_reset(%struct.esp* %0) #0 {
  %2 = alloca %struct.esp*, align 8
  %3 = alloca i32, align 4
  store %struct.esp* %0, %struct.esp** %2, align 8
  %4 = load %struct.esp*, %struct.esp** %2, align 8
  %5 = getelementptr inbounds %struct.esp, %struct.esp* %4, i32 0, i32 1
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32 (%struct.esp*)*, i32 (%struct.esp*)** %7, align 8
  %9 = load %struct.esp*, %struct.esp** %2, align 8
  %10 = call i32 %8(%struct.esp* %9)
  %11 = load %struct.esp*, %struct.esp** %2, align 8
  %12 = call i32 @esp_reset_esp(%struct.esp* %11)
  %13 = load i32, i32* @ESP_CFG1, align 4
  %14 = call i32 @esp_read8(i32 %13)
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* @ESP_CONFIG1_SRRDISAB, align 4
  %16 = load i32, i32* %3, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @ESP_CFG1, align 4
  %20 = call i32 @esp_write8(i32 %18, i32 %19)
  %21 = load %struct.esp*, %struct.esp** %2, align 8
  %22 = load i32, i32* @ESP_CMD_RS, align 4
  %23 = call i32 @scsi_esp_cmd(%struct.esp* %21, i32 %22)
  %24 = call i32 @udelay(i32 400)
  %25 = load %struct.esp*, %struct.esp** %2, align 8
  %26 = getelementptr inbounds %struct.esp, %struct.esp* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @ESP_CFG1, align 4
  %29 = call i32 @esp_write8(i32 %27, i32 %28)
  %30 = load i32, i32* @ESP_INTRPT, align 4
  %31 = call i32 @esp_read8(i32 %30)
  ret void
}

declare dso_local i32 @esp_reset_esp(%struct.esp*) #1

declare dso_local i32 @esp_read8(i32) #1

declare dso_local i32 @esp_write8(i32, i32) #1

declare dso_local i32 @scsi_esp_cmd(%struct.esp*, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
