; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx_card.c_switch_normal_clock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx_card.c_switch_normal_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_chip = type { i32 }

@STATUS_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Switch clock to 20MHz\0A\00", align 1
@SSC_80 = common dso_local global i32 0, align 4
@CLK_DIV_4 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Switch clock to 30MHz\0A\00", align 1
@SSC_120 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"Switch clock to 40MHz\0A\00", align 1
@CLK_DIV_2 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"Switch clock to 50MHz\0A\00", align 1
@SSC_100 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"Switch clock to 60MHz\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"Switch clock to 80MHz\0A\00", align 1
@CLK_DIV_1 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [24 x i8] c"Switch clock to 100MHz\0A\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"Switch clock to 120MHz\0A\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"Switch clock to 150MHz\0A\00", align 1
@SSC_150 = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [24 x i8] c"Switch clock to 200MHz\0A\00", align 1
@SSC_200 = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [40 x i8] c"Try to switch to an illegal clock (%d)\0A\00", align 1
@STATUS_FAIL = common dso_local global i32 0, align 4
@CLK_CTL = common dso_local global i32 0, align 4
@CLK_LOW_FREQ = common dso_local global i32 0, align 4
@SD_VPCLK0_CTL = common dso_local global i32 0, align 4
@PHASE_NOT_RESET = common dso_local global i32 0, align 4
@SD_VPCLK1_CTL = common dso_local global i32 0, align 4
@CLK_DIV = common dso_local global i32 0, align 4
@CLK_SEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @switch_normal_clock(%struct.rtsx_chip* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rtsx_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.rtsx_chip* %0, %struct.rtsx_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %10, align 4
  %11 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %12 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %17, i32* %3, align 4
  br label %177

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  switch i32 %19, label %80 [
    i32 134, label %20
    i32 132, label %26
    i32 131, label %32
    i32 130, label %38
    i32 129, label %44
    i32 128, label %50
    i32 137, label %56
    i32 136, label %62
    i32 135, label %68
    i32 133, label %74
  ]

20:                                               ; preds = %18
  %21 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %22 = call i32 @rtsx_dev(%struct.rtsx_chip* %21)
  %23 = call i32 (i32, i8*, ...) @dev_dbg(i32 %22, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @SSC_80, align 4
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* @CLK_DIV_4, align 4
  store i32 %25, i32* %8, align 4
  store i32 7, i32* %9, align 4
  br label %86

26:                                               ; preds = %18
  %27 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %28 = call i32 @rtsx_dev(%struct.rtsx_chip* %27)
  %29 = call i32 (i32, i8*, ...) @dev_dbg(i32 %28, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i32, i32* @SSC_120, align 4
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* @CLK_DIV_4, align 4
  store i32 %31, i32* %8, align 4
  store i32 7, i32* %9, align 4
  br label %86

32:                                               ; preds = %18
  %33 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %34 = call i32 @rtsx_dev(%struct.rtsx_chip* %33)
  %35 = call i32 (i32, i8*, ...) @dev_dbg(i32 %34, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %36 = load i32, i32* @SSC_80, align 4
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* @CLK_DIV_2, align 4
  store i32 %37, i32* %8, align 4
  store i32 7, i32* %9, align 4
  br label %86

38:                                               ; preds = %18
  %39 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %40 = call i32 @rtsx_dev(%struct.rtsx_chip* %39)
  %41 = call i32 (i32, i8*, ...) @dev_dbg(i32 %40, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %42 = load i32, i32* @SSC_100, align 4
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* @CLK_DIV_2, align 4
  store i32 %43, i32* %8, align 4
  store i32 6, i32* %9, align 4
  br label %86

44:                                               ; preds = %18
  %45 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %46 = call i32 @rtsx_dev(%struct.rtsx_chip* %45)
  %47 = call i32 (i32, i8*, ...) @dev_dbg(i32 %46, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %48 = load i32, i32* @SSC_120, align 4
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* @CLK_DIV_2, align 4
  store i32 %49, i32* %8, align 4
  store i32 6, i32* %9, align 4
  br label %86

50:                                               ; preds = %18
  %51 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %52 = call i32 @rtsx_dev(%struct.rtsx_chip* %51)
  %53 = call i32 (i32, i8*, ...) @dev_dbg(i32 %52, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %54 = load i32, i32* @SSC_80, align 4
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* @CLK_DIV_1, align 4
  store i32 %55, i32* %8, align 4
  store i32 5, i32* %9, align 4
  br label %86

56:                                               ; preds = %18
  %57 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %58 = call i32 @rtsx_dev(%struct.rtsx_chip* %57)
  %59 = call i32 (i32, i8*, ...) @dev_dbg(i32 %58, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  %60 = load i32, i32* @SSC_100, align 4
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* @CLK_DIV_1, align 4
  store i32 %61, i32* %8, align 4
  store i32 5, i32* %9, align 4
  br label %86

62:                                               ; preds = %18
  %63 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %64 = call i32 @rtsx_dev(%struct.rtsx_chip* %63)
  %65 = call i32 (i32, i8*, ...) @dev_dbg(i32 %64, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  %66 = load i32, i32* @SSC_120, align 4
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* @CLK_DIV_1, align 4
  store i32 %67, i32* %8, align 4
  store i32 5, i32* %9, align 4
  br label %86

68:                                               ; preds = %18
  %69 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %70 = call i32 @rtsx_dev(%struct.rtsx_chip* %69)
  %71 = call i32 (i32, i8*, ...) @dev_dbg(i32 %70, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0))
  %72 = load i32, i32* @SSC_150, align 4
  store i32 %72, i32* %7, align 4
  %73 = load i32, i32* @CLK_DIV_1, align 4
  store i32 %73, i32* %8, align 4
  store i32 4, i32* %9, align 4
  br label %86

74:                                               ; preds = %18
  %75 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %76 = call i32 @rtsx_dev(%struct.rtsx_chip* %75)
  %77 = call i32 (i32, i8*, ...) @dev_dbg(i32 %76, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0))
  %78 = load i32, i32* @SSC_200, align 4
  store i32 %78, i32* %7, align 4
  %79 = load i32, i32* @CLK_DIV_1, align 4
  store i32 %79, i32* %8, align 4
  store i32 4, i32* %9, align 4
  br label %86

80:                                               ; preds = %18
  %81 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %82 = call i32 @rtsx_dev(%struct.rtsx_chip* %81)
  %83 = load i32, i32* %5, align 4
  %84 = call i32 (i32, i8*, ...) @dev_dbg(i32 %82, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.10, i64 0, i64 0), i32 %83)
  %85 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %85, i32* %3, align 4
  br label %177

86:                                               ; preds = %74, %68, %62, %56, %50, %44, %38, %32, %26, %20
  %87 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %88 = load i32, i32* @CLK_CTL, align 4
  %89 = load i32, i32* @CLK_LOW_FREQ, align 4
  %90 = call i32 @rtsx_write_register(%struct.rtsx_chip* %87, i32 %88, i32 255, i32 %89)
  store i32 %90, i32* %6, align 4
  %91 = load i32, i32* %6, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %86
  %94 = load i32, i32* %6, align 4
  store i32 %94, i32* %3, align 4
  br label %177

95:                                               ; preds = %86
  %96 = load i32, i32* %10, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %117

98:                                               ; preds = %95
  %99 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %100 = load i32, i32* @SD_VPCLK0_CTL, align 4
  %101 = load i32, i32* @PHASE_NOT_RESET, align 4
  %102 = call i32 @rtsx_write_register(%struct.rtsx_chip* %99, i32 %100, i32 %101, i32 0)
  store i32 %102, i32* %6, align 4
  %103 = load i32, i32* %6, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %98
  %106 = load i32, i32* %6, align 4
  store i32 %106, i32* %3, align 4
  br label %177

107:                                              ; preds = %98
  %108 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %109 = load i32, i32* @SD_VPCLK1_CTL, align 4
  %110 = load i32, i32* @PHASE_NOT_RESET, align 4
  %111 = call i32 @rtsx_write_register(%struct.rtsx_chip* %108, i32 %109, i32 %110, i32 0)
  store i32 %111, i32* %6, align 4
  %112 = load i32, i32* %6, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %107
  %115 = load i32, i32* %6, align 4
  store i32 %115, i32* %3, align 4
  br label %177

116:                                              ; preds = %107
  br label %117

117:                                              ; preds = %116, %95
  %118 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %119 = load i32, i32* @CLK_DIV, align 4
  %120 = load i32, i32* %8, align 4
  %121 = shl i32 %120, 4
  %122 = load i32, i32* %9, align 4
  %123 = or i32 %121, %122
  %124 = call i32 @rtsx_write_register(%struct.rtsx_chip* %118, i32 %119, i32 255, i32 %123)
  store i32 %124, i32* %6, align 4
  %125 = load i32, i32* %6, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %117
  %128 = load i32, i32* %6, align 4
  store i32 %128, i32* %3, align 4
  br label %177

129:                                              ; preds = %117
  %130 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %131 = load i32, i32* @CLK_SEL, align 4
  %132 = load i32, i32* %7, align 4
  %133 = call i32 @rtsx_write_register(%struct.rtsx_chip* %130, i32 %131, i32 255, i32 %132)
  store i32 %133, i32* %6, align 4
  %134 = load i32, i32* %6, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %129
  %137 = load i32, i32* %6, align 4
  store i32 %137, i32* %3, align 4
  br label %177

138:                                              ; preds = %129
  %139 = load i32, i32* %10, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %164

141:                                              ; preds = %138
  %142 = call i32 @udelay(i32 200)
  %143 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %144 = load i32, i32* @SD_VPCLK0_CTL, align 4
  %145 = load i32, i32* @PHASE_NOT_RESET, align 4
  %146 = load i32, i32* @PHASE_NOT_RESET, align 4
  %147 = call i32 @rtsx_write_register(%struct.rtsx_chip* %143, i32 %144, i32 %145, i32 %146)
  store i32 %147, i32* %6, align 4
  %148 = load i32, i32* %6, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %152

150:                                              ; preds = %141
  %151 = load i32, i32* %6, align 4
  store i32 %151, i32* %3, align 4
  br label %177

152:                                              ; preds = %141
  %153 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %154 = load i32, i32* @SD_VPCLK1_CTL, align 4
  %155 = load i32, i32* @PHASE_NOT_RESET, align 4
  %156 = load i32, i32* @PHASE_NOT_RESET, align 4
  %157 = call i32 @rtsx_write_register(%struct.rtsx_chip* %153, i32 %154, i32 %155, i32 %156)
  store i32 %157, i32* %6, align 4
  %158 = load i32, i32* %6, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %152
  %161 = load i32, i32* %6, align 4
  store i32 %161, i32* %3, align 4
  br label %177

162:                                              ; preds = %152
  %163 = call i32 @udelay(i32 200)
  br label %164

164:                                              ; preds = %162, %138
  %165 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %166 = load i32, i32* @CLK_CTL, align 4
  %167 = call i32 @rtsx_write_register(%struct.rtsx_chip* %165, i32 %166, i32 255, i32 0)
  store i32 %167, i32* %6, align 4
  %168 = load i32, i32* %6, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %172

170:                                              ; preds = %164
  %171 = load i32, i32* %6, align 4
  store i32 %171, i32* %3, align 4
  br label %177

172:                                              ; preds = %164
  %173 = load i32, i32* %5, align 4
  %174 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %175 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %174, i32 0, i32 0
  store i32 %173, i32* %175, align 4
  %176 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %176, i32* %3, align 4
  br label %177

177:                                              ; preds = %172, %170, %160, %150, %136, %127, %114, %105, %93, %80, %16
  %178 = load i32, i32* %3, align 4
  ret i32 %178
}

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @rtsx_dev(%struct.rtsx_chip*) #1

declare dso_local i32 @rtsx_write_register(%struct.rtsx_chip*, i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
