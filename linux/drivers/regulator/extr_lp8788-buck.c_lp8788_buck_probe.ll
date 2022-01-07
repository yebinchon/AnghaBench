; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_lp8788-buck.c_lp8788_buck_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_lp8788-buck.c_lp8788_buck_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.lp8788 = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32** }
%struct.lp8788_buck = type { %struct.regulator_dev*, %struct.lp8788* }
%struct.regulator_dev = type { i32 }
%struct.regulator_config = type { i32, %struct.lp8788_buck*, i32*, i32 }

@LP8788_NUM_BUCKS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@lp8788_buck_desc = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [36 x i8] c"BUCK%d regulator register err = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @lp8788_buck_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lp8788_buck_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.lp8788*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.lp8788_buck*, align 8
  %7 = alloca %struct.regulator_config, align 8
  %8 = alloca %struct.regulator_dev*, align 8
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.lp8788* @dev_get_drvdata(i32 %13)
  store %struct.lp8788* %14, %struct.lp8788** %4, align 8
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %5, align 4
  %18 = bitcast %struct.regulator_config* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %18, i8 0, i64 32, i1 false)
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @LP8788_NUM_BUCKS, align 4
  %21 = icmp sge i32 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %1
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %104

25:                                               ; preds = %1
  %26 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %27 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %26, i32 0, i32 1
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call %struct.lp8788_buck* @devm_kzalloc(%struct.TYPE_6__* %27, i32 16, i32 %28)
  store %struct.lp8788_buck* %29, %struct.lp8788_buck** %6, align 8
  %30 = load %struct.lp8788_buck*, %struct.lp8788_buck** %6, align 8
  %31 = icmp ne %struct.lp8788_buck* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %25
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %104

35:                                               ; preds = %25
  %36 = load %struct.lp8788*, %struct.lp8788** %4, align 8
  %37 = load %struct.lp8788_buck*, %struct.lp8788_buck** %6, align 8
  %38 = getelementptr inbounds %struct.lp8788_buck, %struct.lp8788_buck* %37, i32 0, i32 1
  store %struct.lp8788* %36, %struct.lp8788** %38, align 8
  %39 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %40 = load %struct.lp8788_buck*, %struct.lp8788_buck** %6, align 8
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @lp8788_init_dvs(%struct.platform_device* %39, %struct.lp8788_buck* %40, i32 %41)
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %35
  %46 = load i32, i32* %9, align 4
  store i32 %46, i32* %2, align 4
  br label %104

47:                                               ; preds = %35
  %48 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %49 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %7, i32 0, i32 3
  store i32 %51, i32* %52, align 8
  %53 = load %struct.lp8788*, %struct.lp8788** %4, align 8
  %54 = getelementptr inbounds %struct.lp8788, %struct.lp8788* %53, i32 0, i32 1
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = icmp ne %struct.TYPE_5__* %55, null
  br i1 %56, label %57, label %67

57:                                               ; preds = %47
  %58 = load %struct.lp8788*, %struct.lp8788** %4, align 8
  %59 = getelementptr inbounds %struct.lp8788, %struct.lp8788* %58, i32 0, i32 1
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i32**, i32*** %61, align 8
  %63 = load i32, i32* %5, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32*, i32** %62, i64 %64
  %66 = load i32*, i32** %65, align 8
  br label %68

67:                                               ; preds = %47
  br label %68

68:                                               ; preds = %67, %57
  %69 = phi i32* [ %66, %57 ], [ null, %67 ]
  %70 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %7, i32 0, i32 2
  store i32* %69, i32** %70, align 8
  %71 = load %struct.lp8788_buck*, %struct.lp8788_buck** %6, align 8
  %72 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %7, i32 0, i32 1
  store %struct.lp8788_buck* %71, %struct.lp8788_buck** %72, align 8
  %73 = load %struct.lp8788*, %struct.lp8788** %4, align 8
  %74 = getelementptr inbounds %struct.lp8788, %struct.lp8788* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %7, i32 0, i32 0
  store i32 %75, i32* %76, align 8
  %77 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %78 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %77, i32 0, i32 1
  %79 = load i32*, i32** @lp8788_buck_desc, align 8
  %80 = load i32, i32* %5, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = call %struct.regulator_dev* @devm_regulator_register(%struct.TYPE_6__* %78, i32* %82, %struct.regulator_config* %7)
  store %struct.regulator_dev* %83, %struct.regulator_dev** %8, align 8
  %84 = load %struct.regulator_dev*, %struct.regulator_dev** %8, align 8
  %85 = call i64 @IS_ERR(%struct.regulator_dev* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %97

87:                                               ; preds = %68
  %88 = load %struct.regulator_dev*, %struct.regulator_dev** %8, align 8
  %89 = call i32 @PTR_ERR(%struct.regulator_dev* %88)
  store i32 %89, i32* %9, align 4
  %90 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %91 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %90, i32 0, i32 1
  %92 = load i32, i32* %5, align 4
  %93 = add nsw i32 %92, 1
  %94 = load i32, i32* %9, align 4
  %95 = call i32 @dev_err(%struct.TYPE_6__* %91, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %93, i32 %94)
  %96 = load i32, i32* %9, align 4
  store i32 %96, i32* %2, align 4
  br label %104

97:                                               ; preds = %68
  %98 = load %struct.regulator_dev*, %struct.regulator_dev** %8, align 8
  %99 = load %struct.lp8788_buck*, %struct.lp8788_buck** %6, align 8
  %100 = getelementptr inbounds %struct.lp8788_buck, %struct.lp8788_buck* %99, i32 0, i32 0
  store %struct.regulator_dev* %98, %struct.regulator_dev** %100, align 8
  %101 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %102 = load %struct.lp8788_buck*, %struct.lp8788_buck** %6, align 8
  %103 = call i32 @platform_set_drvdata(%struct.platform_device* %101, %struct.lp8788_buck* %102)
  store i32 0, i32* %2, align 4
  br label %104

104:                                              ; preds = %97, %87, %45, %32, %22
  %105 = load i32, i32* %2, align 4
  ret i32 %105
}

declare dso_local %struct.lp8788* @dev_get_drvdata(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local %struct.lp8788_buck* @devm_kzalloc(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @lp8788_init_dvs(%struct.platform_device*, %struct.lp8788_buck*, i32) #1

declare dso_local %struct.regulator_dev* @devm_regulator_register(%struct.TYPE_6__*, i32*, %struct.regulator_config*) #1

declare dso_local i64 @IS_ERR(%struct.regulator_dev*) #1

declare dso_local i32 @PTR_ERR(%struct.regulator_dev*) #1

declare dso_local i32 @dev_err(%struct.TYPE_6__*, i8*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.lp8788_buck*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
