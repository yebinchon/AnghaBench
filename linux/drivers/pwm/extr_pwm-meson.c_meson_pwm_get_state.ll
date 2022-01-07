; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-meson.c_meson_pwm_get_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-meson.c_meson_pwm_get_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.meson_pwm_channel_data = type { i32, i32, i32, i64 }
%struct.pwm_chip = type { i32 }
%struct.pwm_device = type { i64 }
%struct.pwm_state = type { i32, i8*, i8* }
%struct.meson_pwm = type { i64, %struct.meson_pwm_channel* }
%struct.meson_pwm_channel = type { i64, i64, i8* }

@meson_pwm_per_channel_data = common dso_local global %struct.meson_pwm_channel_data* null, align 8
@REG_MISC_AB = common dso_local global i64 0, align 8
@MISC_CLK_DIV_MASK = common dso_local global i32 0, align 4
@PWM_LOW_MASK = common dso_local global i32 0, align 4
@PWM_HIGH_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pwm_chip*, %struct.pwm_device*, %struct.pwm_state*)* @meson_pwm_get_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @meson_pwm_get_state(%struct.pwm_chip* %0, %struct.pwm_device* %1, %struct.pwm_state* %2) #0 {
  %4 = alloca %struct.pwm_chip*, align 8
  %5 = alloca %struct.pwm_device*, align 8
  %6 = alloca %struct.pwm_state*, align 8
  %7 = alloca %struct.meson_pwm*, align 8
  %8 = alloca %struct.meson_pwm_channel_data*, align 8
  %9 = alloca %struct.meson_pwm_channel*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.pwm_chip* %0, %struct.pwm_chip** %4, align 8
  store %struct.pwm_device* %1, %struct.pwm_device** %5, align 8
  store %struct.pwm_state* %2, %struct.pwm_state** %6, align 8
  %12 = load %struct.pwm_chip*, %struct.pwm_chip** %4, align 8
  %13 = call %struct.meson_pwm* @to_meson_pwm(%struct.pwm_chip* %12)
  store %struct.meson_pwm* %13, %struct.meson_pwm** %7, align 8
  %14 = load %struct.pwm_state*, %struct.pwm_state** %6, align 8
  %15 = icmp ne %struct.pwm_state* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  br label %134

17:                                               ; preds = %3
  %18 = load %struct.meson_pwm*, %struct.meson_pwm** %7, align 8
  %19 = getelementptr inbounds %struct.meson_pwm, %struct.meson_pwm* %18, i32 0, i32 1
  %20 = load %struct.meson_pwm_channel*, %struct.meson_pwm_channel** %19, align 8
  %21 = load %struct.pwm_device*, %struct.pwm_device** %5, align 8
  %22 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds %struct.meson_pwm_channel, %struct.meson_pwm_channel* %20, i64 %23
  store %struct.meson_pwm_channel* %24, %struct.meson_pwm_channel** %9, align 8
  %25 = load %struct.meson_pwm_channel_data*, %struct.meson_pwm_channel_data** @meson_pwm_per_channel_data, align 8
  %26 = load %struct.pwm_device*, %struct.pwm_device** %5, align 8
  %27 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds %struct.meson_pwm_channel_data, %struct.meson_pwm_channel_data* %25, i64 %28
  store %struct.meson_pwm_channel_data* %29, %struct.meson_pwm_channel_data** %8, align 8
  %30 = load %struct.meson_pwm*, %struct.meson_pwm** %7, align 8
  %31 = getelementptr inbounds %struct.meson_pwm, %struct.meson_pwm* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @REG_MISC_AB, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32 @readl(i64 %34)
  store i32 %35, i32* %10, align 4
  %36 = load %struct.meson_pwm_channel_data*, %struct.meson_pwm_channel_data** %8, align 8
  %37 = getelementptr inbounds %struct.meson_pwm_channel_data, %struct.meson_pwm_channel_data* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.meson_pwm_channel_data*, %struct.meson_pwm_channel_data** %8, align 8
  %40 = getelementptr inbounds %struct.meson_pwm_channel_data, %struct.meson_pwm_channel_data* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %38, %41
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* %11, align 4
  %45 = and i32 %43, %44
  %46 = load i32, i32* %11, align 4
  %47 = icmp eq i32 %45, %46
  %48 = zext i1 %47 to i32
  %49 = load %struct.pwm_state*, %struct.pwm_state** %6, align 8
  %50 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load i32, i32* %10, align 4
  %52 = load %struct.meson_pwm_channel_data*, %struct.meson_pwm_channel_data** %8, align 8
  %53 = getelementptr inbounds %struct.meson_pwm_channel_data, %struct.meson_pwm_channel_data* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = ashr i32 %51, %54
  store i32 %55, i32* %11, align 4
  %56 = load i32, i32* @MISC_CLK_DIV_MASK, align 4
  %57 = load i32, i32* %11, align 4
  %58 = call i8* @FIELD_GET(i32 %56, i32 %57)
  %59 = load %struct.meson_pwm_channel*, %struct.meson_pwm_channel** %9, align 8
  %60 = getelementptr inbounds %struct.meson_pwm_channel, %struct.meson_pwm_channel* %59, i32 0, i32 2
  store i8* %58, i8** %60, align 8
  %61 = load %struct.meson_pwm*, %struct.meson_pwm** %7, align 8
  %62 = getelementptr inbounds %struct.meson_pwm, %struct.meson_pwm* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.meson_pwm_channel_data*, %struct.meson_pwm_channel_data** %8, align 8
  %65 = getelementptr inbounds %struct.meson_pwm_channel_data, %struct.meson_pwm_channel_data* %64, i32 0, i32 3
  %66 = load i64, i64* %65, align 8
  %67 = add nsw i64 %63, %66
  %68 = call i32 @readl(i64 %67)
  store i32 %68, i32* %10, align 4
  %69 = load i32, i32* @PWM_LOW_MASK, align 4
  %70 = load i32, i32* %10, align 4
  %71 = call i8* @FIELD_GET(i32 %69, i32 %70)
  %72 = ptrtoint i8* %71 to i64
  %73 = load %struct.meson_pwm_channel*, %struct.meson_pwm_channel** %9, align 8
  %74 = getelementptr inbounds %struct.meson_pwm_channel, %struct.meson_pwm_channel* %73, i32 0, i32 0
  store i64 %72, i64* %74, align 8
  %75 = load i32, i32* @PWM_HIGH_MASK, align 4
  %76 = load i32, i32* %10, align 4
  %77 = call i8* @FIELD_GET(i32 %75, i32 %76)
  %78 = ptrtoint i8* %77 to i64
  %79 = load %struct.meson_pwm_channel*, %struct.meson_pwm_channel** %9, align 8
  %80 = getelementptr inbounds %struct.meson_pwm_channel, %struct.meson_pwm_channel* %79, i32 0, i32 1
  store i64 %78, i64* %80, align 8
  %81 = load %struct.meson_pwm_channel*, %struct.meson_pwm_channel** %9, align 8
  %82 = getelementptr inbounds %struct.meson_pwm_channel, %struct.meson_pwm_channel* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %99

