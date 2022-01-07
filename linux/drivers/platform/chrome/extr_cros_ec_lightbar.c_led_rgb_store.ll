; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/chrome/extr_cros_ec_lightbar.c_led_rgb_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/chrome/extr_cros_ec_lightbar.c_led_rgb_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.ec_params_lightbar = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.cros_ec_command = type { i64, i64 }
%struct.cros_ec_dev = type { i32 }

@ENOMEM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"%i\00", align 1
@LIGHTBAR_CMD_SET_RGB = common dso_local global i32 0, align 4
@EC_RES_SUCCESS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @led_rgb_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @led_rgb_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.ec_params_lightbar*, align 8
  %11 = alloca %struct.cros_ec_command*, align 8
  %12 = alloca %struct.cros_ec_dev*, align 8
  %13 = alloca [4 x i32], align 16
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %18 = load %struct.device*, %struct.device** %6, align 8
  %19 = call %struct.cros_ec_dev* @to_cros_ec_dev(%struct.device* %18)
  store %struct.cros_ec_dev* %19, %struct.cros_ec_dev** %12, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %20 = load %struct.cros_ec_dev*, %struct.cros_ec_dev** %12, align 8
  %21 = call %struct.cros_ec_command* @alloc_lightbar_cmd_msg(%struct.cros_ec_dev* %20)
  store %struct.cros_ec_command* %21, %struct.cros_ec_command** %11, align 8
  %22 = load %struct.cros_ec_command*, %struct.cros_ec_command** %11, align 8
  %23 = icmp ne %struct.cros_ec_command* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %4
  %25 = load i64, i64* @ENOMEM, align 8
  %26 = sub i64 0, %25
  store i64 %26, i64* %5, align 8
  br label %155

27:                                               ; preds = %4
  br label %28

28:                                               ; preds = %135, %27
  br label %29

29:                                               ; preds = %41, %28
  %30 = load i8*, i8** %8, align 8
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = load i8*, i8** %8, align 8
  %36 = load i8, i8* %35, align 1
  %37 = call i64 @isspace(i8 signext %36)
  %38 = icmp ne i64 %37, 0
  br label %39

39:                                               ; preds = %34, %29
  %40 = phi i1 [ false, %29 ], [ %38, %34 ]
  br i1 %40, label %41, label %44

41:                                               ; preds = %39
  %42 = load i8*, i8** %8, align 8
  %43 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %43, i8** %8, align 8
  br label %29

44:                                               ; preds = %39
  %45 = load i8*, i8** %8, align 8
  %46 = load i8, i8* %45, align 1
  %47 = icmp ne i8 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %44
  br label %139

49:                                               ; preds = %44
  %50 = load i8*, i8** %8, align 8
  %51 = load i32, i32* %15, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %15, align 4
  %53 = sext i32 %51 to i64
  %54 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 %53
  %55 = call i32 @sscanf(i8* %50, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %54)
  store i32 %55, i32* %14, align 4
  %56 = load i32, i32* %14, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %49
  br label %140

59:                                               ; preds = %49
  %60 = load i32, i32* %15, align 4
  %61 = icmp eq i32 %60, 4
  br i1 %61, label %62, label %117

62:                                               ; preds = %59
  %63 = load %struct.cros_ec_command*, %struct.cros_ec_command** %11, align 8
  %64 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = inttoptr i64 %65 to %struct.ec_params_lightbar*
  store %struct.ec_params_lightbar* %66, %struct.ec_params_lightbar** %10, align 8
  %67 = load i32, i32* @LIGHTBAR_CMD_SET_RGB, align 4
  %68 = load %struct.ec_params_lightbar*, %struct.ec_params_lightbar** %10, align 8
  %69 = getelementptr inbounds %struct.ec_params_lightbar, %struct.ec_params_lightbar* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  %70 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0
  %71 = load i32, i32* %70, align 16
  %72 = load %struct.ec_params_lightbar*, %struct.ec_params_lightbar** %10, align 8
  %73 = getelementptr inbounds %struct.ec_params_lightbar, %struct.ec_params_lightbar* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  store i32 %71, i32* %74, align 4
  %75 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.ec_params_lightbar*, %struct.ec_params_lightbar** %10, align 8
  %78 = getelementptr inbounds %struct.ec_params_lightbar, %struct.ec_params_lightbar* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 1
  store i32 %76, i32* %79, align 4
  %80 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 2
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.ec_params_lightbar*, %struct.ec_params_lightbar** %10, align 8
  %83 = getelementptr inbounds %struct.ec_params_lightbar, %struct.ec_params_lightbar* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 2
  store i32 %81, i32* %84, align 4
  %85 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 3
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.ec_params_lightbar*, %struct.ec_params_lightbar** %10, align 8
  %88 = getelementptr inbounds %struct.ec_params_lightbar, %struct.ec_params_lightbar* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 3
  store i32 %86, i32* %89, align 4
  %90 = load i32, i32* %16, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %16, align 4
  %92 = srem i32 %90, 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %62
  %95 = call i32 (...) @lb_throttle()
  store i32 %95, i32* %14, align 4
  %96 = load i32, i32* %14, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %94
  br label %140

