; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_power_supply_sysfs.c_NULL.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_power_supply_sysfs.c_NULL.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_attribute = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.device = type { i32 }
%struct.kobj_uevent_env = type { i32 }
%struct.power_supply = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i64*, i32 }

@.str = private unnamed_addr constant [21 x i8] c"No power supply yet\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"POWER_SUPPLY_NAME=%s\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@power_supply_attrs = common dso_local global %struct.device_attribute* null, align 8
@ENODEV = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"POWER_SUPPLY_%s=%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @power_supply_uevent(%struct.device* %0, %struct.kobj_uevent_env* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.kobj_uevent_env*, align 8
  %6 = alloca %struct.power_supply*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.device_attribute*, align 8
  %12 = alloca i8*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.kobj_uevent_env* %1, %struct.kobj_uevent_env** %5, align 8
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = call %struct.power_supply* @dev_get_drvdata(%struct.device* %13)
  store %struct.power_supply* %14, %struct.power_supply** %6, align 8
  store i32 0, i32* %7, align 4
  %15 = load %struct.power_supply*, %struct.power_supply** %6, align 8
  %16 = icmp ne %struct.power_supply* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %2
  %18 = load %struct.power_supply*, %struct.power_supply** %6, align 8
  %19 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = icmp ne %struct.TYPE_3__* %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %17, %2
  %23 = load %struct.device*, %struct.device** %4, align 8
  %24 = call i32 @dev_dbg(%struct.device* %23, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* %7, align 4
  store i32 %25, i32* %3, align 4
  br label %127

26:                                               ; preds = %17
  %27 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %5, align 8
  %28 = load %struct.power_supply*, %struct.power_supply** %6, align 8
  %29 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %28, i32 0, i32 0
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = sext i32 %32 to i64
  %34 = inttoptr i64 %33 to i8*
  %35 = call i32 (%struct.kobj_uevent_env*, i8*, i8*, ...) @add_uevent_var(%struct.kobj_uevent_env* %27, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %34)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %26
  %39 = load i32, i32* %7, align 4
  store i32 %39, i32* %3, align 4
  br label %127

40:                                               ; preds = %26
  %41 = load i32, i32* @GFP_KERNEL, align 4
  %42 = call i64 @get_zeroed_page(i32 %41)
  %43 = inttoptr i64 %42 to i8*
  store i8* %43, i8** %9, align 8
  %44 = load i8*, i8** %9, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %40
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %127

49:                                               ; preds = %40
  store i32 0, i32* %8, align 4
  br label %50

50:                                               ; preds = %118, %49
  %51 = load i32, i32* %8, align 4
  %52 = load %struct.power_supply*, %struct.power_supply** %6, align 8
  %53 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %52, i32 0, i32 0
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp slt i32 %51, %56
  br i1 %57, label %58, label %121

58:                                               ; preds = %50
  %59 = load %struct.device_attribute*, %struct.device_attribute** @power_supply_attrs, align 8
  %60 = load %struct.power_supply*, %struct.power_supply** %6, align 8
  %61 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %60, i32 0, i32 0
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 1
  %64 = load i64*, i64** %63, align 8
  %65 = load i32, i32* %8, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i64, i64* %64, i64 %66
  %68 = load i64, i64* %67, align 8
  %69 = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %59, i64 %68
  store %struct.device_attribute* %69, %struct.device_attribute** %11, align 8
  %70 = load %struct.device*, %struct.device** %4, align 8
  %71 = load %struct.device_attribute*, %struct.device_attribute** %11, align 8
  %72 = load i8*, i8** %9, align 8
  %73 = call i32 @power_supply_show_property(%struct.device* %70, %struct.device_attribute* %71, i8* %72)
  store i32 %73, i32* %7, align 4
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* @ENODEV, align 4
  %76 = sub nsw i32 0, %75
  %77 = icmp eq i32 %74, %76
  br i1 %77, label %83, label %78

78:                                               ; preds = %58
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* @ENODATA, align 4
  %81 = sub nsw i32 0, %80
  %82 = icmp eq i32 %79, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %78, %58
  store i32 0, i32* %7, align 4
  br label %118

84:                                               ; preds = %78
  %85 = load i32, i32* %7, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %84
  br label %122

88:                                               ; preds = %84
  %89 = load i8*, i8** %9, align 8
  %90 = call i8* @strchr(i8* %89, i8 signext 10)
  store i8* %90, i8** %12, align 8
  %91 = load i8*, i8** %12, align 8
  %92 = icmp ne i8* %91, null
  br i1 %92, label %93, label %95

93:                                               ; preds = %88
  %94 = load i8*, i8** %12, align 8
  store i8 0, i8* %94, align 1
  br label %95

95:                                               ; preds = %93, %88
  %96 = load %struct.device_attribute*, %struct.device_attribute** %11, align 8
  %97 = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @GFP_KERNEL, align 4
  %101 = call i8* @kstruprdup(i32 %99, i32 %100)
  store i8* %101, i8** %10, align 8
  %102 = load i8*, i8** %10, align 8
  %103 = icmp ne i8* %102, null
  br i1 %103, label %107, label %104

104:                                              ; preds = %95
  %105 = load i32, i32* @ENOMEM, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %7, align 4
  br label %122

107:                                              ; preds = %95
  %108 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %5, align 8
  %109 = load i8*, i8** %10, align 8
  %110 = load i8*, i8** %9, align 8
  %111 = call i32 (%struct.kobj_uevent_env*, i8*, i8*, ...) @add_uevent_var(%struct.kobj_uevent_env* %108, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8* %109, i8* %110)
  store i32 %111, i32* %7, align 4
  %112 = load i8*, i8** %10, align 8
  %113 = call i32 @kfree(i8* %112)
  %114 = load i32, i32* %7, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %107
  br label %122

117:                                              ; preds = %107
  br label %118

118:                                              ; preds = %117, %83
  %119 = load i32, i32* %8, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %8, align 4
  br label %50

121:                                              ; preds = %50
  br label %122

122:                                              ; preds = %121, %116, %104, %87
  %123 = load i8*, i8** %9, align 8
  %124 = ptrtoint i8* %123 to i64
  %125 = call i32 @free_page(i64 %124)
  %126 = load i32, i32* %7, align 4
  store i32 %126, i32* %3, align 4
  br label %127

127:                                              ; preds = %122, %46, %38, %22
  %128 = load i32, i32* %3, align 4
  ret i32 %128
}

declare dso_local %struct.power_supply* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

declare dso_local i32 @add_uevent_var(%struct.kobj_uevent_env*, i8*, i8*, ...) #1

declare dso_local i64 @get_zeroed_page(i32) #1

declare dso_local i32 @power_supply_show_property(%struct.device*, %struct.device_attribute*, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i8* @kstruprdup(i32, i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @free_page(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
