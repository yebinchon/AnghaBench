; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_fsl-mph-dr-of.c_usb_get_ver_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_fsl-mph-dr-of.c_usb_get_ver_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }

@FSL_USB_VER_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"fsl-usb2-dr\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"fsl-usb2-dr-v1.6\00", align 1
@FSL_USB_VER_1_6 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"fsl-usb2-dr-v2.2\00", align 1
@FSL_USB_VER_2_2 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"fsl-usb2-dr-v2.4\00", align 1
@FSL_USB_VER_2_4 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"fsl-usb2-dr-v2.5\00", align 1
@FSL_USB_VER_2_5 = common dso_local global i32 0, align 4
@FSL_USB_VER_OLD = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [20 x i8] c"fsl,mpc5121-usb2-dr\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"fsl-usb2-mph\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"fsl-usb2-mph-v1.6\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"fsl-usb2-mph-v2.2\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"fsl-usb2-mph-v2.4\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"fsl-usb2-mph-v2.5\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device_node*)* @usb_get_ver_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb_get_ver_info(%struct.device_node* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device_node*, align 8
  %4 = alloca i32, align 4
  store %struct.device_node* %0, %struct.device_node** %3, align 8
  %5 = load i32, i32* @FSL_USB_VER_NONE, align 4
  store i32 %5, i32* %4, align 4
  %6 = load %struct.device_node*, %struct.device_node** %3, align 8
  %7 = call i64 @of_device_is_compatible(%struct.device_node* %6, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %45

9:                                                ; preds = %1
  %10 = load %struct.device_node*, %struct.device_node** %3, align 8
  %11 = call i64 @of_device_is_compatible(%struct.device_node* %10, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = load i32, i32* @FSL_USB_VER_1_6, align 4
  store i32 %14, i32* %4, align 4
  br label %38

15:                                               ; preds = %9
  %16 = load %struct.device_node*, %struct.device_node** %3, align 8
  %17 = call i64 @of_device_is_compatible(%struct.device_node* %16, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = load i32, i32* @FSL_USB_VER_2_2, align 4
  store i32 %20, i32* %4, align 4
  br label %37

21:                                               ; preds = %15
  %22 = load %struct.device_node*, %struct.device_node** %3, align 8
  %23 = call i64 @of_device_is_compatible(%struct.device_node* %22, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load i32, i32* @FSL_USB_VER_2_4, align 4
  store i32 %26, i32* %4, align 4
  br label %36

27:                                               ; preds = %21
  %28 = load %struct.device_node*, %struct.device_node** %3, align 8
  %29 = call i64 @of_device_is_compatible(%struct.device_node* %28, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load i32, i32* @FSL_USB_VER_2_5, align 4
  store i32 %32, i32* %4, align 4
  br label %35

33:                                               ; preds = %27
  %34 = load i32, i32* @FSL_USB_VER_OLD, align 4
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %33, %31
  br label %36

36:                                               ; preds = %35, %25
  br label %37

37:                                               ; preds = %36, %19
  br label %38

38:                                               ; preds = %37, %13
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @FSL_USB_VER_NONE, align 4
  %41 = icmp ugt i32 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = load i32, i32* %4, align 4
  store i32 %43, i32* %2, align 4
  br label %87

44:                                               ; preds = %38
  br label %45

45:                                               ; preds = %44, %1
  %46 = load %struct.device_node*, %struct.device_node** %3, align 8
  %47 = call i64 @of_device_is_compatible(%struct.device_node* %46, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = load i32, i32* @FSL_USB_VER_OLD, align 4
  store i32 %50, i32* %2, align 4
  br label %87

51:                                               ; preds = %45
  %52 = load %struct.device_node*, %struct.device_node** %3, align 8
  %53 = call i64 @of_device_is_compatible(%struct.device_node* %52, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %85

55:                                               ; preds = %51
  %56 = load %struct.device_node*, %struct.device_node** %3, align 8
  %57 = call i64 @of_device_is_compatible(%struct.device_node* %56, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0))
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %55
  %60 = load i32, i32* @FSL_USB_VER_1_6, align 4
  store i32 %60, i32* %4, align 4
  br label %84

61:                                               ; preds = %55
  %62 = load %struct.device_node*, %struct.device_node** %3, align 8
  %63 = call i64 @of_device_is_compatible(%struct.device_node* %62, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0))
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %61
  %66 = load i32, i32* @FSL_USB_VER_2_2, align 4
  store i32 %66, i32* %4, align 4
  br label %83

67:                                               ; preds = %61
  %68 = load %struct.device_node*, %struct.device_node** %3, align 8
  %69 = call i64 @of_device_is_compatible(%struct.device_node* %68, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0))
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %67
  %72 = load i32, i32* @FSL_USB_VER_2_4, align 4
  store i32 %72, i32* %4, align 4
  br label %82

73:                                               ; preds = %67
  %74 = load %struct.device_node*, %struct.device_node** %3, align 8
  %75 = call i64 @of_device_is_compatible(%struct.device_node* %74, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0))
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %73
  %78 = load i32, i32* @FSL_USB_VER_2_5, align 4
  store i32 %78, i32* %4, align 4
  br label %81

79:                                               ; preds = %73
  %80 = load i32, i32* @FSL_USB_VER_OLD, align 4
  store i32 %80, i32* %4, align 4
  br label %81

81:                                               ; preds = %79, %77
  br label %82

82:                                               ; preds = %81, %71
  br label %83

83:                                               ; preds = %82, %65
  br label %84

84:                                               ; preds = %83, %59
  br label %85

85:                                               ; preds = %84, %51
  %86 = load i32, i32* %4, align 4
  store i32 %86, i32* %2, align 4
  br label %87

87:                                               ; preds = %85, %49, %42
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

declare dso_local i64 @of_device_is_compatible(%struct.device_node*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
