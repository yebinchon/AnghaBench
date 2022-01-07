; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-bcm-qspi.c_bcm_qspi_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-bcm-qspi.c_bcm_qspi_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, i32, i32 }
%struct.bcm_qspi_parms = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @bcm_qspi_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm_qspi_setup(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.bcm_qspi_parms*, align 8
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %5 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %6 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = icmp sgt i32 %7, 16
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i32, i32* @EINVAL, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %54

12:                                               ; preds = %1
  %13 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %14 = call %struct.bcm_qspi_parms* @spi_get_ctldata(%struct.spi_device* %13)
  store %struct.bcm_qspi_parms* %14, %struct.bcm_qspi_parms** %4, align 8
  %15 = load %struct.bcm_qspi_parms*, %struct.bcm_qspi_parms** %4, align 8
  %16 = icmp ne %struct.bcm_qspi_parms* %15, null
  br i1 %16, label %29, label %17

17:                                               ; preds = %12
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.bcm_qspi_parms* @kzalloc(i32 12, i32 %18)
  store %struct.bcm_qspi_parms* %19, %struct.bcm_qspi_parms** %4, align 8
  %20 = load %struct.bcm_qspi_parms*, %struct.bcm_qspi_parms** %4, align 8
  %21 = icmp ne %struct.bcm_qspi_parms* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %54

25:                                               ; preds = %17
  %26 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %27 = load %struct.bcm_qspi_parms*, %struct.bcm_qspi_parms** %4, align 8
  %28 = call i32 @spi_set_ctldata(%struct.spi_device* %26, %struct.bcm_qspi_parms* %27)
  br label %29

29:                                               ; preds = %25, %12
  %30 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %31 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.bcm_qspi_parms*, %struct.bcm_qspi_parms** %4, align 8
  %34 = getelementptr inbounds %struct.bcm_qspi_parms, %struct.bcm_qspi_parms* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 4
  %35 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %36 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.bcm_qspi_parms*, %struct.bcm_qspi_parms** %4, align 8
  %39 = getelementptr inbounds %struct.bcm_qspi_parms, %struct.bcm_qspi_parms* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %41 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %29
  %45 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %46 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.bcm_qspi_parms*, %struct.bcm_qspi_parms** %4, align 8
  %49 = getelementptr inbounds %struct.bcm_qspi_parms, %struct.bcm_qspi_parms* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  br label %53

50:                                               ; preds = %29
  %51 = load %struct.bcm_qspi_parms*, %struct.bcm_qspi_parms** %4, align 8
  %52 = getelementptr inbounds %struct.bcm_qspi_parms, %struct.bcm_qspi_parms* %51, i32 0, i32 0
  store i32 8, i32* %52, align 4
  br label %53

53:                                               ; preds = %50, %44
  store i32 0, i32* %2, align 4
  br label %54

54:                                               ; preds = %53, %22, %9
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local %struct.bcm_qspi_parms* @spi_get_ctldata(%struct.spi_device*) #1

declare dso_local %struct.bcm_qspi_parms* @kzalloc(i32, i32) #1

declare dso_local i32 @spi_set_ctldata(%struct.spi_device*, %struct.bcm_qspi_parms*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
