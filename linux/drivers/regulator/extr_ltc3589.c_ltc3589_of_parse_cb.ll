; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_ltc3589.c_ltc3589_of_parse_cb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_ltc3589.c_ltc3589_of_parse_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }
%struct.regulator_desc = type { i64, i8*, i8*, i8* }
%struct.regulator_config = type { %struct.ltc3589* }
%struct.ltc3589 = type { i32, %struct.regulator_desc* }

@LTC3589_LDO3 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"lltc,fb-voltage-divider\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Failed to parse voltage divider: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device_node*, %struct.regulator_desc*, %struct.regulator_config*)* @ltc3589_of_parse_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ltc3589_of_parse_cb(%struct.device_node* %0, %struct.regulator_desc* %1, %struct.regulator_config* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.regulator_desc*, align 8
  %7 = alloca %struct.regulator_config*, align 8
  %8 = alloca %struct.ltc3589*, align 8
  %9 = alloca %struct.regulator_desc*, align 8
  %10 = alloca [2 x i32], align 4
  %11 = alloca i32, align 4
  store %struct.device_node* %0, %struct.device_node** %5, align 8
  store %struct.regulator_desc* %1, %struct.regulator_desc** %6, align 8
  store %struct.regulator_config* %2, %struct.regulator_config** %7, align 8
  %12 = load %struct.regulator_config*, %struct.regulator_config** %7, align 8
  %13 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %12, i32 0, i32 0
  %14 = load %struct.ltc3589*, %struct.ltc3589** %13, align 8
  store %struct.ltc3589* %14, %struct.ltc3589** %8, align 8
  %15 = load %struct.ltc3589*, %struct.ltc3589** %8, align 8
  %16 = getelementptr inbounds %struct.ltc3589, %struct.ltc3589* %15, i32 0, i32 1
  %17 = load %struct.regulator_desc*, %struct.regulator_desc** %16, align 8
  %18 = load %struct.regulator_desc*, %struct.regulator_desc** %6, align 8
  %19 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %17, i64 %20
  store %struct.regulator_desc* %21, %struct.regulator_desc** %9, align 8
  %22 = load %struct.regulator_desc*, %struct.regulator_desc** %6, align 8
  %23 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @LTC3589_LDO3, align 8
  %26 = icmp uge i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %81

28:                                               ; preds = %3
  %29 = load %struct.device_node*, %struct.device_node** %5, align 8
  %30 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %31 = call i32 @of_property_read_u32_array(%struct.device_node* %29, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32* %30, i32 2)
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %28
  %35 = load %struct.ltc3589*, %struct.ltc3589** %8, align 8
  %36 = getelementptr inbounds %struct.ltc3589, %struct.ltc3589* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %11, align 4
  %39 = call i32 @dev_err(i32 %37, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* %11, align 4
  store i32 %40, i32* %4, align 4
  br label %81

41:                                               ; preds = %28
  %42 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %45, %41
  store i32 0, i32* %4, align 4
  br label %81

50:                                               ; preds = %45
  %51 = load %struct.regulator_desc*, %struct.regulator_desc** %6, align 8
  %52 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %51, i32 0, i32 3
  %53 = load i8*, i8** %52, align 8
  %54 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %55 = load i32, i32* %54, align 4
  %56 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  %57 = load i32, i32* %56, align 4
  %58 = call i8* @ltc3589_scale(i8* %53, i32 %55, i32 %57)
  %59 = load %struct.regulator_desc*, %struct.regulator_desc** %9, align 8
  %60 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %59, i32 0, i32 3
  store i8* %58, i8** %60, align 8
  %61 = load %struct.regulator_desc*, %struct.regulator_desc** %6, align 8
  %62 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %61, i32 0, i32 2
  %63 = load i8*, i8** %62, align 8
  %64 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %65 = load i32, i32* %64, align 4
  %66 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  %67 = load i32, i32* %66, align 4
  %68 = call i8* @ltc3589_scale(i8* %63, i32 %65, i32 %67)
  %69 = load %struct.regulator_desc*, %struct.regulator_desc** %9, align 8
  %70 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %69, i32 0, i32 2
  store i8* %68, i8** %70, align 8
  %71 = load %struct.regulator_desc*, %struct.regulator_desc** %6, align 8
  %72 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %71, i32 0, i32 1
  %73 = load i8*, i8** %72, align 8
  %74 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %75 = load i32, i32* %74, align 4
  %76 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  %77 = load i32, i32* %76, align 4
  %78 = call i8* @ltc3589_scale(i8* %73, i32 %75, i32 %77)
  %79 = load %struct.regulator_desc*, %struct.regulator_desc** %9, align 8
  %80 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %79, i32 0, i32 1
  store i8* %78, i8** %80, align 8
  store i32 0, i32* %4, align 4
  br label %81

81:                                               ; preds = %50, %49, %34, %27
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local i32 @of_property_read_u32_array(%struct.device_node*, i8*, i32*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i8* @ltc3589_scale(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
