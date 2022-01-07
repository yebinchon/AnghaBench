; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-pic32-sqi.c_pic32_sqi_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-pic32-sqi.c_pic32_sqi_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pic32_sqi = type { i64, i32 }

@PESQI_INT_ENABLE_REG = common dso_local global i64 0, align 8
@PESQI_INT_STAT_REG = common dso_local global i64 0, align 8
@IRQ_NONE = common dso_local global i32 0, align 4
@PESQI_DMAERR = common dso_local global i32 0, align 4
@PESQI_TXTHR = common dso_local global i32 0, align 4
@PESQI_TXFULL = common dso_local global i32 0, align 4
@PESQI_TXEMPTY = common dso_local global i32 0, align 4
@PESQI_RXTHR = common dso_local global i32 0, align 4
@PESQI_RXFULL = common dso_local global i32 0, align 4
@PESQI_RXEMPTY = common dso_local global i32 0, align 4
@PESQI_BDDONE = common dso_local global i32 0, align 4
@PESQI_PKTCOMP = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @pic32_sqi_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pic32_sqi_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.pic32_sqi*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.pic32_sqi*
  store %struct.pic32_sqi* %10, %struct.pic32_sqi** %6, align 8
  %11 = load %struct.pic32_sqi*, %struct.pic32_sqi** %6, align 8
  %12 = getelementptr inbounds %struct.pic32_sqi, %struct.pic32_sqi* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @PESQI_INT_ENABLE_REG, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @readl(i64 %15)
  store i32 %16, i32* %7, align 4
  %17 = load %struct.pic32_sqi*, %struct.pic32_sqi** %6, align 8
  %18 = getelementptr inbounds %struct.pic32_sqi, %struct.pic32_sqi* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @PESQI_INT_STAT_REG, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @readl(i64 %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %2
  %26 = load i32, i32* @IRQ_NONE, align 4
  store i32 %26, i32* %3, align 4
  br label %90

27:                                               ; preds = %2
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @PESQI_DMAERR, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  store i32 0, i32* %7, align 4
  br label %81

33:                                               ; preds = %27
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @PESQI_TXTHR, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %33
  %39 = load i32, i32* @PESQI_TXTHR, align 4
  %40 = load i32, i32* @PESQI_TXFULL, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @PESQI_TXEMPTY, align 4
  %43 = or i32 %41, %42
  %44 = xor i32 %43, -1
  %45 = load i32, i32* %7, align 4
  %46 = and i32 %45, %44
  store i32 %46, i32* %7, align 4
  br label %47

47:                                               ; preds = %38, %33
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* @PESQI_RXTHR, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %61

52:                                               ; preds = %47
  %53 = load i32, i32* @PESQI_RXTHR, align 4
  %54 = load i32, i32* @PESQI_RXFULL, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @PESQI_RXEMPTY, align 4
  %57 = or i32 %55, %56
  %58 = xor i32 %57, -1
  %59 = load i32, i32* %7, align 4
  %60 = and i32 %59, %58
  store i32 %60, i32* %7, align 4
  br label %61

61:                                               ; preds = %52, %47
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* @PESQI_BDDONE, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %61
  %67 = load i32, i32* @PESQI_BDDONE, align 4
  %68 = xor i32 %67, -1
  %69 = load i32, i32* %7, align 4
  %70 = and i32 %69, %68
  store i32 %70, i32* %7, align 4
  br label %71

71:                                               ; preds = %66, %61
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* @PESQI_PKTCOMP, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %71
  store i32 0, i32* %7, align 4
  %77 = load %struct.pic32_sqi*, %struct.pic32_sqi** %6, align 8
  %78 = getelementptr inbounds %struct.pic32_sqi, %struct.pic32_sqi* %77, i32 0, i32 1
  %79 = call i32 @complete(i32* %78)
  br label %80

80:                                               ; preds = %76, %71
  br label %81

81:                                               ; preds = %80, %32
  %82 = load i32, i32* %7, align 4
  %83 = load %struct.pic32_sqi*, %struct.pic32_sqi** %6, align 8
  %84 = getelementptr inbounds %struct.pic32_sqi, %struct.pic32_sqi* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @PESQI_INT_ENABLE_REG, align 8
  %87 = add nsw i64 %85, %86
  %88 = call i32 @writel(i32 %82, i64 %87)
  %89 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %89, i32* %3, align 4
  br label %90

90:                                               ; preds = %81, %25
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
