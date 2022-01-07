; ModuleID = '/home/carl/AnghaBench/linux/drivers/remoteproc/extr_wkup_m3_rproc.c_wkup_m3_rproc_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/remoteproc/extr_wkup_m3_rproc.c_wkup_m3_rproc_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rproc = type { %struct.wkup_m3_rproc* }
%struct.wkup_m3_rproc = type { %struct.platform_device* }
%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.wkup_m3_platform_data = type { i32, i64 (%struct.platform_device*, i32)* }

@.str = private unnamed_addr constant [36 x i8] c"Unable to assert reset of wkup_m3!\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rproc*)* @wkup_m3_rproc_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wkup_m3_rproc_stop(%struct.rproc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rproc*, align 8
  %4 = alloca %struct.wkup_m3_rproc*, align 8
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.wkup_m3_platform_data*, align 8
  store %struct.rproc* %0, %struct.rproc** %3, align 8
  %8 = load %struct.rproc*, %struct.rproc** %3, align 8
  %9 = getelementptr inbounds %struct.rproc, %struct.rproc* %8, i32 0, i32 0
  %10 = load %struct.wkup_m3_rproc*, %struct.wkup_m3_rproc** %9, align 8
  store %struct.wkup_m3_rproc* %10, %struct.wkup_m3_rproc** %4, align 8
  %11 = load %struct.wkup_m3_rproc*, %struct.wkup_m3_rproc** %4, align 8
  %12 = getelementptr inbounds %struct.wkup_m3_rproc, %struct.wkup_m3_rproc* %11, i32 0, i32 0
  %13 = load %struct.platform_device*, %struct.platform_device** %12, align 8
  store %struct.platform_device* %13, %struct.platform_device** %5, align 8
  %14 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  store %struct.device* %15, %struct.device** %6, align 8
  %16 = load %struct.device*, %struct.device** %6, align 8
  %17 = call %struct.wkup_m3_platform_data* @dev_get_platdata(%struct.device* %16)
  store %struct.wkup_m3_platform_data* %17, %struct.wkup_m3_platform_data** %7, align 8
  %18 = load %struct.wkup_m3_platform_data*, %struct.wkup_m3_platform_data** %7, align 8
  %19 = getelementptr inbounds %struct.wkup_m3_platform_data, %struct.wkup_m3_platform_data* %18, i32 0, i32 1
  %20 = load i64 (%struct.platform_device*, i32)*, i64 (%struct.platform_device*, i32)** %19, align 8
  %21 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %22 = load %struct.wkup_m3_platform_data*, %struct.wkup_m3_platform_data** %7, align 8
  %23 = getelementptr inbounds %struct.wkup_m3_platform_data, %struct.wkup_m3_platform_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i64 %20(%struct.platform_device* %21, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %1
  %28 = load %struct.device*, %struct.device** %6, align 8
  %29 = call i32 @dev_err(%struct.device* %28, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @ENODEV, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %33

32:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %33

33:                                               ; preds = %32, %27
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local %struct.wkup_m3_platform_data* @dev_get_platdata(%struct.device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
