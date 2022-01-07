; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_usb_halinit.c_Hal_EfuseParseMACAddr_8188EU.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_usb_halinit.c_Hal_EfuseParseMACAddr_8188EU.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.eeprom_priv = type { i32* }

@__const.Hal_EfuseParseMACAddr_8188EU.sMacAddr = private unnamed_addr constant [6 x i32] [i32 0, i32 224, i32 76, i32 129, i32 136, i32 2], align 16
@EEPROM_MAC_ADDR_88EU = common dso_local global i64 0, align 8
@ETH_ALEN = common dso_local global i32 0, align 4
@_module_hci_hal_init_c_ = common dso_local global i32 0, align 4
@_drv_notice_ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"Hal_EfuseParseMACAddr_8188EU: Permanent Address = %pM\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*, i32*, i32)* @Hal_EfuseParseMACAddr_8188EU to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Hal_EfuseParseMACAddr_8188EU(%struct.adapter* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [6 x i32], align 16
  %9 = alloca %struct.eeprom_priv*, align 8
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = bitcast [6 x i32]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %10, i8* align 16 bitcast ([6 x i32]* @__const.Hal_EfuseParseMACAddr_8188EU.sMacAddr to i8*), i64 24, i1 false)
  %11 = load %struct.adapter*, %struct.adapter** %4, align 8
  %12 = call %struct.eeprom_priv* @GET_EEPROM_EFUSE_PRIV(%struct.adapter* %11)
  store %struct.eeprom_priv* %12, %struct.eeprom_priv** %9, align 8
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %34

15:                                               ; preds = %3
  store i32 0, i32* %7, align 4
  br label %16

16:                                               ; preds = %30, %15
  %17 = load i32, i32* %7, align 4
  %18 = icmp slt i32 %17, 6
  br i1 %18, label %19, label %33

19:                                               ; preds = %16
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [6 x i32], [6 x i32]* %8, i64 0, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.eeprom_priv*, %struct.eeprom_priv** %9, align 8
  %25 = getelementptr inbounds %struct.eeprom_priv, %struct.eeprom_priv* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  store i32 %23, i32* %29, align 4
  br label %30

30:                                               ; preds = %19
  %31 = load i32, i32* %7, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %7, align 4
  br label %16

33:                                               ; preds = %16
  br label %43

34:                                               ; preds = %3
  %35 = load %struct.eeprom_priv*, %struct.eeprom_priv** %9, align 8
  %36 = getelementptr inbounds %struct.eeprom_priv, %struct.eeprom_priv* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i32*, i32** %5, align 8
  %39 = load i64, i64* @EEPROM_MAC_ADDR_88EU, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  %41 = load i32, i32* @ETH_ALEN, align 4
  %42 = call i32 @memcpy(i32* %37, i32* %40, i32 %41)
  br label %43

43:                                               ; preds = %34, %33
  %44 = load i32, i32* @_module_hci_hal_init_c_, align 4
  %45 = load i32, i32* @_drv_notice_, align 4
  %46 = load %struct.eeprom_priv*, %struct.eeprom_priv** %9, align 8
  %47 = getelementptr inbounds %struct.eeprom_priv, %struct.eeprom_priv* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = bitcast i32* %48 to i8*
  %50 = call i32 @RT_TRACE(i32 %44, i32 %45, i8* %49)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.eeprom_priv* @GET_EEPROM_EFUSE_PRIV(%struct.adapter*) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i32 @RT_TRACE(i32, i32, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
