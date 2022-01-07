; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fieldbus/anybuss/extr_hms-profinet.c_profinet_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fieldbus/anybuss/extr_hms-profinet.c_profinet_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anybuss_client = type { i32, i32, %struct.device }
%struct.device = type { i32 }
%struct.profi_priv = type { %struct.TYPE_2__, %struct.anybuss_client*, i32 }
%struct.TYPE_2__ = type { i8*, i32, %struct.device*, i32, i32, i32, i32, i32, i32, i8*, i8* }

@profi_on_area_updated = common dso_local global i32 0, align 4
@profi_on_online_changed = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PROFI_DPRAM_SIZE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [28 x i8] c"HMS Profinet IRT (Anybus-S)\00", align 1
@FIELDBUS_DEV_TYPE_PROFINET = common dso_local global i32 0, align 4
@profi_read_area = common dso_local global i32 0, align 4
@profi_write_area = common dso_local global i32 0, align 4
@profi_id_get = common dso_local global i32 0, align 4
@profi_enable_get = common dso_local global i32 0, align 4
@profi_simple_enable = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"card detected, registered as %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.anybuss_client*)* @profinet_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @profinet_probe(%struct.anybuss_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.anybuss_client*, align 8
  %4 = alloca %struct.profi_priv*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  store %struct.anybuss_client* %0, %struct.anybuss_client** %3, align 8
  %7 = load %struct.anybuss_client*, %struct.anybuss_client** %3, align 8
  %8 = getelementptr inbounds %struct.anybuss_client, %struct.anybuss_client* %7, i32 0, i32 2
  store %struct.device* %8, %struct.device** %5, align 8
  %9 = load i32, i32* @profi_on_area_updated, align 4
  %10 = load %struct.anybuss_client*, %struct.anybuss_client** %3, align 8
  %11 = getelementptr inbounds %struct.anybuss_client, %struct.anybuss_client* %10, i32 0, i32 1
  store i32 %9, i32* %11, align 4
  %12 = load i32, i32* @profi_on_online_changed, align 4
  %13 = load %struct.anybuss_client*, %struct.anybuss_client** %3, align 8
  %14 = getelementptr inbounds %struct.anybuss_client, %struct.anybuss_client* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  %15 = load %struct.device*, %struct.device** %5, align 8
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.profi_priv* @devm_kzalloc(%struct.device* %15, i32 80, i32 %16)
  store %struct.profi_priv* %17, %struct.profi_priv** %4, align 8
  %18 = load %struct.profi_priv*, %struct.profi_priv** %4, align 8
  %19 = icmp ne %struct.profi_priv* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %87

