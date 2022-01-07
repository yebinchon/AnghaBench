; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx_card.c_switch_ssc_clock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx_card.c_switch_ssc_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_chip = type { i32, i64 }

@STATUS_SUCCESS = common dso_local global i32 0, align 4
@CLK_DIV_4 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Switch SSC clock to %dMHz (cur_clk = %d)\0A\00", align 1
@STATUS_FAIL = common dso_local global i32 0, align 4
@CLK_DIV_1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"n = %d, div = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"ssc_depth = %d\0A\00", align 1
@WRITE_REG_CMD = common dso_local global i32 0, align 4
@CLK_CTL = common dso_local global i32 0, align 4
@CLK_LOW_FREQ = common dso_local global i32 0, align 4
@CLK_DIV = common dso_local global i32 0, align 4
@SSC_CTL1 = common dso_local global i32 0, align 4
@SSC_RSTB = common dso_local global i32 0, align 4
@SSC_CTL2 = common dso_local global i32 0, align 4
@SSC_DIV_N_0 = common dso_local global i32 0, align 4
@SD_VPCLK0_CTL = common dso_local global i32 0, align 4
@PHASE_NOT_RESET = common dso_local global i32 0, align 4
@WAIT_TIME = common dso_local global i32 0, align 4
@STATUS_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @switch_ssc_clock(%struct.rtsx_chip* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rtsx_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.rtsx_chip* %0, %struct.rtsx_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = sub nsw i32 %16, 2
  store i32 %17, i32* %7, align 4
  store i32 0, i32* %15, align 4
  %18 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %19 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %24, i32* %3, align 4
  br label %162

25:                                               ; preds = %2
  store i32 60, i32* %8, align 4
  store i32 120, i32* %9, align 4
  %26 = load i32, i32* @CLK_DIV_4, align 4
  store i32 %26, i32* %12, align 4
  %27 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %28 = call i32 @rtsx_dev(%struct.rtsx_chip* %27)
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %31 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %28, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %32)
  %34 = load i32, i32* %5, align 4
  %35 = icmp sle i32 %34, 2
  br i1 %35, label %40, label %36

36:                                               ; preds = %25
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp sgt i32 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %36, %25
  %41 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %41, i32* %3, align 4
  br label %162

42:                                               ; preds = %36
  %43 = load i32, i32* %5, align 4
  %44 = sdiv i32 125, %43
  %45 = add nsw i32 %44, 3
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  %47 = icmp sgt i32 %46, 7
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  store i32 7, i32* %10, align 4
  br label %49

49:                                               ; preds = %48, %42
  %50 = load i32, i32* @CLK_DIV_1, align 4
  store i32 %50, i32* %11, align 4
  br label %51

51:                                               ; preds = %61, %49
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %51
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* %12, align 4
  %58 = icmp slt i32 %56, %57
  br label %59

59:                                               ; preds = %55, %51
  %60 = phi i1 [ false, %51 ], [ %58, %55 ]
  br i1 %60, label %61, label %68

61:                                               ; preds = %59
  %62 = load i32, i32* %7, align 4
  %63 = add nsw i32 %62, 2
  %64 = mul nsw i32 %63, 2
  %65 = sub nsw i32 %64, 2
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* %11, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %11, align 4
  br label %51

68:                                               ; preds = %59
  %69 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %70 = call i32 @rtsx_dev(%struct.rtsx_chip* %69)
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* %11, align 4
  %73 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %70, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %71, i32 %72)
  %74 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %75 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %68
  store i32 1, i32* %13, align 4
  %79 = load i32, i32* %7, align 4
  %80 = sub nsw i32 %79, 2
  store i32 %80, i32* %7, align 4
  br label %82

81:                                               ; preds = %68
  store i32 0, i32* %13, align 4
  br label %82

