; ModuleID = '/home/carl/AnghaBench/linux/drivers/reset/sti/extr_reset-syscfg.c_syscfg_reset_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/reset/sti/extr_reset-syscfg.c_syscfg_reset_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reset_controller_dev = type { i64 }
%struct.syscfg_reset_controller = type { i64, %struct.syscfg_reset_channel* }
%struct.syscfg_reset_channel = type { i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.reset_controller_dev*, i64)* @syscfg_reset_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @syscfg_reset_status(%struct.reset_controller_dev* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.reset_controller_dev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.syscfg_reset_controller*, align 8
  %7 = alloca %struct.syscfg_reset_channel*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.reset_controller_dev* %0, %struct.reset_controller_dev** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load %struct.reset_controller_dev*, %struct.reset_controller_dev** %4, align 8
  %11 = call %struct.syscfg_reset_controller* @to_syscfg_reset_controller(%struct.reset_controller_dev* %10)
  store %struct.syscfg_reset_controller* %11, %struct.syscfg_reset_controller** %6, align 8
  store i64 0, i64* %8, align 8
  %12 = load i64, i64* %5, align 8
  %13 = load %struct.reset_controller_dev*, %struct.reset_controller_dev** %4, align 8
  %14 = getelementptr inbounds %struct.reset_controller_dev, %struct.reset_controller_dev* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp uge i64 %12, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %63

20:                                               ; preds = %2
  %21 = load %struct.syscfg_reset_controller*, %struct.syscfg_reset_controller** %6, align 8
  %22 = getelementptr inbounds %struct.syscfg_reset_controller, %struct.syscfg_reset_controller* %21, i32 0, i32 1
  %23 = load %struct.syscfg_reset_channel*, %struct.syscfg_reset_channel** %22, align 8
  %24 = load i64, i64* %5, align 8
  %25 = getelementptr inbounds %struct.syscfg_reset_channel, %struct.syscfg_reset_channel* %23, i64 %24
  store %struct.syscfg_reset_channel* %25, %struct.syscfg_reset_channel** %7, align 8
  %26 = load %struct.syscfg_reset_channel*, %struct.syscfg_reset_channel** %7, align 8
  %27 = getelementptr inbounds %struct.syscfg_reset_channel, %struct.syscfg_reset_channel* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %20
  %31 = load %struct.syscfg_reset_channel*, %struct.syscfg_reset_channel** %7, align 8
  %32 = getelementptr inbounds %struct.syscfg_reset_channel, %struct.syscfg_reset_channel* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @regmap_field_read(i64 %33, i64* %8)
  store i32 %34, i32* %9, align 4
  br label %40

35:                                               ; preds = %20
  %36 = load %struct.syscfg_reset_channel*, %struct.syscfg_reset_channel** %7, align 8
  %37 = getelementptr inbounds %struct.syscfg_reset_channel, %struct.syscfg_reset_channel* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @regmap_field_read(i64 %38, i64* %8)
  store i32 %39, i32* %9, align 4
  br label %40

40:                                               ; preds = %35, %30
  %41 = load i32, i32* %9, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = load i32, i32* %9, align 4
  store i32 %44, i32* %3, align 4
  br label %63

45:                                               ; preds = %40
  %46 = load %struct.syscfg_reset_controller*, %struct.syscfg_reset_controller** %6, align 8
  %47 = getelementptr inbounds %struct.syscfg_reset_controller, %struct.syscfg_reset_controller* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %45
  %51 = load i64, i64* %8, align 8
  %52 = icmp ne i64 %51, 0
  %53 = xor i1 %52, true
  %54 = zext i1 %53 to i32
  br label %61

55:                                               ; preds = %45
  %56 = load i64, i64* %8, align 8
  %57 = icmp ne i64 %56, 0
  %58 = xor i1 %57, true
  %59 = xor i1 %58, true
  %60 = zext i1 %59 to i32
  br label %61

61:                                               ; preds = %55, %50
  %62 = phi i32 [ %54, %50 ], [ %60, %55 ]
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %61, %43, %17
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local %struct.syscfg_reset_controller* @to_syscfg_reset_controller(%struct.reset_controller_dev*) #1

declare dso_local i32 @regmap_field_read(i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
