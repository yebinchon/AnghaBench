; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic94xx/extr_aic94xx_reg.h_asd_ddbsite_update_word.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic94xx/extr_aic94xx_reg.h_asd_ddbsite_update_word.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asd_ha_struct = type { i32 }

@EAGAIN = common dso_local global i32 0, align 4
@AOLDDATA = common dso_local global i32 0, align 4
@ANEWDATA = common dso_local global i32 0, align 4
@ATOMICSTATCTL = common dso_local global i32 0, align 4
@ATOMICDONE = common dso_local global i32 0, align 4
@ATOMICERR = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@ATOMICWIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.asd_ha_struct*, i64, i64, i64, i64)* @asd_ddbsite_update_word to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asd_ddbsite_update_word(%struct.asd_ha_struct* %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.asd_ha_struct*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.asd_ha_struct* %0, %struct.asd_ha_struct** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %7, align 8
  %15 = load i64, i64* %8, align 8
  %16 = load i64, i64* %9, align 8
  %17 = call i64 @asd_ddbsite_read_word(%struct.asd_ha_struct* %14, i64 %15, i64 %16)
  store i64 %17, i64* %13, align 8
  %18 = load i64, i64* %13, align 8
  %19 = load i64, i64* %10, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %5
  %22 = load i32, i32* @EAGAIN, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %6, align 4
  br label %60

24:                                               ; preds = %5
  %25 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %7, align 8
  %26 = load i32, i32* @AOLDDATA, align 4
  %27 = load i64, i64* %10, align 8
  %28 = call i32 @asd_write_reg_word(%struct.asd_ha_struct* %25, i32 %26, i64 %27)
  %29 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %7, align 8
  %30 = load i32, i32* @ANEWDATA, align 4
  %31 = load i64, i64* %11, align 8
  %32 = call i32 @asd_write_reg_word(%struct.asd_ha_struct* %29, i32 %30, i64 %31)
  br label %33

33:                                               ; preds = %37, %24
  %34 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %7, align 8
  %35 = load i32, i32* @ATOMICSTATCTL, align 4
  %36 = call i32 @asd_read_reg_byte(%struct.asd_ha_struct* %34, i32 %35)
  store i32 %36, i32* %12, align 4
  br label %37

37:                                               ; preds = %33
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* @ATOMICDONE, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  br i1 %42, label %33, label %43

43:                                               ; preds = %37
  %44 = load i32, i32* %12, align 4
  %45 = load i32, i32* @ATOMICERR, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load i32, i32* @EFAULT, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %6, align 4
  br label %60

51:                                               ; preds = %43
  %52 = load i32, i32* %12, align 4
  %53 = load i32, i32* @ATOMICWIN, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  store i32 0, i32* %6, align 4
  br label %60

57:                                               ; preds = %51
  %58 = load i32, i32* @EAGAIN, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %6, align 4
  br label %60

60:                                               ; preds = %57, %56, %48, %21
  %61 = load i32, i32* %6, align 4
  ret i32 %61
}

declare dso_local i64 @asd_ddbsite_read_word(%struct.asd_ha_struct*, i64, i64) #1

declare dso_local i32 @asd_write_reg_word(%struct.asd_ha_struct*, i32, i64) #1

declare dso_local i32 @asd_read_reg_byte(%struct.asd_ha_struct*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
