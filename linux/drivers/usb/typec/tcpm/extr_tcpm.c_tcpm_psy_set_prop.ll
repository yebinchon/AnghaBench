; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_tcpm.c_tcpm_psy_set_prop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_tcpm.c_tcpm_psy_set_prop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.power_supply = type { i32 }
%union.power_supply_propval = type { i32 }
%struct.tcpm_port = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.power_supply*, i32, %union.power_supply_propval*)* @tcpm_psy_set_prop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcpm_psy_set_prop(%struct.power_supply* %0, i32 %1, %union.power_supply_propval* %2) #0 {
  %4 = alloca %struct.power_supply*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %union.power_supply_propval*, align 8
  %7 = alloca %struct.tcpm_port*, align 8
  %8 = alloca i32, align 4
  store %struct.power_supply* %0, %struct.power_supply** %4, align 8
  store i32 %1, i32* %5, align 4
  store %union.power_supply_propval* %2, %union.power_supply_propval** %6, align 8
  %9 = load %struct.power_supply*, %struct.power_supply** %4, align 8
  %10 = call %struct.tcpm_port* @power_supply_get_drvdata(%struct.power_supply* %9)
  store %struct.tcpm_port* %10, %struct.tcpm_port** %7, align 8
  %11 = load i32, i32* %5, align 4
  switch i32 %11, label %68 [
    i32 129, label %12
    i32 128, label %16
    i32 130, label %47
  ]

12:                                               ; preds = %3
  %13 = load %struct.tcpm_port*, %struct.tcpm_port** %7, align 8
  %14 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %15 = call i32 @tcpm_psy_set_online(%struct.tcpm_port* %13, %union.power_supply_propval* %14)
  store i32 %15, i32* %8, align 4
  br label %71

16:                                               ; preds = %3
  %17 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %18 = bitcast %union.power_supply_propval* %17 to i32*
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.tcpm_port*, %struct.tcpm_port** %7, align 8
  %21 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = mul nsw i32 %23, 1000
  %25 = icmp slt i32 %19, %24
  br i1 %25, label %36, label %26

26:                                               ; preds = %16
  %27 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %28 = bitcast %union.power_supply_propval* %27 to i32*
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.tcpm_port*, %struct.tcpm_port** %7, align 8
  %31 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = mul nsw i32 %33, 1000
  %35 = icmp sgt i32 %29, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %26, %16
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %8, align 4
  br label %46

39:                                               ; preds = %26
  %40 = load %struct.tcpm_port*, %struct.tcpm_port** %7, align 8
  %41 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %42 = bitcast %union.power_supply_propval* %41 to i32*
  %43 = load i32, i32* %42, align 4
  %44 = sdiv i32 %43, 1000
  %45 = call i32 @tcpm_pps_set_out_volt(%struct.tcpm_port* %40, i32 %44)
  store i32 %45, i32* %8, align 4
  br label %46

46:                                               ; preds = %39, %36
  br label %71

47:                                               ; preds = %3
  %48 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %49 = bitcast %union.power_supply_propval* %48 to i32*
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.tcpm_port*, %struct.tcpm_port** %7, align 8
  %52 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = mul nsw i32 %54, 1000
  %56 = icmp sgt i32 %50, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %47
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %8, align 4
  br label %67

60:                                               ; preds = %47
  %61 = load %struct.tcpm_port*, %struct.tcpm_port** %7, align 8
  %62 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %63 = bitcast %union.power_supply_propval* %62 to i32*
  %64 = load i32, i32* %63, align 4
  %65 = sdiv i32 %64, 1000
  %66 = call i32 @tcpm_pps_set_op_curr(%struct.tcpm_port* %61, i32 %65)
  store i32 %66, i32* %8, align 4
  br label %67

67:                                               ; preds = %60, %57
  br label %71

68:                                               ; preds = %3
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %8, align 4
  br label %71

71:                                               ; preds = %68, %67, %46, %12
  %72 = load i32, i32* %8, align 4
  ret i32 %72
}

declare dso_local %struct.tcpm_port* @power_supply_get_drvdata(%struct.power_supply*) #1

declare dso_local i32 @tcpm_psy_set_online(%struct.tcpm_port*, %union.power_supply_propval*) #1

declare dso_local i32 @tcpm_pps_set_out_volt(%struct.tcpm_port*, i32) #1

declare dso_local i32 @tcpm_pps_set_op_curr(%struct.tcpm_port*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
