; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_smp2p.c_smp2p_parse_ipc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_smp2p.c_smp2p_parse_ipc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qcom_smp2p = type { i32, i32, i32, %struct.device* }
%struct.device = type { i32 }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"qcom,ipc\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"no qcom,ipc node\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"no offset in %s\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"no bit in %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qcom_smp2p*)* @smp2p_parse_ipc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smp2p_parse_ipc(%struct.qcom_smp2p* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qcom_smp2p*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.qcom_smp2p* %0, %struct.qcom_smp2p** %3, align 8
  %8 = load %struct.qcom_smp2p*, %struct.qcom_smp2p** %3, align 8
  %9 = getelementptr inbounds %struct.qcom_smp2p, %struct.qcom_smp2p* %8, i32 0, i32 3
  %10 = load %struct.device*, %struct.device** %9, align 8
  store %struct.device* %10, %struct.device** %5, align 8
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = getelementptr inbounds %struct.device, %struct.device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.device_node* @of_parse_phandle(i32 %13, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 0)
  store %struct.device_node* %14, %struct.device_node** %4, align 8
  %15 = load %struct.device_node*, %struct.device_node** %4, align 8
  %16 = icmp ne %struct.device_node* %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %1
  %18 = load %struct.device*, %struct.device** %5, align 8
  %19 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %18, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %20 = load i32, i32* @ENODEV, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %70

22:                                               ; preds = %1
  %23 = load %struct.device_node*, %struct.device_node** %4, align 8
  %24 = call i32 @syscon_node_to_regmap(%struct.device_node* %23)
  %25 = load %struct.qcom_smp2p*, %struct.qcom_smp2p** %3, align 8
  %26 = getelementptr inbounds %struct.qcom_smp2p, %struct.qcom_smp2p* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 8
  %27 = load %struct.qcom_smp2p*, %struct.qcom_smp2p** %3, align 8
  %28 = getelementptr inbounds %struct.qcom_smp2p, %struct.qcom_smp2p* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call i64 @IS_ERR(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %22
  %33 = load %struct.qcom_smp2p*, %struct.qcom_smp2p** %3, align 8
  %34 = getelementptr inbounds %struct.qcom_smp2p, %struct.qcom_smp2p* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @PTR_ERR(i32 %35)
  store i32 %36, i32* %2, align 4
  br label %70

37:                                               ; preds = %22
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  %38 = load %struct.device*, %struct.device** %5, align 8
  %39 = getelementptr inbounds %struct.device, %struct.device* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i8*, i8** %6, align 8
  %42 = load %struct.qcom_smp2p*, %struct.qcom_smp2p** %3, align 8
  %43 = getelementptr inbounds %struct.qcom_smp2p, %struct.qcom_smp2p* %42, i32 0, i32 1
  %44 = call i32 @of_property_read_u32_index(i32 %40, i8* %41, i32 1, i32* %43)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %37
  %48 = load %struct.device*, %struct.device** %5, align 8
  %49 = load i8*, i8** %6, align 8
  %50 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %48, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8* %49)
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %2, align 4
  br label %70

53:                                               ; preds = %37
  %54 = load %struct.device*, %struct.device** %5, align 8
  %55 = getelementptr inbounds %struct.device, %struct.device* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i8*, i8** %6, align 8
  %58 = load %struct.qcom_smp2p*, %struct.qcom_smp2p** %3, align 8
  %59 = getelementptr inbounds %struct.qcom_smp2p, %struct.qcom_smp2p* %58, i32 0, i32 0
  %60 = call i32 @of_property_read_u32_index(i32 %56, i8* %57, i32 2, i32* %59)
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %7, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %53
  %64 = load %struct.device*, %struct.device** %5, align 8
  %65 = load i8*, i8** %6, align 8
  %66 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %64, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8* %65)
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %2, align 4
  br label %70

69:                                               ; preds = %53
  store i32 0, i32* %2, align 4
  br label %70

70:                                               ; preds = %69, %63, %47, %32, %17
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local %struct.device_node* @of_parse_phandle(i32, i8*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @syscon_node_to_regmap(%struct.device_node*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @of_property_read_u32_index(i32, i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
