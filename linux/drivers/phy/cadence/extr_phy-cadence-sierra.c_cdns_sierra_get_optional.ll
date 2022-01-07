; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/cadence/extr_phy-cadence-sierra.c_cdns_sierra_get_optional.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/cadence/extr_phy-cadence-sierra.c_cdns_sierra_get_optional.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdns_sierra_inst = type { i32, i32, i32 }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"cdns,num-lanes\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"cdns,phy-type\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdns_sierra_inst*, %struct.device_node*)* @cdns_sierra_get_optional to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdns_sierra_get_optional(%struct.cdns_sierra_inst* %0, %struct.device_node* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cdns_sierra_inst*, align 8
  %5 = alloca %struct.device_node*, align 8
  store %struct.cdns_sierra_inst* %0, %struct.cdns_sierra_inst** %4, align 8
  store %struct.device_node* %1, %struct.device_node** %5, align 8
  %6 = load %struct.device_node*, %struct.device_node** %5, align 8
  %7 = load %struct.cdns_sierra_inst*, %struct.cdns_sierra_inst** %4, align 8
  %8 = getelementptr inbounds %struct.cdns_sierra_inst, %struct.cdns_sierra_inst* %7, i32 0, i32 2
  %9 = call i64 @of_property_read_u32(%struct.device_node* %6, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %33

14:                                               ; preds = %2
  %15 = load %struct.device_node*, %struct.device_node** %5, align 8
  %16 = load %struct.cdns_sierra_inst*, %struct.cdns_sierra_inst** %4, align 8
  %17 = getelementptr inbounds %struct.cdns_sierra_inst, %struct.cdns_sierra_inst* %16, i32 0, i32 1
  %18 = call i64 @of_property_read_u32(%struct.device_node* %15, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %14
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %33

23:                                               ; preds = %14
  %24 = load %struct.device_node*, %struct.device_node** %5, align 8
  %25 = load %struct.cdns_sierra_inst*, %struct.cdns_sierra_inst** %4, align 8
  %26 = getelementptr inbounds %struct.cdns_sierra_inst, %struct.cdns_sierra_inst* %25, i32 0, i32 0
  %27 = call i64 @of_property_read_u32(%struct.device_node* %24, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %33

32:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %33

33:                                               ; preds = %32, %29, %20, %11
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i64 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
