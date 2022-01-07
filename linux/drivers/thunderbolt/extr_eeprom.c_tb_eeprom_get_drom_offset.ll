; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_eeprom.c_tb_eeprom_get_drom_offset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_eeprom.c_tb_eeprom_get_drom_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb_switch = type { i32 }
%struct.tb_cap_plug_events = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }

@.str = private unnamed_addr constant [43 x i8] c"no TB_CAP_PLUG_EVENTS, cannot read eeprom\0A\00", align 1
@ENOSYS = common dso_local global i32 0, align 4
@TB_CFG_SWITCH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"no NVM\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"drom offset is larger than 0xffff: %#x\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tb_switch*, i32*)* @tb_eeprom_get_drom_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tb_eeprom_get_drom_offset(%struct.tb_switch* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tb_switch*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.tb_cap_plug_events, align 8
  %7 = alloca i32, align 4
  store %struct.tb_switch* %0, %struct.tb_switch** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.tb_switch*, %struct.tb_switch** %4, align 8
  %9 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %2
  %13 = load %struct.tb_switch*, %struct.tb_switch** %4, align 8
  %14 = call i32 (%struct.tb_switch*, i8*, ...) @tb_sw_warn(%struct.tb_switch* %13, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @ENOSYS, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %58

17:                                               ; preds = %2
  %18 = load %struct.tb_switch*, %struct.tb_switch** %4, align 8
  %19 = load i32, i32* @TB_CFG_SWITCH, align 4
  %20 = load %struct.tb_switch*, %struct.tb_switch** %4, align 8
  %21 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @tb_sw_read(%struct.tb_switch* %18, %struct.tb_cap_plug_events* %6, i32 %19, i32 %22, i32 6)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %17
  %27 = load i32, i32* %7, align 4
  store i32 %27, i32* %3, align 4
  br label %58

28:                                               ; preds = %17
  %29 = getelementptr inbounds %struct.tb_cap_plug_events, %struct.tb_cap_plug_events* %6, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.tb_cap_plug_events, %struct.tb_cap_plug_events* %6, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %33, %28
  %39 = load %struct.tb_switch*, %struct.tb_switch** %4, align 8
  %40 = call i32 (%struct.tb_switch*, i8*, ...) @tb_sw_warn(%struct.tb_switch* %39, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %41 = load i32, i32* @ENOSYS, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %58

43:                                               ; preds = %33
  %44 = getelementptr inbounds %struct.tb_cap_plug_events, %struct.tb_cap_plug_events* %6, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp sgt i32 %45, 65535
  br i1 %46, label %47, label %54

47:                                               ; preds = %43
  %48 = load %struct.tb_switch*, %struct.tb_switch** %4, align 8
  %49 = getelementptr inbounds %struct.tb_cap_plug_events, %struct.tb_cap_plug_events* %6, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 (%struct.tb_switch*, i8*, ...) @tb_sw_warn(%struct.tb_switch* %48, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* @ENXIO, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  br label %58

54:                                               ; preds = %43
  %55 = getelementptr inbounds %struct.tb_cap_plug_events, %struct.tb_cap_plug_events* %6, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32*, i32** %5, align 8
  store i32 %56, i32* %57, align 4
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %54, %47, %38, %26, %12
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @tb_sw_warn(%struct.tb_switch*, i8*, ...) #1

declare dso_local i32 @tb_sw_read(%struct.tb_switch*, %struct.tb_cap_plug_events*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
