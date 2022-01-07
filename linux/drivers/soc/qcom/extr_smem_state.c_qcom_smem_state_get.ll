; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_smem_state.c_qcom_smem_state_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_smem_state.c_qcom_smem_state_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qcom_smem_state = type { i32 }
%struct.device = type { i32 }
%struct.of_phandle_args = type { i32, i32*, i32 }

@.str = private unnamed_addr constant [22 x i8] c"qcom,smem-state-names\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"missing qcom,smem-state-names\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"qcom,smem-states\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"#qcom,smem-state-cells\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"failed to parse qcom,smem-states property\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"invalid #qcom,smem-state-cells\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.qcom_smem_state* @qcom_smem_state_get(%struct.device* %0, i8* %1, i32* %2) #0 {
  %4 = alloca %struct.qcom_smem_state*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.qcom_smem_state*, align 8
  %9 = alloca %struct.of_phandle_args, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %10, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %28

14:                                               ; preds = %3
  %15 = load %struct.device*, %struct.device** %5, align 8
  %16 = getelementptr inbounds %struct.device, %struct.device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i8*, i8** %6, align 8
  %19 = call i32 @of_property_match_string(i32 %17, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %18)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %14
  %23 = load %struct.device*, %struct.device** %5, align 8
  %24 = call i32 @dev_err(%struct.device* %23, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %25 = load i32, i32* %10, align 4
  %26 = call %struct.qcom_smem_state* @ERR_PTR(i32 %25)
  store %struct.qcom_smem_state* %26, %struct.qcom_smem_state** %4, align 8
  br label %70

27:                                               ; preds = %14
  br label %28

28:                                               ; preds = %27, %3
  %29 = load %struct.device*, %struct.device** %5, align 8
  %30 = getelementptr inbounds %struct.device, %struct.device* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %10, align 4
  %33 = call i32 @of_parse_phandle_with_args(i32 %31, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %32, %struct.of_phandle_args* %9)
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %28
  %37 = load %struct.device*, %struct.device** %5, align 8
  %38 = call i32 @dev_err(%struct.device* %37, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0))
  %39 = load i32, i32* %11, align 4
  %40 = call %struct.qcom_smem_state* @ERR_PTR(i32 %39)
  store %struct.qcom_smem_state* %40, %struct.qcom_smem_state** %4, align 8
  br label %70

41:                                               ; preds = %28
  %42 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %9, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 1
  br i1 %44, label %45, label %51

45:                                               ; preds = %41
  %46 = load %struct.device*, %struct.device** %5, align 8
  %47 = call i32 @dev_err(%struct.device* %46, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  %50 = call %struct.qcom_smem_state* @ERR_PTR(i32 %49)
  store %struct.qcom_smem_state* %50, %struct.qcom_smem_state** %4, align 8
  br label %70

51:                                               ; preds = %41
  %52 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %9, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = call %struct.qcom_smem_state* @of_node_to_state(i32 %53)
  store %struct.qcom_smem_state* %54, %struct.qcom_smem_state** %8, align 8
  %55 = load %struct.qcom_smem_state*, %struct.qcom_smem_state** %8, align 8
  %56 = call i64 @IS_ERR(%struct.qcom_smem_state* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %51
  br label %65

59:                                               ; preds = %51
  %60 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %9, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32*, i32** %7, align 8
  store i32 %63, i32* %64, align 4
  br label %65

65:                                               ; preds = %59, %58
  %66 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %9, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @of_node_put(i32 %67)
  %69 = load %struct.qcom_smem_state*, %struct.qcom_smem_state** %8, align 8
  store %struct.qcom_smem_state* %69, %struct.qcom_smem_state** %4, align 8
  br label %70

70:                                               ; preds = %65, %45, %36, %22
  %71 = load %struct.qcom_smem_state*, %struct.qcom_smem_state** %4, align 8
  ret %struct.qcom_smem_state* %71
}

declare dso_local i32 @of_property_match_string(i32, i8*, i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local %struct.qcom_smem_state* @ERR_PTR(i32) #1

declare dso_local i32 @of_parse_phandle_with_args(i32, i8*, i8*, i32, %struct.of_phandle_args*) #1

declare dso_local %struct.qcom_smem_state* @of_node_to_state(i32) #1

declare dso_local i64 @IS_ERR(%struct.qcom_smem_state*) #1

declare dso_local i32 @of_node_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
