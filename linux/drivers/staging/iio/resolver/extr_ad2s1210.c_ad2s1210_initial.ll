; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/iio/resolver/extr_ad2s1210.c_ad2s1210_initial.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/iio/resolver/extr_ad2s1210.c_ad2s1210_initial.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ad2s1210_state = type { i32, i32 }

@AD2S1210_REG_CONTROL = common dso_local global i8 0, align 1
@AD2S1210_DEF_CONTROL = common dso_local global i8 0, align 1
@AD2S1210_SET_RESOLUTION = common dso_local global i8 0, align 1
@AD2S1210_MSB_IS_HIGH = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ad2s1210_state*)* @ad2s1210_initial to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad2s1210_initial(%struct.ad2s1210_state* %0) #0 {
  %2 = alloca %struct.ad2s1210_state*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  store %struct.ad2s1210_state* %0, %struct.ad2s1210_state** %2, align 8
  %5 = load %struct.ad2s1210_state*, %struct.ad2s1210_state** %2, align 8
  %6 = getelementptr inbounds %struct.ad2s1210_state, %struct.ad2s1210_state* %5, i32 0, i32 1
  %7 = call i32 @mutex_lock(i32* %6)
  %8 = load %struct.ad2s1210_state*, %struct.ad2s1210_state** %2, align 8
  %9 = call i32 @ad2s1210_set_resolution_pin(%struct.ad2s1210_state* %8)
  %10 = load %struct.ad2s1210_state*, %struct.ad2s1210_state** %2, align 8
  %11 = load i8, i8* @AD2S1210_REG_CONTROL, align 1
  %12 = call i32 @ad2s1210_config_write(%struct.ad2s1210_state* %10, i8 zeroext %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %63

16:                                               ; preds = %1
  %17 = load i8, i8* @AD2S1210_DEF_CONTROL, align 1
  %18 = zext i8 %17 to i32
  %19 = load i8, i8* @AD2S1210_SET_RESOLUTION, align 1
  %20 = zext i8 %19 to i32
  %21 = xor i32 %20, -1
  %22 = and i32 %18, %21
  %23 = trunc i32 %22 to i8
  store i8 %23, i8* %3, align 1
  %24 = load %struct.ad2s1210_state*, %struct.ad2s1210_state** %2, align 8
  %25 = getelementptr inbounds %struct.ad2s1210_state, %struct.ad2s1210_state* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = sub nsw i32 %26, 10
  %28 = ashr i32 %27, 1
  %29 = load i8, i8* %3, align 1
  %30 = zext i8 %29 to i32
  %31 = or i32 %30, %28
  %32 = trunc i32 %31 to i8
  store i8 %32, i8* %3, align 1
  %33 = load %struct.ad2s1210_state*, %struct.ad2s1210_state** %2, align 8
  %34 = load i8, i8* %3, align 1
  %35 = call i32 @ad2s1210_config_write(%struct.ad2s1210_state* %33, i8 zeroext %34)
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %16
  br label %63

39:                                               ; preds = %16
  %40 = load %struct.ad2s1210_state*, %struct.ad2s1210_state** %2, align 8
  %41 = load i8, i8* @AD2S1210_REG_CONTROL, align 1
  %42 = call i32 @ad2s1210_config_read(%struct.ad2s1210_state* %40, i8 zeroext %41)
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* %4, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  br label %63

46:                                               ; preds = %39
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* @AD2S1210_MSB_IS_HIGH, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load i32, i32* @EIO, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %4, align 4
  br label %63

54:                                               ; preds = %46
  %55 = load %struct.ad2s1210_state*, %struct.ad2s1210_state** %2, align 8
  %56 = call i32 @ad2s1210_update_frequency_control_word(%struct.ad2s1210_state* %55)
  store i32 %56, i32* %4, align 4
  %57 = load i32, i32* %4, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  br label %63

60:                                               ; preds = %54
  %61 = load %struct.ad2s1210_state*, %struct.ad2s1210_state** %2, align 8
  %62 = call i32 @ad2s1210_soft_reset(%struct.ad2s1210_state* %61)
  store i32 %62, i32* %4, align 4
  br label %63

63:                                               ; preds = %60, %59, %51, %45, %38, %15
  %64 = load %struct.ad2s1210_state*, %struct.ad2s1210_state** %2, align 8
  %65 = getelementptr inbounds %struct.ad2s1210_state, %struct.ad2s1210_state* %64, i32 0, i32 1
  %66 = call i32 @mutex_unlock(i32* %65)
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ad2s1210_set_resolution_pin(%struct.ad2s1210_state*) #1

declare dso_local i32 @ad2s1210_config_write(%struct.ad2s1210_state*, i8 zeroext) #1

declare dso_local i32 @ad2s1210_config_read(%struct.ad2s1210_state*, i8 zeroext) #1

declare dso_local i32 @ad2s1210_update_frequency_control_word(%struct.ad2s1210_state*) #1

declare dso_local i32 @ad2s1210_soft_reset(%struct.ad2s1210_state*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
