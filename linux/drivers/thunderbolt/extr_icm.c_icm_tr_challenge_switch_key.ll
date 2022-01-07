; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_icm.c_icm_tr_challenge_switch_key.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_icm.c_icm_tr_challenge_switch_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb = type { i32 }
%struct.tb_switch = type { i32, %struct.TYPE_3__, i32* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.icm_tr_pkg_challenge_device_response = type { i32*, %struct.TYPE_4__, i32*, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.icm_tr_pkg_challenge_device = type { i32*, %struct.TYPE_4__, i32*, i32, i32, i32, i32 }

@ICM_CHALLENGE_DEVICE = common dso_local global i32 0, align 4
@TB_SWITCH_KEY_SIZE = common dso_local global i32 0, align 4
@ICM_TIMEOUT = common dso_local global i32 0, align 4
@ICM_FLAGS_ERROR = common dso_local global i32 0, align 4
@EKEYREJECTED = common dso_local global i32 0, align 4
@ICM_FLAGS_NO_KEY = common dso_local global i32 0, align 4
@ENOKEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tb*, %struct.tb_switch*, i32*, i32*)* @icm_tr_challenge_switch_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @icm_tr_challenge_switch_key(%struct.tb* %0, %struct.tb_switch* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tb*, align 8
  %7 = alloca %struct.tb_switch*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.icm_tr_pkg_challenge_device_response, align 8
  %11 = alloca %struct.icm_tr_pkg_challenge_device, align 8
  %12 = alloca i32, align 4
  store %struct.tb* %0, %struct.tb** %6, align 8
  store %struct.tb_switch* %1, %struct.tb_switch** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = bitcast %struct.icm_tr_pkg_challenge_device* %11 to %struct.icm_tr_pkg_challenge_device_response*
  %14 = call i32 @memset(%struct.icm_tr_pkg_challenge_device_response* %13, i32 0, i32 40)
  %15 = getelementptr inbounds %struct.icm_tr_pkg_challenge_device, %struct.icm_tr_pkg_challenge_device* %11, i32 0, i32 6
  %16 = load %struct.tb_switch*, %struct.tb_switch** %7, align 8
  %17 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %16, i32 0, i32 2
  %18 = load i32*, i32** %17, align 8
  %19 = call i32 @memcpy(i32* %15, i32* %18, i32 4)
  %20 = load i32, i32* @ICM_CHALLENGE_DEVICE, align 4
  %21 = getelementptr inbounds %struct.icm_tr_pkg_challenge_device, %struct.icm_tr_pkg_challenge_device* %11, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  %23 = load %struct.tb_switch*, %struct.tb_switch** %7, align 8
  %24 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.icm_tr_pkg_challenge_device, %struct.icm_tr_pkg_challenge_device* %11, i32 0, i32 5
  store i32 %26, i32* %27, align 8
  %28 = load %struct.tb_switch*, %struct.tb_switch** %7, align 8
  %29 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct.icm_tr_pkg_challenge_device, %struct.icm_tr_pkg_challenge_device* %11, i32 0, i32 4
  store i32 %31, i32* %32, align 4
  %33 = load %struct.tb_switch*, %struct.tb_switch** %7, align 8
  %34 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = getelementptr inbounds %struct.icm_tr_pkg_challenge_device, %struct.icm_tr_pkg_challenge_device* %11, i32 0, i32 3
  store i32 %35, i32* %36, align 8
  %37 = getelementptr inbounds %struct.icm_tr_pkg_challenge_device, %struct.icm_tr_pkg_challenge_device* %11, i32 0, i32 2
  %38 = load i32*, i32** %37, align 8
  %39 = load i32*, i32** %8, align 8
  %40 = load i32, i32* @TB_SWITCH_KEY_SIZE, align 4
  %41 = call i32 @memcpy(i32* %38, i32* %39, i32 %40)
  %42 = call i32 @memset(%struct.icm_tr_pkg_challenge_device_response* %10, i32 0, i32 40)
  %43 = load %struct.tb*, %struct.tb** %6, align 8
  %44 = bitcast %struct.icm_tr_pkg_challenge_device* %11 to %struct.icm_tr_pkg_challenge_device_response*
  %45 = load i32, i32* @ICM_TIMEOUT, align 4
  %46 = call i32 @icm_request(%struct.tb* %43, %struct.icm_tr_pkg_challenge_device_response* %44, i32 40, %struct.icm_tr_pkg_challenge_device_response* %10, i32 40, i32 1, i32 %45)
  store i32 %46, i32* %12, align 4
  %47 = load i32, i32* %12, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %4
  %50 = load i32, i32* %12, align 4
  store i32 %50, i32* %5, align 4
  br label %77

51:                                               ; preds = %4
  %52 = getelementptr inbounds %struct.icm_tr_pkg_challenge_device_response, %struct.icm_tr_pkg_challenge_device_response* %10, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @ICM_FLAGS_ERROR, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %51
  %59 = load i32, i32* @EKEYREJECTED, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %5, align 4
  br label %77

61:                                               ; preds = %51
  %62 = getelementptr inbounds %struct.icm_tr_pkg_challenge_device_response, %struct.icm_tr_pkg_challenge_device_response* %10, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @ICM_FLAGS_NO_KEY, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %61
  %69 = load i32, i32* @ENOKEY, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %5, align 4
  br label %77

71:                                               ; preds = %61
  %72 = load i32*, i32** %9, align 8
  %73 = getelementptr inbounds %struct.icm_tr_pkg_challenge_device_response, %struct.icm_tr_pkg_challenge_device_response* %10, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* @TB_SWITCH_KEY_SIZE, align 4
  %76 = call i32 @memcpy(i32* %72, i32* %74, i32 %75)
  store i32 0, i32* %5, align 4
  br label %77

77:                                               ; preds = %71, %68, %58, %49
  %78 = load i32, i32* %5, align 4
  ret i32 %78
}

declare dso_local i32 @memset(%struct.icm_tr_pkg_challenge_device_response*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @icm_request(%struct.tb*, %struct.icm_tr_pkg_challenge_device_response*, i32, %struct.icm_tr_pkg_challenge_device_response*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
