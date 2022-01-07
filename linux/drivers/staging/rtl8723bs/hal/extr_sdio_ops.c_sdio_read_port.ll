; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_sdio_ops.c_sdio_read_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_sdio_ops.c_sdio_read_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intf_hdl = type { %struct.adapter* }
%struct.adapter = type { i32 }
%struct.sdio_data = type { i64 }
%struct.hal_com_data = type { i32 }
%struct.TYPE_2__ = type { %struct.sdio_data }

@_FAIL = common dso_local global i64 0, align 8
@_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.intf_hdl*, i64, i64, i32*)* @sdio_read_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @sdio_read_port(%struct.intf_hdl* %0, i64 %1, i64 %2, i32* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.intf_hdl*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.adapter*, align 8
  %11 = alloca %struct.sdio_data*, align 8
  %12 = alloca %struct.hal_com_data*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.intf_hdl* %0, %struct.intf_hdl** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %15 = load %struct.intf_hdl*, %struct.intf_hdl** %6, align 8
  %16 = getelementptr inbounds %struct.intf_hdl, %struct.intf_hdl* %15, i32 0, i32 0
  %17 = load %struct.adapter*, %struct.adapter** %16, align 8
  store %struct.adapter* %17, %struct.adapter** %10, align 8
  %18 = load %struct.adapter*, %struct.adapter** %10, align 8
  %19 = call %struct.TYPE_2__* @adapter_to_dvobj(%struct.adapter* %18)
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store %struct.sdio_data* %20, %struct.sdio_data** %11, align 8
  %21 = load %struct.adapter*, %struct.adapter** %10, align 8
  %22 = call %struct.hal_com_data* @GET_HAL_DATA(%struct.adapter* %21)
  store %struct.hal_com_data* %22, %struct.hal_com_data** %12, align 8
  %23 = load %struct.adapter*, %struct.adapter** %10, align 8
  %24 = load i64, i64* %7, align 8
  %25 = load %struct.hal_com_data*, %struct.hal_com_data** %12, align 8
  %26 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %26, align 4
  %29 = call i32 @HalSdioGetCmdAddr8723BSdio(%struct.adapter* %23, i64 %24, i32 %27, i64* %7)
  %30 = load i64, i64* %8, align 8
  store i64 %30, i64* %13, align 8
  %31 = load i64, i64* %8, align 8
  %32 = load %struct.sdio_data*, %struct.sdio_data** %11, align 8
  %33 = getelementptr inbounds %struct.sdio_data, %struct.sdio_data* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp sgt i64 %31, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %4
  %37 = load i64, i64* %8, align 8
  %38 = load %struct.sdio_data*, %struct.sdio_data** %11, align 8
  %39 = getelementptr inbounds %struct.sdio_data, %struct.sdio_data* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i64 @_RND(i64 %37, i64 %40)
  store i64 %41, i64* %8, align 8
  br label %42

42:                                               ; preds = %36, %4
  %43 = load %struct.intf_hdl*, %struct.intf_hdl** %6, align 8
  %44 = load i64, i64* %7, align 8
  %45 = load i64, i64* %8, align 8
  %46 = load i32*, i32** %9, align 8
  %47 = call i64 @_sd_read(%struct.intf_hdl* %43, i64 %44, i64 %45, i32* %46)
  store i64 %47, i64* %14, align 8
  %48 = load i64, i64* %14, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %42
  %51 = load i64, i64* @_FAIL, align 8
  store i64 %51, i64* %5, align 8
  br label %54

52:                                               ; preds = %42
  %53 = load i64, i64* @_SUCCESS, align 8
  store i64 %53, i64* %5, align 8
  br label %54

54:                                               ; preds = %52, %50
  %55 = load i64, i64* %5, align 8
  ret i64 %55
}

declare dso_local %struct.TYPE_2__* @adapter_to_dvobj(%struct.adapter*) #1

declare dso_local %struct.hal_com_data* @GET_HAL_DATA(%struct.adapter*) #1

declare dso_local i32 @HalSdioGetCmdAddr8723BSdio(%struct.adapter*, i64, i32, i64*) #1

declare dso_local i64 @_RND(i64, i64) #1

declare dso_local i64 @_sd_read(%struct.intf_hdl*, i64, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
