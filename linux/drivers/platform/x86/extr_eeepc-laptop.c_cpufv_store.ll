; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_eeepc-laptop.c_cpufv_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_eeepc-laptop.c_cpufv_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.eeepc_laptop = type { i64 }
%struct.eeepc_cpufv = type { i32 }

@EPERM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@CM_ASL_CPUFV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @cpufv_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpufv_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.eeepc_laptop*, align 8
  %11 = alloca %struct.eeepc_cpufv, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call %struct.eeepc_laptop* @dev_get_drvdata(%struct.device* %14)
  store %struct.eeepc_laptop* %15, %struct.eeepc_laptop** %10, align 8
  %16 = load %struct.eeepc_laptop*, %struct.eeepc_laptop** %10, align 8
  %17 = getelementptr inbounds %struct.eeepc_laptop, %struct.eeepc_laptop* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %4
  %21 = load i32, i32* @EPERM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %60

23:                                               ; preds = %4
  %24 = load %struct.eeepc_laptop*, %struct.eeepc_laptop** %10, align 8
  %25 = call i64 @get_cpufv(%struct.eeepc_laptop* %24, %struct.eeepc_cpufv* %11)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load i32, i32* @ENODEV, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %60

30:                                               ; preds = %23
  %31 = load i8*, i8** %8, align 8
  %32 = call i32 @parse_arg(i8* %31, i32* %13)
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %12, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = load i32, i32* %12, align 4
  store i32 %36, i32* %5, align 4
  br label %60

37:                                               ; preds = %30
  %38 = load i32, i32* %13, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %37
  %41 = load i32, i32* %13, align 4
  %42 = getelementptr inbounds %struct.eeepc_cpufv, %struct.eeepc_cpufv* %11, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp sge i32 %41, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %40, %37
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %5, align 4
  br label %60

48:                                               ; preds = %40
  %49 = load %struct.eeepc_laptop*, %struct.eeepc_laptop** %10, align 8
  %50 = load i32, i32* @CM_ASL_CPUFV, align 4
  %51 = load i32, i32* %13, align 4
  %52 = call i32 @set_acpi(%struct.eeepc_laptop* %49, i32 %50, i32 %51)
  store i32 %52, i32* %12, align 4
  %53 = load i32, i32* %12, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %48
  %56 = load i32, i32* %12, align 4
  store i32 %56, i32* %5, align 4
  br label %60

57:                                               ; preds = %48
  %58 = load i64, i64* %9, align 8
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %5, align 4
  br label %60

60:                                               ; preds = %57, %55, %45, %35, %27, %20
  %61 = load i32, i32* %5, align 4
  ret i32 %61
}

declare dso_local %struct.eeepc_laptop* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @get_cpufv(%struct.eeepc_laptop*, %struct.eeepc_cpufv*) #1

declare dso_local i32 @parse_arg(i8*, i32*) #1

declare dso_local i32 @set_acpi(%struct.eeepc_laptop*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
