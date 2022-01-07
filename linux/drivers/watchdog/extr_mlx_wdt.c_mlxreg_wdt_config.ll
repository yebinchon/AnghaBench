; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_mlx_wdt.c_mlxreg_wdt_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_mlx_wdt.c_mlxreg_wdt_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8* }
%struct.mlxreg_wdt = type { i32, i32, i32, i32, i32, i64, %struct.TYPE_4__, %struct.mlxreg_core_platform_data* }
%struct.TYPE_4__ = type { i32, i32, i32*, %struct.TYPE_5__* }
%struct.mlxreg_core_platform_data = type { i32, i64, i32, %struct.mlxreg_core_data* }
%struct.mlxreg_core_data = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"action\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"timeout\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"timeleft\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"ping\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@mlxreg_wdt_main_info = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@mlxreg_wdt_aux_info = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@MLX_WDT_TYPE2 = common dso_local global i64 0, align 8
@mlxreg_wdt_ops_type2 = common dso_local global i32 0, align 4
@MLXREG_WDT_MAX_TIMEOUT_TYPE2 = common dso_local global i32 0, align 4
@mlxreg_wdt_ops_type1 = common dso_local global i32 0, align 4
@MLXREG_WDT_MAX_TIMEOUT_TYPE1 = common dso_local global i32 0, align 4
@MLXREG_WDT_MIN_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlxreg_wdt*, %struct.mlxreg_core_platform_data*)* @mlxreg_wdt_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxreg_wdt_config(%struct.mlxreg_wdt* %0, %struct.mlxreg_core_platform_data* %1) #0 {
  %3 = alloca %struct.mlxreg_wdt*, align 8
  %4 = alloca %struct.mlxreg_core_platform_data*, align 8
  %5 = alloca %struct.mlxreg_core_data*, align 8
  %6 = alloca i32, align 4
  store %struct.mlxreg_wdt* %0, %struct.mlxreg_wdt** %3, align 8
  store %struct.mlxreg_core_platform_data* %1, %struct.mlxreg_core_platform_data** %4, align 8
  %7 = load %struct.mlxreg_core_platform_data*, %struct.mlxreg_core_platform_data** %4, align 8
  %8 = getelementptr inbounds %struct.mlxreg_core_platform_data, %struct.mlxreg_core_platform_data* %7, i32 0, i32 3
  %9 = load %struct.mlxreg_core_data*, %struct.mlxreg_core_data** %8, align 8
  store %struct.mlxreg_core_data* %9, %struct.mlxreg_core_data** %5, align 8
  %10 = load i32, i32* @EINVAL, align 4
  %11 = sub nsw i32 0, %10
  %12 = load %struct.mlxreg_wdt*, %struct.mlxreg_wdt** %3, align 8
  %13 = getelementptr inbounds %struct.mlxreg_wdt, %struct.mlxreg_wdt* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 8
  store i32 0, i32* %6, align 4
  br label %14

14:                                               ; preds = %75, %2
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.mlxreg_core_platform_data*, %struct.mlxreg_core_platform_data** %4, align 8
  %17 = getelementptr inbounds %struct.mlxreg_core_platform_data, %struct.mlxreg_core_platform_data* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %80

20:                                               ; preds = %14
  %21 = load %struct.mlxreg_core_data*, %struct.mlxreg_core_data** %5, align 8
  %22 = getelementptr inbounds %struct.mlxreg_core_data, %struct.mlxreg_core_data* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @strnstr(i32 %23, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 4)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %20
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.mlxreg_wdt*, %struct.mlxreg_wdt** %3, align 8
  %29 = getelementptr inbounds %struct.mlxreg_wdt, %struct.mlxreg_wdt* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  br label %74

