; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/qcom/extr_qcom-spmi-temp-alarm.c_qpnp_tm_get_temp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/qcom/extr_qcom-spmi-temp-alarm.c_qpnp_tm_get_temp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qpnp_tm_chip = type { i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@DEFAULT_TEMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*)* @qpnp_tm_get_temp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qpnp_tm_get_temp(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.qpnp_tm_chip*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.qpnp_tm_chip*
  store %struct.qpnp_tm_chip* %10, %struct.qpnp_tm_chip** %6, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %69

16:                                               ; preds = %2
  %17 = load %struct.qpnp_tm_chip*, %struct.qpnp_tm_chip** %6, align 8
  %18 = getelementptr inbounds %struct.qpnp_tm_chip, %struct.qpnp_tm_chip* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %16
  %22 = load i32, i32* @DEFAULT_TEMP, align 4
  %23 = load i32*, i32** %5, align 8
  store i32 %22, i32* %23, align 4
  store i32 0, i32* %3, align 4
  br label %69

24:                                               ; preds = %16
  %25 = load %struct.qpnp_tm_chip*, %struct.qpnp_tm_chip** %6, align 8
  %26 = getelementptr inbounds %struct.qpnp_tm_chip, %struct.qpnp_tm_chip* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %43, label %29

29:                                               ; preds = %24
  %30 = load %struct.qpnp_tm_chip*, %struct.qpnp_tm_chip** %6, align 8
  %31 = getelementptr inbounds %struct.qpnp_tm_chip, %struct.qpnp_tm_chip* %30, i32 0, i32 2
  %32 = call i32 @mutex_lock(i32* %31)
  %33 = load %struct.qpnp_tm_chip*, %struct.qpnp_tm_chip** %6, align 8
  %34 = call i32 @qpnp_tm_update_temp_no_adc(%struct.qpnp_tm_chip* %33)
  store i32 %34, i32* %7, align 4
  %35 = load %struct.qpnp_tm_chip*, %struct.qpnp_tm_chip** %6, align 8
  %36 = getelementptr inbounds %struct.qpnp_tm_chip, %struct.qpnp_tm_chip* %35, i32 0, i32 2
  %37 = call i32 @mutex_unlock(i32* %36)
  %38 = load i32, i32* %7, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %29
  %41 = load i32, i32* %7, align 4
  store i32 %41, i32* %3, align 4
  br label %69

42:                                               ; preds = %29
  br label %56

43:                                               ; preds = %24
  %44 = load %struct.qpnp_tm_chip*, %struct.qpnp_tm_chip** %6, align 8
  %45 = getelementptr inbounds %struct.qpnp_tm_chip, %struct.qpnp_tm_chip* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @iio_read_channel_processed(i32 %46, i32* %8)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %43
  %51 = load i32, i32* %7, align 4
  store i32 %51, i32* %3, align 4
  br label %69

52:                                               ; preds = %43
  %53 = load i32, i32* %8, align 4
  %54 = load %struct.qpnp_tm_chip*, %struct.qpnp_tm_chip** %6, align 8
  %55 = getelementptr inbounds %struct.qpnp_tm_chip, %struct.qpnp_tm_chip* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  br label %56

56:                                               ; preds = %52, %42
  %57 = load %struct.qpnp_tm_chip*, %struct.qpnp_tm_chip** %6, align 8
  %58 = getelementptr inbounds %struct.qpnp_tm_chip, %struct.qpnp_tm_chip* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  br label %66

62:                                               ; preds = %56
  %63 = load %struct.qpnp_tm_chip*, %struct.qpnp_tm_chip** %6, align 8
  %64 = getelementptr inbounds %struct.qpnp_tm_chip, %struct.qpnp_tm_chip* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  br label %66

66:                                               ; preds = %62, %61
  %67 = phi i32 [ 0, %61 ], [ %65, %62 ]
  %68 = load i32*, i32** %5, align 8
  store i32 %67, i32* %68, align 4
  store i32 0, i32* %3, align 4
  br label %69

69:                                               ; preds = %66, %50, %40, %21, %13
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @qpnp_tm_update_temp_no_adc(%struct.qpnp_tm_chip*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @iio_read_channel_processed(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
