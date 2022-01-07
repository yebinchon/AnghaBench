; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic94xx/extr_aic94xx_sds.c_asd_chk_write_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic94xx/extr_aic94xx_sds.c_asd_chk_write_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asd_ha_struct = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@FLASH_STATUS_BIT_MASK_DQ6 = common dso_local global i32 0, align 4
@FLASH_STATUS_BIT_MASK_DQ5 = common dso_local global i32 0, align 4
@FLASH_STATUS_ERASE_DELAY_COUNT = common dso_local global i32 0, align 4
@FLASH_STATUS_WRITE_DELAY_COUNT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @asd_chk_write_status(%struct.asd_ha_struct* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.asd_ha_struct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.asd_ha_struct* %0, %struct.asd_ha_struct** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %5, align 8
  %14 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %18

18:                                               ; preds = %72, %3
  %19 = load i32, i32* %9, align 4
  %20 = icmp slt i32 %19, 50000
  br i1 %20, label %21, label %75

21:                                               ; preds = %18
  %22 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %5, align 8
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @asd_read_reg_byte(%struct.asd_ha_struct* %22, i32 %23)
  store i32 %24, i32* %10, align 4
  %25 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %5, align 8
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @asd_read_reg_byte(%struct.asd_ha_struct* %25, i32 %26)
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* @FLASH_STATUS_BIT_MASK_DQ6, align 4
  %30 = and i32 %28, %29
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* @FLASH_STATUS_BIT_MASK_DQ6, align 4
  %33 = and i32 %31, %32
  %34 = xor i32 %30, %33
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* %12, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %21
  store i32 0, i32* %4, align 4
  br label %76

38:                                               ; preds = %21
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* @FLASH_STATUS_BIT_MASK_DQ5, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %61

43:                                               ; preds = %38
  %44 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %5, align 8
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @asd_read_reg_byte(%struct.asd_ha_struct* %44, i32 %45)
  store i32 %46, i32* %10, align 4
  %47 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %5, align 8
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @asd_read_reg_byte(%struct.asd_ha_struct* %47, i32 %48)
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* @FLASH_STATUS_BIT_MASK_DQ6, align 4
  %52 = and i32 %50, %51
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* @FLASH_STATUS_BIT_MASK_DQ6, align 4
  %55 = and i32 %53, %54
  %56 = xor i32 %52, %55
  store i32 %56, i32* %12, align 4
  %57 = load i32, i32* %12, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %43
  store i32 0, i32* %4, align 4
  br label %76

60:                                               ; preds = %43
  br label %61

61:                                               ; preds = %60, %38
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %7, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %62
  %66 = load i32, i32* @FLASH_STATUS_ERASE_DELAY_COUNT, align 4
  %67 = call i32 @udelay(i32 %66)
  br label %71

68:                                               ; preds = %62
  %69 = load i32, i32* @FLASH_STATUS_WRITE_DELAY_COUNT, align 4
  %70 = call i32 @udelay(i32 %69)
  br label %71

71:                                               ; preds = %68, %65
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %9, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %9, align 4
  br label %18

75:                                               ; preds = %18
  store i32 -1, i32* %4, align 4
  br label %76

76:                                               ; preds = %75, %59, %37
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local i32 @asd_read_reg_byte(%struct.asd_ha_struct*, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
