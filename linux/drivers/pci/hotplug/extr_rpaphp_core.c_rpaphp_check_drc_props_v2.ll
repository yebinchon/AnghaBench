; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_rpaphp_core.c_rpaphp_check_drc_props_v2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_rpaphp_core.c_rpaphp_check_drc_props_v2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }
%struct.property = type { i32 }
%struct.of_drc_info = type { i32, i8*, i8* }

@MAX_DRC_NAME_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"ibm,drc-info\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"%s%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device_node*, i8*, i8*, i32)* @rpaphp_check_drc_props_v2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpaphp_check_drc_props_v2(%struct.device_node* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.property*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.of_drc_info, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.device_node* %0, %struct.device_node** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %18 = load i32, i32* @MAX_DRC_NAME_LEN, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %14, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %15, align 8
  %22 = load %struct.device_node*, %struct.device_node** %6, align 8
  %23 = getelementptr inbounds %struct.device_node, %struct.device_node* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.property* @of_find_property(i32 %24, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32* null)
  store %struct.property* %25, %struct.property** %10, align 8
  %26 = load %struct.property*, %struct.property** %10, align 8
  %27 = icmp eq %struct.property* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %4
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %85

31:                                               ; preds = %4
  %32 = load %struct.property*, %struct.property** %10, align 8
  %33 = call i32* @of_prop_next_u32(%struct.property* %32, i32* null, i32* %11)
  store i32* %33, i32** %13, align 8
  %34 = load i32*, i32** %13, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %31
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %85

39:                                               ; preds = %31
  store i32 0, i32* %16, align 4
  br label %40

40:                                               ; preds = %56, %39
  %41 = load i32, i32* %16, align 4
  %42 = load i32, i32* %11, align 4
  %43 = icmp ult i32 %41, %42
  br i1 %43, label %44, label %59

44:                                               ; preds = %40
  %45 = call i32 @of_read_drc_info_cell(%struct.property** %10, i32** %13, %struct.of_drc_info* %12)
  %46 = load i32, i32* %9, align 4
  %47 = getelementptr inbounds %struct.of_drc_info, %struct.of_drc_info* %12, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp ule i32 %46, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %44
  %51 = getelementptr inbounds %struct.of_drc_info, %struct.of_drc_info* %12, i32 0, i32 1
  %52 = load i8*, i8** %51, align 8
  %53 = load i32, i32* %9, align 4
  %54 = call i32 @sprintf(i8* %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %52, i32 %53)
  br label %59

55:                                               ; preds = %44
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %16, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %16, align 4
  br label %40

59:                                               ; preds = %50, %40
  %60 = load i8*, i8** %7, align 8
  %61 = icmp eq i8* %60, null
  br i1 %61, label %69, label %62

62:                                               ; preds = %59
  %63 = load i8*, i8** %7, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %65, label %82

65:                                               ; preds = %62
  %66 = load i8*, i8** %7, align 8
  %67 = call i32 @strcmp(i8* %66, i8* %21)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %82, label %69

69:                                               ; preds = %65, %59
  %70 = load i8*, i8** %8, align 8
  %71 = icmp eq i8* %70, null
  br i1 %71, label %81, label %72

72:                                               ; preds = %69
  %73 = load i8*, i8** %8, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %75, label %82

75:                                               ; preds = %72
  %76 = load i8*, i8** %8, align 8
  %77 = getelementptr inbounds %struct.of_drc_info, %struct.of_drc_info* %12, i32 0, i32 2
  %78 = load i8*, i8** %77, align 8
  %79 = call i32 @strcmp(i8* %76, i8* %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %75, %69
  store i32 0, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %85

82:                                               ; preds = %75, %72, %65, %62
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %85

85:                                               ; preds = %82, %81, %36, %28
  %86 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %86)
  %87 = load i32, i32* %5, align 4
  ret i32 %87
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.property* @of_find_property(i32, i8*, i32*) #2

declare dso_local i32* @of_prop_next_u32(%struct.property*, i32*, i32*) #2

declare dso_local i32 @of_read_drc_info_cell(%struct.property**, i32**, %struct.of_drc_info*) #2

declare dso_local i32 @sprintf(i8*, i8*, i8*, i32) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
