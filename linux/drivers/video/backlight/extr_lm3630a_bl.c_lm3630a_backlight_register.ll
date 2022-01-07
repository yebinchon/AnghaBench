; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_lm3630a_bl.c_lm3630a_backlight_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_lm3630a_bl.c_lm3630a_backlight_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lm3630a_chip = type { i8*, i32, i8*, %struct.lm3630a_platform_data* }
%struct.lm3630a_platform_data = type { i64, i8*, i64, i8*, i32, i32, i32, i32 }
%struct.backlight_properties = type { i32, i32, i32 }

@BACKLIGHT_RAW = common dso_local global i32 0, align 4
@LM3630A_LEDA_DISABLE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"lm3630a_leda\00", align 1
@lm3630a_bank_a_ops = common dso_local global i32 0, align 4
@LM3630A_LEDB_DISABLE = common dso_local global i64 0, align 8
@LM3630A_LEDB_ON_A = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"lm3630a_ledb\00", align 1
@lm3630a_bank_b_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lm3630a_chip*)* @lm3630a_backlight_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lm3630a_backlight_register(%struct.lm3630a_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lm3630a_chip*, align 8
  %4 = alloca %struct.lm3630a_platform_data*, align 8
  %5 = alloca %struct.backlight_properties, align 4
  %6 = alloca i8*, align 8
  store %struct.lm3630a_chip* %0, %struct.lm3630a_chip** %3, align 8
  %7 = load %struct.lm3630a_chip*, %struct.lm3630a_chip** %3, align 8
  %8 = getelementptr inbounds %struct.lm3630a_chip, %struct.lm3630a_chip* %7, i32 0, i32 3
  %9 = load %struct.lm3630a_platform_data*, %struct.lm3630a_platform_data** %8, align 8
  store %struct.lm3630a_platform_data* %9, %struct.lm3630a_platform_data** %4, align 8
  %10 = load i32, i32* @BACKLIGHT_RAW, align 4
  %11 = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %5, i32 0, i32 2
  store i32 %10, i32* %11, align 4
  %12 = load %struct.lm3630a_platform_data*, %struct.lm3630a_platform_data** %4, align 8
  %13 = getelementptr inbounds %struct.lm3630a_platform_data, %struct.lm3630a_platform_data* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @LM3630A_LEDA_DISABLE, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %59

17:                                               ; preds = %1
  %18 = load %struct.lm3630a_platform_data*, %struct.lm3630a_platform_data** %4, align 8
  %19 = getelementptr inbounds %struct.lm3630a_platform_data, %struct.lm3630a_platform_data* %18, i32 0, i32 7
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %5, i32 0, i32 1
  store i32 %20, i32* %21, align 4
  %22 = load %struct.lm3630a_platform_data*, %struct.lm3630a_platform_data** %4, align 8
  %23 = getelementptr inbounds %struct.lm3630a_platform_data, %struct.lm3630a_platform_data* %22, i32 0, i32 6
  %24 = load i32, i32* %23, align 8
  %25 = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %5, i32 0, i32 0
  store i32 %24, i32* %25, align 4
  %26 = load %struct.lm3630a_platform_data*, %struct.lm3630a_platform_data** %4, align 8
  %27 = getelementptr inbounds %struct.lm3630a_platform_data, %struct.lm3630a_platform_data* %26, i32 0, i32 1
  %28 = load i8*, i8** %27, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %17
  %31 = load %struct.lm3630a_platform_data*, %struct.lm3630a_platform_data** %4, align 8
  %32 = getelementptr inbounds %struct.lm3630a_platform_data, %struct.lm3630a_platform_data* %31, i32 0, i32 1
  %33 = load i8*, i8** %32, align 8
  br label %35

34:                                               ; preds = %17
  br label %35

35:                                               ; preds = %34, %30
  %36 = phi i8* [ %33, %30 ], [ getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), %34 ]
  store i8* %36, i8** %6, align 8
  %37 = load %struct.lm3630a_chip*, %struct.lm3630a_chip** %3, align 8
  %38 = getelementptr inbounds %struct.lm3630a_chip, %struct.lm3630a_chip* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load i8*, i8** %6, align 8
  %41 = load %struct.lm3630a_chip*, %struct.lm3630a_chip** %3, align 8
  %42 = getelementptr inbounds %struct.lm3630a_chip, %struct.lm3630a_chip* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.lm3630a_chip*, %struct.lm3630a_chip** %3, align 8
  %45 = call i8* @devm_backlight_device_register(i32 %39, i8* %40, i32 %43, %struct.lm3630a_chip* %44, i32* @lm3630a_bank_a_ops, %struct.backlight_properties* %5)
  %46 = load %struct.lm3630a_chip*, %struct.lm3630a_chip** %3, align 8
  %47 = getelementptr inbounds %struct.lm3630a_chip, %struct.lm3630a_chip* %46, i32 0, i32 2
  store i8* %45, i8** %47, align 8
  %48 = load %struct.lm3630a_chip*, %struct.lm3630a_chip** %3, align 8
  %49 = getelementptr inbounds %struct.lm3630a_chip, %struct.lm3630a_chip* %48, i32 0, i32 2
  %50 = load i8*, i8** %49, align 8
  %51 = call i64 @IS_ERR(i8* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %35
  %54 = load %struct.lm3630a_chip*, %struct.lm3630a_chip** %3, align 8
  %55 = getelementptr inbounds %struct.lm3630a_chip, %struct.lm3630a_chip* %54, i32 0, i32 2
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 @PTR_ERR(i8* %56)
  store i32 %57, i32* %2, align 4
  br label %114

58:                                               ; preds = %35
  br label %59

59:                                               ; preds = %58, %1
  %60 = load %struct.lm3630a_platform_data*, %struct.lm3630a_platform_data** %4, align 8
  %61 = getelementptr inbounds %struct.lm3630a_platform_data, %struct.lm3630a_platform_data* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @LM3630A_LEDB_DISABLE, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %113

65:                                               ; preds = %59
  %66 = load %struct.lm3630a_platform_data*, %struct.lm3630a_platform_data** %4, align 8
  %67 = getelementptr inbounds %struct.lm3630a_platform_data, %struct.lm3630a_platform_data* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @LM3630A_LEDB_ON_A, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %113

71:                                               ; preds = %65
  %72 = load %struct.lm3630a_platform_data*, %struct.lm3630a_platform_data** %4, align 8
  %73 = getelementptr inbounds %struct.lm3630a_platform_data, %struct.lm3630a_platform_data* %72, i32 0, i32 5
  %74 = load i32, i32* %73, align 4
  %75 = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %5, i32 0, i32 1
  store i32 %74, i32* %75, align 4
  %76 = load %struct.lm3630a_platform_data*, %struct.lm3630a_platform_data** %4, align 8
  %77 = getelementptr inbounds %struct.lm3630a_platform_data, %struct.lm3630a_platform_data* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 8
  %79 = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %5, i32 0, i32 0
  store i32 %78, i32* %79, align 4
  %80 = load %struct.lm3630a_platform_data*, %struct.lm3630a_platform_data** %4, align 8
  %81 = getelementptr inbounds %struct.lm3630a_platform_data, %struct.lm3630a_platform_data* %80, i32 0, i32 3
  %82 = load i8*, i8** %81, align 8
  %83 = icmp ne i8* %82, null
  br i1 %83, label %84, label %88

84:                                               ; preds = %71
  %85 = load %struct.lm3630a_platform_data*, %struct.lm3630a_platform_data** %4, align 8
  %86 = getelementptr inbounds %struct.lm3630a_platform_data, %struct.lm3630a_platform_data* %85, i32 0, i32 3
  %87 = load i8*, i8** %86, align 8
  br label %89

88:                                               ; preds = %71
  br label %89

89:                                               ; preds = %88, %84
  %90 = phi i8* [ %87, %84 ], [ getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), %88 ]
  store i8* %90, i8** %6, align 8
  %91 = load %struct.lm3630a_chip*, %struct.lm3630a_chip** %3, align 8
  %92 = getelementptr inbounds %struct.lm3630a_chip, %struct.lm3630a_chip* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = load i8*, i8** %6, align 8
  %95 = load %struct.lm3630a_chip*, %struct.lm3630a_chip** %3, align 8
  %96 = getelementptr inbounds %struct.lm3630a_chip, %struct.lm3630a_chip* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.lm3630a_chip*, %struct.lm3630a_chip** %3, align 8
  %99 = call i8* @devm_backlight_device_register(i32 %93, i8* %94, i32 %97, %struct.lm3630a_chip* %98, i32* @lm3630a_bank_b_ops, %struct.backlight_properties* %5)
  %100 = load %struct.lm3630a_chip*, %struct.lm3630a_chip** %3, align 8
  %101 = getelementptr inbounds %struct.lm3630a_chip, %struct.lm3630a_chip* %100, i32 0, i32 0
  store i8* %99, i8** %101, align 8
  %102 = load %struct.lm3630a_chip*, %struct.lm3630a_chip** %3, align 8
  %103 = getelementptr inbounds %struct.lm3630a_chip, %struct.lm3630a_chip* %102, i32 0, i32 0
  %104 = load i8*, i8** %103, align 8
  %105 = call i64 @IS_ERR(i8* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %89
  %108 = load %struct.lm3630a_chip*, %struct.lm3630a_chip** %3, align 8
  %109 = getelementptr inbounds %struct.lm3630a_chip, %struct.lm3630a_chip* %108, i32 0, i32 0
  %110 = load i8*, i8** %109, align 8
  %111 = call i32 @PTR_ERR(i8* %110)
  store i32 %111, i32* %2, align 4
  br label %114

112:                                              ; preds = %89
  br label %113

113:                                              ; preds = %112, %65, %59
  store i32 0, i32* %2, align 4
  br label %114

114:                                              ; preds = %113, %107, %53
  %115 = load i32, i32* %2, align 4
  ret i32 %115
}

declare dso_local i8* @devm_backlight_device_register(i32, i8*, i32, %struct.lm3630a_chip*, i32*, %struct.backlight_properties*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
