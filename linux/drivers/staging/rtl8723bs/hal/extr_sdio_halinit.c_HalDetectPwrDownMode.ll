; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_sdio_halinit.c_HalDetectPwrDownMode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_sdio_halinit.c_HalDetectPwrDownMode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.hal_com_data = type { i32 }
%struct.pwrctrl_priv = type { i64 }

@BIT4 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"HalDetectPwrDownMode(): PDN =%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adapter*)* @HalDetectPwrDownMode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @HalDetectPwrDownMode(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.hal_com_data*, align 8
  %5 = alloca %struct.pwrctrl_priv*, align 8
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %6 = load %struct.adapter*, %struct.adapter** %2, align 8
  %7 = call %struct.hal_com_data* @GET_HAL_DATA(%struct.adapter* %6)
  store %struct.hal_com_data* %7, %struct.hal_com_data** %4, align 8
  %8 = load %struct.adapter*, %struct.adapter** %2, align 8
  %9 = call %struct.pwrctrl_priv* @adapter_to_pwrctl(%struct.adapter* %8)
  store %struct.pwrctrl_priv* %9, %struct.pwrctrl_priv** %5, align 8
  %10 = load %struct.adapter*, %struct.adapter** %2, align 8
  %11 = call i32 @EFUSE_ShadowRead(%struct.adapter* %10, i32 1, i32 123, i32* %3)
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @BIT4, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %1
  %17 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %5, align 8
  %18 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load %struct.hal_com_data*, %struct.hal_com_data** %4, align 8
  %23 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %22, i32 0, i32 0
  store i32 1, i32* %23, align 4
  br label %27

24:                                               ; preds = %16, %1
  %25 = load %struct.hal_com_data*, %struct.hal_com_data** %4, align 8
  %26 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %25, i32 0, i32 0
  store i32 0, i32* %26, align 4
  br label %27

27:                                               ; preds = %24, %21
  %28 = load %struct.hal_com_data*, %struct.hal_com_data** %4, align 8
  %29 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @DBG_8192C(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load %struct.hal_com_data*, %struct.hal_com_data** %4, align 8
  %33 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  ret i32 %34
}

declare dso_local %struct.hal_com_data* @GET_HAL_DATA(%struct.adapter*) #1

declare dso_local %struct.pwrctrl_priv* @adapter_to_pwrctl(%struct.adapter*) #1

declare dso_local i32 @EFUSE_ShadowRead(%struct.adapter*, i32, i32, i32*) #1

declare dso_local i32 @DBG_8192C(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