82:                                               ; preds = %81, %78
  store i32 3, i32* %14, align 4
  %83 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %84 = call i32 @rtsx_dev(%struct.rtsx_chip* %83)
  %85 = load i32, i32* %13, align 4
  %86 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %84, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %85)
  %87 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %88 = call i32 @rtsx_init_cmd(%struct.rtsx_chip* %87)
  %89 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %90 = load i32, i32* @WRITE_REG_CMD, align 4
  %91 = load i32, i32* @CLK_CTL, align 4
  %92 = load i32, i32* @CLK_LOW_FREQ, align 4
  %93 = load i32, i32* @CLK_LOW_FREQ, align 4
  %94 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %89, i32 %90, i32 %91, i32 %92, i32 %93)
  %95 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %96 = load i32, i32* @WRITE_REG_CMD, align 4
  %97 = load i32, i32* @CLK_DIV, align 4
  %98 = load i32, i32* %11, align 4
  %99 = shl i32 %98, 4
  %100 = load i32, i32* %10, align 4
  %101 = or i32 %99, %100
  %102 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %95, i32 %96, i32 %97, i32 255, i32 %101)
  %103 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %104 = load i32, i32* @WRITE_REG_CMD, align 4
  %105 = load i32, i32* @SSC_CTL1, align 4
  %106 = load i32, i32* @SSC_RSTB, align 4
  %107 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %103, i32 %104, i32 %105, i32 %106, i32 0)
  %108 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %109 = load i32, i32* @WRITE_REG_CMD, align 4
  %110 = load i32, i32* @SSC_CTL2, align 4
  %111 = load i32, i32* %14, align 4
  %112 = load i32, i32* %13, align 4
  %113 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %108, i32 %109, i32 %110, i32 %111, i32 %112)
  %114 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %115 = load i32, i32* @WRITE_REG_CMD, align 4
  %116 = load i32, i32* @SSC_DIV_N_0, align 4
  %117 = load i32, i32* %7, align 4
  %118 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %114, i32 %115, i32 %116, i32 255, i32 %117)
  %119 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %120 = load i32, i32* @WRITE_REG_CMD, align 4
  %121 = load i32, i32* @SSC_CTL1, align 4
  %122 = load i32, i32* @SSC_RSTB, align 4
  %123 = load i32, i32* @SSC_RSTB, align 4
  %124 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %119, i32 %120, i32 %121, i32 %122, i32 %123)
  %125 = load i32, i32* %15, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %139

127:                                              ; preds = %82
  %128 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %129 = load i32, i32* @WRITE_REG_CMD, align 4
  %130 = load i32, i32* @SD_VPCLK0_CTL, align 4
  %131 = load i32, i32* @PHASE_NOT_RESET, align 4
  %132 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %128, i32 %129, i32 %130, i32 %131, i32 0)
  %133 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %134 = load i32, i32* @WRITE_REG_CMD, align 4
  %135 = load i32, i32* @SD_VPCLK0_CTL, align 4
  %136 = load i32, i32* @PHASE_NOT_RESET, align 4
  %137 = load i32, i32* @PHASE_NOT_RESET, align 4
  %138 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %133, i32 %134, i32 %135, i32 %136, i32 %137)
  br label %139

139:                                              ; preds = %127, %82
  %140 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %141 = load i32, i32* @WAIT_TIME, align 4
  %142 = call i32 @rtsx_send_cmd(%struct.rtsx_chip* %140, i32 0, i32 %141)
  store i32 %142, i32* %6, align 4
  %143 = load i32, i32* %6, align 4
  %144 = icmp slt i32 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %139
  %146 = load i32, i32* @STATUS_ERROR, align 4
  store i32 %146, i32* %3, align 4
  br label %162

147:                                              ; preds = %139
  %148 = call i32 @udelay(i32 10)
  %149 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %150 = load i32, i32* @CLK_CTL, align 4
  %151 = load i32, i32* @CLK_LOW_FREQ, align 4
  %152 = call i32 @rtsx_write_register(%struct.rtsx_chip* %149, i32 %150, i32 %151, i32 0)
  store i32 %152, i32* %6, align 4
  %153 = load i32, i32* %6, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %157

155:                                              ; preds = %147
  %156 = load i32, i32* %6, align 4
  store i32 %156, i32* %3, align 4
  br label %162

157:                                              ; preds = %147
  %158 = load i32, i32* %5, align 4
  %159 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %160 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %159, i32 0, i32 0
  store i32 %158, i32* %160, align 8
  %161 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %161, i32* %3, align 4
  br label %162

162:                                              ; preds = %157, %155, %145, %40, %23
  %163 = load i32, i32* %3, align 4
  ret i32 %163
}

declare dso_local i32 @dev_dbg(i32, i8*, i32, ...) #1

declare dso_local i32 @rtsx_dev(%struct.rtsx_chip*) #1

declare dso_local i32 @rtsx_init_cmd(%struct.rtsx_chip*) #1

declare dso_local i32 @rtsx_add_cmd(%struct.rtsx_chip*, i32, i32, i32, i32) #1

declare dso_local i32 @rtsx_send_cmd(%struct.rtsx_chip*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @rtsx_write_register(%struct.rtsx_chip*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
