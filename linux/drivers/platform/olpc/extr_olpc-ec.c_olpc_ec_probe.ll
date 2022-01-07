; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/olpc/extr_olpc-ec.c_olpc_ec_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/olpc/extr_olpc-ec.c_olpc_ec_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.olpc_ec_priv = type { i32, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.platform_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.regulator_config = type { %struct.olpc_ec_priv*, i32 }

@ec_driver = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@olpc_ec_worker = common dso_local global i32 0, align 4
@ec_priv = common dso_local global %struct.olpc_ec_priv* null, align 8
@EC_FIRMWARE_REV = common dso_local global i32 0, align 4
@dcon_desc = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"failed to register DCON regulator\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @olpc_ec_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @olpc_ec_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.olpc_ec_priv*, align 8
  %5 = alloca %struct.regulator_config, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = bitcast %struct.regulator_config* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %7, i8 0, i64 16, i1 false)
  %8 = load i64, i64* @ec_driver, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENODEV, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %85

13:                                               ; preds = %1
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.olpc_ec_priv* @kzalloc(i32 40, i32 %14)
  store %struct.olpc_ec_priv* %15, %struct.olpc_ec_priv** %4, align 8
  %16 = load %struct.olpc_ec_priv*, %struct.olpc_ec_priv** %4, align 8
  %17 = icmp ne %struct.olpc_ec_priv* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %13
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %85

21:                                               ; preds = %13
  %22 = load i64, i64* @ec_driver, align 8
  %23 = load %struct.olpc_ec_priv*, %struct.olpc_ec_priv** %4, align 8
  %24 = getelementptr inbounds %struct.olpc_ec_priv, %struct.olpc_ec_priv* %23, i32 0, i32 8
  store i64 %22, i64* %24, align 8
  %25 = load %struct.olpc_ec_priv*, %struct.olpc_ec_priv** %4, align 8
  %26 = getelementptr inbounds %struct.olpc_ec_priv, %struct.olpc_ec_priv* %25, i32 0, i32 7
  %27 = load i32, i32* @olpc_ec_worker, align 4
  %28 = call i32 @INIT_WORK(i32* %26, i32 %27)
  %29 = load %struct.olpc_ec_priv*, %struct.olpc_ec_priv** %4, align 8
  %30 = getelementptr inbounds %struct.olpc_ec_priv, %struct.olpc_ec_priv* %29, i32 0, i32 6
  %31 = call i32 @mutex_init(i32* %30)
  %32 = load %struct.olpc_ec_priv*, %struct.olpc_ec_priv** %4, align 8
  %33 = getelementptr inbounds %struct.olpc_ec_priv, %struct.olpc_ec_priv* %32, i32 0, i32 5
  %34 = call i32 @INIT_LIST_HEAD(i32* %33)
  %35 = load %struct.olpc_ec_priv*, %struct.olpc_ec_priv** %4, align 8
  %36 = getelementptr inbounds %struct.olpc_ec_priv, %struct.olpc_ec_priv* %35, i32 0, i32 4
  %37 = call i32 @spin_lock_init(i32* %36)
  %38 = load %struct.olpc_ec_priv*, %struct.olpc_ec_priv** %4, align 8
  store %struct.olpc_ec_priv* %38, %struct.olpc_ec_priv** @ec_priv, align 8
  %39 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %40 = load %struct.olpc_ec_priv*, %struct.olpc_ec_priv** %4, align 8
  %41 = call i32 @platform_set_drvdata(%struct.platform_device* %39, %struct.olpc_ec_priv* %40)
  %42 = load i32, i32* @EC_FIRMWARE_REV, align 4
  %43 = load %struct.olpc_ec_priv*, %struct.olpc_ec_priv** %4, align 8
  %44 = getelementptr inbounds %struct.olpc_ec_priv, %struct.olpc_ec_priv* %43, i32 0, i32 3
  %45 = call i32 @olpc_ec_cmd(i32 %42, i32* null, i32 0, i32* %44, i32 1)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %21
  store %struct.olpc_ec_priv* null, %struct.olpc_ec_priv** @ec_priv, align 8
  %49 = load %struct.olpc_ec_priv*, %struct.olpc_ec_priv** %4, align 8
  %50 = call i32 @kfree(%struct.olpc_ec_priv* %49)
  %51 = load i32, i32* %6, align 4
  store i32 %51, i32* %2, align 4
  br label %85

52:                                               ; preds = %21
  %53 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %54 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %5, i32 0, i32 1
  store i32 %56, i32* %57, align 8
  %58 = load %struct.olpc_ec_priv*, %struct.olpc_ec_priv** %4, align 8
  %59 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %5, i32 0, i32 0
  store %struct.olpc_ec_priv* %58, %struct.olpc_ec_priv** %59, align 8
  %60 = load %struct.olpc_ec_priv*, %struct.olpc_ec_priv** %4, align 8
  %61 = getelementptr inbounds %struct.olpc_ec_priv, %struct.olpc_ec_priv* %60, i32 0, i32 0
  store i32 1, i32* %61, align 8
  %62 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %63 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %62, i32 0, i32 0
  %64 = call i32 @devm_regulator_register(%struct.TYPE_3__* %63, i32* @dcon_desc, %struct.regulator_config* %5)
  %65 = load %struct.olpc_ec_priv*, %struct.olpc_ec_priv** %4, align 8
  %66 = getelementptr inbounds %struct.olpc_ec_priv, %struct.olpc_ec_priv* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 8
  %67 = load %struct.olpc_ec_priv*, %struct.olpc_ec_priv** %4, align 8
  %68 = getelementptr inbounds %struct.olpc_ec_priv, %struct.olpc_ec_priv* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = call i64 @IS_ERR(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %80

72:                                               ; preds = %52
  %73 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %74 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %73, i32 0, i32 0
  %75 = call i32 @dev_err(%struct.TYPE_3__* %74, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %76 = load %struct.olpc_ec_priv*, %struct.olpc_ec_priv** %4, align 8
  %77 = getelementptr inbounds %struct.olpc_ec_priv, %struct.olpc_ec_priv* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @PTR_ERR(i32 %78)
  store i32 %79, i32* %2, align 4
  br label %85

80:                                               ; preds = %52
  %81 = call i32 (...) @olpc_ec_setup_debugfs()
  %82 = load %struct.olpc_ec_priv*, %struct.olpc_ec_priv** %4, align 8
  %83 = getelementptr inbounds %struct.olpc_ec_priv, %struct.olpc_ec_priv* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 4
  %84 = load i32, i32* %6, align 4
  store i32 %84, i32* %2, align 4
  br label %85

85:                                               ; preds = %80, %72, %48, %18, %10
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.olpc_ec_priv* @kzalloc(i32, i32) #2

declare dso_local i32 @INIT_WORK(i32*, i32) #2

declare dso_local i32 @mutex_init(i32*) #2

declare dso_local i32 @INIT_LIST_HEAD(i32*) #2

declare dso_local i32 @spin_lock_init(i32*) #2

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.olpc_ec_priv*) #2

declare dso_local i32 @olpc_ec_cmd(i32, i32*, i32, i32*, i32) #2

declare dso_local i32 @kfree(%struct.olpc_ec_priv*) #2

declare dso_local i32 @devm_regulator_register(%struct.TYPE_3__*, i32*, %struct.regulator_config*) #2

declare dso_local i64 @IS_ERR(i32) #2

declare dso_local i32 @dev_err(%struct.TYPE_3__*, i8*) #2

declare dso_local i32 @PTR_ERR(i32) #2

declare dso_local i32 @olpc_ec_setup_debugfs(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
