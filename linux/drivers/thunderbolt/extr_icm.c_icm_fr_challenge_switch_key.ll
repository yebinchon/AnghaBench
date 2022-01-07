; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_icm.c_icm_fr_challenge_switch_key.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_icm.c_icm_fr_challenge_switch_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb = type { i32 }
%struct.tb_switch = type { i32, i32, i32* }
%struct.icm_fr_pkg_challenge_device = type { i32*, %struct.TYPE_2__, i32*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.icm_fr_pkg_challenge_device_response = type { i32*, %struct.TYPE_2__, i32*, i32, i32, i32 }

@ICM_CHALLENGE_DEVICE = common dso_local global i32 0, align 4
@TB_SWITCH_KEY_SIZE = common dso_local global i32 0, align 4
@ICM_TIMEOUT = common dso_local global i32 0, align 4
@ICM_FLAGS_ERROR = common dso_local global i32 0, align 4
@EKEYREJECTED = common dso_local global i32 0, align 4
@ICM_FLAGS_NO_KEY = common dso_local global i32 0, align 4
@ENOKEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tb*, %struct.tb_switch*, i32*, i32*)* @icm_fr_challenge_switch_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @icm_fr_challenge_switch_key(%struct.tb* %0, %struct.tb_switch* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tb*, align 8
  %7 = alloca %struct.tb_switch*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.icm_fr_pkg_challenge_device, align 8
  %11 = alloca %struct.icm_fr_pkg_challenge_device_response, align 8
  %12 = alloca i32, align 4
  store %struct.tb* %0, %struct.tb** %6, align 8
  store %struct.tb_switch* %1, %struct.tb_switch** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = bitcast %struct.icm_fr_pkg_challenge_device* %10 to %struct.icm_fr_pkg_challenge_device_response*
  %14 = call i32 @memset(%struct.icm_fr_pkg_challenge_device_response* %13, i32 0, i32 40)
  %15 = getelementptr inbounds %struct.icm_fr_pkg_challenge_device, %struct.icm_fr_pkg_challenge_device* %10, i32 0, i32 5
  %16 = load %struct.tb_switch*, %struct.tb_switch** %7, align 8
  %17 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %16, i32 0, i32 2
  %18 = load i32*, i32** %17, align 8
  %19 = call i32 @memcpy(i32* %15, i32* %18, i32 4)
  %20 = load i32, i32* @ICM_CHALLENGE_DEVICE, align 4
  %21 = getelementptr inbounds %struct.icm_fr_pkg_challenge_device, %struct.icm_fr_pkg_challenge_device* %10, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  %23 = load %struct.tb_switch*, %struct.tb_switch** %7, align 8
  %24 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds %struct.icm_fr_pkg_challenge_device, %struct.icm_fr_pkg_challenge_device* %10, i32 0, i32 4
  store i32 %25, i32* %26, align 4
  %27 = load %struct.tb_switch*, %struct.tb_switch** %7, align 8
  %28 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = getelementptr inbounds %struct.icm_fr_pkg_challenge_device, %struct.icm_fr_pkg_challenge_device* %10, i32 0, i32 3
  store i32 %29, i32* %30, align 8
  %31 = getelementptr inbounds %struct.icm_fr_pkg_challenge_device, %struct.icm_fr_pkg_challenge_device* %10, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = load i32*, i32** %8, align 8
  %34 = load i32, i32* @TB_SWITCH_KEY_SIZE, align 4
  %35 = call i32 @memcpy(i32* %32, i32* %33, i32 %34)
  %36 = call i32 @memset(%struct.icm_fr_pkg_challenge_device_response* %11, i32 0, i32 40)
  %37 = load %struct.tb*, %struct.tb** %6, align 8
  %38 = bitcast %struct.icm_fr_pkg_challenge_device* %10 to %struct.icm_fr_pkg_challenge_device_response*
  %39 = load i32, i32* @ICM_TIMEOUT, align 4
  %40 = call i32 @icm_request(%struct.tb* %37, %struct.icm_fr_pkg_challenge_device_response* %38, i32 40, %struct.icm_fr_pkg_challenge_device_response* %11, i32 40, i32 1, i32 %39)
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* %12, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %4
  %44 = load i32, i32* %12, align 4
  store i32 %44, i32* %5, align 4
  br label %71

45:                                               ; preds = %4
  %46 = getelementptr inbounds %struct.icm_fr_pkg_challenge_device_response, %struct.icm_fr_pkg_challenge_device_response* %11, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @ICM_FLAGS_ERROR, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %45
  %53 = load i32, i32* @EKEYREJECTED, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %5, align 4
  br label %71

55:                                               ; preds = %45
  %56 = getelementptr inbounds %struct.icm_fr_pkg_challenge_device_response, %struct.icm_fr_pkg_challenge_device_response* %11, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @ICM_FLAGS_NO_KEY, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %55
  %63 = load i32, i32* @ENOKEY, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %5, align 4
  br label %71

65:                                               ; preds = %55
  %66 = load i32*, i32** %9, align 8
  %67 = getelementptr inbounds %struct.icm_fr_pkg_challenge_device_response, %struct.icm_fr_pkg_challenge_device_response* %11, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* @TB_SWITCH_KEY_SIZE, align 4
  %70 = call i32 @memcpy(i32* %66, i32* %68, i32 %69)
  store i32 0, i32* %5, align 4
  br label %71

71:                                               ; preds = %65, %62, %52, %43
  %72 = load i32, i32* %5, align 4
  ret i32 %72
}

declare dso_local i32 @memset(%struct.icm_fr_pkg_challenge_device_response*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @icm_request(%struct.tb*, %struct.icm_fr_pkg_challenge_device_response*, i32, %struct.icm_fr_pkg_challenge_device_response*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
