; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_pcap-regulator.c_pcap_regulator_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_pcap-regulator.c_pcap_regulator_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.regulator_dev = type { i32 }
%struct.regulator_config = type { i8*, i32, %struct.TYPE_3__* }

@pcap_regulators = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @pcap_regulator_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcap_regulator_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.regulator_dev*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.regulator_config, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call i8* @dev_get_drvdata(i32 %10)
  store i8* %11, i8** %5, align 8
  %12 = bitcast %struct.regulator_config* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 24, i1 false)
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %6, i32 0, i32 2
  store %struct.TYPE_3__* %14, %struct.TYPE_3__** %15, align 8
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 1
  %18 = call i32 @dev_get_platdata(%struct.TYPE_3__* %17)
  %19 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %6, i32 0, i32 1
  store i32 %18, i32* %19, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %6, i32 0, i32 0
  store i8* %20, i8** %21, align 8
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %22, i32 0, i32 1
  %24 = load i32*, i32** @pcap_regulators, align 8
  %25 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %26 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds i32, i32* %24, i64 %27
  %29 = call %struct.regulator_dev* @devm_regulator_register(%struct.TYPE_3__* %23, i32* %28, %struct.regulator_config* %6)
  store %struct.regulator_dev* %29, %struct.regulator_dev** %4, align 8
  %30 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %31 = call i64 @IS_ERR(%struct.regulator_dev* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %1
  %34 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %35 = call i32 @PTR_ERR(%struct.regulator_dev* %34)
  store i32 %35, i32* %2, align 4
  br label %40

36:                                               ; preds = %1
  %37 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %38 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %39 = call i32 @platform_set_drvdata(%struct.platform_device* %37, %struct.regulator_dev* %38)
  store i32 0, i32* %2, align 4
  br label %40

40:                                               ; preds = %36, %33
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i8* @dev_get_drvdata(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @dev_get_platdata(%struct.TYPE_3__*) #1

declare dso_local %struct.regulator_dev* @devm_regulator_register(%struct.TYPE_3__*, i32*, %struct.regulator_config*) #1

declare dso_local i64 @IS_ERR(%struct.regulator_dev*) #1

declare dso_local i32 @PTR_ERR(%struct.regulator_dev*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.regulator_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
