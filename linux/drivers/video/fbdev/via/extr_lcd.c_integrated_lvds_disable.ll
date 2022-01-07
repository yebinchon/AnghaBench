; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/via/extr_lcd.c_integrated_lvds_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/via/extr_lcd.c_integrated_lvds_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lvds_setting_information = type { i32 }
%struct.lvds_chip_information = type { i32 }

@CRD4 = common dso_local global i32 0, align 4
@VIACR = common dso_local global i32 0, align 4
@BIT1 = common dso_local global i64 0, align 8
@CRD3 = common dso_local global i32 0, align 4
@BIT6 = common dso_local global i64 0, align 8
@BIT7 = common dso_local global i64 0, align 8
@CR6A = common dso_local global i32 0, align 4
@BIT3 = common dso_local global i64 0, align 8
@CR91 = common dso_local global i32 0, align 4
@CRD2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lvds_setting_information*, %struct.lvds_chip_information*)* @integrated_lvds_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @integrated_lvds_disable(%struct.lvds_setting_information* %0, %struct.lvds_chip_information* %1) #0 {
  %3 = alloca %struct.lvds_setting_information*, align 8
  %4 = alloca %struct.lvds_chip_information*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.lvds_setting_information* %0, %struct.lvds_setting_information** %3, align 8
  store %struct.lvds_chip_information* %1, %struct.lvds_chip_information** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load %struct.lvds_chip_information*, %struct.lvds_chip_information** %4, align 8
  %8 = getelementptr inbounds %struct.lvds_chip_information, %struct.lvds_chip_information* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp eq i32 129, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 1, i32* %5, align 4
  br label %12

12:                                               ; preds = %11, %2
  %13 = load %struct.lvds_chip_information*, %struct.lvds_chip_information** %4, align 8
  %14 = getelementptr inbounds %struct.lvds_chip_information, %struct.lvds_chip_information* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp eq i32 130, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  store i32 1, i32* %5, align 4
  br label %18

18:                                               ; preds = %17, %12
  %19 = load %struct.lvds_chip_information*, %struct.lvds_chip_information** %4, align 8
  %20 = getelementptr inbounds %struct.lvds_chip_information, %struct.lvds_chip_information* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 128, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  store i32 1, i32* %6, align 4
  br label %24

24:                                               ; preds = %23, %18
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %24
  %28 = load i32, i32* @CRD4, align 4
  %29 = load i32, i32* @VIACR, align 4
  %30 = load i64, i64* @BIT1, align 8
  %31 = call i32 @viafb_write_reg_mask(i32 %28, i32 %29, i32 0, i64 %30)
  %32 = load i32, i32* @CRD3, align 4
  %33 = load i32, i32* @VIACR, align 4
  %34 = load i64, i64* @BIT6, align 8
  %35 = load i64, i64* @BIT7, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @viafb_write_reg_mask(i32 %32, i32 %33, i32 192, i64 %36)
  br label %38

38:                                               ; preds = %27, %24
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %38
  %42 = load i32, i32* @CR6A, align 4
  %43 = load i32, i32* @VIACR, align 4
  %44 = load i64, i64* @BIT3, align 8
  %45 = call i32 @viafb_write_reg_mask(i32 %42, i32 %43, i32 0, i64 %44)
  %46 = load i32, i32* @CR91, align 4
  %47 = load i32, i32* @VIACR, align 4
  %48 = load i64, i64* @BIT6, align 8
  %49 = load i64, i64* @BIT7, align 8
  %50 = add nsw i64 %48, %49
  %51 = call i32 @viafb_write_reg_mask(i32 %46, i32 %47, i32 192, i64 %50)
  br label %52

52:                                               ; preds = %41, %38
  %53 = load %struct.lvds_chip_information*, %struct.lvds_chip_information** %4, align 8
  %54 = getelementptr inbounds %struct.lvds_chip_information, %struct.lvds_chip_information* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  switch i32 %55, label %73 [
    i32 130, label %56
    i32 128, label %61
    i32 129, label %66
  ]

56:                                               ; preds = %52
  %57 = load i32, i32* @CRD2, align 4
  %58 = load i32, i32* @VIACR, align 4
  %59 = load i64, i64* @BIT7, align 8
  %60 = call i32 @viafb_write_reg_mask(i32 %57, i32 %58, i32 128, i64 %59)
  br label %73

61:                                               ; preds = %52
  %62 = load i32, i32* @CRD2, align 4
  %63 = load i32, i32* @VIACR, align 4
  %64 = load i64, i64* @BIT6, align 8
  %65 = call i32 @viafb_write_reg_mask(i32 %62, i32 %63, i32 64, i64 %64)
  br label %73

66:                                               ; preds = %52
  %67 = load i32, i32* @CRD2, align 4
  %68 = load i32, i32* @VIACR, align 4
  %69 = load i64, i64* @BIT6, align 8
  %70 = load i64, i64* @BIT7, align 8
  %71 = add nsw i64 %69, %70
  %72 = call i32 @viafb_write_reg_mask(i32 %67, i32 %68, i32 192, i64 %71)
  br label %73

73:                                               ; preds = %52, %66, %61, %56
  ret void
}

declare dso_local i32 @viafb_write_reg_mask(i32, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