85:                                               ; preds = %17
  %86 = load %struct.pwm_chip*, %struct.pwm_chip** %4, align 8
  %87 = load %struct.pwm_device*, %struct.pwm_device** %5, align 8
  %88 = load %struct.meson_pwm_channel*, %struct.meson_pwm_channel** %9, align 8
  %89 = getelementptr inbounds %struct.meson_pwm_channel, %struct.meson_pwm_channel* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = call i8* @meson_pwm_cnt_to_ns(%struct.pwm_chip* %86, %struct.pwm_device* %87, i64 %90)
  %92 = load %struct.pwm_state*, %struct.pwm_state** %6, align 8
  %93 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %92, i32 0, i32 2
  store i8* %91, i8** %93, align 8
  %94 = load %struct.pwm_state*, %struct.pwm_state** %6, align 8
  %95 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %94, i32 0, i32 2
  %96 = load i8*, i8** %95, align 8
  %97 = load %struct.pwm_state*, %struct.pwm_state** %6, align 8
  %98 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %97, i32 0, i32 1
  store i8* %96, i8** %98, align 8
  br label %134

99:                                               ; preds = %17
  %100 = load %struct.meson_pwm_channel*, %struct.meson_pwm_channel** %9, align 8
  %101 = getelementptr inbounds %struct.meson_pwm_channel, %struct.meson_pwm_channel* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.meson_pwm_channel*, %struct.meson_pwm_channel** %9, align 8
  %104 = getelementptr inbounds %struct.meson_pwm_channel, %struct.meson_pwm_channel* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = icmp sge i64 %102, %105
  br i1 %106, label %107, label %128

107:                                              ; preds = %99
  %108 = load %struct.pwm_chip*, %struct.pwm_chip** %4, align 8
  %109 = load %struct.pwm_device*, %struct.pwm_device** %5, align 8
  %110 = load %struct.meson_pwm_channel*, %struct.meson_pwm_channel** %9, align 8
  %111 = getelementptr inbounds %struct.meson_pwm_channel, %struct.meson_pwm_channel* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.meson_pwm_channel*, %struct.meson_pwm_channel** %9, align 8
  %114 = getelementptr inbounds %struct.meson_pwm_channel, %struct.meson_pwm_channel* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = add nsw i64 %112, %115
  %117 = call i8* @meson_pwm_cnt_to_ns(%struct.pwm_chip* %108, %struct.pwm_device* %109, i64 %116)
  %118 = load %struct.pwm_state*, %struct.pwm_state** %6, align 8
  %119 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %118, i32 0, i32 2
  store i8* %117, i8** %119, align 8
  %120 = load %struct.pwm_chip*, %struct.pwm_chip** %4, align 8
  %121 = load %struct.pwm_device*, %struct.pwm_device** %5, align 8
  %122 = load %struct.meson_pwm_channel*, %struct.meson_pwm_channel** %9, align 8
  %123 = getelementptr inbounds %struct.meson_pwm_channel, %struct.meson_pwm_channel* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = call i8* @meson_pwm_cnt_to_ns(%struct.pwm_chip* %120, %struct.pwm_device* %121, i64 %124)
  %126 = load %struct.pwm_state*, %struct.pwm_state** %6, align 8
  %127 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %126, i32 0, i32 1
  store i8* %125, i8** %127, align 8
  br label %133

128:                                              ; preds = %99
  %129 = load %struct.pwm_state*, %struct.pwm_state** %6, align 8
  %130 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %129, i32 0, i32 2
  store i8* null, i8** %130, align 8
  %131 = load %struct.pwm_state*, %struct.pwm_state** %6, align 8
  %132 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %131, i32 0, i32 1
  store i8* null, i8** %132, align 8
  br label %133

133:                                              ; preds = %128, %107
  br label %134

134:                                              ; preds = %16, %133, %85
  ret void
}

declare dso_local %struct.meson_pwm* @to_meson_pwm(%struct.pwm_chip*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i8* @FIELD_GET(i32, i32) #1

declare dso_local i8* @meson_pwm_cnt_to_ns(%struct.pwm_chip*, %struct.pwm_device*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
