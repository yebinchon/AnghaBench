; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/via/extr_vt1636.c_set_dpa_vt1636.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/via/extr_vt1636.c_set_dpa_vt1636.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lvds_setting_information = type { i32 }
%struct.lvds_chip_information = type { i32 }
%struct.VT1636_DPA_SETTING = type { i32, i32 }
%struct.IODATA = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lvds_setting_information*, %struct.lvds_chip_information*, %struct.VT1636_DPA_SETTING*)* @set_dpa_vt1636 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_dpa_vt1636(%struct.lvds_setting_information* %0, %struct.lvds_chip_information* %1, %struct.VT1636_DPA_SETTING* %2) #0 {
  %4 = alloca %struct.lvds_setting_information*, align 8
  %5 = alloca %struct.lvds_chip_information*, align 8
  %6 = alloca %struct.VT1636_DPA_SETTING*, align 8
  %7 = alloca %struct.IODATA, align 4
  %8 = alloca { i64, i32 }, align 4
  %9 = alloca { i64, i32 }, align 4
  store %struct.lvds_setting_information* %0, %struct.lvds_setting_information** %4, align 8
  store %struct.lvds_chip_information* %1, %struct.lvds_chip_information** %5, align 8
  store %struct.VT1636_DPA_SETTING* %2, %struct.VT1636_DPA_SETTING** %6, align 8
  %10 = getelementptr inbounds %struct.IODATA, %struct.IODATA* %7, i32 0, i32 0
  store i32 9, i32* %10, align 4
  %11 = getelementptr inbounds %struct.IODATA, %struct.IODATA* %7, i32 0, i32 1
  store i32 31, i32* %11, align 4
  %12 = load %struct.VT1636_DPA_SETTING*, %struct.VT1636_DPA_SETTING** %6, align 8
  %13 = getelementptr inbounds %struct.VT1636_DPA_SETTING, %struct.VT1636_DPA_SETTING* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = getelementptr inbounds %struct.IODATA, %struct.IODATA* %7, i32 0, i32 2
  store i32 %14, i32* %15, align 4
  %16 = load %struct.lvds_setting_information*, %struct.lvds_setting_information** %4, align 8
  %17 = load %struct.lvds_chip_information*, %struct.lvds_chip_information** %5, align 8
  %18 = bitcast { i64, i32 }* %8 to i8*
  %19 = bitcast %struct.IODATA* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %18, i8* align 4 %19, i64 12, i1 false)
  %20 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %8, i32 0, i32 0
  %21 = load i64, i64* %20, align 4
  %22 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %8, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @viafb_gpio_i2c_write_mask_lvds(%struct.lvds_setting_information* %16, %struct.lvds_chip_information* %17, i64 %21, i32 %23)
  %25 = getelementptr inbounds %struct.IODATA, %struct.IODATA* %7, i32 0, i32 0
  store i32 8, i32* %25, align 4
  %26 = getelementptr inbounds %struct.IODATA, %struct.IODATA* %7, i32 0, i32 1
  store i32 15, i32* %26, align 4
  %27 = load %struct.VT1636_DPA_SETTING*, %struct.VT1636_DPA_SETTING** %6, align 8
  %28 = getelementptr inbounds %struct.VT1636_DPA_SETTING, %struct.VT1636_DPA_SETTING* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds %struct.IODATA, %struct.IODATA* %7, i32 0, i32 2
  store i32 %29, i32* %30, align 4
  %31 = load %struct.lvds_setting_information*, %struct.lvds_setting_information** %4, align 8
  %32 = load %struct.lvds_chip_information*, %struct.lvds_chip_information** %5, align 8
  %33 = bitcast { i64, i32 }* %9 to i8*
  %34 = bitcast %struct.IODATA* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %33, i8* align 4 %34, i64 12, i1 false)
  %35 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %9, i32 0, i32 0
  %36 = load i64, i64* %35, align 4
  %37 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %9, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @viafb_gpio_i2c_write_mask_lvds(%struct.lvds_setting_information* %31, %struct.lvds_chip_information* %32, i64 %36, i32 %38)
  ret void
}

declare dso_local i32 @viafb_gpio_i2c_write_mask_lvds(%struct.lvds_setting_information*, %struct.lvds_chip_information*, i64, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
