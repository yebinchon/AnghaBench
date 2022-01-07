; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_pcap-regulator.c_pcap_regulator_get_voltage_sel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_pcap-regulator.c_pcap_regulator_get_voltage_sel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcap_regulator = type { i32, i32 }
%struct.regulator_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@vreg_table = common dso_local global %struct.pcap_regulator* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*)* @pcap_regulator_get_voltage_sel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcap_regulator_get_voltage_sel(%struct.regulator_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.regulator_dev*, align 8
  %4 = alloca %struct.pcap_regulator*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %3, align 8
  %7 = load %struct.pcap_regulator*, %struct.pcap_regulator** @vreg_table, align 8
  %8 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %9 = call i64 @rdev_get_id(%struct.regulator_dev* %8)
  %10 = getelementptr inbounds %struct.pcap_regulator, %struct.pcap_regulator* %7, i64 %9
  store %struct.pcap_regulator* %10, %struct.pcap_regulator** %4, align 8
  %11 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %12 = call i8* @rdev_get_drvdata(%struct.regulator_dev* %11)
  store i8* %12, i8** %5, align 8
  %13 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %14 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %39

20:                                               ; preds = %1
  %21 = load i8*, i8** %5, align 8
  %22 = load %struct.pcap_regulator*, %struct.pcap_regulator** %4, align 8
  %23 = getelementptr inbounds %struct.pcap_regulator, %struct.pcap_regulator* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @ezx_pcap_read(i8* %21, i32 %24, i32* %6)
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.pcap_regulator*, %struct.pcap_regulator** %4, align 8
  %28 = getelementptr inbounds %struct.pcap_regulator, %struct.pcap_regulator* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = ashr i32 %26, %29
  %31 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %32 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = sub nsw i32 %35, 1
  %37 = and i32 %30, %36
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  store i32 %38, i32* %2, align 4
  br label %39

39:                                               ; preds = %20, %19
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i64 @rdev_get_id(%struct.regulator_dev*) #1

declare dso_local i8* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @ezx_pcap_read(i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
