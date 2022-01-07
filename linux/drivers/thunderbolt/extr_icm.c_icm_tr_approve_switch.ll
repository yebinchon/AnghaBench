; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_icm.c_icm_tr_approve_switch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_icm.c_icm_tr_approve_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb = type { i32 }
%struct.tb_switch = type { i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.icm_tr_pkg_approve_device = type { %struct.TYPE_4__, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@ICM_APPROVE_DEVICE = common dso_local global i32 0, align 4
@ICM_APPROVE_TIMEOUT = common dso_local global i32 0, align 4
@ICM_FLAGS_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"PCIe tunnel creation failed\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tb*, %struct.tb_switch*)* @icm_tr_approve_switch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @icm_tr_approve_switch(%struct.tb* %0, %struct.tb_switch* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tb*, align 8
  %5 = alloca %struct.tb_switch*, align 8
  %6 = alloca %struct.icm_tr_pkg_approve_device, align 4
  %7 = alloca %struct.icm_tr_pkg_approve_device, align 4
  %8 = alloca i32, align 4
  store %struct.tb* %0, %struct.tb** %4, align 8
  store %struct.tb_switch* %1, %struct.tb_switch** %5, align 8
  %9 = call i32 @memset(%struct.icm_tr_pkg_approve_device* %6, i32 0, i32 24)
  %10 = getelementptr inbounds %struct.icm_tr_pkg_approve_device, %struct.icm_tr_pkg_approve_device* %6, i32 0, i32 4
  %11 = load %struct.tb_switch*, %struct.tb_switch** %5, align 8
  %12 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @memcpy(i32* %10, i32 %13, i32 4)
  %15 = load i32, i32* @ICM_APPROVE_DEVICE, align 4
  %16 = getelementptr inbounds %struct.icm_tr_pkg_approve_device, %struct.icm_tr_pkg_approve_device* %6, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 4
  %18 = load %struct.tb_switch*, %struct.tb_switch** %5, align 8
  %19 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds %struct.icm_tr_pkg_approve_device, %struct.icm_tr_pkg_approve_device* %6, i32 0, i32 3
  store i32 %21, i32* %22, align 4
  %23 = load %struct.tb_switch*, %struct.tb_switch** %5, align 8
  %24 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.icm_tr_pkg_approve_device, %struct.icm_tr_pkg_approve_device* %6, i32 0, i32 2
  store i32 %26, i32* %27, align 4
  %28 = load %struct.tb_switch*, %struct.tb_switch** %5, align 8
  %29 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %struct.icm_tr_pkg_approve_device, %struct.icm_tr_pkg_approve_device* %6, i32 0, i32 1
  store i32 %30, i32* %31, align 4
  %32 = call i32 @memset(%struct.icm_tr_pkg_approve_device* %7, i32 0, i32 24)
  %33 = load %struct.tb*, %struct.tb** %4, align 8
  %34 = load i32, i32* @ICM_APPROVE_TIMEOUT, align 4
  %35 = call i32 @icm_request(%struct.tb* %33, %struct.icm_tr_pkg_approve_device* %6, i32 24, %struct.icm_tr_pkg_approve_device* %7, i32 24, i32 1, i32 %34)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %2
  %39 = load i32, i32* %8, align 4
  store i32 %39, i32* %3, align 4
  br label %53

40:                                               ; preds = %2
  %41 = getelementptr inbounds %struct.icm_tr_pkg_approve_device, %struct.icm_tr_pkg_approve_device* %7, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @ICM_FLAGS_ERROR, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %40
  %48 = load %struct.tb*, %struct.tb** %4, align 8
  %49 = call i32 @tb_warn(%struct.tb* %48, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %50 = load i32, i32* @EIO, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %53

52:                                               ; preds = %40
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %52, %47, %38
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @memset(%struct.icm_tr_pkg_approve_device*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @icm_request(%struct.tb*, %struct.icm_tr_pkg_approve_device*, i32, %struct.icm_tr_pkg_approve_device*, i32, i32, i32) #1

declare dso_local i32 @tb_warn(%struct.tb*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
