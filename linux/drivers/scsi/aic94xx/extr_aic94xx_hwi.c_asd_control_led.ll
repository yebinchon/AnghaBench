; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic94xx/extr_aic94xx_hwi.c_asd_control_led.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic94xx/extr_aic94xx_hwi.c_asd_control_led.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asd_ha_struct = type { i32 }

@ASD_MAX_PHYS = common dso_local global i32 0, align 4
@GPIOOER = common dso_local global i32 0, align 4
@GPIOCNFGR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @asd_control_led(%struct.asd_ha_struct* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.asd_ha_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.asd_ha_struct* %0, %struct.asd_ha_struct** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @ASD_MAX_PHYS, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %54

11:                                               ; preds = %3
  %12 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %4, align 8
  %13 = load i32, i32* @GPIOOER, align 4
  %14 = call i32 @asd_read_reg_dword(%struct.asd_ha_struct* %12, i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %11
  %18 = load i32, i32* %5, align 4
  %19 = shl i32 1, %18
  %20 = load i32, i32* %7, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %7, align 4
  br label %28

22:                                               ; preds = %11
  %23 = load i32, i32* %5, align 4
  %24 = shl i32 1, %23
  %25 = xor i32 %24, -1
  %26 = load i32, i32* %7, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %7, align 4
  br label %28

28:                                               ; preds = %22, %17
  %29 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %4, align 8
  %30 = load i32, i32* @GPIOOER, align 4
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @asd_write_reg_dword(%struct.asd_ha_struct* %29, i32 %30, i32 %31)
  %33 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %4, align 8
  %34 = load i32, i32* @GPIOCNFGR, align 4
  %35 = call i32 @asd_read_reg_dword(%struct.asd_ha_struct* %33, i32 %34)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %28
  %39 = load i32, i32* %5, align 4
  %40 = shl i32 1, %39
  %41 = load i32, i32* %7, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %7, align 4
  br label %49

43:                                               ; preds = %28
  %44 = load i32, i32* %5, align 4
  %45 = shl i32 1, %44
  %46 = xor i32 %45, -1
  %47 = load i32, i32* %7, align 4
  %48 = and i32 %47, %46
  store i32 %48, i32* %7, align 4
  br label %49

49:                                               ; preds = %43, %38
  %50 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %4, align 8
  %51 = load i32, i32* @GPIOCNFGR, align 4
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @asd_write_reg_dword(%struct.asd_ha_struct* %50, i32 %51, i32 %52)
  br label %54

54:                                               ; preds = %49, %3
  ret void
}

declare dso_local i32 @asd_read_reg_dword(%struct.asd_ha_struct*, i32) #1

declare dso_local i32 @asd_write_reg_dword(%struct.asd_ha_struct*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
