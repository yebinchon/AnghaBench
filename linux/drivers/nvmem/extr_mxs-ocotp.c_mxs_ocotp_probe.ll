; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvmem/extr_mxs-ocotp.c_mxs_ocotp_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvmem/extr_mxs-ocotp.c_mxs_ocotp_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.device*, %struct.mxs_ocotp*, i32 }
%struct.device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.mxs_ocotp = type { i32, i32, i32 }
%struct.platform_device = type { %struct.device }
%struct.mxs_data = type { i32 }
%struct.of_device_id = type { %struct.mxs_data* }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"failed to prepare clk: %d\0A\00", align 1
@ocotp_config = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mxs_ocotp_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxs_ocotp_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.mxs_data*, align 8
  %6 = alloca %struct.mxs_ocotp*, align 8
  %7 = alloca %struct.of_device_id*, align 8
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = getelementptr inbounds %struct.device, %struct.device* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.device*, %struct.device** %4, align 8
  %17 = call %struct.of_device_id* @of_match_device(i32 %15, %struct.device* %16)
  store %struct.of_device_id* %17, %struct.of_device_id** %7, align 8
  %18 = load %struct.of_device_id*, %struct.of_device_id** %7, align 8
  %19 = icmp ne %struct.of_device_id* %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %1
  %21 = load %struct.of_device_id*, %struct.of_device_id** %7, align 8
  %22 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %21, i32 0, i32 0
  %23 = load %struct.mxs_data*, %struct.mxs_data** %22, align 8
  %24 = icmp ne %struct.mxs_data* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %20, %1
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %113

28:                                               ; preds = %20
  %29 = load %struct.device*, %struct.device** %4, align 8
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call %struct.mxs_ocotp* @devm_kzalloc(%struct.device* %29, i32 12, i32 %30)
  store %struct.mxs_ocotp* %31, %struct.mxs_ocotp** %6, align 8
  %32 = load %struct.mxs_ocotp*, %struct.mxs_ocotp** %6, align 8
  %33 = icmp ne %struct.mxs_ocotp* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %28
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %113

