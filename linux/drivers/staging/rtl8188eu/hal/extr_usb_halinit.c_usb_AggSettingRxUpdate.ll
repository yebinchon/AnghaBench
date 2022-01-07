; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_usb_halinit.c_usb_AggSettingRxUpdate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_usb_halinit.c_usb_AggSettingRxUpdate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.hal_data_8188e* }
%struct.hal_data_8188e = type { i32, i32, i32, i32, i32, i32 }

@REG_TRXDMA_CTRL = common dso_local global i32 0, align 4
@REG_USB_SPECIAL_OPTION = common dso_local global i32 0, align 4
@RXDMA_AGG_EN = common dso_local global i32 0, align 4
@USB_AGG_EN = common dso_local global i32 0, align 4
@REG_RXDMA_AGG_PG_TH = common dso_local global i32 0, align 4
@REG_USB_AGG_TH = common dso_local global i32 0, align 4
@REG_USB_AGG_TO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*)* @usb_AggSettingRxUpdate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usb_AggSettingRxUpdate(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca %struct.hal_data_8188e*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %6 = load %struct.adapter*, %struct.adapter** %2, align 8
  %7 = getelementptr inbounds %struct.adapter, %struct.adapter* %6, i32 0, i32 0
  %8 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %7, align 8
  store %struct.hal_data_8188e* %8, %struct.hal_data_8188e** %3, align 8
  %9 = load %struct.adapter*, %struct.adapter** %2, align 8
  %10 = load i32, i32* @REG_TRXDMA_CTRL, align 4
  %11 = call i32 @usb_read8(%struct.adapter* %9, i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load %struct.adapter*, %struct.adapter** %2, align 8
  %13 = load i32, i32* @REG_USB_SPECIAL_OPTION, align 4
  %14 = call i32 @usb_read8(%struct.adapter* %12, i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %3, align 8
  %16 = getelementptr inbounds %struct.hal_data_8188e, %struct.hal_data_8188e* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %42 [
    i32 130, label %18
    i32 128, label %26
    i32 129, label %34
    i32 131, label %41
  ]

18:                                               ; preds = %1
  %19 = load i32, i32* @RXDMA_AGG_EN, align 4
  %20 = load i32, i32* %4, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* @USB_AGG_EN, align 4
  %23 = xor i32 %22, -1
  %24 = load i32, i32* %5, align 4
  %25 = and i32 %24, %23
  store i32 %25, i32* %5, align 4
  br label %51

26:                                               ; preds = %1
  %27 = load i32, i32* @RXDMA_AGG_EN, align 4
  %28 = xor i32 %27, -1
  %29 = load i32, i32* %4, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* @USB_AGG_EN, align 4
  %32 = load i32, i32* %5, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %5, align 4
  br label %51

34:                                               ; preds = %1
  %35 = load i32, i32* @RXDMA_AGG_EN, align 4
  %36 = load i32, i32* %4, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* @USB_AGG_EN, align 4
  %39 = load i32, i32* %5, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %5, align 4
  br label %51

41:                                               ; preds = %1
  br label %42

42:                                               ; preds = %1, %41
  %43 = load i32, i32* @RXDMA_AGG_EN, align 4
  %44 = xor i32 %43, -1
  %45 = load i32, i32* %4, align 4
  %46 = and i32 %45, %44
  store i32 %46, i32* %4, align 4
  %47 = load i32, i32* @USB_AGG_EN, align 4
  %48 = xor i32 %47, -1
  %49 = load i32, i32* %5, align 4
  %50 = and i32 %49, %48
  store i32 %50, i32* %5, align 4
  br label %51

51:                                               ; preds = %42, %34, %26, %18
  %52 = load %struct.adapter*, %struct.adapter** %2, align 8
  %53 = load i32, i32* @REG_TRXDMA_CTRL, align 4
  %54 = load i32, i32* %4, align 4
  %55 = call i32 @usb_write8(%struct.adapter* %52, i32 %53, i32 %54)
  %56 = load %struct.adapter*, %struct.adapter** %2, align 8
  %57 = load i32, i32* @REG_USB_SPECIAL_OPTION, align 4
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @usb_write8(%struct.adapter* %56, i32 %57, i32 %58)
  %60 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %3, align 8
  %61 = getelementptr inbounds %struct.hal_data_8188e, %struct.hal_data_8188e* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  switch i32 %62, label %118 [
    i32 130, label %63
    i32 128, label %77
    i32 129, label %90
    i32 131, label %117
  ]

63:                                               ; preds = %51
  %64 = load %struct.adapter*, %struct.adapter** %2, align 8
  %65 = load i32, i32* @REG_RXDMA_AGG_PG_TH, align 4
  %66 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %3, align 8
  %67 = getelementptr inbounds %struct.hal_data_8188e, %struct.hal_data_8188e* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @usb_write8(%struct.adapter* %64, i32 %65, i32 %68)
  %70 = load %struct.adapter*, %struct.adapter** %2, align 8
  %71 = load i32, i32* @REG_RXDMA_AGG_PG_TH, align 4
  %72 = add nsw i32 %71, 1
  %73 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %3, align 8
  %74 = getelementptr inbounds %struct.hal_data_8188e, %struct.hal_data_8188e* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @usb_write8(%struct.adapter* %70, i32 %72, i32 %75)
  br label %119

77:                                               ; preds = %51
  %78 = load %struct.adapter*, %struct.adapter** %2, align 8
  %79 = load i32, i32* @REG_USB_AGG_TH, align 4
  %80 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %3, align 8
  %81 = getelementptr inbounds %struct.hal_data_8188e, %struct.hal_data_8188e* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @usb_write8(%struct.adapter* %78, i32 %79, i32 %82)
  %84 = load %struct.adapter*, %struct.adapter** %2, align 8
  %85 = load i32, i32* @REG_USB_AGG_TO, align 4
  %86 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %3, align 8
  %87 = getelementptr inbounds %struct.hal_data_8188e, %struct.hal_data_8188e* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @usb_write8(%struct.adapter* %84, i32 %85, i32 %88)
  br label %119

90:                                               ; preds = %51
  %91 = load %struct.adapter*, %struct.adapter** %2, align 8
  %92 = load i32, i32* @REG_RXDMA_AGG_PG_TH, align 4
  %93 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %3, align 8
  %94 = getelementptr inbounds %struct.hal_data_8188e, %struct.hal_data_8188e* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @usb_write8(%struct.adapter* %91, i32 %92, i32 %95)
  %97 = load %struct.adapter*, %struct.adapter** %2, align 8
  %98 = load i32, i32* @REG_RXDMA_AGG_PG_TH, align 4
  %99 = add nsw i32 %98, 1
  %100 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %3, align 8
  %101 = getelementptr inbounds %struct.hal_data_8188e, %struct.hal_data_8188e* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = and i32 %102, 31
  %104 = call i32 @usb_write8(%struct.adapter* %97, i32 %99, i32 %103)
  %105 = load %struct.adapter*, %struct.adapter** %2, align 8
  %106 = load i32, i32* @REG_USB_AGG_TH, align 4
  %107 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %3, align 8
  %108 = getelementptr inbounds %struct.hal_data_8188e, %struct.hal_data_8188e* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @usb_write8(%struct.adapter* %105, i32 %106, i32 %109)
  %111 = load %struct.adapter*, %struct.adapter** %2, align 8
  %112 = load i32, i32* @REG_USB_AGG_TO, align 4
  %113 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %3, align 8
  %114 = getelementptr inbounds %struct.hal_data_8188e, %struct.hal_data_8188e* %113, i32 0, i32 4
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @usb_write8(%struct.adapter* %111, i32 %112, i32 %115)
  br label %119

117:                                              ; preds = %51
  br label %118

118:                                              ; preds = %51, %117
  br label %119

119:                                              ; preds = %118, %90, %77, %63
  %120 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %3, align 8
  %121 = getelementptr inbounds %struct.hal_data_8188e, %struct.hal_data_8188e* %120, i32 0, i32 5
  store i32 128, i32* %121, align 4
  ret void
}

declare dso_local i32 @usb_read8(%struct.adapter*, i32) #1

declare dso_local i32 @usb_write8(%struct.adapter*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
