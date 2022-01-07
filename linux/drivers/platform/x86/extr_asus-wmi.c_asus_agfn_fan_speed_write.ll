; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_asus-wmi.c_asus_agfn_fan_speed_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_asus-wmi.c_asus_agfn_fan_speed_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asus_wmi = type { i32 }
%struct.agfn_fan_args = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64, i32, i32 }
%struct.acpi_buffer = type { %struct.agfn_fan_args*, i32 }

@ASUS_FAN_SFUN_WRITE = common dso_local global i32 0, align 4
@ASUS_FAN_MFUN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.asus_wmi*, i32, i32*)* @asus_agfn_fan_speed_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asus_agfn_fan_speed_write(%struct.asus_wmi* %0, i32 %1, i32* %2) #0 {
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
  %14 = load i32*, i32** %7, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32*, i32** %7, align 8
  %18 = load i32, i32* %17, align 4
  br label %20

19:                                               ; preds = %3
  br label %20

20:                                               ; preds = %19, %16
  %21 = phi i32 [ %18, %16 ], [ 0, %19 ]
  store i32 %21, i32* %13, align 4
  %22 = getelementptr inbounds %struct.agfn_fan_args, %struct.agfn_fan_args* %8, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i32 32, i32* %23, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  store i64 0, i64* %24, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 2
  %26 = load i32, i32* @ASUS_FAN_SFUN_WRITE, align 4
  store i32 %26, i32* %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 3
  %28 = load i32, i32* @ASUS_FAN_MFUN, align 4
  store i32 %28, i32* %27, align 4
  %29 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %9, i32 0, i32 0
  store %struct.agfn_fan_args* inttoptr (i64 32 to %struct.agfn_fan_args*), %struct.agfn_fan_args** %29, align 8
  %30 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %9, i32 0, i32 1
  %31 = ptrtoint %struct.agfn_fan_args* %8 to i32
  store i32 %31, i32* %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 1
  br i1 %33, label %34, label %40

34:                                               ; preds = %20
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %69

40:                                               ; preds = %34, %20
  %41 = bitcast %struct.acpi_buffer* %9 to { %struct.agfn_fan_args*, i32 }*
  %42 = getelementptr inbounds { %struct.agfn_fan_args*, i32 }, { %struct.agfn_fan_args*, i32 }* %41, i32 0, i32 0
  %43 = load %struct.agfn_fan_args*, %struct.agfn_fan_args** %42, align 8
  %44 = getelementptr inbounds { %struct.agfn_fan_args*, i32 }, { %struct.agfn_fan_args*, i32 }* %41, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @asus_wmi_evaluate_method_agfn(%struct.agfn_fan_args* %43, i32 %45)
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %10, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %40
  %50 = getelementptr inbounds %struct.agfn_fan_args, %struct.agfn_fan_args* %8, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %49, %40
  %55 = load i32, i32* @ENXIO, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %4, align 4
  br label %69

57:                                               ; preds = %49
  %58 = load i32*, i32** %7, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %68

60:                                               ; preds = %57
  %61 = load i32, i32* %6, align 4
  %62 = icmp eq i32 %61, 1
  br i1 %62, label %63, label %68

63:                                               ; preds = %60
  %64 = load i32*, i32** %7, align 8
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.asus_wmi*, %struct.asus_wmi** %5, align 8
  %67 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 4
  br label %68

68:                                               ; preds = %63, %60, %57
  store i32 0, i32* %4, align 4
  br label %69

69:                                               ; preds = %68, %54, %37
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local i32 @asus_wmi_evaluate_method_agfn(%struct.agfn_fan_args*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
