; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/os_dep/extr_sdio_ops_linux.c_sd_cmd52_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/os_dep/extr_sdio_ops_linux.c_sd_cmd52_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intf_hdl = type { %struct.dvobj_priv*, %struct.adapter* }
%struct.dvobj_priv = type { %struct.sdio_data }
%struct.sdio_data = type { %struct.sdio_func* }
%struct.sdio_func = type { i32 }
%struct.adapter = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sd_cmd52_write(%struct.intf_hdl* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.intf_hdl*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.adapter*, align 8
  %11 = alloca %struct.dvobj_priv*, align 8
  %12 = alloca %struct.sdio_data*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.sdio_func*, align 8
  %15 = alloca i32, align 4
  store %struct.intf_hdl* %0, %struct.intf_hdl** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %13, align 4
  %16 = load %struct.intf_hdl*, %struct.intf_hdl** %6, align 8
  %17 = getelementptr inbounds %struct.intf_hdl, %struct.intf_hdl* %16, i32 0, i32 1
  %18 = load %struct.adapter*, %struct.adapter** %17, align 8
  store %struct.adapter* %18, %struct.adapter** %10, align 8
  %19 = load %struct.intf_hdl*, %struct.intf_hdl** %6, align 8
  %20 = getelementptr inbounds %struct.intf_hdl, %struct.intf_hdl* %19, i32 0, i32 0
  %21 = load %struct.dvobj_priv*, %struct.dvobj_priv** %20, align 8
  store %struct.dvobj_priv* %21, %struct.dvobj_priv** %11, align 8
  %22 = load %struct.dvobj_priv*, %struct.dvobj_priv** %11, align 8
  %23 = getelementptr inbounds %struct.dvobj_priv, %struct.dvobj_priv* %22, i32 0, i32 0
  store %struct.sdio_data* %23, %struct.sdio_data** %12, align 8
  %24 = load %struct.adapter*, %struct.adapter** %10, align 8
  %25 = getelementptr inbounds %struct.adapter, %struct.adapter* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %4
  %29 = load i32, i32* %13, align 4
  store i32 %29, i32* %5, align 4
  br label %54

30:                                               ; preds = %4
  %31 = load %struct.sdio_data*, %struct.sdio_data** %12, align 8
  %32 = getelementptr inbounds %struct.sdio_data, %struct.sdio_data* %31, i32 0, i32 0
  %33 = load %struct.sdio_func*, %struct.sdio_func** %32, align 8
  store %struct.sdio_func* %33, %struct.sdio_func** %14, align 8
  %34 = load %struct.sdio_func*, %struct.sdio_func** %14, align 8
  %35 = call i32 @rtw_sdio_claim_host_needed(%struct.sdio_func* %34)
  store i32 %35, i32* %15, align 4
  %36 = load i32, i32* %15, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %30
  %39 = load %struct.sdio_func*, %struct.sdio_func** %14, align 8
  %40 = call i32 @sdio_claim_host(%struct.sdio_func* %39)
  br label %41

41:                                               ; preds = %38, %30
  %42 = load %struct.intf_hdl*, %struct.intf_hdl** %6, align 8
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %8, align 4
  %45 = load i32*, i32** %9, align 8
  %46 = call i32 @_sd_cmd52_write(%struct.intf_hdl* %42, i32 %43, i32 %44, i32* %45)
  store i32 %46, i32* %13, align 4
  %47 = load i32, i32* %15, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %41
  %50 = load %struct.sdio_func*, %struct.sdio_func** %14, align 8
  %51 = call i32 @sdio_release_host(%struct.sdio_func* %50)
  br label %52

52:                                               ; preds = %49, %41
  %53 = load i32, i32* %13, align 4
  store i32 %53, i32* %5, align 4
  br label %54

54:                                               ; preds = %52, %28
  %55 = load i32, i32* %5, align 4
  ret i32 %55
}

declare dso_local i32 @rtw_sdio_claim_host_needed(%struct.sdio_func*) #1

declare dso_local i32 @sdio_claim_host(%struct.sdio_func*) #1

declare dso_local i32 @_sd_cmd52_write(%struct.intf_hdl*, i32, i32, i32*) #1

declare dso_local i32 @sdio_release_host(%struct.sdio_func*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
