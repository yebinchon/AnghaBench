; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/emxx_udc/extr_emxx_udc.c_nbu2ss_drv_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/emxx_udc/extr_emxx_udc.c_nbu2ss_drv_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.nbu2ss_udc = type { i32, i64, i32, i64 }

@USB_STATE_NOTATTACHED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, i32)* @nbu2ss_drv_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nbu2ss_drv_suspend(%struct.platform_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nbu2ss_udc*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %8 = call %struct.nbu2ss_udc* @platform_get_drvdata(%struct.platform_device* %7)
  store %struct.nbu2ss_udc* %8, %struct.nbu2ss_udc** %6, align 8
  %9 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %6, align 8
  %10 = icmp ne %struct.nbu2ss_udc* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %40

12:                                               ; preds = %2
  %13 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %6, align 8
  %14 = getelementptr inbounds %struct.nbu2ss_udc, %struct.nbu2ss_udc* %13, i32 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %37

17:                                               ; preds = %12
  %18 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %6, align 8
  %19 = getelementptr inbounds %struct.nbu2ss_udc, %struct.nbu2ss_udc* %18, i32 0, i32 3
  store i64 0, i64* %19, align 8
  %20 = load i32, i32* @USB_STATE_NOTATTACHED, align 4
  %21 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %6, align 8
  %22 = getelementptr inbounds %struct.nbu2ss_udc, %struct.nbu2ss_udc* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 8
  %23 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %6, align 8
  %24 = getelementptr inbounds %struct.nbu2ss_udc, %struct.nbu2ss_udc* %23, i32 0, i32 0
  store i32 1, i32* %24, align 8
  %25 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %6, align 8
  %26 = getelementptr inbounds %struct.nbu2ss_udc, %struct.nbu2ss_udc* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %17
  %30 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %6, align 8
  %31 = getelementptr inbounds %struct.nbu2ss_udc, %struct.nbu2ss_udc* %30, i32 0, i32 1
  store i64 0, i64* %31, align 8
  %32 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %6, align 8
  %33 = call i32 @_nbu2ss_reset_controller(%struct.nbu2ss_udc* %32)
  br label %34

34:                                               ; preds = %29, %17
  %35 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %6, align 8
  %36 = call i32 @_nbu2ss_quiesce(%struct.nbu2ss_udc* %35)
  br label %37

37:                                               ; preds = %34, %12
  %38 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %6, align 8
  %39 = call i32 @_nbu2ss_disable_controller(%struct.nbu2ss_udc* %38)
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %37, %11
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local %struct.nbu2ss_udc* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @_nbu2ss_reset_controller(%struct.nbu2ss_udc*) #1

declare dso_local i32 @_nbu2ss_quiesce(%struct.nbu2ss_udc*) #1

declare dso_local i32 @_nbu2ss_disable_controller(%struct.nbu2ss_udc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
