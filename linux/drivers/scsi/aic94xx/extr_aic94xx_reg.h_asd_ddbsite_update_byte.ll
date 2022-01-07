; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic94xx/extr_aic94xx_reg.h_asd_ddbsite_update_byte.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic94xx/extr_aic94xx_reg.h_asd_ddbsite_update_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asd_ha_struct = type { i32 }

@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.asd_ha_struct*, i32, i32, i32, i32)* @asd_ddbsite_update_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asd_ddbsite_update_byte(%struct.asd_ha_struct* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.asd_ha_struct*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.asd_ha_struct* %0, %struct.asd_ha_struct** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load i32, i32* %9, align 4
  %16 = and i32 %15, -2
  store i32 %16, i32* %12, align 4
  %17 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %7, align 8
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* %12, align 4
  %20 = call i32 @asd_ddbsite_read_word(%struct.asd_ha_struct* %17, i32 %18, i32 %19)
  store i32 %20, i32* %14, align 4
  %21 = load i32, i32* %9, align 4
  %22 = and i32 %21, 1
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %43

24:                                               ; preds = %5
  %25 = load i32, i32* %14, align 4
  %26 = ashr i32 %25, 8
  %27 = load i32, i32* %10, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load i32, i32* @EAGAIN, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %6, align 4
  br label %67

32:                                               ; preds = %24
  %33 = load i32, i32* %11, align 4
  %34 = shl i32 %33, 8
  %35 = load i32, i32* %14, align 4
  %36 = and i32 %35, 255
  %37 = or i32 %34, %36
  store i32 %37, i32* %14, align 4
  %38 = load i32, i32* %10, align 4
  %39 = shl i32 %38, 8
  %40 = load i32, i32* %14, align 4
  %41 = and i32 %40, 255
  %42 = or i32 %39, %41
  store i32 %42, i32* %13, align 4
  br label %60

43:                                               ; preds = %5
  %44 = load i32, i32* %14, align 4
  %45 = and i32 %44, 255
  %46 = load i32, i32* %10, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load i32, i32* @EAGAIN, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %6, align 4
  br label %67

51:                                               ; preds = %43
  %52 = load i32, i32* %14, align 4
  %53 = and i32 %52, 65280
  %54 = load i32, i32* %11, align 4
  %55 = or i32 %53, %54
  store i32 %55, i32* %14, align 4
  %56 = load i32, i32* %14, align 4
  %57 = and i32 %56, 65280
  %58 = load i32, i32* %10, align 4
  %59 = or i32 %57, %58
  store i32 %59, i32* %13, align 4
  br label %60

60:                                               ; preds = %51, %32
  %61 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %7, align 8
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* %12, align 4
  %64 = load i32, i32* %13, align 4
  %65 = load i32, i32* %14, align 4
  %66 = call i32 @asd_ddbsite_update_word(%struct.asd_ha_struct* %61, i32 %62, i32 %63, i32 %64, i32 %65)
  store i32 %66, i32* %6, align 4
  br label %67

67:                                               ; preds = %60, %48, %29
  %68 = load i32, i32* %6, align 4
  ret i32 %68
}

declare dso_local i32 @asd_ddbsite_read_word(%struct.asd_ha_struct*, i32, i32) #1

declare dso_local i32 @asd_ddbsite_update_word(%struct.asd_ha_struct*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
