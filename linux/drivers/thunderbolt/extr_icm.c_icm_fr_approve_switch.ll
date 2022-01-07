; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_icm.c_icm_fr_approve_switch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_icm.c_icm_fr_approve_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb = type { i32 }
%struct.tb_switch = type { i32, i32, i32 }
%struct.icm_fr_pkg_approve_device = type { %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@ICM_APPROVE_DEVICE = common dso_local global i32 0, align 4
@ICM_APPROVE_TIMEOUT = common dso_local global i32 0, align 4
@ICM_FLAGS_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"PCIe tunnel creation failed\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tb*, %struct.tb_switch*)* @icm_fr_approve_switch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @icm_fr_approve_switch(%struct.tb* %0, %struct.tb_switch* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tb*, align 8
  %5 = alloca %struct.tb_switch*, align 8
  %6 = alloca %struct.icm_fr_pkg_approve_device, align 4
  %7 = alloca %struct.icm_fr_pkg_approve_device, align 4
  %8 = alloca i32, align 4
  store %struct.tb* %0, %struct.tb** %4, align 8
  store %struct.tb_switch* %1, %struct.tb_switch** %5, align 8
  %9 = call i32 @memset(%struct.icm_fr_pkg_approve_device* %6, i32 0, i32 20)
  %10 = getelementptr inbounds %struct.icm_fr_pkg_approve_device, %struct.icm_fr_pkg_approve_device* %6, i32 0, i32 3
  %11 = load %struct.tb_switch*, %struct.tb_switch** %5, align 8
  %12 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @memcpy(i32* %10, i32 %13, i32 4)
  %15 = load i32, i32* @ICM_APPROVE_DEVICE, align 4
  %16 = getelementptr inbounds %struct.icm_fr_pkg_approve_device, %struct.icm_fr_pkg_approve_device* %6, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 4
  %18 = load %struct.tb_switch*, %struct.tb_switch** %5, align 8
  %19 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds %struct.icm_fr_pkg_approve_device, %struct.icm_fr_pkg_approve_device* %6, i32 0, i32 2
  store i32 %20, i32* %21, align 4
  %22 = load %struct.tb_switch*, %struct.tb_switch** %5, align 8
  %23 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds %struct.icm_fr_pkg_approve_device, %struct.icm_fr_pkg_approve_device* %6, i32 0, i32 1
  store i32 %24, i32* %25, align 4
  %26 = call i32 @memset(%struct.icm_fr_pkg_approve_device* %7, i32 0, i32 20)
  %27 = load %struct.tb*, %struct.tb** %4, align 8
  %28 = load i32, i32* @ICM_APPROVE_TIMEOUT, align 4
  %29 = call i32 @icm_request(%struct.tb* %27, %struct.icm_fr_pkg_approve_device* %6, i32 20, %struct.icm_fr_pkg_approve_device* %7, i32 20, i32 1, i32 %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %2
  %33 = load i32, i32* %8, align 4
  store i32 %33, i32* %3, align 4
  br label %47

34:                                               ; preds = %2
  %35 = getelementptr inbounds %struct.icm_fr_pkg_approve_device, %struct.icm_fr_pkg_approve_device* %7, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @ICM_FLAGS_ERROR, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %34
  %42 = load %struct.tb*, %struct.tb** %4, align 8
  %43 = call i32 @tb_warn(%struct.tb* %42, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %44 = load i32, i32* @EIO, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %47

46:                                               ; preds = %34
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %46, %41, %32
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @memset(%struct.icm_fr_pkg_approve_device*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @icm_request(%struct.tb*, %struct.icm_fr_pkg_approve_device*, i32, %struct.icm_fr_pkg_approve_device*, i32, i32, i32) #1

declare dso_local i32 @tb_warn(%struct.tb*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