30:                                               ; preds = %20
  %31 = load %struct.mlxreg_core_data*, %struct.mlxreg_core_data** %5, align 8
  %32 = getelementptr inbounds %struct.mlxreg_core_data, %struct.mlxreg_core_data* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @strnstr(i32 %33, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %30
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.mlxreg_wdt*, %struct.mlxreg_wdt** %3, align 8
  %39 = getelementptr inbounds %struct.mlxreg_wdt, %struct.mlxreg_wdt* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 8
  br label %73

40:                                               ; preds = %30
  %41 = load %struct.mlxreg_core_data*, %struct.mlxreg_core_data** %5, align 8
  %42 = getelementptr inbounds %struct.mlxreg_core_data, %struct.mlxreg_core_data* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @strnstr(i32 %43, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 4)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %40
  %47 = load i32, i32* %6, align 4
  %48 = load %struct.mlxreg_wdt*, %struct.mlxreg_wdt** %3, align 8
  %49 = getelementptr inbounds %struct.mlxreg_wdt, %struct.mlxreg_wdt* %48, i32 0, i32 3
  store i32 %47, i32* %49, align 4
  br label %72

50:                                               ; preds = %40
  %51 = load %struct.mlxreg_core_data*, %struct.mlxreg_core_data** %5, align 8
  %52 = getelementptr inbounds %struct.mlxreg_core_data, %struct.mlxreg_core_data* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @strnstr(i32 %53, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 4)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %50
  %57 = load i32, i32* %6, align 4
  %58 = load %struct.mlxreg_wdt*, %struct.mlxreg_wdt** %3, align 8
  %59 = getelementptr inbounds %struct.mlxreg_wdt, %struct.mlxreg_wdt* %58, i32 0, i32 4
  store i32 %57, i32* %59, align 8
  br label %71

60:                                               ; preds = %50
  %61 = load %struct.mlxreg_core_data*, %struct.mlxreg_core_data** %5, align 8
  %62 = getelementptr inbounds %struct.mlxreg_core_data, %struct.mlxreg_core_data* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @strnstr(i32 %63, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 4)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %60
  %67 = load i32, i32* %6, align 4
  %68 = load %struct.mlxreg_wdt*, %struct.mlxreg_wdt** %3, align 8
  %69 = getelementptr inbounds %struct.mlxreg_wdt, %struct.mlxreg_wdt* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  br label %70

70:                                               ; preds = %66, %60
  br label %71

71:                                               ; preds = %70, %56
  br label %72

72:                                               ; preds = %71, %46
  br label %73

73:                                               ; preds = %72, %36
  br label %74

74:                                               ; preds = %73, %26
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %6, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %6, align 4
  %78 = load %struct.mlxreg_core_data*, %struct.mlxreg_core_data** %5, align 8
  %79 = getelementptr inbounds %struct.mlxreg_core_data, %struct.mlxreg_core_data* %78, i32 1
  store %struct.mlxreg_core_data* %79, %struct.mlxreg_core_data** %5, align 8
  br label %14

80:                                               ; preds = %14
  %81 = load %struct.mlxreg_core_platform_data*, %struct.mlxreg_core_platform_data** %4, align 8
  %82 = load %struct.mlxreg_wdt*, %struct.mlxreg_wdt** %3, align 8
  %83 = getelementptr inbounds %struct.mlxreg_wdt, %struct.mlxreg_wdt* %82, i32 0, i32 7
  store %struct.mlxreg_core_platform_data* %81, %struct.mlxreg_core_platform_data** %83, align 8
  %84 = load %struct.mlxreg_core_platform_data*, %struct.mlxreg_core_platform_data** %4, align 8
  %85 = getelementptr inbounds %struct.mlxreg_core_platform_data, %struct.mlxreg_core_platform_data* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = load i8*, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @mlxreg_wdt_main_info, i32 0, i32 0), align 8
  %88 = call i64 @strnstr(i32 %86, i8* %87, i32 8)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %80
  %91 = load %struct.mlxreg_wdt*, %struct.mlxreg_wdt** %3, align 8
  %92 = getelementptr inbounds %struct.mlxreg_wdt, %struct.mlxreg_wdt* %91, i32 0, i32 6
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 3
  store %struct.TYPE_5__* @mlxreg_wdt_main_info, %struct.TYPE_5__** %93, align 8
  br label %98

94:                                               ; preds = %80
  %95 = load %struct.mlxreg_wdt*, %struct.mlxreg_wdt** %3, align 8
  %96 = getelementptr inbounds %struct.mlxreg_wdt, %struct.mlxreg_wdt* %95, i32 0, i32 6
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 3
  store %struct.TYPE_5__* @mlxreg_wdt_aux_info, %struct.TYPE_5__** %97, align 8
  br label %98

98:                                               ; preds = %94, %90
  %99 = load %struct.mlxreg_core_platform_data*, %struct.mlxreg_core_platform_data** %4, align 8
  %100 = getelementptr inbounds %struct.mlxreg_core_platform_data, %struct.mlxreg_core_platform_data* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.mlxreg_wdt*, %struct.mlxreg_wdt** %3, align 8
  %103 = getelementptr inbounds %struct.mlxreg_wdt, %struct.mlxreg_wdt* %102, i32 0, i32 5
  store i64 %101, i64* %103, align 8
  %104 = load %struct.mlxreg_wdt*, %struct.mlxreg_wdt** %3, align 8
  %105 = getelementptr inbounds %struct.mlxreg_wdt, %struct.mlxreg_wdt* %104, i32 0, i32 5
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @MLX_WDT_TYPE2, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %117

109:                                              ; preds = %98
  %110 = load %struct.mlxreg_wdt*, %struct.mlxreg_wdt** %3, align 8
  %111 = getelementptr inbounds %struct.mlxreg_wdt, %struct.mlxreg_wdt* %110, i32 0, i32 6
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 2
  store i32* @mlxreg_wdt_ops_type2, i32** %112, align 8
  %113 = load i32, i32* @MLXREG_WDT_MAX_TIMEOUT_TYPE2, align 4
  %114 = load %struct.mlxreg_wdt*, %struct.mlxreg_wdt** %3, align 8
  %115 = getelementptr inbounds %struct.mlxreg_wdt, %struct.mlxreg_wdt* %114, i32 0, i32 6
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 1
  store i32 %113, i32* %116, align 4
  br label %125

117:                                              ; preds = %98
  %118 = load %struct.mlxreg_wdt*, %struct.mlxreg_wdt** %3, align 8
  %119 = getelementptr inbounds %struct.mlxreg_wdt, %struct.mlxreg_wdt* %118, i32 0, i32 6
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 2
  store i32* @mlxreg_wdt_ops_type1, i32** %120, align 8
  %121 = load i32, i32* @MLXREG_WDT_MAX_TIMEOUT_TYPE1, align 4
  %122 = load %struct.mlxreg_wdt*, %struct.mlxreg_wdt** %3, align 8
  %123 = getelementptr inbounds %struct.mlxreg_wdt, %struct.mlxreg_wdt* %122, i32 0, i32 6
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 1
  store i32 %121, i32* %124, align 4
  br label %125

125:                                              ; preds = %117, %109
  %126 = load i32, i32* @MLXREG_WDT_MIN_TIMEOUT, align 4
  %127 = load %struct.mlxreg_wdt*, %struct.mlxreg_wdt** %3, align 8
  %128 = getelementptr inbounds %struct.mlxreg_wdt, %struct.mlxreg_wdt* %127, i32 0, i32 6
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 0
  store i32 %126, i32* %129, align 8
  ret void
}

declare dso_local i64 @strnstr(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
