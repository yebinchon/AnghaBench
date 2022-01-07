; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/sunxi/extr_sunxi_sram.c_sunxi_sram_of_parse.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/sunxi/extr_sunxi_sram.c_sunxi_sram_of_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sunxi_sram_data = type { %struct.sunxi_sram_func* }
%struct.sunxi_sram_func = type { i64, i32, i64 }
%struct.device_node = type { i32 }
%struct.of_device_id = type { %struct.sunxi_sram_data* }
%struct.of_phandle_args = type { i64*, i32 }

@.str = private unnamed_addr constant [15 x i8] c"allwinner,sram\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@sunxi_sram_dt_ids = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sunxi_sram_data* (%struct.device_node*, i32*)* @sunxi_sram_of_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sunxi_sram_data* @sunxi_sram_of_parse(%struct.device_node* %0, i32* %1) #0 {
  %3 = alloca %struct.sunxi_sram_data*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.of_device_id*, align 8
  %7 = alloca %struct.sunxi_sram_data*, align 8
  %8 = alloca %struct.sunxi_sram_func*, align 8
  %9 = alloca %struct.of_phandle_args, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.device_node* %0, %struct.device_node** %4, align 8
  store i32* %1, i32** %5, align 8
  %12 = load %struct.device_node*, %struct.device_node** %4, align 8
  %13 = call i32 @of_parse_phandle_with_fixed_args(%struct.device_node* %12, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 1, i32 0, %struct.of_phandle_args* %9)
  store i32 %13, i32* %11, align 4
  %14 = load i32, i32* %11, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* %11, align 4
  %18 = call %struct.sunxi_sram_data* @ERR_PTR(i32 %17)
  store %struct.sunxi_sram_data* %18, %struct.sunxi_sram_data** %3, align 8
  br label %99

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %9, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @of_device_is_available(i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  %25 = load i32, i32* @EBUSY, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %11, align 4
  br label %93

27:                                               ; preds = %19
  %28 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %9, i32 0, i32 0
  %29 = load i64*, i64** %28, align 8
  %30 = getelementptr inbounds i64, i64* %29, i64 0
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %10, align 8
  %32 = load i32, i32* @sunxi_sram_dt_ids, align 4
  %33 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %9, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call %struct.of_device_id* @of_match_node(i32 %32, i32 %34)
  store %struct.of_device_id* %35, %struct.of_device_id** %6, align 8
  %36 = load %struct.of_device_id*, %struct.of_device_id** %6, align 8
  %37 = icmp ne %struct.of_device_id* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %27
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %11, align 4
  br label %93

41:                                               ; preds = %27
  %42 = load %struct.of_device_id*, %struct.of_device_id** %6, align 8
  %43 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %42, i32 0, i32 0
  %44 = load %struct.sunxi_sram_data*, %struct.sunxi_sram_data** %43, align 8
  store %struct.sunxi_sram_data* %44, %struct.sunxi_sram_data** %7, align 8
  %45 = load %struct.sunxi_sram_data*, %struct.sunxi_sram_data** %7, align 8
  %46 = icmp ne %struct.sunxi_sram_data* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %41
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %11, align 4
  br label %93

50:                                               ; preds = %41
  %51 = load %struct.sunxi_sram_data*, %struct.sunxi_sram_data** %7, align 8
  %52 = getelementptr inbounds %struct.sunxi_sram_data, %struct.sunxi_sram_data* %51, i32 0, i32 0
  %53 = load %struct.sunxi_sram_func*, %struct.sunxi_sram_func** %52, align 8
  store %struct.sunxi_sram_func* %53, %struct.sunxi_sram_func** %8, align 8
  br label %54

54:                                               ; preds = %75, %50
  %55 = load %struct.sunxi_sram_func*, %struct.sunxi_sram_func** %8, align 8
  %56 = getelementptr inbounds %struct.sunxi_sram_func, %struct.sunxi_sram_func* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %78

59:                                               ; preds = %54
  %60 = load i64, i64* %10, align 8
  %61 = load %struct.sunxi_sram_func*, %struct.sunxi_sram_func** %8, align 8
  %62 = getelementptr inbounds %struct.sunxi_sram_func, %struct.sunxi_sram_func* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp eq i64 %60, %63
  br i1 %64, label %65, label %74

65:                                               ; preds = %59
  %66 = load i32*, i32** %5, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %68, label %73

68:                                               ; preds = %65
  %69 = load %struct.sunxi_sram_func*, %struct.sunxi_sram_func** %8, align 8
  %70 = getelementptr inbounds %struct.sunxi_sram_func, %struct.sunxi_sram_func* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = load i32*, i32** %5, align 8
  store i32 %71, i32* %72, align 4
  br label %73

73:                                               ; preds = %68, %65
  br label %78

74:                                               ; preds = %59
  br label %75

75:                                               ; preds = %74
  %76 = load %struct.sunxi_sram_func*, %struct.sunxi_sram_func** %8, align 8
  %77 = getelementptr inbounds %struct.sunxi_sram_func, %struct.sunxi_sram_func* %76, i32 1
  store %struct.sunxi_sram_func* %77, %struct.sunxi_sram_func** %8, align 8
  br label %54

78:                                               ; preds = %73, %54
  %79 = load %struct.sunxi_sram_func*, %struct.sunxi_sram_func** %8, align 8
  %80 = getelementptr inbounds %struct.sunxi_sram_func, %struct.sunxi_sram_func* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %86, label %83

83:                                               ; preds = %78
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %11, align 4
  br label %93

86:                                               ; preds = %78
  %87 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %9, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @of_node_put(i32 %88)
  %90 = load %struct.of_device_id*, %struct.of_device_id** %6, align 8
  %91 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %90, i32 0, i32 0
  %92 = load %struct.sunxi_sram_data*, %struct.sunxi_sram_data** %91, align 8
  store %struct.sunxi_sram_data* %92, %struct.sunxi_sram_data** %3, align 8
  br label %99

93:                                               ; preds = %83, %47, %38, %24
  %94 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %9, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @of_node_put(i32 %95)
  %97 = load i32, i32* %11, align 4
  %98 = call %struct.sunxi_sram_data* @ERR_PTR(i32 %97)
  store %struct.sunxi_sram_data* %98, %struct.sunxi_sram_data** %3, align 8
  br label %99

99:                                               ; preds = %93, %86, %16
  %100 = load %struct.sunxi_sram_data*, %struct.sunxi_sram_data** %3, align 8
  ret %struct.sunxi_sram_data* %100
}

declare dso_local i32 @of_parse_phandle_with_fixed_args(%struct.device_node*, i8*, i32, i32, %struct.of_phandle_args*) #1

declare dso_local %struct.sunxi_sram_data* @ERR_PTR(i32) #1

declare dso_local i32 @of_device_is_available(i32) #1

declare dso_local %struct.of_device_id* @of_match_node(i32, i32) #1

declare dso_local i32 @of_node_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
