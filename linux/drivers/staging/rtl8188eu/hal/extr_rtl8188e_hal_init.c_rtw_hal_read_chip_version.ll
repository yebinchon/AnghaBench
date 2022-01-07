; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_rtl8188e_hal_init.c_rtw_hal_read_chip_version.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_rtl8188e_hal_init.c_rtw_hal_read_chip_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.hal_data_8188e* }
%struct.hal_data_8188e = type { %struct.HAL_VERSION }
%struct.HAL_VERSION = type { i32, i32, i32 }

@REG_SYS_CFG = common dso_local global i32 0, align 4
@RTL_ID = common dso_local global i32 0, align 4
@TEST_CHIP = common dso_local global i32 0, align 4
@NORMAL_CHIP = common dso_local global i32 0, align 4
@VENDOR_ID = common dso_local global i32 0, align 4
@CHIP_VENDOR_UMC = common dso_local global i32 0, align 4
@CHIP_VENDOR_TSMC = common dso_local global i32 0, align 4
@CHIP_VER_RTL_MASK = common dso_local global i32 0, align 4
@CHIP_VER_RTL_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtw_hal_read_chip_version(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.HAL_VERSION, align 4
  %5 = alloca %struct.hal_data_8188e*, align 8
  %6 = alloca { i64, i32 }, align 4
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %7 = load %struct.adapter*, %struct.adapter** %2, align 8
  %8 = getelementptr inbounds %struct.adapter, %struct.adapter* %7, i32 0, i32 0
  %9 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %8, align 8
  store %struct.hal_data_8188e* %9, %struct.hal_data_8188e** %5, align 8
  %10 = load %struct.adapter*, %struct.adapter** %2, align 8
  %11 = load i32, i32* @REG_SYS_CFG, align 4
  %12 = call i32 @usb_read32(%struct.adapter* %10, i32 %11)
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @RTL_ID, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* @TEST_CHIP, align 4
  br label %21

19:                                               ; preds = %1
  %20 = load i32, i32* @NORMAL_CHIP, align 4
  br label %21

21:                                               ; preds = %19, %17
  %22 = phi i32 [ %18, %17 ], [ %20, %19 ]
  %23 = getelementptr inbounds %struct.HAL_VERSION, %struct.HAL_VERSION* %4, i32 0, i32 2
  store i32 %22, i32* %23, align 4
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @VENDOR_ID, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = load i32, i32* @CHIP_VENDOR_UMC, align 4
  br label %32

30:                                               ; preds = %21
  %31 = load i32, i32* @CHIP_VENDOR_TSMC, align 4
  br label %32

32:                                               ; preds = %30, %28
  %33 = phi i32 [ %29, %28 ], [ %31, %30 ]
  %34 = getelementptr inbounds %struct.HAL_VERSION, %struct.HAL_VERSION* %4, i32 0, i32 1
  store i32 %33, i32* %34, align 4
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* @CHIP_VER_RTL_MASK, align 4
  %37 = and i32 %35, %36
  %38 = load i32, i32* @CHIP_VER_RTL_SHIFT, align 4
  %39 = ashr i32 %37, %38
  %40 = getelementptr inbounds %struct.HAL_VERSION, %struct.HAL_VERSION* %4, i32 0, i32 0
  store i32 %39, i32* %40, align 4
  %41 = bitcast { i64, i32 }* %6 to i8*
  %42 = bitcast %struct.HAL_VERSION* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %41, i8* align 4 %42, i64 12, i1 false)
  %43 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %6, i32 0, i32 0
  %44 = load i64, i64* %43, align 4
  %45 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %6, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @dump_chip_info(i64 %44, i32 %46)
  %48 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %5, align 8
  %49 = getelementptr inbounds %struct.hal_data_8188e, %struct.hal_data_8188e* %48, i32 0, i32 0
  %50 = bitcast %struct.HAL_VERSION* %49 to i8*
  %51 = bitcast %struct.HAL_VERSION* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %50, i8* align 4 %51, i64 12, i1 false)
  ret void
}

declare dso_local i32 @usb_read32(%struct.adapter*, i32) #1

declare dso_local i32 @dump_chip_info(i64, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
