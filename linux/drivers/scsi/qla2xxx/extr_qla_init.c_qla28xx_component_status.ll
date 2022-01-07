; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_init.c_qla28xx_component_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_init.c_qla28xx_component_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.active_regions = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i8*, i8*, i8* }
%struct.qla27xx_image_status = type { i32 }

@QLA28XX_AUX_IMG_BOARD_CONFIG = common dso_local global i32 0, align 4
@QLA28XX_AUX_IMG_VPD_NVRAM = common dso_local global i32 0, align 4
@QLA28XX_AUX_IMG_NPIV_CONFIG_0_1 = common dso_local global i32 0, align 4
@QLA28XX_AUX_IMG_NPIV_CONFIG_2_3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.active_regions*, %struct.qla27xx_image_status*)* @qla28xx_component_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qla28xx_component_status(%struct.active_regions* %0, %struct.qla27xx_image_status* %1) #0 {
  %3 = alloca %struct.active_regions*, align 8
  %4 = alloca %struct.qla27xx_image_status*, align 8
  store %struct.active_regions* %0, %struct.active_regions** %3, align 8
  store %struct.qla27xx_image_status* %1, %struct.qla27xx_image_status** %4, align 8
  %5 = load %struct.qla27xx_image_status*, %struct.qla27xx_image_status** %4, align 8
  %6 = load i32, i32* @QLA28XX_AUX_IMG_BOARD_CONFIG, align 4
  %7 = call i8* @qla28xx_component_bitmask(%struct.qla27xx_image_status* %5, i32 %6)
  %8 = load %struct.active_regions*, %struct.active_regions** %3, align 8
  %9 = getelementptr inbounds %struct.active_regions, %struct.active_regions* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 3
  store i8* %7, i8** %10, align 8
  %11 = load %struct.qla27xx_image_status*, %struct.qla27xx_image_status** %4, align 8
  %12 = load i32, i32* @QLA28XX_AUX_IMG_VPD_NVRAM, align 4
  %13 = call i8* @qla28xx_component_bitmask(%struct.qla27xx_image_status* %11, i32 %12)
  %14 = load %struct.active_regions*, %struct.active_regions** %3, align 8
  %15 = getelementptr inbounds %struct.active_regions, %struct.active_regions* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 2
  store i8* %13, i8** %16, align 8
  %17 = load %struct.qla27xx_image_status*, %struct.qla27xx_image_status** %4, align 8
  %18 = load i32, i32* @QLA28XX_AUX_IMG_NPIV_CONFIG_0_1, align 4
  %19 = call i8* @qla28xx_component_bitmask(%struct.qla27xx_image_status* %17, i32 %18)
  %20 = load %struct.active_regions*, %struct.active_regions** %3, align 8
  %21 = getelementptr inbounds %struct.active_regions, %struct.active_regions* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  store i8* %19, i8** %22, align 8
  %23 = load %struct.qla27xx_image_status*, %struct.qla27xx_image_status** %4, align 8
  %24 = load i32, i32* @QLA28XX_AUX_IMG_NPIV_CONFIG_2_3, align 4
  %25 = call i8* @qla28xx_component_bitmask(%struct.qla27xx_image_status* %23, i32 %24)
  %26 = load %struct.active_regions*, %struct.active_regions** %3, align 8
  %27 = getelementptr inbounds %struct.active_regions, %struct.active_regions* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i8* %25, i8** %28, align 8
  ret void
}

declare dso_local i8* @qla28xx_component_bitmask(%struct.qla27xx_image_status*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
