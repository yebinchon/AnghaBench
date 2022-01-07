; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_max8925_power.c_max8925_power_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_max8925_power.c_max8925_power_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.max8925_chip = type { i32, i32 }
%struct.power_supply_config = type { i32, i32 }
%struct.max8925_power_pdata = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.max8925_power_info = type { %struct.TYPE_9__*, %struct.TYPE_9__*, i32, i32, i32, i32, i32, i32, %struct.TYPE_9__*, i32, i32, %struct.max8925_chip* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_10__* }

@.str = private unnamed_addr constant [46 x i8] c"platform data isn't assigned to power supply\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ac_desc = common dso_local global i32 0, align 4
@usb_desc = common dso_local global i32 0, align 4
@battery_desc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @max8925_power_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max8925_power_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.max8925_chip*, align 8
  %5 = alloca %struct.power_supply_config, align 4
  %6 = alloca %struct.max8925_power_pdata*, align 8
  %7 = alloca %struct.max8925_power_info*, align 8
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.max8925_chip* @dev_get_drvdata(i32 %12)
  store %struct.max8925_chip* %13, %struct.max8925_chip** %4, align 8
  %14 = bitcast %struct.power_supply_config* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %14, i8 0, i64 8, i1 false)
  store %struct.max8925_power_pdata* null, %struct.max8925_power_pdata** %6, align 8
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = call %struct.max8925_power_pdata* @max8925_power_dt_init(%struct.platform_device* %15)
  store %struct.max8925_power_pdata* %16, %struct.max8925_power_pdata** %6, align 8
  %17 = load %struct.max8925_power_pdata*, %struct.max8925_power_pdata** %6, align 8
  %18 = icmp ne %struct.max8925_power_pdata* %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %1
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 0
  %22 = call i32 @dev_err(%struct.TYPE_10__* %21, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %177

25:                                               ; preds = %1
  %26 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %27 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %26, i32 0, i32 0
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call %struct.max8925_power_info* @devm_kzalloc(%struct.TYPE_10__* %27, i32 64, i32 %28)
  store %struct.max8925_power_info* %29, %struct.max8925_power_info** %7, align 8
  %30 = load %struct.max8925_power_info*, %struct.max8925_power_info** %7, align 8
  %31 = icmp ne %struct.max8925_power_info* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %25
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %177

35:                                               ; preds = %25
  %36 = load %struct.max8925_chip*, %struct.max8925_chip** %4, align 8
  %37 = load %struct.max8925_power_info*, %struct.max8925_power_info** %7, align 8
  %38 = getelementptr inbounds %struct.max8925_power_info, %struct.max8925_power_info* %37, i32 0, i32 11
  store %struct.max8925_chip* %36, %struct.max8925_chip** %38, align 8
  %39 = load %struct.max8925_chip*, %struct.max8925_chip** %4, align 8
  %40 = getelementptr inbounds %struct.max8925_chip, %struct.max8925_chip* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.max8925_power_info*, %struct.max8925_power_info** %7, align 8
  %43 = getelementptr inbounds %struct.max8925_power_info, %struct.max8925_power_info* %42, i32 0, i32 10
  store i32 %41, i32* %43, align 4
  %44 = load %struct.max8925_chip*, %struct.max8925_chip** %4, align 8
  %45 = getelementptr inbounds %struct.max8925_chip, %struct.max8925_chip* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.max8925_power_info*, %struct.max8925_power_info** %7, align 8
  %48 = getelementptr inbounds %struct.max8925_power_info, %struct.max8925_power_info* %47, i32 0, i32 9
  store i32 %46, i32* %48, align 8
  %49 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %50 = load %struct.max8925_power_info*, %struct.max8925_power_info** %7, align 8
  %51 = call i32 @platform_set_drvdata(%struct.platform_device* %49, %struct.max8925_power_info* %50)
  %52 = load %struct.max8925_power_pdata*, %struct.max8925_power_pdata** %6, align 8
  %53 = getelementptr inbounds %struct.max8925_power_pdata, %struct.max8925_power_pdata* %52, i32 0, i32 7
  %54 = load i32, i32* %53, align 4
  %55 = getelementptr inbounds %struct.power_supply_config, %struct.power_supply_config* %5, i32 0, i32 1
  store i32 %54, i32* %55, align 4
  %56 = load %struct.max8925_power_pdata*, %struct.max8925_power_pdata** %6, align 8
  %57 = getelementptr inbounds %struct.max8925_power_pdata, %struct.max8925_power_pdata* %56, i32 0, i32 6
  %58 = load i32, i32* %57, align 4
  %59 = getelementptr inbounds %struct.power_supply_config, %struct.power_supply_config* %5, i32 0, i32 0
  store i32 %58, i32* %59, align 4
  %60 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %61 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %60, i32 0, i32 0
  %62 = call i8* @power_supply_register(%struct.TYPE_10__* %61, i32* @ac_desc, %struct.power_supply_config* %5)
  %63 = bitcast i8* %62 to %struct.TYPE_9__*
  %64 = load %struct.max8925_power_info*, %struct.max8925_power_info** %7, align 8
  %65 = getelementptr inbounds %struct.max8925_power_info, %struct.max8925_power_info* %64, i32 0, i32 0
  store %struct.TYPE_9__* %63, %struct.TYPE_9__** %65, align 8
  %66 = load %struct.max8925_power_info*, %struct.max8925_power_info** %7, align 8
  %67 = getelementptr inbounds %struct.max8925_power_info, %struct.max8925_power_info* %66, i32 0, i32 0
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %67, align 8
  %69 = call i64 @IS_ERR(%struct.TYPE_9__* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %35
  %72 = load %struct.max8925_power_info*, %struct.max8925_power_info** %7, align 8
  %73 = getelementptr inbounds %struct.max8925_power_info, %struct.max8925_power_info* %72, i32 0, i32 0
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %73, align 8
  %75 = call i32 @PTR_ERR(%struct.TYPE_9__* %74)
  store i32 %75, i32* %8, align 4
  br label %175

76:                                               ; preds = %35
  %77 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %78 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %77, i32 0, i32 0
  %79 = load %struct.max8925_power_info*, %struct.max8925_power_info** %7, align 8
  %80 = getelementptr inbounds %struct.max8925_power_info, %struct.max8925_power_info* %79, i32 0, i32 0
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  store %struct.TYPE_10__* %78, %struct.TYPE_10__** %83, align 8
  %84 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %85 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %84, i32 0, i32 0
  %86 = call i8* @power_supply_register(%struct.TYPE_10__* %85, i32* @usb_desc, %struct.power_supply_config* %5)
  %87 = bitcast i8* %86 to %struct.TYPE_9__*
  %88 = load %struct.max8925_power_info*, %struct.max8925_power_info** %7, align 8
  %89 = getelementptr inbounds %struct.max8925_power_info, %struct.max8925_power_info* %88, i32 0, i32 1
  store %struct.TYPE_9__* %87, %struct.TYPE_9__** %89, align 8
  %90 = load %struct.max8925_power_info*, %struct.max8925_power_info** %7, align 8
  %91 = getelementptr inbounds %struct.max8925_power_info, %struct.max8925_power_info* %90, i32 0, i32 1
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %91, align 8
  %93 = call i64 @IS_ERR(%struct.TYPE_9__* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %76
  %96 = load %struct.max8925_power_info*, %struct.max8925_power_info** %7, align 8
  %97 = getelementptr inbounds %struct.max8925_power_info, %struct.max8925_power_info* %96, i32 0, i32 1
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %97, align 8
  %99 = call i32 @PTR_ERR(%struct.TYPE_9__* %98)
  store i32 %99, i32* %8, align 4
  br label %170

100:                                              ; preds = %76
  %101 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %102 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %101, i32 0, i32 0
  %103 = load %struct.max8925_power_info*, %struct.max8925_power_info** %7, align 8
  %104 = getelementptr inbounds %struct.max8925_power_info, %struct.max8925_power_info* %103, i32 0, i32 1
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 0
  store %struct.TYPE_10__* %102, %struct.TYPE_10__** %107, align 8
  %108 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %109 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %108, i32 0, i32 0
  %110 = call i8* @power_supply_register(%struct.TYPE_10__* %109, i32* @battery_desc, %struct.power_supply_config* null)
  %111 = bitcast i8* %110 to %struct.TYPE_9__*
  %112 = load %struct.max8925_power_info*, %struct.max8925_power_info** %7, align 8
  %113 = getelementptr inbounds %struct.max8925_power_info, %struct.max8925_power_info* %112, i32 0, i32 8
  store %struct.TYPE_9__* %111, %struct.TYPE_9__** %113, align 8
  %114 = load %struct.max8925_power_info*, %struct.max8925_power_info** %7, align 8
  %115 = getelementptr inbounds %struct.max8925_power_info, %struct.max8925_power_info* %114, i32 0, i32 8
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %115, align 8
  %117 = call i64 @IS_ERR(%struct.TYPE_9__* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %124

119:                                              ; preds = %100
  %120 = load %struct.max8925_power_info*, %struct.max8925_power_info** %7, align 8
  %121 = getelementptr inbounds %struct.max8925_power_info, %struct.max8925_power_info* %120, i32 0, i32 8
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %121, align 8
  %123 = call i32 @PTR_ERR(%struct.TYPE_9__* %122)
  store i32 %123, i32* %8, align 4
  br label %165

124:                                              ; preds = %100
  %125 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %126 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %125, i32 0, i32 0
  %127 = load %struct.max8925_power_info*, %struct.max8925_power_info** %7, align 8
  %128 = getelementptr inbounds %struct.max8925_power_info, %struct.max8925_power_info* %127, i32 0, i32 8
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 0
  store %struct.TYPE_10__* %126, %struct.TYPE_10__** %131, align 8
  %132 = load %struct.max8925_power_pdata*, %struct.max8925_power_pdata** %6, align 8
  %133 = getelementptr inbounds %struct.max8925_power_pdata, %struct.max8925_power_pdata* %132, i32 0, i32 5
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.max8925_power_info*, %struct.max8925_power_info** %7, align 8
  %136 = getelementptr inbounds %struct.max8925_power_info, %struct.max8925_power_info* %135, i32 0, i32 7
  store i32 %134, i32* %136, align 4
  %137 = load %struct.max8925_power_pdata*, %struct.max8925_power_pdata** %6, align 8
  %138 = getelementptr inbounds %struct.max8925_power_pdata, %struct.max8925_power_pdata* %137, i32 0, i32 4
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.max8925_power_info*, %struct.max8925_power_info** %7, align 8
  %141 = getelementptr inbounds %struct.max8925_power_info, %struct.max8925_power_info* %140, i32 0, i32 6
  store i32 %139, i32* %141, align 8
  %142 = load %struct.max8925_power_pdata*, %struct.max8925_power_pdata** %6, align 8
  %143 = getelementptr inbounds %struct.max8925_power_pdata, %struct.max8925_power_pdata* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.max8925_power_info*, %struct.max8925_power_info** %7, align 8
  %146 = getelementptr inbounds %struct.max8925_power_info, %struct.max8925_power_info* %145, i32 0, i32 5
  store i32 %144, i32* %146, align 4
  %147 = load %struct.max8925_power_pdata*, %struct.max8925_power_pdata** %6, align 8
  %148 = getelementptr inbounds %struct.max8925_power_pdata, %struct.max8925_power_pdata* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.max8925_power_info*, %struct.max8925_power_info** %7, align 8
  %151 = getelementptr inbounds %struct.max8925_power_info, %struct.max8925_power_info* %150, i32 0, i32 4
  store i32 %149, i32* %151, align 8
  %152 = load %struct.max8925_power_pdata*, %struct.max8925_power_pdata** %6, align 8
  %153 = getelementptr inbounds %struct.max8925_power_pdata, %struct.max8925_power_pdata* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.max8925_power_info*, %struct.max8925_power_info** %7, align 8
  %156 = getelementptr inbounds %struct.max8925_power_info, %struct.max8925_power_info* %155, i32 0, i32 3
  store i32 %154, i32* %156, align 4
  %157 = load %struct.max8925_power_pdata*, %struct.max8925_power_pdata** %6, align 8
  %158 = getelementptr inbounds %struct.max8925_power_pdata, %struct.max8925_power_pdata* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.max8925_power_info*, %struct.max8925_power_info** %7, align 8
  %161 = getelementptr inbounds %struct.max8925_power_info, %struct.max8925_power_info* %160, i32 0, i32 2
  store i32 %159, i32* %161, align 8
  %162 = load %struct.max8925_chip*, %struct.max8925_chip** %4, align 8
  %163 = load %struct.max8925_power_info*, %struct.max8925_power_info** %7, align 8
  %164 = call i32 @max8925_init_charger(%struct.max8925_chip* %162, %struct.max8925_power_info* %163)
  store i32 0, i32* %2, align 4
  br label %177

165:                                              ; preds = %119
  %166 = load %struct.max8925_power_info*, %struct.max8925_power_info** %7, align 8
  %167 = getelementptr inbounds %struct.max8925_power_info, %struct.max8925_power_info* %166, i32 0, i32 1
  %168 = load %struct.TYPE_9__*, %struct.TYPE_9__** %167, align 8
  %169 = call i32 @power_supply_unregister(%struct.TYPE_9__* %168)
  br label %170

170:                                              ; preds = %165, %95
  %171 = load %struct.max8925_power_info*, %struct.max8925_power_info** %7, align 8
  %172 = getelementptr inbounds %struct.max8925_power_info, %struct.max8925_power_info* %171, i32 0, i32 0
  %173 = load %struct.TYPE_9__*, %struct.TYPE_9__** %172, align 8
  %174 = call i32 @power_supply_unregister(%struct.TYPE_9__* %173)
  br label %175

175:                                              ; preds = %170, %71
  %176 = load i32, i32* %8, align 4
  store i32 %176, i32* %2, align 4
  br label %177

177:                                              ; preds = %175, %124, %32, %19
  %178 = load i32, i32* %2, align 4
  ret i32 %178
}

declare dso_local %struct.max8925_chip* @dev_get_drvdata(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local %struct.max8925_power_pdata* @max8925_power_dt_init(%struct.platform_device*) #1

declare dso_local i32 @dev_err(%struct.TYPE_10__*, i8*) #1

declare dso_local %struct.max8925_power_info* @devm_kzalloc(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.max8925_power_info*) #1

declare dso_local i8* @power_supply_register(%struct.TYPE_10__*, i32*, %struct.power_supply_config*) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_9__*) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_9__*) #1

declare dso_local i32 @max8925_init_charger(%struct.max8925_chip*, %struct.max8925_power_info*) #1

declare dso_local i32 @power_supply_unregister(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
