; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_asus-wmi.c_asus_agfn_fan_speed_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_asus-wmi.c_asus_agfn_fan_speed_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asus_wmi = type { i32 }
%struct.agfn_fan_args = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64, i32, i32 }
%struct.acpi_buffer = type { %struct.agfn_fan_args*, i32 }

@ASUS_FAN_SFUN_READ = common dso_local global i32 0, align 4
@ASUS_FAN_MFUN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.asus_wmi*, i32, i32*)* @asus_agfn_fan_speed_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asus_agfn_fan_speed_read(%struct.asus_wmi* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.asus_wmi*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.agfn_fan_args, align 8
  %9 = alloca %struct.acpi_buffer, align 8
  %10 = alloca i32, align 4
  store %struct.asus_wmi* %0, %struct.asus_wmi** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %11 = getelementptr inbounds %struct.agfn_fan_args, %struct.agfn_fan_args* %8, i32 0, i32 0
  %12 = load i32, i32* %6, align 4
  store i32 %12, i32* %11, align 8
  %13 = getelementptr inbounds %struct.agfn_fan_args, %struct.agfn_fan_args* %8, i32 0, i32 1
  store i32 0, i32* %13, align 4
  %14 = getelementptr inbounds %struct.agfn_fan_args, %struct.agfn_fan_args* %8, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store i32 32, i32* %15, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  store i64 0, i64* %16, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 2
  %18 = load i32, i32* @ASUS_FAN_SFUN_READ, align 4
  store i32 %18, i32* %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 3
  %20 = load i32, i32* @ASUS_FAN_MFUN, align 4
  store i32 %20, i32* %19, align 4
  %21 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %9, i32 0, i32 0
  store %struct.agfn_fan_args* inttoptr (i64 32 to %struct.agfn_fan_args*), %struct.agfn_fan_args** %21, align 8
  %22 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %9, i32 0, i32 1
  %23 = ptrtoint %struct.agfn_fan_args* %8 to i32
  store i32 %23, i32* %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 1
  br i1 %25, label %26, label %29

26:                                               ; preds = %3
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %54

29:                                               ; preds = %3
  %30 = bitcast %struct.acpi_buffer* %9 to { %struct.agfn_fan_args*, i32 }*
  %31 = getelementptr inbounds { %struct.agfn_fan_args*, i32 }, { %struct.agfn_fan_args*, i32 }* %30, i32 0, i32 0
  %32 = load %struct.agfn_fan_args*, %struct.agfn_fan_args** %31, align 8
  %33 = getelementptr inbounds { %struct.agfn_fan_args*, i32 }, { %struct.agfn_fan_args*, i32 }* %30, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @asus_wmi_evaluate_method_agfn(%struct.agfn_fan_args* %32, i32 %34)
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %29
  %39 = getelementptr inbounds %struct.agfn_fan_args, %struct.agfn_fan_args* %8, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %38, %29
  %44 = load i32, i32* @ENXIO, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %4, align 4
  br label %54

46:                                               ; preds = %38
  %47 = load i32*, i32** %7, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %53

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct.agfn_fan_args, %struct.agfn_fan_args* %8, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32*, i32** %7, align 8
  store i32 %51, i32* %52, align 4
  br label %53

53:                                               ; preds = %49, %46
  store i32 0, i32* %4, align 4
  br label %54

54:                                               ; preds = %53, %43, %26
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i32 @asus_wmi_evaluate_method_agfn(%struct.agfn_fan_args*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
