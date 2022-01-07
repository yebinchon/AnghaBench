; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/via/extr_vt1636.c_viafb_gpio_i2c_write_mask_lvds.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/via/extr_vt1636.c_viafb_gpio_i2c_write_mask_lvds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lvds_setting_information = type { i32 }
%struct.lvds_chip_information = type { i32, i32 }
%struct.IODATA = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @viafb_gpio_i2c_write_mask_lvds(%struct.lvds_setting_information* %0, %struct.lvds_chip_information* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.IODATA, align 4
  %6 = alloca { i64, i32 }, align 4
  %7 = alloca %struct.lvds_setting_information*, align 8
  %8 = alloca %struct.lvds_chip_information*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %6, i32 0, i32 0
  store i64 %2, i64* %11, align 4
  %12 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %6, i32 0, i32 1
  store i32 %3, i32* %12, align 4
  %13 = bitcast %struct.IODATA* %5 to i8*
  %14 = bitcast { i64, i32 }* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 %14, i64 12, i1 false)
  store %struct.lvds_setting_information* %0, %struct.lvds_setting_information** %7, align 8
  store %struct.lvds_chip_information* %1, %struct.lvds_chip_information** %8, align 8
  %15 = getelementptr inbounds %struct.IODATA, %struct.IODATA* %5, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %9, align 4
  %17 = load %struct.lvds_setting_information*, %struct.lvds_setting_information** %7, align 8
  %18 = load %struct.lvds_chip_information*, %struct.lvds_chip_information** %8, align 8
  %19 = load i32, i32* %9, align 4
  %20 = call i32 @viafb_gpio_i2c_read_lvds(%struct.lvds_setting_information* %17, %struct.lvds_chip_information* %18, i32 %19)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = getelementptr inbounds %struct.IODATA, %struct.IODATA* %5, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = xor i32 %23, -1
  %25 = and i32 %21, %24
  %26 = getelementptr inbounds %struct.IODATA, %struct.IODATA* %5, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %25, %27
  store i32 %28, i32* %10, align 4
  %29 = load %struct.lvds_chip_information*, %struct.lvds_chip_information** %8, align 8
  %30 = getelementptr inbounds %struct.lvds_chip_information, %struct.lvds_chip_information* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.lvds_chip_information*, %struct.lvds_chip_information** %8, align 8
  %33 = getelementptr inbounds %struct.lvds_chip_information, %struct.lvds_chip_information* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %10, align 4
  %37 = call i32 @viafb_i2c_writebyte(i32 %31, i32 %34, i32 %35, i32 %36)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @viafb_gpio_i2c_read_lvds(%struct.lvds_setting_information*, %struct.lvds_chip_information*, i32) #2

declare dso_local i32 @viafb_i2c_writebyte(i32, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
