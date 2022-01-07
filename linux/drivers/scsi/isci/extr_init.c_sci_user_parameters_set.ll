; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/isci/extr_init.c_sci_user_parameters_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/isci/extr_init.c_sci_user_parameters_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isci_host = type { i32 }
%struct.sci_user_parameters = type { i64, i64, i64, i64, i64, %struct.sci_phy_user_params* }
%struct.sci_phy_user_params = type { i64, i32, i64, i64 }

@SCI_MAX_PHYS = common dso_local global i64 0, align 8
@SCIC_SDS_PARM_MAX_SPEED = common dso_local global i64 0, align 8
@SCIC_SDS_PARM_NO_SPEED = common dso_local global i64 0, align 8
@SCI_FAILURE_INVALID_PARAMETER_VALUE = common dso_local global i32 0, align 4
@SCI_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.isci_host*, %struct.sci_user_parameters*)* @sci_user_parameters_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sci_user_parameters_set(%struct.isci_host* %0, %struct.sci_user_parameters* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.isci_host*, align 8
  %5 = alloca %struct.sci_user_parameters*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.sci_phy_user_params*, align 8
  store %struct.isci_host* %0, %struct.isci_host** %4, align 8
  store %struct.sci_user_parameters* %1, %struct.sci_user_parameters** %5, align 8
  store i64 0, i64* %6, align 8
  br label %8

8:                                                ; preds = %49, %2
  %9 = load i64, i64* %6, align 8
  %10 = load i64, i64* @SCI_MAX_PHYS, align 8
  %11 = icmp ult i64 %9, %10
  br i1 %11, label %12, label %52

12:                                               ; preds = %8
  %13 = load %struct.sci_user_parameters*, %struct.sci_user_parameters** %5, align 8
  %14 = getelementptr inbounds %struct.sci_user_parameters, %struct.sci_user_parameters* %13, i32 0, i32 5
  %15 = load %struct.sci_phy_user_params*, %struct.sci_phy_user_params** %14, align 8
  %16 = load i64, i64* %6, align 8
  %17 = getelementptr inbounds %struct.sci_phy_user_params, %struct.sci_phy_user_params* %15, i64 %16
  store %struct.sci_phy_user_params* %17, %struct.sci_phy_user_params** %7, align 8
  %18 = load %struct.sci_phy_user_params*, %struct.sci_phy_user_params** %7, align 8
  %19 = getelementptr inbounds %struct.sci_phy_user_params, %struct.sci_phy_user_params* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @SCIC_SDS_PARM_MAX_SPEED, align 8
  %22 = icmp sle i64 %20, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %12
  %24 = load %struct.sci_phy_user_params*, %struct.sci_phy_user_params** %7, align 8
  %25 = getelementptr inbounds %struct.sci_phy_user_params, %struct.sci_phy_user_params* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @SCIC_SDS_PARM_NO_SPEED, align 8
  %28 = icmp sgt i64 %26, %27
  br i1 %28, label %31, label %29

29:                                               ; preds = %23, %12
  %30 = load i32, i32* @SCI_FAILURE_INVALID_PARAMETER_VALUE, align 4
  store i32 %30, i32* %3, align 4
  br label %85

31:                                               ; preds = %23
  %32 = load %struct.sci_phy_user_params*, %struct.sci_phy_user_params** %7, align 8
  %33 = getelementptr inbounds %struct.sci_phy_user_params, %struct.sci_phy_user_params* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = icmp slt i32 %34, 3
  br i1 %35, label %46, label %36

36:                                               ; preds = %31
  %37 = load %struct.sci_phy_user_params*, %struct.sci_phy_user_params** %7, align 8
  %38 = getelementptr inbounds %struct.sci_phy_user_params, %struct.sci_phy_user_params* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %36
  %42 = load %struct.sci_phy_user_params*, %struct.sci_phy_user_params** %7, align 8
  %43 = getelementptr inbounds %struct.sci_phy_user_params, %struct.sci_phy_user_params* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %41, %36, %31
  %47 = load i32, i32* @SCI_FAILURE_INVALID_PARAMETER_VALUE, align 4
  store i32 %47, i32* %3, align 4
  br label %85

48:                                               ; preds = %41
  br label %49

49:                                               ; preds = %48
  %50 = load i64, i64* %6, align 8
  %51 = add i64 %50, 1
  store i64 %51, i64* %6, align 8
  br label %8

52:                                               ; preds = %8
  %53 = load %struct.sci_user_parameters*, %struct.sci_user_parameters** %5, align 8
  %54 = getelementptr inbounds %struct.sci_user_parameters, %struct.sci_user_parameters* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %77, label %57

57:                                               ; preds = %52
  %58 = load %struct.sci_user_parameters*, %struct.sci_user_parameters** %5, align 8
  %59 = getelementptr inbounds %struct.sci_user_parameters, %struct.sci_user_parameters* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %77, label %62

62:                                               ; preds = %57
  %63 = load %struct.sci_user_parameters*, %struct.sci_user_parameters** %5, align 8
  %64 = getelementptr inbounds %struct.sci_user_parameters, %struct.sci_user_parameters* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %77, label %67

67:                                               ; preds = %62
  %68 = load %struct.sci_user_parameters*, %struct.sci_user_parameters** %5, align 8
  %69 = getelementptr inbounds %struct.sci_user_parameters, %struct.sci_user_parameters* %68, i32 0, i32 3
  %70 = load i64, i64* %69, align 8
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %77, label %72

72:                                               ; preds = %67
  %73 = load %struct.sci_user_parameters*, %struct.sci_user_parameters** %5, align 8
  %74 = getelementptr inbounds %struct.sci_user_parameters, %struct.sci_user_parameters* %73, i32 0, i32 4
  %75 = load i64, i64* %74, align 8
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %72, %67, %62, %57, %52
  %78 = load i32, i32* @SCI_FAILURE_INVALID_PARAMETER_VALUE, align 4
  store i32 %78, i32* %3, align 4
  br label %85

79:                                               ; preds = %72
  %80 = load %struct.isci_host*, %struct.isci_host** %4, align 8
  %81 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %80, i32 0, i32 0
  %82 = load %struct.sci_user_parameters*, %struct.sci_user_parameters** %5, align 8
  %83 = call i32 @memcpy(i32* %81, %struct.sci_user_parameters* %82, i32 48)
  %84 = load i32, i32* @SCI_SUCCESS, align 4
  store i32 %84, i32* %3, align 4
  br label %85

85:                                               ; preds = %79, %77, %46, %29
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local i32 @memcpy(i32*, %struct.sci_user_parameters*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
