; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-sprd-adi.c_sprd_adi_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-sprd-adi.c_sprd_adi_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sprd_adi = type { i64, i32, i64 }

@ADI_READ_TIMEOUT = common dso_local global i32 0, align 4
@ADI_HWSPINLOCK_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"get the hw lock failed\0A\00", align 1
@REG_ADI_RD_CMD = common dso_local global i64 0, align 8
@REG_ADI_RD_DATA = common dso_local global i64 0, align 8
@BIT_RD_CMD_BUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"ADI read timeout\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@RD_ADDR_MASK = common dso_local global i32 0, align 4
@RD_ADDR_SHIFT = common dso_local global i32 0, align 4
@REG_ADDR_LOW_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"read error, reg addr = 0x%x, val = 0x%x\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@RD_VALUE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sprd_adi*, i32, i32*)* @sprd_adi_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sprd_adi_read(%struct.sprd_adi* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sprd_adi*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.sprd_adi* %0, %struct.sprd_adi** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %13 = load i32, i32* @ADI_READ_TIMEOUT, align 4
  store i32 %13, i32* %8, align 4
  store i32 0, i32* %12, align 4
  %14 = load %struct.sprd_adi*, %struct.sprd_adi** %5, align 8
  %15 = getelementptr inbounds %struct.sprd_adi, %struct.sprd_adi* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %33

18:                                               ; preds = %3
  %19 = load %struct.sprd_adi*, %struct.sprd_adi** %5, align 8
  %20 = getelementptr inbounds %struct.sprd_adi, %struct.sprd_adi* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i32, i32* @ADI_HWSPINLOCK_TIMEOUT, align 4
  %23 = call i32 @hwspin_lock_timeout_irqsave(i64 %21, i32 %22, i64* %9)
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* %12, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %18
  %27 = load %struct.sprd_adi*, %struct.sprd_adi** %5, align 8
  %28 = getelementptr inbounds %struct.sprd_adi, %struct.sprd_adi* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 (i32, i8*, ...) @dev_err(i32 %29, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* %12, align 4
  store i32 %31, i32* %4, align 4
  br label %106

32:                                               ; preds = %18
  br label %33

33:                                               ; preds = %32, %3
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.sprd_adi*, %struct.sprd_adi** %5, align 8
  %36 = getelementptr inbounds %struct.sprd_adi, %struct.sprd_adi* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @REG_ADI_RD_CMD, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @writel_relaxed(i32 %34, i64 %39)
  br label %41

41:                                               ; preds = %55, %33
  %42 = load %struct.sprd_adi*, %struct.sprd_adi** %5, align 8
  %43 = getelementptr inbounds %struct.sprd_adi, %struct.sprd_adi* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @REG_ADI_RD_DATA, align 8
  %46 = add nsw i64 %44, %45
  %47 = call i32 @readl_relaxed(i64 %46)
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* @BIT_RD_CMD_BUSY, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %41
  br label %59

53:                                               ; preds = %41
  %54 = call i32 (...) @cpu_relax()
  br label %55

55:                                               ; preds = %53
  %56 = load i32, i32* %8, align 4
  %57 = add nsw i32 %56, -1
  store i32 %57, i32* %8, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %41, label %59

59:                                               ; preds = %55, %52
  %60 = load i32, i32* %8, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %59
  %63 = load %struct.sprd_adi*, %struct.sprd_adi** %5, align 8
  %64 = getelementptr inbounds %struct.sprd_adi, %struct.sprd_adi* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = call i32 (i32, i8*, ...) @dev_err(i32 %65, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %67 = load i32, i32* @EBUSY, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %12, align 4
  br label %94

69:                                               ; preds = %59
  %70 = load i32, i32* %10, align 4
  %71 = load i32, i32* @RD_ADDR_MASK, align 4
  %72 = and i32 %70, %71
  %73 = load i32, i32* @RD_ADDR_SHIFT, align 4
  %74 = ashr i32 %72, %73
  store i32 %74, i32* %11, align 4
  %75 = load i32, i32* %11, align 4
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* @REG_ADDR_LOW_MASK, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %75, %78
  br i1 %79, label %80, label %89

80:                                               ; preds = %69
  %81 = load %struct.sprd_adi*, %struct.sprd_adi** %5, align 8
  %82 = getelementptr inbounds %struct.sprd_adi, %struct.sprd_adi* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* %6, align 4
  %85 = load i32, i32* %10, align 4
  %86 = call i32 (i32, i8*, ...) @dev_err(i32 %83, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %84, i32 %85)
  %87 = load i32, i32* @EIO, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %12, align 4
  br label %94

89:                                               ; preds = %69
  %90 = load i32, i32* %10, align 4
  %91 = load i32, i32* @RD_VALUE_MASK, align 4
  %92 = and i32 %90, %91
  %93 = load i32*, i32** %7, align 8
  store i32 %92, i32* %93, align 4
  br label %94

94:                                               ; preds = %89, %80, %62
  %95 = load %struct.sprd_adi*, %struct.sprd_adi** %5, align 8
  %96 = getelementptr inbounds %struct.sprd_adi, %struct.sprd_adi* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %94
  %100 = load %struct.sprd_adi*, %struct.sprd_adi** %5, align 8
  %101 = getelementptr inbounds %struct.sprd_adi, %struct.sprd_adi* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = call i32 @hwspin_unlock_irqrestore(i64 %102, i64* %9)
  br label %104

104:                                              ; preds = %99, %94
  %105 = load i32, i32* %12, align 4
  store i32 %105, i32* %4, align 4
  br label %106

106:                                              ; preds = %104, %26
  %107 = load i32, i32* %4, align 4
  ret i32 %107
}

declare dso_local i32 @hwspin_lock_timeout_irqsave(i64, i32, i64*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @hwspin_unlock_irqrestore(i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
