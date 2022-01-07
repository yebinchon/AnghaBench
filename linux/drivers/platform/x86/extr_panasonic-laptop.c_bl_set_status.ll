; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_panasonic-laptop.c_bl_set_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_panasonic-laptop.c_bl_set_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.backlight_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.pcc_acpi = type { i32* }

@EIO = common dso_local global i32 0, align 4
@SINF_AC_MIN_BRIGHT = common dso_local global i64 0, align 8
@SINF_DC_MIN_BRIGHT = common dso_local global i64 0, align 8
@SINF_AC_MAX_BRIGHT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@SINF_AC_CUR_BRIGHT = common dso_local global i32 0, align 4
@SINF_DC_CUR_BRIGHT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.backlight_device*)* @bl_set_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bl_set_status(%struct.backlight_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.backlight_device*, align 8
  %4 = alloca %struct.pcc_acpi*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.backlight_device* %0, %struct.backlight_device** %3, align 8
  %7 = load %struct.backlight_device*, %struct.backlight_device** %3, align 8
  %8 = call %struct.pcc_acpi* @bl_get_data(%struct.backlight_device* %7)
  store %struct.pcc_acpi* %8, %struct.pcc_acpi** %4, align 8
  %9 = load %struct.backlight_device*, %struct.backlight_device** %3, align 8
  %10 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %5, align 4
  %13 = load %struct.pcc_acpi*, %struct.pcc_acpi** %4, align 8
  %14 = call i32 @acpi_pcc_retrieve_biosdata(%struct.pcc_acpi* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @EIO, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %86

19:                                               ; preds = %1
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.pcc_acpi*, %struct.pcc_acpi** %4, align 8
  %22 = getelementptr inbounds %struct.pcc_acpi, %struct.pcc_acpi* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i64, i64* @SINF_AC_MIN_BRIGHT, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = icmp slt i32 %20, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %19
  %29 = load %struct.pcc_acpi*, %struct.pcc_acpi** %4, align 8
  %30 = getelementptr inbounds %struct.pcc_acpi, %struct.pcc_acpi* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load i64, i64* @SINF_AC_MIN_BRIGHT, align 8
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %5, align 4
  br label %35

35:                                               ; preds = %28, %19
  %36 = load i32, i32* %5, align 4
  %37 = load %struct.pcc_acpi*, %struct.pcc_acpi** %4, align 8
  %38 = getelementptr inbounds %struct.pcc_acpi, %struct.pcc_acpi* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i64, i64* @SINF_DC_MIN_BRIGHT, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = icmp slt i32 %36, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %35
  %45 = load %struct.pcc_acpi*, %struct.pcc_acpi** %4, align 8
  %46 = getelementptr inbounds %struct.pcc_acpi, %struct.pcc_acpi* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load i64, i64* @SINF_DC_MIN_BRIGHT, align 8
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %5, align 4
  br label %51

51:                                               ; preds = %44, %35
  %52 = load i32, i32* %5, align 4
  %53 = load %struct.pcc_acpi*, %struct.pcc_acpi** %4, align 8
  %54 = getelementptr inbounds %struct.pcc_acpi, %struct.pcc_acpi* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = load i64, i64* @SINF_AC_MIN_BRIGHT, align 8
  %57 = getelementptr inbounds i32, i32* %55, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = icmp slt i32 %52, %58
  br i1 %59, label %69, label %60

60:                                               ; preds = %51
  %61 = load i32, i32* %5, align 4
  %62 = load %struct.pcc_acpi*, %struct.pcc_acpi** %4, align 8
  %63 = getelementptr inbounds %struct.pcc_acpi, %struct.pcc_acpi* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = load i64, i64* @SINF_AC_MAX_BRIGHT, align 8
  %66 = getelementptr inbounds i32, i32* %64, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = icmp sgt i32 %61, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %60, %51
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %2, align 4
  br label %86

72:                                               ; preds = %60
  %73 = load %struct.pcc_acpi*, %struct.pcc_acpi** %4, align 8
  %74 = load i32, i32* @SINF_AC_CUR_BRIGHT, align 4
  %75 = load i32, i32* %5, align 4
  %76 = call i32 @acpi_pcc_write_sset(%struct.pcc_acpi* %73, i32 %74, i32 %75)
  store i32 %76, i32* %6, align 4
  %77 = load i32, i32* %6, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %72
  %80 = load i32, i32* %6, align 4
  store i32 %80, i32* %2, align 4
  br label %86

81:                                               ; preds = %72
  %82 = load %struct.pcc_acpi*, %struct.pcc_acpi** %4, align 8
  %83 = load i32, i32* @SINF_DC_CUR_BRIGHT, align 4
  %84 = load i32, i32* %5, align 4
  %85 = call i32 @acpi_pcc_write_sset(%struct.pcc_acpi* %82, i32 %83, i32 %84)
  store i32 %85, i32* %2, align 4
  br label %86

86:                                               ; preds = %81, %79, %69, %16
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local %struct.pcc_acpi* @bl_get_data(%struct.backlight_device*) #1

declare dso_local i32 @acpi_pcc_retrieve_biosdata(%struct.pcc_acpi*) #1

declare dso_local i32 @acpi_pcc_write_sset(%struct.pcc_acpi*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
