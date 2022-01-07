; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/fsl/qe/extr_qe.c_qe_get_firmware_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/fsl/qe/extr_qe.c_qe_get_firmware_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qe_firmware_info = type { i32*, i32, i32 }
%struct.property = type { i32, i32* }
%struct.device_node = type { i32 }

@qe_get_firmware_info.initialized = internal global i32 0, align 4
@qe_firmware_uploaded = common dso_local global i32 0, align 4
@qe_firmware_info = common dso_local global %struct.qe_firmware_info zeroinitializer, align 8
@.str = private unnamed_addr constant [9 x i8] c"firmware\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"extended-modes\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"virtual-traps\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.qe_firmware_info* @qe_get_firmware_info() #0 {
  %1 = alloca %struct.qe_firmware_info*, align 8
  %2 = alloca %struct.property*, align 8
  %3 = alloca %struct.device_node*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store %struct.device_node* null, %struct.device_node** %4, align 8
  %9 = load i32, i32* @qe_firmware_uploaded, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %0
  store %struct.qe_firmware_info* @qe_firmware_info, %struct.qe_firmware_info** %1, align 8
  br label %91

12:                                               ; preds = %0
  %13 = load i32, i32* @qe_get_firmware_info.initialized, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  store %struct.qe_firmware_info* null, %struct.qe_firmware_info** %1, align 8
  br label %91

16:                                               ; preds = %12
  store i32 1, i32* @qe_get_firmware_info.initialized, align 4
  %17 = call %struct.device_node* (...) @qe_get_device_node()
  store %struct.device_node* %17, %struct.device_node** %3, align 8
  %18 = load %struct.device_node*, %struct.device_node** %3, align 8
  %19 = icmp ne %struct.device_node* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  store %struct.qe_firmware_info* null, %struct.qe_firmware_info** %1, align 8
  br label %91

21:                                               ; preds = %16
  %22 = load %struct.device_node*, %struct.device_node** %3, align 8
  %23 = call %struct.device_node* @of_get_child_by_name(%struct.device_node* %22, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store %struct.device_node* %23, %struct.device_node** %4, align 8
  %24 = load %struct.device_node*, %struct.device_node** %3, align 8
  %25 = call i32 @of_node_put(%struct.device_node* %24)
  %26 = load %struct.device_node*, %struct.device_node** %4, align 8
  %27 = icmp ne %struct.device_node* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %21
  store %struct.qe_firmware_info* null, %struct.qe_firmware_info** %1, align 8
  br label %91

29:                                               ; preds = %21
  store i32 1, i32* @qe_firmware_uploaded, align 4
  %30 = load %struct.device_node*, %struct.device_node** %4, align 8
  %31 = call i8* @of_get_property(%struct.device_node* %30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* null)
  store i8* %31, i8** %5, align 8
  %32 = load i8*, i8** %5, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load i32, i32* getelementptr inbounds (%struct.qe_firmware_info, %struct.qe_firmware_info* @qe_firmware_info, i32 0, i32 2), align 4
  %36 = load i8*, i8** %5, align 8
  %37 = call i32 @strlcpy(i32 %35, i8* %36, i32 4)
  br label %38

38:                                               ; preds = %34, %29
  %39 = load %struct.device_node*, %struct.device_node** %4, align 8
  %40 = call %struct.property* @of_find_property(%struct.device_node* %39, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32* null)
  store %struct.property* %40, %struct.property** %2, align 8
  %41 = load %struct.property*, %struct.property** %2, align 8
  %42 = icmp ne %struct.property* %41, null
  br i1 %42, label %43, label %55

43:                                               ; preds = %38
  %44 = load %struct.property*, %struct.property** %2, align 8
  %45 = getelementptr inbounds %struct.property, %struct.property* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = sext i32 %46 to i64
  %48 = icmp eq i64 %47, 4
  br i1 %48, label %49, label %55

49:                                               ; preds = %43
  %50 = load %struct.property*, %struct.property** %2, align 8
  %51 = getelementptr inbounds %struct.property, %struct.property* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  store i32* %52, i32** %7, align 8
  %53 = load i32*, i32** %7, align 8
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* getelementptr inbounds (%struct.qe_firmware_info, %struct.qe_firmware_info* @qe_firmware_info, i32 0, i32 1), align 8
  br label %55

55:                                               ; preds = %49, %43, %38
  %56 = load %struct.device_node*, %struct.device_node** %4, align 8
  %57 = call %struct.property* @of_find_property(%struct.device_node* %56, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32* null)
  store %struct.property* %57, %struct.property** %2, align 8
  %58 = load %struct.property*, %struct.property** %2, align 8
  %59 = icmp ne %struct.property* %58, null
  br i1 %59, label %60, label %88

60:                                               ; preds = %55
  %61 = load %struct.property*, %struct.property** %2, align 8
  %62 = getelementptr inbounds %struct.property, %struct.property* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp eq i32 %63, 32
  br i1 %64, label %65, label %88

65:                                               ; preds = %60
  %66 = load %struct.property*, %struct.property** %2, align 8
  %67 = getelementptr inbounds %struct.property, %struct.property* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  store i32* %68, i32** %8, align 8
  store i32 0, i32* %6, align 4
  br label %69

69:                                               ; preds = %84, %65
  %70 = load i32, i32* %6, align 4
  %71 = load i32*, i32** getelementptr inbounds (%struct.qe_firmware_info, %struct.qe_firmware_info* @qe_firmware_info, i32 0, i32 0), align 8
  %72 = call i32 @ARRAY_SIZE(i32* %71)
  %73 = icmp ult i32 %70, %72
  br i1 %73, label %74, label %87

74:                                               ; preds = %69
  %75 = load i32*, i32** %8, align 8
  %76 = load i32, i32* %6, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = load i32*, i32** getelementptr inbounds (%struct.qe_firmware_info, %struct.qe_firmware_info* @qe_firmware_info, i32 0, i32 0), align 8
  %81 = load i32, i32* %6, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  store i32 %79, i32* %83, align 4
  br label %84

84:                                               ; preds = %74
  %85 = load i32, i32* %6, align 4
  %86 = add i32 %85, 1
  store i32 %86, i32* %6, align 4
  br label %69

87:                                               ; preds = %69
  br label %88

88:                                               ; preds = %87, %60, %55
  %89 = load %struct.device_node*, %struct.device_node** %4, align 8
  %90 = call i32 @of_node_put(%struct.device_node* %89)
  store %struct.qe_firmware_info* @qe_firmware_info, %struct.qe_firmware_info** %1, align 8
  br label %91

91:                                               ; preds = %88, %28, %20, %15, %11
  %92 = load %struct.qe_firmware_info*, %struct.qe_firmware_info** %1, align 8
  ret %struct.qe_firmware_info* %92
}

declare dso_local %struct.device_node* @qe_get_device_node(...) #1

declare dso_local %struct.device_node* @of_get_child_by_name(%struct.device_node*, i8*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i8* @of_get_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local %struct.property* @of_find_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
