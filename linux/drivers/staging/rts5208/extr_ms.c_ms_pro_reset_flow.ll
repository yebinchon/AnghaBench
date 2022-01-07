; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_ms.c_ms_pro_reset_flow.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_ms.c_ms_pro_reset_flow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_chip = type { i64, %struct.ms_info }
%struct.ms_info = type { i32 }

@STATUS_SUCCESS = common dso_local global i32 0, align 4
@STATUS_FAIL = common dso_local global i32 0, align 4
@MS_CARD = common dso_local global i32 0, align 4
@MS_NO_CARD = common dso_local global i32 0, align 4
@MS_CFG = common dso_local global i32 0, align 4
@MS_BUS_WIDTH_4 = common dso_local global i32 0, align 4
@PUSH_TIME_ODD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtsx_chip*, i32)* @ms_pro_reset_flow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ms_pro_reset_flow(%struct.rtsx_chip* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rtsx_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ms_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.rtsx_chip* %0, %struct.rtsx_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %10 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %9, i32 0, i32 1
  store %struct.ms_info* %10, %struct.ms_info** %6, align 8
  store i32 0, i32* %8, align 4
  br label %11

11:                                               ; preds = %58, %2
  %12 = load i32, i32* %8, align 4
  %13 = icmp slt i32 %12, 3
  br i1 %13, label %14, label %61

14:                                               ; preds = %11
  %15 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %16 = call i32 @ms_prepare_reset(%struct.rtsx_chip* %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @STATUS_SUCCESS, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %21, i32* %3, align 4
  br label %119

22:                                               ; preds = %14
  %23 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @ms_identify_media_type(%struct.rtsx_chip* %23, i32 %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @STATUS_SUCCESS, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %30, i32* %3, align 4
  br label %119

31:                                               ; preds = %22
  %32 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %33 = call i32 @ms_confirm_cpu_startup(%struct.rtsx_chip* %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @STATUS_SUCCESS, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %38, i32* %3, align 4
  br label %119

39:                                               ; preds = %31
  %40 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %41 = call i32 @ms_switch_parallel_bus(%struct.rtsx_chip* %40)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @STATUS_SUCCESS, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %57

45:                                               ; preds = %39
  %46 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %47 = load i32, i32* @MS_CARD, align 4
  %48 = call i32 @detect_card_cd(%struct.rtsx_chip* %46, i32 %47)
  %49 = load i32, i32* @STATUS_SUCCESS, align 4
  %50 = icmp ne i32 %48, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %45
  %52 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %53 = load i32, i32* @MS_NO_CARD, align 4
  %54 = call i32 @ms_set_err_code(%struct.rtsx_chip* %52, i32 %53)
  %55 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %55, i32* %3, align 4
  br label %119

56:                                               ; preds = %45
  br label %58

57:                                               ; preds = %39
  br label %61

58:                                               ; preds = %56
  %59 = load i32, i32* %8, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %8, align 4
  br label %11

61:                                               ; preds = %57, %11
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* @STATUS_SUCCESS, align 4
  %64 = icmp ne i32 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %61
  %66 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %66, i32* %3, align 4
  br label %119

67:                                               ; preds = %61
  %68 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %69 = load i32, i32* @MS_CFG, align 4
  %70 = load i32, i32* @MS_BUS_WIDTH_4, align 4
  %71 = call i32 @rtsx_write_register(%struct.rtsx_chip* %68, i32 %69, i32 24, i32 %70)
  store i32 %71, i32* %7, align 4
  %72 = load i32, i32* %7, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %67
  %75 = load i32, i32* %7, align 4
  store i32 %75, i32* %3, align 4
  br label %119

76:                                               ; preds = %67
  %77 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %78 = load i32, i32* @MS_CFG, align 4
  %79 = load i32, i32* @PUSH_TIME_ODD, align 4
  %80 = load i32, i32* @PUSH_TIME_ODD, align 4
  %81 = call i32 @rtsx_write_register(%struct.rtsx_chip* %77, i32 %78, i32 %79, i32 %80)
  store i32 %81, i32* %7, align 4
  %82 = load i32, i32* %7, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %76
  %85 = load i32, i32* %7, align 4
  store i32 %85, i32* %3, align 4
  br label %119

86:                                               ; preds = %76
  %87 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %88 = call i32 @ms_set_init_para(%struct.rtsx_chip* %87)
  store i32 %88, i32* %7, align 4
  %89 = load i32, i32* %7, align 4
  %90 = load i32, i32* @STATUS_SUCCESS, align 4
  %91 = icmp ne i32 %89, %90
  br i1 %91, label %92, label %94

92:                                               ; preds = %86
  %93 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %93, i32* %3, align 4
  br label %119

94:                                               ; preds = %86
  %95 = load %struct.ms_info*, %struct.ms_info** %6, align 8
  %96 = call i64 @CHK_MSHG(%struct.ms_info* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %117

98:                                               ; preds = %94
  %99 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %100 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %117

103:                                              ; preds = %98
  %104 = load i32, i32* %5, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %117

106:                                              ; preds = %103
  %107 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %108 = call i32 @ms_switch_8bit_bus(%struct.rtsx_chip* %107)
  store i32 %108, i32* %7, align 4
  %109 = load i32, i32* %7, align 4
  %110 = load i32, i32* @STATUS_SUCCESS, align 4
  %111 = icmp ne i32 %109, %110
  br i1 %111, label %112, label %116

112:                                              ; preds = %106
  %113 = load %struct.ms_info*, %struct.ms_info** %6, align 8
  %114 = getelementptr inbounds %struct.ms_info, %struct.ms_info* %113, i32 0, i32 0
  store i32 1, i32* %114, align 4
  %115 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %115, i32* %3, align 4
  br label %119

116:                                              ; preds = %106
  br label %117

117:                                              ; preds = %116, %103, %98, %94
  %118 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %118, i32* %3, align 4
  br label %119

119:                                              ; preds = %117, %112, %92, %84, %74, %65, %51, %37, %29, %20
  %120 = load i32, i32* %3, align 4
  ret i32 %120
}

declare dso_local i32 @ms_prepare_reset(%struct.rtsx_chip*) #1

declare dso_local i32 @ms_identify_media_type(%struct.rtsx_chip*, i32) #1

declare dso_local i32 @ms_confirm_cpu_startup(%struct.rtsx_chip*) #1

declare dso_local i32 @ms_switch_parallel_bus(%struct.rtsx_chip*) #1

declare dso_local i32 @detect_card_cd(%struct.rtsx_chip*, i32) #1

declare dso_local i32 @ms_set_err_code(%struct.rtsx_chip*, i32) #1

declare dso_local i32 @rtsx_write_register(%struct.rtsx_chip*, i32, i32, i32) #1

declare dso_local i32 @ms_set_init_para(%struct.rtsx_chip*) #1

declare dso_local i64 @CHK_MSHG(%struct.ms_info*) #1

declare dso_local i32 @ms_switch_8bit_bus(%struct.rtsx_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
