; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_configfs.c_lio_target_np_driver_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_configfs.c_lio_target_np_driver_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_item = type { i32 }
%struct.iscsi_tpg_np = type { %struct.iscsi_portal_group*, %struct.iscsi_np* }
%struct.iscsi_portal_group = type { i32 }
%struct.iscsi_np = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"Illegal value for tpg_enable: %u\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [59 x i8] c"Unable to locate struct iscsi_np from struct iscsi_tpg_np\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Unable to request_module for %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.config_item*, i8*, i64, i32, i8*)* @lio_target_np_driver_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lio_target_np_driver_store(%struct.config_item* %0, i8* %1, i64 %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.config_item*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.iscsi_tpg_np*, align 8
  %13 = alloca %struct.iscsi_np*, align 8
  %14 = alloca %struct.iscsi_portal_group*, align 8
  %15 = alloca %struct.iscsi_tpg_np*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.config_item* %0, %struct.config_item** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %18 = load %struct.config_item*, %struct.config_item** %7, align 8
  %19 = call %struct.iscsi_tpg_np* @to_iscsi_tpg_np(%struct.config_item* %18)
  store %struct.iscsi_tpg_np* %19, %struct.iscsi_tpg_np** %12, align 8
  store %struct.iscsi_tpg_np* null, %struct.iscsi_tpg_np** %15, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = call i32 @kstrtou32(i8* %20, i32 0, i32* %16)
  store i32 %21, i32* %17, align 4
  %22 = load i32, i32* %17, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %5
  %25 = load i32, i32* %17, align 4
  store i32 %25, i32* %6, align 4
  br label %111

26:                                               ; preds = %5
  %27 = load i32, i32* %16, align 4
  %28 = icmp ne i32 %27, 1
  br i1 %28, label %29, label %37

29:                                               ; preds = %26
  %30 = load i32, i32* %16, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %29
  %33 = load i32, i32* %16, align 4
  %34 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %6, align 4
  br label %111

37:                                               ; preds = %29, %26
  %38 = load %struct.iscsi_tpg_np*, %struct.iscsi_tpg_np** %12, align 8
  %39 = getelementptr inbounds %struct.iscsi_tpg_np, %struct.iscsi_tpg_np* %38, i32 0, i32 1
  %40 = load %struct.iscsi_np*, %struct.iscsi_np** %39, align 8
  store %struct.iscsi_np* %40, %struct.iscsi_np** %13, align 8
  %41 = load %struct.iscsi_np*, %struct.iscsi_np** %13, align 8
  %42 = icmp ne %struct.iscsi_np* %41, null
  br i1 %42, label %47, label %43

43:                                               ; preds = %37
  %44 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0))
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %6, align 4
  br label %111

47:                                               ; preds = %37
  %48 = load %struct.iscsi_tpg_np*, %struct.iscsi_tpg_np** %12, align 8
  %49 = getelementptr inbounds %struct.iscsi_tpg_np, %struct.iscsi_tpg_np* %48, i32 0, i32 0
  %50 = load %struct.iscsi_portal_group*, %struct.iscsi_portal_group** %49, align 8
  store %struct.iscsi_portal_group* %50, %struct.iscsi_portal_group** %14, align 8
  %51 = load %struct.iscsi_portal_group*, %struct.iscsi_portal_group** %14, align 8
  %52 = call i64 @iscsit_get_tpg(%struct.iscsi_portal_group* %51)
  %53 = icmp slt i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %47
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %6, align 4
  br label %111

57:                                               ; preds = %47
  %58 = load i32, i32* %16, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %87

