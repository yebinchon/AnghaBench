; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wusbcore/extr_rh.c_wusbhc_rh_clear_port_feat.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wusbcore/extr_rh.c_wusbhc_rh_clear_port_feat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wusbhc = type { i64, i32, %struct.device* }
%struct.device = type { i32 }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@USB_PORT_STAT_C_RESET = common dso_local global i32 0, align 4
@USB_PORT_STAT_C_CONNECTION = common dso_local global i32 0, align 4
@USB_PORT_STAT_C_ENABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"(port_idx %d) Clear feat %d/%d UNIMPLEMENTED\0A\00", align 1
@ENOSYS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"(port_idx %d) Clear feat %d/%d UNKNOWN\0A\00", align 1
@EPIPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wusbhc*, i32, i64, i64)* @wusbhc_rh_clear_port_feat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wusbhc_rh_clear_port_feat(%struct.wusbhc* %0, i32 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wusbhc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.device*, align 8
  store %struct.wusbhc* %0, %struct.wusbhc** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 0, i32* %10, align 4
  %12 = load %struct.wusbhc*, %struct.wusbhc** %6, align 8
  %13 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %12, i32 0, i32 2
  %14 = load %struct.device*, %struct.device** %13, align 8
  store %struct.device* %14, %struct.device** %11, align 8
  %15 = load i64, i64* %9, align 8
  %16 = load %struct.wusbhc*, %struct.wusbhc** %6, align 8
  %17 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp sgt i64 %15, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %4
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %81

23:                                               ; preds = %4
  %24 = load %struct.wusbhc*, %struct.wusbhc** %6, align 8
  %25 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %24, i32 0, i32 1
  %26 = call i32 @mutex_lock(i32* %25)
  %27 = load i32, i32* %7, align 4
  switch i32 %27, label %68 [
    i32 129, label %28
    i32 133, label %28
    i32 132, label %29
    i32 135, label %38
    i32 130, label %47
    i32 134, label %51
    i32 128, label %60
    i32 131, label %60
  ]

28:                                               ; preds = %23, %23
  br label %76

29:                                               ; preds = %23
  %30 = load i32, i32* @USB_PORT_STAT_C_RESET, align 4
  %31 = xor i32 %30, -1
  %32 = load %struct.wusbhc*, %struct.wusbhc** %6, align 8
  %33 = load i64, i64* %9, align 8
  %34 = call %struct.TYPE_2__* @wusb_port_by_idx(%struct.wusbhc* %32, i64 %33)
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %36, %31
  store i32 %37, i32* %35, align 4
  br label %76

38:                                               ; preds = %23
  %39 = load i32, i32* @USB_PORT_STAT_C_CONNECTION, align 4
  %40 = xor i32 %39, -1
  %41 = load %struct.wusbhc*, %struct.wusbhc** %6, align 8
  %42 = load i64, i64* %9, align 8
  %43 = call %struct.TYPE_2__* @wusb_port_by_idx(%struct.wusbhc* %41, i64 %42)
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, %40
  store i32 %46, i32* %44, align 4
  br label %76

47:                                               ; preds = %23
  %48 = load %struct.wusbhc*, %struct.wusbhc** %6, align 8
  %49 = load i64, i64* %9, align 8
  %50 = call i32 @__wusbhc_dev_disable(%struct.wusbhc* %48, i64 %49)
  br label %76

51:                                               ; preds = %23
  %52 = load i32, i32* @USB_PORT_STAT_C_ENABLE, align 4
  %53 = xor i32 %52, -1
  %54 = load %struct.wusbhc*, %struct.wusbhc** %6, align 8
  %55 = load i64, i64* %9, align 8
  %56 = call %struct.TYPE_2__* @wusb_port_by_idx(%struct.wusbhc* %54, i64 %55)
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = and i32 %58, %53
  store i32 %59, i32* %57, align 4
  br label %76

60:                                               ; preds = %23, %23
  %61 = load %struct.device*, %struct.device** %11, align 8
  %62 = load i64, i64* %9, align 8
  %63 = load i32, i32* %7, align 4
  %64 = load i64, i64* %8, align 8
  %65 = call i32 @dev_err(%struct.device* %61, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i64 %62, i32 %63, i64 %64)
  %66 = load i32, i32* @ENOSYS, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %10, align 4
  br label %76

68:                                               ; preds = %23
  %69 = load %struct.device*, %struct.device** %11, align 8
  %70 = load i64, i64* %9, align 8
  %71 = load i32, i32* %7, align 4
  %72 = load i64, i64* %8, align 8
  %73 = call i32 @dev_err(%struct.device* %69, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i64 %70, i32 %71, i64 %72)
  %74 = load i32, i32* @EPIPE, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %10, align 4
  br label %76

76:                                               ; preds = %68, %60, %51, %47, %38, %29, %28
  %77 = load %struct.wusbhc*, %struct.wusbhc** %6, align 8
  %78 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %77, i32 0, i32 1
  %79 = call i32 @mutex_unlock(i32* %78)
  %80 = load i32, i32* %10, align 4
  store i32 %80, i32* %5, align 4
  br label %81

81:                                               ; preds = %76, %20
  %82 = load i32, i32* %5, align 4
  ret i32 %82
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.TYPE_2__* @wusb_port_by_idx(%struct.wusbhc*, i64) #1

declare dso_local i32 @__wusbhc_dev_disable(%struct.wusbhc*, i64) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i64, i32, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
