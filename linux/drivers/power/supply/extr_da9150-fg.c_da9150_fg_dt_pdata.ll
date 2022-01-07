; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_da9150-fg.c_da9150_fg_dt_pdata.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_da9150-fg.c_da9150_fg_dt_pdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.da9150_fg_pdata = type { i32, i32, i32 }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"dlg,update-interval\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"dlg,warn-soc-level\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"dlg,crit-soc-level\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.da9150_fg_pdata* (%struct.device*)* @da9150_fg_dt_pdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.da9150_fg_pdata* @da9150_fg_dt_pdata(%struct.device* %0) #0 {
  %2 = alloca %struct.da9150_fg_pdata*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.da9150_fg_pdata*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = getelementptr inbounds %struct.device, %struct.device* %6, i32 0, i32 0
  %8 = load %struct.device_node*, %struct.device_node** %7, align 8
  store %struct.device_node* %8, %struct.device_node** %4, align 8
  %9 = load %struct.device*, %struct.device** %3, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.da9150_fg_pdata* @devm_kzalloc(%struct.device* %9, i32 12, i32 %10)
  store %struct.da9150_fg_pdata* %11, %struct.da9150_fg_pdata** %5, align 8
  %12 = load %struct.da9150_fg_pdata*, %struct.da9150_fg_pdata** %5, align 8
  %13 = icmp ne %struct.da9150_fg_pdata* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  store %struct.da9150_fg_pdata* null, %struct.da9150_fg_pdata** %2, align 8
  br label %29

15:                                               ; preds = %1
  %16 = load %struct.device_node*, %struct.device_node** %4, align 8
  %17 = load %struct.da9150_fg_pdata*, %struct.da9150_fg_pdata** %5, align 8
  %18 = getelementptr inbounds %struct.da9150_fg_pdata, %struct.da9150_fg_pdata* %17, i32 0, i32 2
  %19 = call i32 @of_property_read_u32(%struct.device_node* %16, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32* %18)
  %20 = load %struct.device_node*, %struct.device_node** %4, align 8
  %21 = load %struct.da9150_fg_pdata*, %struct.da9150_fg_pdata** %5, align 8
  %22 = getelementptr inbounds %struct.da9150_fg_pdata, %struct.da9150_fg_pdata* %21, i32 0, i32 1
  %23 = call i32 @of_property_read_u8(%struct.device_node* %20, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32* %22)
  %24 = load %struct.device_node*, %struct.device_node** %4, align 8
  %25 = load %struct.da9150_fg_pdata*, %struct.da9150_fg_pdata** %5, align 8
  %26 = getelementptr inbounds %struct.da9150_fg_pdata, %struct.da9150_fg_pdata* %25, i32 0, i32 0
  %27 = call i32 @of_property_read_u8(%struct.device_node* %24, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32* %26)
  %28 = load %struct.da9150_fg_pdata*, %struct.da9150_fg_pdata** %5, align 8
  store %struct.da9150_fg_pdata* %28, %struct.da9150_fg_pdata** %2, align 8
  br label %29

29:                                               ; preds = %15, %14
  %30 = load %struct.da9150_fg_pdata*, %struct.da9150_fg_pdata** %2, align 8
  ret %struct.da9150_fg_pdata* %30
}

declare dso_local %struct.da9150_fg_pdata* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @of_property_read_u8(%struct.device_node*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
