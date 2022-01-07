; ModuleID = '/home/carl/AnghaBench/linux/drivers/reset/extr_reset-ti-syscon.c_ti_syscon_reset_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/reset/extr_reset-ti-syscon.c_ti_syscon_reset_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reset_controller_dev = type { i32 }
%struct.ti_syscon_reset_data = type { i64, i32, %struct.ti_syscon_reset_control* }
%struct.ti_syscon_reset_control = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@STATUS_NONE = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@STATUS_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.reset_controller_dev*, i64)* @ti_syscon_reset_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_syscon_reset_status(%struct.reset_controller_dev* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.reset_controller_dev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ti_syscon_reset_data*, align 8
  %7 = alloca %struct.ti_syscon_reset_control*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.reset_controller_dev* %0, %struct.reset_controller_dev** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load %struct.reset_controller_dev*, %struct.reset_controller_dev** %4, align 8
  %11 = call %struct.ti_syscon_reset_data* @to_ti_syscon_reset_data(%struct.reset_controller_dev* %10)
  store %struct.ti_syscon_reset_data* %11, %struct.ti_syscon_reset_data** %6, align 8
  %12 = load i64, i64* %5, align 8
  %13 = load %struct.ti_syscon_reset_data*, %struct.ti_syscon_reset_data** %6, align 8
  %14 = getelementptr inbounds %struct.ti_syscon_reset_data, %struct.ti_syscon_reset_data* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp uge i64 %12, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %67

20:                                               ; preds = %2
  %21 = load %struct.ti_syscon_reset_data*, %struct.ti_syscon_reset_data** %6, align 8
  %22 = getelementptr inbounds %struct.ti_syscon_reset_data, %struct.ti_syscon_reset_data* %21, i32 0, i32 2
  %23 = load %struct.ti_syscon_reset_control*, %struct.ti_syscon_reset_control** %22, align 8
  %24 = load i64, i64* %5, align 8
  %25 = getelementptr inbounds %struct.ti_syscon_reset_control, %struct.ti_syscon_reset_control* %23, i64 %24
  store %struct.ti_syscon_reset_control* %25, %struct.ti_syscon_reset_control** %7, align 8
  %26 = load %struct.ti_syscon_reset_control*, %struct.ti_syscon_reset_control** %7, align 8
  %27 = getelementptr inbounds %struct.ti_syscon_reset_control, %struct.ti_syscon_reset_control* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @STATUS_NONE, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %20
  %33 = load i32, i32* @ENOTSUPP, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %67

35:                                               ; preds = %20
  %36 = load %struct.ti_syscon_reset_data*, %struct.ti_syscon_reset_data** %6, align 8
  %37 = getelementptr inbounds %struct.ti_syscon_reset_data, %struct.ti_syscon_reset_data* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.ti_syscon_reset_control*, %struct.ti_syscon_reset_control** %7, align 8
  %40 = getelementptr inbounds %struct.ti_syscon_reset_control, %struct.ti_syscon_reset_control* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @regmap_read(i32 %38, i32 %41, i32* %8)
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %35
  %46 = load i32, i32* %9, align 4
  store i32 %46, i32* %3, align 4
  br label %67

47:                                               ; preds = %35
  %48 = load i32, i32* %8, align 4
  %49 = load %struct.ti_syscon_reset_control*, %struct.ti_syscon_reset_control** %7, align 8
  %50 = getelementptr inbounds %struct.ti_syscon_reset_control, %struct.ti_syscon_reset_control* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @BIT(i32 %51)
  %53 = and i32 %48, %52
  %54 = icmp ne i32 %53, 0
  %55 = xor i1 %54, true
  %56 = zext i1 %55 to i32
  %57 = load %struct.ti_syscon_reset_control*, %struct.ti_syscon_reset_control** %7, align 8
  %58 = getelementptr inbounds %struct.ti_syscon_reset_control, %struct.ti_syscon_reset_control* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @STATUS_SET, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  %63 = xor i1 %62, true
  %64 = zext i1 %63 to i32
  %65 = icmp eq i32 %56, %64
  %66 = zext i1 %65 to i32
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %47, %45, %32, %17
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local %struct.ti_syscon_reset_data* @to_ti_syscon_reset_data(%struct.reset_controller_dev*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