23:                                               ; preds = %1
  %24 = load %struct.profi_priv*, %struct.profi_priv** %4, align 8
  %25 = getelementptr inbounds %struct.profi_priv, %struct.profi_priv* %24, i32 0, i32 2
  %26 = call i32 @mutex_init(i32* %25)
  %27 = load %struct.anybuss_client*, %struct.anybuss_client** %3, align 8
  %28 = load %struct.profi_priv*, %struct.profi_priv** %4, align 8
  %29 = getelementptr inbounds %struct.profi_priv, %struct.profi_priv* %28, i32 0, i32 1
  store %struct.anybuss_client* %27, %struct.anybuss_client** %29, align 8
  %30 = load i8*, i8** @PROFI_DPRAM_SIZE, align 8
  %31 = load %struct.profi_priv*, %struct.profi_priv** %4, align 8
  %32 = getelementptr inbounds %struct.profi_priv, %struct.profi_priv* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 10
  store i8* %30, i8** %33, align 8
  %34 = load i8*, i8** @PROFI_DPRAM_SIZE, align 8
  %35 = load %struct.profi_priv*, %struct.profi_priv** %4, align 8
  %36 = getelementptr inbounds %struct.profi_priv, %struct.profi_priv* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 9
  store i8* %34, i8** %37, align 8
  %38 = load %struct.profi_priv*, %struct.profi_priv** %4, align 8
  %39 = getelementptr inbounds %struct.profi_priv, %struct.profi_priv* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8** %40, align 8
  %41 = load i32, i32* @FIELDBUS_DEV_TYPE_PROFINET, align 4
  %42 = load %struct.profi_priv*, %struct.profi_priv** %4, align 8
  %43 = getelementptr inbounds %struct.profi_priv, %struct.profi_priv* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 8
  store i32 %41, i32* %44, align 4
  %45 = load i32, i32* @profi_read_area, align 4
  %46 = load %struct.profi_priv*, %struct.profi_priv** %4, align 8
  %47 = getelementptr inbounds %struct.profi_priv, %struct.profi_priv* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 7
  store i32 %45, i32* %48, align 8
  %49 = load i32, i32* @profi_write_area, align 4
  %50 = load %struct.profi_priv*, %struct.profi_priv** %4, align 8
  %51 = getelementptr inbounds %struct.profi_priv, %struct.profi_priv* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 6
  store i32 %49, i32* %52, align 4
  %53 = load i32, i32* @profi_id_get, align 4
  %54 = load %struct.profi_priv*, %struct.profi_priv** %4, align 8
  %55 = getelementptr inbounds %struct.profi_priv, %struct.profi_priv* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 5
  store i32 %53, i32* %56, align 8
  %57 = load i32, i32* @profi_enable_get, align 4
  %58 = load %struct.profi_priv*, %struct.profi_priv** %4, align 8
  %59 = getelementptr inbounds %struct.profi_priv, %struct.profi_priv* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 4
  store i32 %57, i32* %60, align 4
  %61 = load i32, i32* @profi_simple_enable, align 4
  %62 = load %struct.profi_priv*, %struct.profi_priv** %4, align 8
  %63 = getelementptr inbounds %struct.profi_priv, %struct.profi_priv* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 3
  store i32 %61, i32* %64, align 8
  %65 = load %struct.device*, %struct.device** %5, align 8
  %66 = load %struct.profi_priv*, %struct.profi_priv** %4, align 8
  %67 = getelementptr inbounds %struct.profi_priv, %struct.profi_priv* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 2
  store %struct.device* %65, %struct.device** %68, align 8
  %69 = load %struct.profi_priv*, %struct.profi_priv** %4, align 8
  %70 = getelementptr inbounds %struct.profi_priv, %struct.profi_priv* %69, i32 0, i32 0
  %71 = call i32 @fieldbus_dev_register(%struct.TYPE_2__* %70)
  store i32 %71, i32* %6, align 4
  %72 = load i32, i32* %6, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %23
  %75 = load i32, i32* %6, align 4
  store i32 %75, i32* %2, align 4
  br label %87

76:                                               ; preds = %23
  %77 = load %struct.device*, %struct.device** %5, align 8
  %78 = load %struct.profi_priv*, %struct.profi_priv** %4, align 8
  %79 = getelementptr inbounds %struct.profi_priv, %struct.profi_priv* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @dev_name(i32 %81)
  %83 = call i32 @dev_info(%struct.device* %77, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %82)
  %84 = load %struct.anybuss_client*, %struct.anybuss_client** %3, align 8
  %85 = load %struct.profi_priv*, %struct.profi_priv** %4, align 8
  %86 = call i32 @anybuss_set_drvdata(%struct.anybuss_client* %84, %struct.profi_priv* %85)
  store i32 0, i32* %2, align 4
  br label %87

87:                                               ; preds = %76, %74, %20
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

declare dso_local %struct.profi_priv* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @fieldbus_dev_register(%struct.TYPE_2__*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32) #1

declare dso_local i32 @dev_name(i32) #1

declare dso_local i32 @anybuss_set_drvdata(%struct.anybuss_client*, %struct.profi_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
