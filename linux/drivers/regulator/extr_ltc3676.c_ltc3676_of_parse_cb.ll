; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_ltc3676.c_ltc3676_of_parse_cb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_ltc3676.c_ltc3676_of_parse_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }
%struct.regulator_desc = type { i64, i8*, i8*, i8* }
%struct.regulator_config = type { %struct.ltc3676* }
%struct.ltc3676 = type { i32, %struct.regulator_desc* }

@LTC3676_LDO3 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"lltc,fb-voltage-divider\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Failed to parse voltage divider: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device_node*, %struct.regulator_desc*, %struct.regulator_config*)* @ltc3676_of_parse_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ltc3676_of_parse_cb(%struct.device_node* %0, %struct.regulator_desc* %1, %struct.regulator_config* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.regulator_desc*, align 8
  %7 = alloca %struct.regulator_config*, align 8
  %8 = alloca %struct.ltc3676*, align 8
  %9 = alloca %struct.regulator_desc*, align 8
  %10 = alloca [2 x i32], align 4
  %11 = alloca i32, align 4
  store %struct.device_node* %0, %struct.device_node** %5, align 8
  store %struct.regulator_desc* %1, %struct.regulator_desc** %6, align 8
  store %struct.regulator_config* %2, %struct.regulator_config** %7, align 8
  %12 = load %struct.regulator_config*, %struct.regulator_config** %7, align 8
  %13 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %12, i32 0, i32 0
  %14 = load %struct.ltc3676*, %struct.ltc3676** %13, align 8
  store %struct.ltc3676* %14, %struct.ltc3676** %8, align 8
  %15 = load %struct.ltc3676*, %struct.ltc3676** %8, align 8
  %16 = getelementptr inbounds %struct.ltc3676, %struct.ltc3676* %15, i32 0, i32 1
  %17 = load %struct.regulator_desc*, %struct.regulator_desc** %16, align 8
  %18 = load %struct.regulator_desc*, %struct.regulator_desc** %6, align 8
  %19 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %17, i64 %20
  store %struct.regulator_desc* %21, %struct.regulator_desc** %9, align 8
  %22 = load %struct.regulator_desc*, %struct.regulator_desc** %6, align 8
  %23 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @LTC3676_LDO3, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %72

28:                                               ; preds = %3
  %29 = load %struct.device_node*, %struct.device_node** %5, align 8
  %30 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %31 = call i32 @of_property_read_u32_array(%struct.device_node* %29, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32* %30, i32 2)
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %28
  %35 = load %struct.ltc3676*, %struct.ltc3676** %8, align 8
  %36 = getelementptr inbounds %struct.ltc3676, %struct.ltc3676* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %11, align 4
  %39 = call i32 @dev_err(i32 %37, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* %11, align 4
  store i32 %40, i32* %4, align 4
  br label %72

41:                                               ; preds = %28
  %42 = load %struct.regulator_desc*, %struct.regulator_desc** %6, align 8
  %43 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %42, i32 0, i32 3
  %44 = load i8*, i8** %43, align 8
  %45 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  %48 = load i32, i32* %47, align 4
  %49 = call i8* @ltc3676_scale(i8* %44, i32 %46, i32 %48)
  %50 = load %struct.regulator_desc*, %struct.regulator_desc** %9, align 8
  %51 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %50, i32 0, i32 3
  store i8* %49, i8** %51, align 8
  %52 = load %struct.regulator_desc*, %struct.regulator_desc** %6, align 8
  %53 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %52, i32 0, i32 2
  %54 = load i8*, i8** %53, align 8
  %55 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %56 = load i32, i32* %55, align 4
  %57 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  %58 = load i32, i32* %57, align 4
  %59 = call i8* @ltc3676_scale(i8* %54, i32 %56, i32 %58)
  %60 = load %struct.regulator_desc*, %struct.regulator_desc** %9, align 8
  %61 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %60, i32 0, i32 2
  store i8* %59, i8** %61, align 8
  %62 = load %struct.regulator_desc*, %struct.regulator_desc** %6, align 8
  %63 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %62, i32 0, i32 1
  %64 = load i8*, i8** %63, align 8
  %65 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %66 = load i32, i32* %65, align 4
  %67 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  %68 = load i32, i32* %67, align 4
  %69 = call i8* @ltc3676_scale(i8* %64, i32 %66, i32 %68)
  %70 = load %struct.regulator_desc*, %struct.regulator_desc** %9, align 8
  %71 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %70, i32 0, i32 1
  store i8* %69, i8** %71, align 8
  store i32 0, i32* %4, align 4
  br label %72

72:                                               ; preds = %41, %34, %27
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local i32 @of_property_read_u32_array(%struct.device_node*, i8*, i32*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i8* @ltc3676_scale(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