37:                                               ; preds = %28
  %38 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %39 = call i32 @devm_platform_ioremap_resource(%struct.platform_device* %38, i32 0)
  %40 = load %struct.mxs_ocotp*, %struct.mxs_ocotp** %6, align 8
  %41 = getelementptr inbounds %struct.mxs_ocotp, %struct.mxs_ocotp* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 4
  %42 = load %struct.mxs_ocotp*, %struct.mxs_ocotp** %6, align 8
  %43 = getelementptr inbounds %struct.mxs_ocotp, %struct.mxs_ocotp* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @IS_ERR(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %37
  %48 = load %struct.mxs_ocotp*, %struct.mxs_ocotp** %6, align 8
  %49 = getelementptr inbounds %struct.mxs_ocotp, %struct.mxs_ocotp* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @PTR_ERR(i32 %50)
  store i32 %51, i32* %2, align 4
  br label %113

52:                                               ; preds = %37
  %53 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %54 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %53, i32 0, i32 0
  %55 = call i32 @devm_clk_get(%struct.device* %54, i32* null)
  %56 = load %struct.mxs_ocotp*, %struct.mxs_ocotp** %6, align 8
  %57 = getelementptr inbounds %struct.mxs_ocotp, %struct.mxs_ocotp* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 4
  %58 = load %struct.mxs_ocotp*, %struct.mxs_ocotp** %6, align 8
  %59 = getelementptr inbounds %struct.mxs_ocotp, %struct.mxs_ocotp* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @IS_ERR(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %52
  %64 = load %struct.mxs_ocotp*, %struct.mxs_ocotp** %6, align 8
  %65 = getelementptr inbounds %struct.mxs_ocotp, %struct.mxs_ocotp* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @PTR_ERR(i32 %66)
  store i32 %67, i32* %2, align 4
  br label %113

68:                                               ; preds = %52
  %69 = load %struct.mxs_ocotp*, %struct.mxs_ocotp** %6, align 8
  %70 = getelementptr inbounds %struct.mxs_ocotp, %struct.mxs_ocotp* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @clk_prepare(i32 %71)
  store i32 %72, i32* %8, align 4
  %73 = load i32, i32* %8, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %68
  %76 = load %struct.device*, %struct.device** %4, align 8
  %77 = load i32, i32* %8, align 4
  %78 = call i32 @dev_err(%struct.device* %76, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %77)
  %79 = load i32, i32* %8, align 4
  store i32 %79, i32* %2, align 4
  br label %113

80:                                               ; preds = %68
  %81 = load %struct.of_device_id*, %struct.of_device_id** %7, align 8
  %82 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %81, i32 0, i32 0
  %83 = load %struct.mxs_data*, %struct.mxs_data** %82, align 8
  store %struct.mxs_data* %83, %struct.mxs_data** %5, align 8
  %84 = load %struct.mxs_data*, %struct.mxs_data** %5, align 8
  %85 = getelementptr inbounds %struct.mxs_data, %struct.mxs_data* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  store i32 %86, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ocotp_config, i32 0, i32 2), align 8
  %87 = load %struct.mxs_ocotp*, %struct.mxs_ocotp** %6, align 8
  store %struct.mxs_ocotp* %87, %struct.mxs_ocotp** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ocotp_config, i32 0, i32 1), align 8
  %88 = load %struct.device*, %struct.device** %4, align 8
  store %struct.device* %88, %struct.device** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ocotp_config, i32 0, i32 0), align 8
  %89 = load %struct.device*, %struct.device** %4, align 8
  %90 = call i32 @devm_nvmem_register(%struct.device* %89, %struct.TYPE_5__* @ocotp_config)
  %91 = load %struct.mxs_ocotp*, %struct.mxs_ocotp** %6, align 8
  %92 = getelementptr inbounds %struct.mxs_ocotp, %struct.mxs_ocotp* %91, i32 0, i32 1
  store i32 %90, i32* %92, align 4
  %93 = load %struct.mxs_ocotp*, %struct.mxs_ocotp** %6, align 8
  %94 = getelementptr inbounds %struct.mxs_ocotp, %struct.mxs_ocotp* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = call i64 @IS_ERR(i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %80
  %99 = load %struct.mxs_ocotp*, %struct.mxs_ocotp** %6, align 8
  %100 = getelementptr inbounds %struct.mxs_ocotp, %struct.mxs_ocotp* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @PTR_ERR(i32 %101)
  store i32 %102, i32* %8, align 4
  br label %107

103:                                              ; preds = %80
  %104 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %105 = load %struct.mxs_ocotp*, %struct.mxs_ocotp** %6, align 8
  %106 = call i32 @platform_set_drvdata(%struct.platform_device* %104, %struct.mxs_ocotp* %105)
  store i32 0, i32* %2, align 4
  br label %113

107:                                              ; preds = %98
  %108 = load %struct.mxs_ocotp*, %struct.mxs_ocotp** %6, align 8
  %109 = getelementptr inbounds %struct.mxs_ocotp, %struct.mxs_ocotp* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @clk_unprepare(i32 %110)
  %112 = load i32, i32* %8, align 4
  store i32 %112, i32* %2, align 4
  br label %113

113:                                              ; preds = %107, %103, %75, %63, %47, %34, %25
  %114 = load i32, i32* %2, align 4
  ret i32 %114
}

declare dso_local %struct.of_device_id* @of_match_device(i32, %struct.device*) #1

declare dso_local %struct.mxs_ocotp* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_clk_get(%struct.device*, i32*) #1

declare dso_local i32 @clk_prepare(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @devm_nvmem_register(%struct.device*, %struct.TYPE_5__*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.mxs_ocotp*) #1

declare dso_local i32 @clk_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
