; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-meson.c_meson_pwm_init_channels.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-meson.c_meson_pwm_init_channels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.meson_pwm = type { i32, i64, %struct.TYPE_7__*, %struct.meson_pwm_channel*, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.meson_pwm_channel = type { i32, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_10__, i32*, i32*, i64, i32, i32, i64 }
%struct.TYPE_10__ = type { %struct.clk_init_data* }
%struct.clk_init_data = type { i8*, i32, i32, i64, i32* }
%struct.TYPE_6__ = type { i32, %struct.device* }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"%s#mux%u\00", align 1
@clk_mux_ops = common dso_local global i32 0, align 4
@REG_MISC_AB = common dso_local global i64 0, align 8
@meson_pwm_per_channel_data = common dso_local global %struct.TYPE_9__* null, align 8
@MISC_CLK_SEL_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"failed to register %s: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"clkin%u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.meson_pwm*)* @meson_pwm_init_channels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @meson_pwm_init_channels(%struct.meson_pwm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.meson_pwm*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.clk_init_data, align 8
  %6 = alloca i32, align 4
  %7 = alloca [255 x i8], align 16
  %8 = alloca i32, align 4
  %9 = alloca %struct.meson_pwm_channel*, align 8
  store %struct.meson_pwm* %0, %struct.meson_pwm** %3, align 8
  %10 = load %struct.meson_pwm*, %struct.meson_pwm** %3, align 8
  %11 = getelementptr inbounds %struct.meson_pwm, %struct.meson_pwm* %10, i32 0, i32 4
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  %13 = load %struct.device*, %struct.device** %12, align 8
  store %struct.device* %13, %struct.device** %4, align 8
  store i32 0, i32* %6, align 4
  br label %14

14:                                               ; preds = %127, %1
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.meson_pwm*, %struct.meson_pwm** %3, align 8
  %17 = getelementptr inbounds %struct.meson_pwm, %struct.meson_pwm* %16, i32 0, i32 4
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ult i32 %15, %19
  br i1 %20, label %21, label %130

21:                                               ; preds = %14
  %22 = load %struct.meson_pwm*, %struct.meson_pwm** %3, align 8
  %23 = getelementptr inbounds %struct.meson_pwm, %struct.meson_pwm* %22, i32 0, i32 3
  %24 = load %struct.meson_pwm_channel*, %struct.meson_pwm_channel** %23, align 8
  %25 = load i32, i32* %6, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.meson_pwm_channel, %struct.meson_pwm_channel* %24, i64 %26
  store %struct.meson_pwm_channel* %27, %struct.meson_pwm_channel** %9, align 8
  %28 = getelementptr inbounds [255 x i8], [255 x i8]* %7, i64 0, i64 0
  %29 = load %struct.device*, %struct.device** %4, align 8
  %30 = call i8* @dev_name(%struct.device* %29)
  %31 = load i32, i32* %6, align 4
  %32 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %28, i32 255, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %30, i32 %31)
  %33 = getelementptr inbounds [255 x i8], [255 x i8]* %7, i64 0, i64 0
  %34 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %5, i32 0, i32 0
  store i8* %33, i8** %34, align 8
  %35 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %5, i32 0, i32 4
  store i32* @clk_mux_ops, i32** %35, align 8
  %36 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %5, i32 0, i32 3
  store i64 0, i64* %36, align 8
  %37 = load %struct.meson_pwm*, %struct.meson_pwm** %3, align 8
  %38 = getelementptr inbounds %struct.meson_pwm, %struct.meson_pwm* %37, i32 0, i32 2
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %5, i32 0, i32 2
  store i32 %41, i32* %42, align 4
  %43 = load %struct.meson_pwm*, %struct.meson_pwm** %3, align 8
  %44 = getelementptr inbounds %struct.meson_pwm, %struct.meson_pwm* %43, i32 0, i32 2
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %5, i32 0, i32 1
  store i32 %47, i32* %48, align 8
  %49 = load %struct.meson_pwm*, %struct.meson_pwm** %3, align 8
  %50 = getelementptr inbounds %struct.meson_pwm, %struct.meson_pwm* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @REG_MISC_AB, align 8
  %53 = add nsw i64 %51, %52
  %54 = load %struct.meson_pwm_channel*, %struct.meson_pwm_channel** %9, align 8
  %55 = getelementptr inbounds %struct.meson_pwm_channel, %struct.meson_pwm_channel* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 6
  store i64 %53, i64* %56, align 8
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** @meson_pwm_per_channel_data, align 8
  %58 = load i32, i32* %6, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.meson_pwm_channel*, %struct.meson_pwm_channel** %9, align 8
  %64 = getelementptr inbounds %struct.meson_pwm_channel, %struct.meson_pwm_channel* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 5
  store i32 %62, i32* %65, align 4
  %66 = load i32, i32* @MISC_CLK_SEL_MASK, align 4
  %67 = load %struct.meson_pwm_channel*, %struct.meson_pwm_channel** %9, align 8
  %68 = getelementptr inbounds %struct.meson_pwm_channel, %struct.meson_pwm_channel* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 4
  store i32 %66, i32* %69, align 8
  %70 = load %struct.meson_pwm_channel*, %struct.meson_pwm_channel** %9, align 8
  %71 = getelementptr inbounds %struct.meson_pwm_channel, %struct.meson_pwm_channel* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 3
  store i64 0, i64* %72, align 8
  %73 = load %struct.meson_pwm*, %struct.meson_pwm** %3, align 8
  %74 = getelementptr inbounds %struct.meson_pwm, %struct.meson_pwm* %73, i32 0, i32 0
  %75 = load %struct.meson_pwm_channel*, %struct.meson_pwm_channel** %9, align 8
  %76 = getelementptr inbounds %struct.meson_pwm_channel, %struct.meson_pwm_channel* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 2
  store i32* %74, i32** %77, align 8
  %78 = load %struct.meson_pwm_channel*, %struct.meson_pwm_channel** %9, align 8
  %79 = getelementptr inbounds %struct.meson_pwm_channel, %struct.meson_pwm_channel* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 1
  store i32* null, i32** %80, align 8
  %81 = load %struct.meson_pwm_channel*, %struct.meson_pwm_channel** %9, align 8
  %82 = getelementptr inbounds %struct.meson_pwm_channel, %struct.meson_pwm_channel* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  store %struct.clk_init_data* %5, %struct.clk_init_data** %84, align 8
  %85 = load %struct.device*, %struct.device** %4, align 8
  %86 = load %struct.meson_pwm_channel*, %struct.meson_pwm_channel** %9, align 8
  %87 = getelementptr inbounds %struct.meson_pwm_channel, %struct.meson_pwm_channel* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  %89 = call i32 @devm_clk_register(%struct.device* %85, %struct.TYPE_10__* %88)
  %90 = load %struct.meson_pwm_channel*, %struct.meson_pwm_channel** %9, align 8
  %91 = getelementptr inbounds %struct.meson_pwm_channel, %struct.meson_pwm_channel* %90, i32 0, i32 1
  store i32 %89, i32* %91, align 4
  %92 = load %struct.meson_pwm_channel*, %struct.meson_pwm_channel** %9, align 8
  %93 = getelementptr inbounds %struct.meson_pwm_channel, %struct.meson_pwm_channel* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i64 @IS_ERR(i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %107

97:                                               ; preds = %21
  %98 = load %struct.meson_pwm_channel*, %struct.meson_pwm_channel** %9, align 8
  %99 = getelementptr inbounds %struct.meson_pwm_channel, %struct.meson_pwm_channel* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @PTR_ERR(i32 %100)
  store i32 %101, i32* %8, align 4
  %102 = load %struct.device*, %struct.device** %4, align 8
  %103 = getelementptr inbounds [255 x i8], [255 x i8]* %7, i64 0, i64 0
  %104 = load i32, i32* %8, align 4
  %105 = call i32 @dev_err(%struct.device* %102, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %103, i32 %104)
  %106 = load i32, i32* %8, align 4
  store i32 %106, i32* %2, align 4
  br label %131

107:                                              ; preds = %21
  %108 = getelementptr inbounds [255 x i8], [255 x i8]* %7, i64 0, i64 0
  %109 = load i32, i32* %6, align 4
  %110 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %108, i32 255, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %109)
  %111 = load %struct.device*, %struct.device** %4, align 8
  %112 = getelementptr inbounds [255 x i8], [255 x i8]* %7, i64 0, i64 0
  %113 = call i32 @devm_clk_get_optional(%struct.device* %111, i8* %112)
  %114 = load %struct.meson_pwm_channel*, %struct.meson_pwm_channel** %9, align 8
  %115 = getelementptr inbounds %struct.meson_pwm_channel, %struct.meson_pwm_channel* %114, i32 0, i32 0
  store i32 %113, i32* %115, align 8
  %116 = load %struct.meson_pwm_channel*, %struct.meson_pwm_channel** %9, align 8
  %117 = getelementptr inbounds %struct.meson_pwm_channel, %struct.meson_pwm_channel* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = call i64 @IS_ERR(i32 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %126

121:                                              ; preds = %107
  %122 = load %struct.meson_pwm_channel*, %struct.meson_pwm_channel** %9, align 8
  %123 = getelementptr inbounds %struct.meson_pwm_channel, %struct.meson_pwm_channel* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @PTR_ERR(i32 %124)
  store i32 %125, i32* %2, align 4
  br label %131

126:                                              ; preds = %107
  br label %127

127:                                              ; preds = %126
  %128 = load i32, i32* %6, align 4
  %129 = add i32 %128, 1
  store i32 %129, i32* %6, align 4
  br label %14

130:                                              ; preds = %14
  store i32 0, i32* %2, align 4
  br label %131

131:                                              ; preds = %130, %121, %97
  %132 = load i32, i32* %2, align 4
  ret i32 %132
}

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local i8* @dev_name(%struct.device*) #1

declare dso_local i32 @devm_clk_register(%struct.device*, %struct.TYPE_10__*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i8*, i32) #1

declare dso_local i32 @devm_clk_get_optional(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
