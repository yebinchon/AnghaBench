; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/tegra/extr_soctherm.c_soctherm_oc_cfg_parse.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/tegra/extr_soctherm.c_soctherm_oc_cfg_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_node = type { i32 }
%struct.soctherm_throt_cfg = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i8*, i8*, i8* }

@.str = private unnamed_addr constant [27 x i8] c"nvidia,polarity-active-low\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"nvidia,count-threshold\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"nvidia,throttle-period-us\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"nvidia,alarm-filter\00", align 1
@OC_THROTTLE_MODE_BRIEF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, %struct.device_node*, %struct.soctherm_throt_cfg*)* @soctherm_oc_cfg_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @soctherm_oc_cfg_parse(%struct.device* %0, %struct.device_node* %1, %struct.soctherm_throt_cfg* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.soctherm_throt_cfg*, align 8
  %7 = alloca i8*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_node* %1, %struct.device_node** %5, align 8
  store %struct.soctherm_throt_cfg* %2, %struct.soctherm_throt_cfg** %6, align 8
  %8 = load %struct.device_node*, %struct.device_node** %5, align 8
  %9 = call i64 @of_property_read_bool(%struct.device_node* %8, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %3
  %12 = load %struct.soctherm_throt_cfg*, %struct.soctherm_throt_cfg** %6, align 8
  %13 = getelementptr inbounds %struct.soctherm_throt_cfg, %struct.soctherm_throt_cfg* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store i32 1, i32* %14, align 8
  br label %19

15:                                               ; preds = %3
  %16 = load %struct.soctherm_throt_cfg*, %struct.soctherm_throt_cfg** %6, align 8
  %17 = getelementptr inbounds %struct.soctherm_throt_cfg, %struct.soctherm_throt_cfg* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store i32 0, i32* %18, align 8
  br label %19

19:                                               ; preds = %15, %11
  %20 = load %struct.device_node*, %struct.device_node** %5, align 8
  %21 = call i32 @of_property_read_u32(%struct.device_node* %20, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8** %7)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %31, label %23

23:                                               ; preds = %19
  %24 = load %struct.soctherm_throt_cfg*, %struct.soctherm_throt_cfg** %6, align 8
  %25 = getelementptr inbounds %struct.soctherm_throt_cfg, %struct.soctherm_throt_cfg* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  store i32 1, i32* %26, align 4
  %27 = load i8*, i8** %7, align 8
  %28 = load %struct.soctherm_throt_cfg*, %struct.soctherm_throt_cfg** %6, align 8
  %29 = getelementptr inbounds %struct.soctherm_throt_cfg, %struct.soctherm_throt_cfg* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 5
  store i8* %27, i8** %30, align 8
  br label %31

31:                                               ; preds = %23, %19
  %32 = load %struct.device_node*, %struct.device_node** %5, align 8
  %33 = call i32 @of_property_read_u32(%struct.device_node* %32, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8** %7)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %31
  %36 = load i8*, i8** %7, align 8
  %37 = load %struct.soctherm_throt_cfg*, %struct.soctherm_throt_cfg** %6, align 8
  %38 = getelementptr inbounds %struct.soctherm_throt_cfg, %struct.soctherm_throt_cfg* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 4
  store i8* %36, i8** %39, align 8
  br label %40

40:                                               ; preds = %35, %31
  %41 = load %struct.device_node*, %struct.device_node** %5, align 8
  %42 = call i32 @of_property_read_u32(%struct.device_node* %41, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i8** %7)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %40
  %45 = load i8*, i8** %7, align 8
  %46 = load %struct.soctherm_throt_cfg*, %struct.soctherm_throt_cfg** %6, align 8
  %47 = getelementptr inbounds %struct.soctherm_throt_cfg, %struct.soctherm_throt_cfg* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 3
  store i8* %45, i8** %48, align 8
  br label %49

49:                                               ; preds = %44, %40
  %50 = load i32, i32* @OC_THROTTLE_MODE_BRIEF, align 4
  %51 = load %struct.soctherm_throt_cfg*, %struct.soctherm_throt_cfg** %6, align 8
  %52 = getelementptr inbounds %struct.soctherm_throt_cfg, %struct.soctherm_throt_cfg* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 2
  store i32 %50, i32* %53, align 8
  ret void
}

declare dso_local i64 @of_property_read_bool(%struct.device_node*, i8*) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
