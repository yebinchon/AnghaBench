; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_tcpm.c_devm_tcpm_psy_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_tcpm.c_devm_tcpm_psy_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpm_port = type { i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i8*, i32, i32, i32, i8*, i8*, i8*, i8*, i32 }
%struct.power_supply_config = type { i32, %struct.tcpm_port* }

@tcpm_psy_name_prefix = common dso_local global i8* null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@POWER_SUPPLY_TYPE_USB = common dso_local global i32 0, align 4
@tcpm_psy_usb_types = common dso_local global i8* null, align 8
@tcpm_psy_props = common dso_local global i8* null, align 8
@tcpm_psy_get_prop = common dso_local global i32 0, align 4
@tcpm_psy_set_prop = common dso_local global i32 0, align 4
@tcpm_psy_prop_writeable = common dso_local global i32 0, align 4
@POWER_SUPPLY_USB_TYPE_C = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcpm_port*)* @devm_tcpm_psy_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @devm_tcpm_psy_register(%struct.tcpm_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tcpm_port*, align 8
  %4 = alloca %struct.power_supply_config, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store %struct.tcpm_port* %0, %struct.tcpm_port** %3, align 8
  %8 = bitcast %struct.power_supply_config* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %8, i8 0, i64 16, i1 false)
  %9 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %10 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = call i8* @dev_name(i32 %11)
  store i8* %12, i8** %5, align 8
  %13 = load i8*, i8** @tcpm_psy_name_prefix, align 8
  %14 = call i32 @strlen(i8* %13)
  %15 = load i8*, i8** %5, align 8
  %16 = call i32 @strlen(i8* %15)
  %17 = add nsw i32 %14, %16
  %18 = add nsw i32 %17, 1
  %19 = sext i32 %18 to i64
  store i64 %19, i64* %6, align 8
  %20 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %21 = getelementptr inbounds %struct.power_supply_config, %struct.power_supply_config* %4, i32 0, i32 1
  store %struct.tcpm_port* %20, %struct.tcpm_port** %21, align 8
  %22 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %23 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @dev_fwnode(i32 %24)
  %26 = getelementptr inbounds %struct.power_supply_config, %struct.power_supply_config* %4, i32 0, i32 0
  store i32 %25, i32* %26, align 8
  %27 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %28 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load i64, i64* %6, align 8
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call i8* @devm_kzalloc(i32 %29, i64 %30, i32 %31)
  store i8* %32, i8** %7, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %1
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %97

38:                                               ; preds = %1
  %39 = load i8*, i8** %7, align 8
  %40 = load i64, i64* %6, align 8
  %41 = load i8*, i8** @tcpm_psy_name_prefix, align 8
  %42 = load i8*, i8** %5, align 8
  %43 = call i32 @snprintf(i8* %39, i64 %40, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %41, i8* %42)
  %44 = load i8*, i8** %7, align 8
  %45 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %46 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  store i8* %44, i8** %47, align 8
  %48 = load i32, i32* @POWER_SUPPLY_TYPE_USB, align 4
  %49 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %50 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 8
  store i32 %48, i32* %51, align 8
  %52 = load i8*, i8** @tcpm_psy_usb_types, align 8
  %53 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %54 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 7
  store i8* %52, i8** %55, align 8
  %56 = load i8*, i8** @tcpm_psy_usb_types, align 8
  %57 = call i8* @ARRAY_SIZE(i8* %56)
  %58 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %59 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 6
  store i8* %57, i8** %60, align 8
  %61 = load i8*, i8** @tcpm_psy_props, align 8
  %62 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %63 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 5
  store i8* %61, i8** %64, align 8
  %65 = load i8*, i8** @tcpm_psy_props, align 8
  %66 = call i8* @ARRAY_SIZE(i8* %65)
  %67 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %68 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 4
  store i8* %66, i8** %69, align 8
  %70 = load i32, i32* @tcpm_psy_get_prop, align 4
  %71 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %72 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 3
  store i32 %70, i32* %73, align 8
  %74 = load i32, i32* @tcpm_psy_set_prop, align 4
  %75 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %76 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 2
  store i32 %74, i32* %77, align 4
  %78 = load i32, i32* @tcpm_psy_prop_writeable, align 4
  %79 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %80 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 1
  store i32 %78, i32* %81, align 8
  %82 = load i32, i32* @POWER_SUPPLY_USB_TYPE_C, align 4
  %83 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %84 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %83, i32 0, i32 3
  store i32 %82, i32* %84, align 4
  %85 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %86 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %89 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %88, i32 0, i32 1
  %90 = call i32 @devm_power_supply_register(i32 %87, %struct.TYPE_2__* %89, %struct.power_supply_config* %4)
  %91 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %92 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 8
  %93 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %94 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @PTR_ERR_OR_ZERO(i32 %95)
  store i32 %96, i32* %2, align 4
  br label %97

97:                                               ; preds = %38, %35
  %98 = load i32, i32* %2, align 4
  ret i32 %98
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i8* @dev_name(i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @dev_fwnode(i32) #2

declare dso_local i8* @devm_kzalloc(i32, i64, i32) #2

declare dso_local i32 @snprintf(i8*, i64, i8*, i8*, i8*) #2

declare dso_local i8* @ARRAY_SIZE(i8*) #2

declare dso_local i32 @devm_power_supply_register(i32, %struct.TYPE_2__*, %struct.power_supply_config*) #2

declare dso_local i32 @PTR_ERR_OR_ZERO(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