99:                                               ; preds = %94
  br label %100

100:                                              ; preds = %99, %62
  %101 = load %struct.cros_ec_dev*, %struct.cros_ec_dev** %12, align 8
  %102 = getelementptr inbounds %struct.cros_ec_dev, %struct.cros_ec_dev* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.cros_ec_command*, %struct.cros_ec_command** %11, align 8
  %105 = call i32 @cros_ec_cmd_xfer(i32 %103, %struct.cros_ec_command* %104)
  store i32 %105, i32* %14, align 4
  %106 = load i32, i32* %14, align 4
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %100
  br label %140

109:                                              ; preds = %100
  %110 = load %struct.cros_ec_command*, %struct.cros_ec_command** %11, align 8
  %111 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @EC_RES_SUCCESS, align 8
  %114 = icmp ne i64 %112, %113
  br i1 %114, label %115, label %116

115:                                              ; preds = %109
  br label %140

116:                                              ; preds = %109
  store i32 0, i32* %15, align 4
  store i32 1, i32* %17, align 4
  br label %117

117:                                              ; preds = %116, %59
  br label %118

118:                                              ; preds = %131, %117
  %119 = load i8*, i8** %8, align 8
  %120 = load i8, i8* %119, align 1
  %121 = sext i8 %120 to i32
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %129

123:                                              ; preds = %118
  %124 = load i8*, i8** %8, align 8
  %125 = load i8, i8* %124, align 1
  %126 = call i64 @isspace(i8 signext %125)
  %127 = icmp ne i64 %126, 0
  %128 = xor i1 %127, true
  br label %129

129:                                              ; preds = %123, %118
  %130 = phi i1 [ false, %118 ], [ %128, %123 ]
  br i1 %130, label %131, label %134

131:                                              ; preds = %129
  %132 = load i8*, i8** %8, align 8
  %133 = getelementptr inbounds i8, i8* %132, i32 1
  store i8* %133, i8** %8, align 8
  br label %118

134:                                              ; preds = %129
  br label %135

135:                                              ; preds = %134
  %136 = load i8*, i8** %8, align 8
  %137 = load i8, i8* %136, align 1
  %138 = icmp ne i8 %137, 0
  br i1 %138, label %28, label %139

139:                                              ; preds = %135, %48
  br label %140

140:                                              ; preds = %139, %115, %108, %98, %58
  %141 = load %struct.cros_ec_command*, %struct.cros_ec_command** %11, align 8
  %142 = call i32 @kfree(%struct.cros_ec_command* %141)
  %143 = load i32, i32* %17, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %150

145:                                              ; preds = %140
  %146 = load i32, i32* %15, align 4
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %145
  %149 = load i64, i64* %9, align 8
  br label %153

150:                                              ; preds = %145, %140
  %151 = load i64, i64* @EINVAL, align 8
  %152 = sub i64 0, %151
  br label %153

153:                                              ; preds = %150, %148
  %154 = phi i64 [ %149, %148 ], [ %152, %150 ]
  store i64 %154, i64* %5, align 8
  br label %155

155:                                              ; preds = %153, %24
  %156 = load i64, i64* %5, align 8
  ret i64 %156
}

declare dso_local %struct.cros_ec_dev* @to_cros_ec_dev(%struct.device*) #1

declare dso_local %struct.cros_ec_command* @alloc_lightbar_cmd_msg(%struct.cros_ec_dev*) #1

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

declare dso_local i32 @lb_throttle(...) #1

declare dso_local i32 @cros_ec_cmd_xfer(i32, %struct.cros_ec_command*) #1

declare dso_local i32 @kfree(%struct.cros_ec_command*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
