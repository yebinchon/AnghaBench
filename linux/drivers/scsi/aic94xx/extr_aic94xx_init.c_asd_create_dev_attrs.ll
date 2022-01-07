; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic94xx/extr_aic94xx_init.c_asd_create_dev_attrs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic94xx/extr_aic94xx_init.c_asd_create_dev_attrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asd_ha_struct = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@dev_attr_aic_revision = common dso_local global i32 0, align 4
@dev_attr_bios_build = common dso_local global i32 0, align 4
@dev_attr_pcba_sn = common dso_local global i32 0, align 4
@dev_attr_update_bios = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.asd_ha_struct*)* @asd_create_dev_attrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asd_create_dev_attrs(%struct.asd_ha_struct* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.asd_ha_struct*, align 8
  %4 = alloca i32, align 4
  store %struct.asd_ha_struct* %0, %struct.asd_ha_struct** %3, align 8
  %5 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %6 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = call i32 @device_create_file(i32* %8, i32* @dev_attr_aic_revision)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %4, align 4
  store i32 %13, i32* %2, align 4
  br label %61

14:                                               ; preds = %1
  %15 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %16 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = call i32 @device_create_file(i32* %18, i32* @dev_attr_bios_build)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %14
  br label %54

23:                                               ; preds = %14
  %24 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %25 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = call i32 @device_create_file(i32* %27, i32* @dev_attr_pcba_sn)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  br label %48

32:                                               ; preds = %23
  %33 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %34 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = call i32 @device_create_file(i32* %36, i32* @dev_attr_update_bios)
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  br label %42

41:                                               ; preds = %32
  store i32 0, i32* %2, align 4
  br label %61

42:                                               ; preds = %40
  %43 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %44 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = call i32 @device_remove_file(i32* %46, i32* @dev_attr_pcba_sn)
  br label %48

48:                                               ; preds = %42, %31
  %49 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %50 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = call i32 @device_remove_file(i32* %52, i32* @dev_attr_bios_build)
  br label %54

54:                                               ; preds = %48, %22
  %55 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %56 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = call i32 @device_remove_file(i32* %58, i32* @dev_attr_aic_revision)
  %60 = load i32, i32* %4, align 4
  store i32 %60, i32* %2, align 4
  br label %61

61:                                               ; preds = %54, %41, %12
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local i32 @device_create_file(i32*, i32*) #1

declare dso_local i32 @device_remove_file(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
