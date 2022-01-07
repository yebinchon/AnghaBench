; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/mvsas/extr_mv_sas.c_mvs_gpio_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/mvsas/extr_mv_sas.c_mvs_gpio_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.mvs_prv_info*, i32, i32, i32, i32*)* }
%struct.mvs_prv_info = type { %struct.mvs_info** }
%struct.mvs_info = type { i32 }
%struct.sas_ha_struct = type { %struct.mvs_prv_info* }

@MVS_CHIP_DISP = common dso_local global %struct.TYPE_2__* null, align 8
@ENOSYS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mvs_gpio_write(%struct.sas_ha_struct* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sas_ha_struct*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.mvs_prv_info*, align 8
  %13 = alloca %struct.mvs_info*, align 8
  store %struct.sas_ha_struct* %0, %struct.sas_ha_struct** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %14 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %7, align 8
  %15 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %14, i32 0, i32 0
  %16 = load %struct.mvs_prv_info*, %struct.mvs_prv_info** %15, align 8
  store %struct.mvs_prv_info* %16, %struct.mvs_prv_info** %12, align 8
  %17 = load %struct.mvs_prv_info*, %struct.mvs_prv_info** %12, align 8
  %18 = getelementptr inbounds %struct.mvs_prv_info, %struct.mvs_prv_info* %17, i32 0, i32 0
  %19 = load %struct.mvs_info**, %struct.mvs_info*** %18, align 8
  %20 = getelementptr inbounds %struct.mvs_info*, %struct.mvs_info** %19, i64 0
  %21 = load %struct.mvs_info*, %struct.mvs_info** %20, align 8
  store %struct.mvs_info* %21, %struct.mvs_info** %13, align 8
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @MVS_CHIP_DISP, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32 (%struct.mvs_prv_info*, i32, i32, i32, i32*)*, i32 (%struct.mvs_prv_info*, i32, i32, i32, i32*)** %23, align 8
  %25 = icmp ne i32 (%struct.mvs_prv_info*, i32, i32, i32, i32*)* %24, null
  br i1 %25, label %26, label %36

26:                                               ; preds = %5
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @MVS_CHIP_DISP, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32 (%struct.mvs_prv_info*, i32, i32, i32, i32*)*, i32 (%struct.mvs_prv_info*, i32, i32, i32, i32*)** %28, align 8
  %30 = load %struct.mvs_prv_info*, %struct.mvs_prv_info** %12, align 8
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %10, align 4
  %34 = load i32*, i32** %11, align 8
  %35 = call i32 %29(%struct.mvs_prv_info* %30, i32 %31, i32 %32, i32 %33, i32* %34)
  store i32 %35, i32* %6, align 4
  br label %39

36:                                               ; preds = %5
  %37 = load i32, i32* @ENOSYS, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %6, align 4
  br label %39

39:                                               ; preds = %36, %26
  %40 = load i32, i32* %6, align 4
  ret i32 %40
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
