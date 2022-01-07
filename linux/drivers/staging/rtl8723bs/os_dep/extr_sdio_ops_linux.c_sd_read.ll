; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/os_dep/extr_sdio_ops_linux.c_sd_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/os_dep/extr_sdio_ops_linux.c_sd_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intf_hdl = type { %struct.dvobj_priv*, %struct.adapter* }
%struct.dvobj_priv = type { %struct.sdio_data }
%struct.sdio_data = type { %struct.sdio_func* }
%struct.sdio_func = type { i32 }
%struct.adapter = type { i64 }

@EPERM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sd_read(%struct.intf_hdl* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.intf_hdl*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.adapter*, align 8
  %11 = alloca %struct.dvobj_priv*, align 8
  %12 = alloca %struct.sdio_data*, align 8
  %13 = alloca %struct.sdio_func*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.intf_hdl* %0, %struct.intf_hdl** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %16 = load i32, i32* @EPERM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %15, align 4
  %18 = load %struct.intf_hdl*, %struct.intf_hdl** %6, align 8
  %19 = getelementptr inbounds %struct.intf_hdl, %struct.intf_hdl* %18, i32 0, i32 1
  %20 = load %struct.adapter*, %struct.adapter** %19, align 8
  store %struct.adapter* %20, %struct.adapter** %10, align 8
  %21 = load %struct.intf_hdl*, %struct.intf_hdl** %6, align 8
  %22 = getelementptr inbounds %struct.intf_hdl, %struct.intf_hdl* %21, i32 0, i32 0
  %23 = load %struct.dvobj_priv*, %struct.dvobj_priv** %22, align 8
  store %struct.dvobj_priv* %23, %struct.dvobj_priv** %11, align 8
  %24 = load %struct.dvobj_priv*, %struct.dvobj_priv** %11, align 8
  %25 = getelementptr inbounds %struct.dvobj_priv, %struct.dvobj_priv* %24, i32 0, i32 0
  store %struct.sdio_data* %25, %struct.sdio_data** %12, align 8
  %26 = load %struct.adapter*, %struct.adapter** %10, align 8
  %27 = getelementptr inbounds %struct.adapter, %struct.adapter* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %4
  %31 = load i32, i32* %15, align 4
  store i32 %31, i32* %5, align 4
  br label %56

32:                                               ; preds = %4
  %33 = load %struct.sdio_data*, %struct.sdio_data** %12, align 8
  %34 = getelementptr inbounds %struct.sdio_data, %struct.sdio_data* %33, i32 0, i32 0
  %35 = load %struct.sdio_func*, %struct.sdio_func** %34, align 8
  store %struct.sdio_func* %35, %struct.sdio_func** %13, align 8
  %36 = load %struct.sdio_func*, %struct.sdio_func** %13, align 8
  %37 = call i32 @rtw_sdio_claim_host_needed(%struct.sdio_func* %36)
  store i32 %37, i32* %14, align 4
  %38 = load i32, i32* %14, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %32
  %41 = load %struct.sdio_func*, %struct.sdio_func** %13, align 8
  %42 = call i32 @sdio_claim_host(%struct.sdio_func* %41)
  br label %43

43:                                               ; preds = %40, %32
  %44 = load %struct.intf_hdl*, %struct.intf_hdl** %6, align 8
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %8, align 4
  %47 = load i8*, i8** %9, align 8
  %48 = call i32 @_sd_read(%struct.intf_hdl* %44, i32 %45, i32 %46, i8* %47)
  store i32 %48, i32* %15, align 4
  %49 = load i32, i32* %14, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %43
  %52 = load %struct.sdio_func*, %struct.sdio_func** %13, align 8
  %53 = call i32 @sdio_release_host(%struct.sdio_func* %52)
  br label %54

54:                                               ; preds = %51, %43
  %55 = load i32, i32* %15, align 4
  store i32 %55, i32* %5, align 4
  br label %56

56:                                               ; preds = %54, %30
  %57 = load i32, i32* %5, align 4
  ret i32 %57
}

declare dso_local i32 @rtw_sdio_claim_host_needed(%struct.sdio_func*) #1

declare dso_local i32 @sdio_claim_host(%struct.sdio_func*) #1

declare dso_local i32 @_sd_read(%struct.intf_hdl*, i32, i32, i8*) #1

declare dso_local i32 @sdio_release_host(%struct.sdio_func*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
