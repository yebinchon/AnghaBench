; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic94xx/extr_aic94xx_hwi.c_asd_chip_hardrst.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic94xx/extr_aic94xx_hwi.c_asd_chip_hardrst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asd_ha_struct = type { i32 }

@COMBIST = common dso_local global i32 0, align 4
@HARDRST = common dso_local global i32 0, align 4
@CHIMINT = common dso_local global i32 0, align 4
@HARDRSTDET = common dso_local global i32 0, align 4
@PORRSTDET = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @asd_chip_hardrst(%struct.asd_ha_struct* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.asd_ha_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.asd_ha_struct* %0, %struct.asd_ha_struct** %3, align 8
  store i32 100, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %15, %1
  %8 = load i32, i32* %4, align 4
  %9 = icmp slt i32 %8, 4
  br i1 %9, label %10, label %18

10:                                               ; preds = %7
  %11 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %12 = load i32, i32* @COMBIST, align 4
  %13 = load i32, i32* @HARDRST, align 4
  %14 = call i32 @asd_write_reg_dword(%struct.asd_ha_struct* %11, i32 %12, i32 %13)
  br label %15

15:                                               ; preds = %10
  %16 = load i32, i32* %4, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %4, align 4
  br label %7

18:                                               ; preds = %7
  br label %19

19:                                               ; preds = %36, %18
  %20 = call i32 @udelay(i32 1)
  %21 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %22 = load i32, i32* @CHIMINT, align 4
  %23 = call i32 @asd_read_reg_dword(%struct.asd_ha_struct* %21, i32 %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @HARDRSTDET, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %19
  %29 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %30 = load i32, i32* @CHIMINT, align 4
  %31 = load i32, i32* @HARDRSTDET, align 4
  %32 = load i32, i32* @PORRSTDET, align 4
  %33 = or i32 %31, %32
  %34 = call i32 @asd_write_reg_dword(%struct.asd_ha_struct* %29, i32 %30, i32 %33)
  store i32 0, i32* %2, align 4
  br label %43

35:                                               ; preds = %19
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %5, align 4
  %38 = add nsw i32 %37, -1
  store i32 %38, i32* %5, align 4
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %19, label %40

40:                                               ; preds = %36
  %41 = load i32, i32* @ENODEV, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %43

43:                                               ; preds = %40, %28
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i32 @asd_write_reg_dword(%struct.asd_ha_struct*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @asd_read_reg_dword(%struct.asd_ha_struct*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