60:                                               ; preds = %57
  %61 = load i8*, i8** %11, align 8
  %62 = call i64 @strlen(i8* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %60
  %65 = load i8*, i8** %11, align 8
  %66 = call i32 @request_module(i8* %65)
  store i32 %66, i32* %17, align 4
  %67 = load i32, i32* %17, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %64
  %70 = load i8*, i8** %11, align 8
  %71 = call i32 @pr_warn(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i8* %70)
  store i32 0, i32* %17, align 4
  br label %72

72:                                               ; preds = %69, %64
  br label %73

73:                                               ; preds = %72, %60
  %74 = load %struct.iscsi_portal_group*, %struct.iscsi_portal_group** %14, align 8
  %75 = load %struct.iscsi_np*, %struct.iscsi_np** %13, align 8
  %76 = getelementptr inbounds %struct.iscsi_np, %struct.iscsi_np* %75, i32 0, i32 0
  %77 = load %struct.iscsi_tpg_np*, %struct.iscsi_tpg_np** %12, align 8
  %78 = load i32, i32* %10, align 4
  %79 = call %struct.iscsi_tpg_np* @iscsit_tpg_add_network_portal(%struct.iscsi_portal_group* %74, i32* %76, %struct.iscsi_tpg_np* %77, i32 %78)
  store %struct.iscsi_tpg_np* %79, %struct.iscsi_tpg_np** %15, align 8
  %80 = load %struct.iscsi_tpg_np*, %struct.iscsi_tpg_np** %15, align 8
  %81 = call i64 @IS_ERR(%struct.iscsi_tpg_np* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %73
  %84 = load %struct.iscsi_tpg_np*, %struct.iscsi_tpg_np** %15, align 8
  %85 = call i32 @PTR_ERR(%struct.iscsi_tpg_np* %84)
  store i32 %85, i32* %17, align 4
  br label %107

86:                                               ; preds = %73
  br label %102

87:                                               ; preds = %57
  %88 = load %struct.iscsi_tpg_np*, %struct.iscsi_tpg_np** %12, align 8
  %89 = load i32, i32* %10, align 4
  %90 = call %struct.iscsi_tpg_np* @iscsit_tpg_locate_child_np(%struct.iscsi_tpg_np* %88, i32 %89)
  store %struct.iscsi_tpg_np* %90, %struct.iscsi_tpg_np** %15, align 8
  %91 = load %struct.iscsi_tpg_np*, %struct.iscsi_tpg_np** %15, align 8
  %92 = icmp ne %struct.iscsi_tpg_np* %91, null
  br i1 %92, label %93, label %101

93:                                               ; preds = %87
  %94 = load %struct.iscsi_portal_group*, %struct.iscsi_portal_group** %14, align 8
  %95 = load %struct.iscsi_tpg_np*, %struct.iscsi_tpg_np** %15, align 8
  %96 = call i32 @iscsit_tpg_del_network_portal(%struct.iscsi_portal_group* %94, %struct.iscsi_tpg_np* %95)
  store i32 %96, i32* %17, align 4
  %97 = load i32, i32* %17, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %93
  br label %107

100:                                              ; preds = %93
  br label %101

101:                                              ; preds = %100, %87
  br label %102

102:                                              ; preds = %101, %86
  %103 = load %struct.iscsi_portal_group*, %struct.iscsi_portal_group** %14, align 8
  %104 = call i32 @iscsit_put_tpg(%struct.iscsi_portal_group* %103)
  %105 = load i64, i64* %9, align 8
  %106 = trunc i64 %105 to i32
  store i32 %106, i32* %6, align 4
  br label %111

107:                                              ; preds = %99, %83
  %108 = load %struct.iscsi_portal_group*, %struct.iscsi_portal_group** %14, align 8
  %109 = call i32 @iscsit_put_tpg(%struct.iscsi_portal_group* %108)
  %110 = load i32, i32* %17, align 4
  store i32 %110, i32* %6, align 4
  br label %111

111:                                              ; preds = %107, %102, %54, %43, %32, %24
  %112 = load i32, i32* %6, align 4
  ret i32 %112
}

declare dso_local %struct.iscsi_tpg_np* @to_iscsi_tpg_np(%struct.config_item*) #1

declare dso_local i32 @kstrtou32(i8*, i32, i32*) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i64 @iscsit_get_tpg(%struct.iscsi_portal_group*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @request_module(i8*) #1

declare dso_local i32 @pr_warn(i8*, i8*) #1

declare dso_local %struct.iscsi_tpg_np* @iscsit_tpg_add_network_portal(%struct.iscsi_portal_group*, i32*, %struct.iscsi_tpg_np*, i32) #1

declare dso_local i64 @IS_ERR(%struct.iscsi_tpg_np*) #1

declare dso_local i32 @PTR_ERR(%struct.iscsi_tpg_np*) #1

declare dso_local %struct.iscsi_tpg_np* @iscsit_tpg_locate_child_np(%struct.iscsi_tpg_np*, i32) #1

declare dso_local i32 @iscsit_tpg_del_network_portal(%struct.iscsi_portal_group*, %struct.iscsi_tpg_np*) #1

declare dso_local i32 @iscsit_put_tpg(%struct.iscsi_portal_group*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
