; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wusbcore/host/whci/extr_wusb.c_whc_dev_info_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wusbcore/host/whci/extr_wusb.c_whc_dev_info_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wusbhc = type { i32 }
%struct.wusb_dev = type { i32, i32, i32 }
%struct.whc = type { i32, %struct.di_buf_entry* }
%struct.di_buf_entry = type { i32, i32 }

@WHC_DI_DISABLE = common dso_local global i32 0, align 4
@WHC_DI_DEV_ADDR_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @whc_dev_info_set(%struct.wusbhc* %0, %struct.wusb_dev* %1) #0 {
  %3 = alloca %struct.wusbhc*, align 8
  %4 = alloca %struct.wusb_dev*, align 8
  %5 = alloca %struct.whc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.di_buf_entry*, align 8
  %8 = alloca i32, align 4
  store %struct.wusbhc* %0, %struct.wusbhc** %3, align 8
  store %struct.wusb_dev* %1, %struct.wusb_dev** %4, align 8
  %9 = load %struct.wusbhc*, %struct.wusbhc** %3, align 8
  %10 = call %struct.whc* @wusbhc_to_whc(%struct.wusbhc* %9)
  store %struct.whc* %10, %struct.whc** %5, align 8
  %11 = load %struct.wusb_dev*, %struct.wusb_dev** %4, align 8
  %12 = getelementptr inbounds %struct.wusb_dev, %struct.wusb_dev* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %6, align 4
  %14 = load %struct.whc*, %struct.whc** %5, align 8
  %15 = getelementptr inbounds %struct.whc, %struct.whc* %14, i32 0, i32 1
  %16 = load %struct.di_buf_entry*, %struct.di_buf_entry** %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.di_buf_entry, %struct.di_buf_entry* %16, i64 %18
  store %struct.di_buf_entry* %19, %struct.di_buf_entry** %7, align 8
  %20 = load %struct.whc*, %struct.whc** %5, align 8
  %21 = getelementptr inbounds %struct.whc, %struct.whc* %20, i32 0, i32 0
  %22 = call i32 @mutex_lock(i32* %21)
  %23 = load %struct.di_buf_entry*, %struct.di_buf_entry** %7, align 8
  %24 = getelementptr inbounds %struct.di_buf_entry, %struct.di_buf_entry* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.wusb_dev*, %struct.wusb_dev** %4, align 8
  %27 = getelementptr inbounds %struct.wusb_dev, %struct.wusb_dev* %26, i32 0, i32 2
  %28 = call i32 @uwb_mas_bm_copy_le(i32 %25, i32* %27)
  %29 = load i32, i32* @WHC_DI_DISABLE, align 4
  %30 = load i32, i32* @WHC_DI_DEV_ADDR_MASK, align 4
  %31 = or i32 %29, %30
  %32 = xor i32 %31, -1
  %33 = load %struct.di_buf_entry*, %struct.di_buf_entry** %7, align 8
  %34 = getelementptr inbounds %struct.di_buf_entry, %struct.di_buf_entry* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, %32
  store i32 %36, i32* %34, align 4
  %37 = load %struct.wusb_dev*, %struct.wusb_dev** %4, align 8
  %38 = getelementptr inbounds %struct.wusb_dev, %struct.wusb_dev* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @WHC_DI_DEV_ADDR(i32 %39)
  %41 = load %struct.di_buf_entry*, %struct.di_buf_entry** %7, align 8
  %42 = getelementptr inbounds %struct.di_buf_entry, %struct.di_buf_entry* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 4
  %45 = load %struct.whc*, %struct.whc** %5, align 8
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @whc_update_di(%struct.whc* %45, i32 %46)
  store i32 %47, i32* %8, align 4
  %48 = load %struct.whc*, %struct.whc** %5, align 8
  %49 = getelementptr inbounds %struct.whc, %struct.whc* %48, i32 0, i32 0
  %50 = call i32 @mutex_unlock(i32* %49)
  %51 = load i32, i32* %8, align 4
  ret i32 %51
}

declare dso_local %struct.whc* @wusbhc_to_whc(%struct.wusbhc*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @uwb_mas_bm_copy_le(i32, i32*) #1

declare dso_local i32 @WHC_DI_DEV_ADDR(i32) #1

declare dso_local i32 @whc_update_di(%struct.whc*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
