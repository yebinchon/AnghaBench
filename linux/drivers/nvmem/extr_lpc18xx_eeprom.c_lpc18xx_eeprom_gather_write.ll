; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvmem/extr_lpc18xx_eeprom.c_lpc18xx_eeprom_gather_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvmem/extr_lpc18xx_eeprom.c_lpc18xx_eeprom_gather_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpc18xx_eeprom_dev = type { i32, i64, i64 }

@LPC18XX_EEPROM_PAGE_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@LPC18XX_EEPROM_PWRDWN = common dso_local global i32 0, align 4
@LPC18XX_EEPROM_PWRDWN_NO = common dso_local global i32 0, align 4
@LPC18XX_EEPROM_PWRDWN_YES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*, i64)* @lpc18xx_eeprom_gather_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpc18xx_eeprom_gather_write(i8* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.lpc18xx_eeprom_dev*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.lpc18xx_eeprom_dev*
  store %struct.lpc18xx_eeprom_dev* %14, %struct.lpc18xx_eeprom_dev** %10, align 8
  %15 = load i32, i32* %7, align 4
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load %struct.lpc18xx_eeprom_dev*, %struct.lpc18xx_eeprom_dev** %10, align 8
  %18 = getelementptr inbounds %struct.lpc18xx_eeprom_dev, %struct.lpc18xx_eeprom_dev* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @LPC18XX_EEPROM_PAGE_SIZE, align 4
  %21 = sub i32 %19, %20
  %22 = icmp ugt i32 %16, %21
  br i1 %22, label %35, label %23

23:                                               ; preds = %4
  %24 = load i32, i32* %7, align 4
  %25 = zext i32 %24 to i64
  %26 = load i64, i64* %9, align 8
  %27 = add i64 %25, %26
  %28 = load %struct.lpc18xx_eeprom_dev*, %struct.lpc18xx_eeprom_dev** %10, align 8
  %29 = getelementptr inbounds %struct.lpc18xx_eeprom_dev, %struct.lpc18xx_eeprom_dev* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @LPC18XX_EEPROM_PAGE_SIZE, align 4
  %32 = sub i32 %30, %31
  %33 = zext i32 %32 to i64
  %34 = icmp ugt i64 %27, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %23, %4
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %5, align 4
  br label %87

38:                                               ; preds = %23
  %39 = load %struct.lpc18xx_eeprom_dev*, %struct.lpc18xx_eeprom_dev** %10, align 8
  %40 = load i32, i32* @LPC18XX_EEPROM_PWRDWN, align 4
  %41 = load i32, i32* @LPC18XX_EEPROM_PWRDWN_NO, align 4
  %42 = call i32 @lpc18xx_eeprom_writel(%struct.lpc18xx_eeprom_dev* %39, i32 %40, i32 %41)
  %43 = call i32 @usleep_range(i32 100, i32 200)
  br label %44

44:                                               ; preds = %64, %38
  %45 = load i64, i64* %9, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %82

47:                                               ; preds = %44
  %48 = load i8*, i8** %8, align 8
  %49 = bitcast i8* %48 to i32*
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.lpc18xx_eeprom_dev*, %struct.lpc18xx_eeprom_dev** %10, align 8
  %52 = getelementptr inbounds %struct.lpc18xx_eeprom_dev, %struct.lpc18xx_eeprom_dev* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = load i32, i32* %11, align 4
  %55 = zext i32 %54 to i64
  %56 = add nsw i64 %53, %55
  %57 = call i32 @writel(i32 %50, i64 %56)
  %58 = load %struct.lpc18xx_eeprom_dev*, %struct.lpc18xx_eeprom_dev** %10, align 8
  %59 = call i32 @lpc18xx_eeprom_busywait_until_prog(%struct.lpc18xx_eeprom_dev* %58)
  store i32 %59, i32* %12, align 4
  %60 = load i32, i32* %12, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %47
  %63 = load i32, i32* %12, align 4
  store i32 %63, i32* %5, align 4
  br label %87

64:                                               ; preds = %47
  %65 = load %struct.lpc18xx_eeprom_dev*, %struct.lpc18xx_eeprom_dev** %10, align 8
  %66 = getelementptr inbounds %struct.lpc18xx_eeprom_dev, %struct.lpc18xx_eeprom_dev* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* %9, align 8
  %69 = sub i64 %68, %67
  store i64 %69, i64* %9, align 8
  %70 = load %struct.lpc18xx_eeprom_dev*, %struct.lpc18xx_eeprom_dev** %10, align 8
  %71 = getelementptr inbounds %struct.lpc18xx_eeprom_dev, %struct.lpc18xx_eeprom_dev* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load i8*, i8** %8, align 8
  %74 = getelementptr i8, i8* %73, i64 %72
  store i8* %74, i8** %8, align 8
  %75 = load %struct.lpc18xx_eeprom_dev*, %struct.lpc18xx_eeprom_dev** %10, align 8
  %76 = getelementptr inbounds %struct.lpc18xx_eeprom_dev, %struct.lpc18xx_eeprom_dev* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load i32, i32* %11, align 4
  %79 = zext i32 %78 to i64
  %80 = add nsw i64 %79, %77
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %11, align 4
  br label %44

82:                                               ; preds = %44
  %83 = load %struct.lpc18xx_eeprom_dev*, %struct.lpc18xx_eeprom_dev** %10, align 8
  %84 = load i32, i32* @LPC18XX_EEPROM_PWRDWN, align 4
  %85 = load i32, i32* @LPC18XX_EEPROM_PWRDWN_YES, align 4
  %86 = call i32 @lpc18xx_eeprom_writel(%struct.lpc18xx_eeprom_dev* %83, i32 %84, i32 %85)
  store i32 0, i32* %5, align 4
  br label %87

87:                                               ; preds = %82, %62, %35
  %88 = load i32, i32* %5, align 4
  ret i32 %88
}

declare dso_local i32 @lpc18xx_eeprom_writel(%struct.lpc18xx_eeprom_dev*, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @lpc18xx_eeprom_busywait_until_prog(%struct.lpc18xx_eeprom_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
