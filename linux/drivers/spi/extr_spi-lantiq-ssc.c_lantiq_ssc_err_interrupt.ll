; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-lantiq-ssc.c_lantiq_ssc_err_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-lantiq-ssc.c_lantiq_ssc_err_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lantiq_ssc_spi = type { i32, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@LTQ_SPI_STAT = common dso_local global i32 0, align 4
@LTQ_SPI_STAT_ERRORS = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@LTQ_SPI_STAT_RUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"receive underflow error\0A\00", align 1
@LTQ_SPI_STAT_TUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"transmit underflow error\0A\00", align 1
@LTQ_SPI_STAT_AE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"abort error\0A\00", align 1
@LTQ_SPI_STAT_RE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"receive overflow error\0A\00", align 1
@LTQ_SPI_STAT_TE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"transmit overflow error\0A\00", align 1
@LTQ_SPI_STAT_ME = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [12 x i8] c"mode error\0A\00", align 1
@LTQ_SPI_WHBSTATE_CLR_ERRORS = common dso_local global i32 0, align 4
@LTQ_SPI_WHBSTATE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @lantiq_ssc_err_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lantiq_ssc_err_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.lantiq_ssc_spi*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.lantiq_ssc_spi*
  store %struct.lantiq_ssc_spi* %9, %struct.lantiq_ssc_spi** %6, align 8
  %10 = load %struct.lantiq_ssc_spi*, %struct.lantiq_ssc_spi** %6, align 8
  %11 = load i32, i32* @LTQ_SPI_STAT, align 4
  %12 = call i32 @lantiq_ssc_readl(%struct.lantiq_ssc_spi* %10, i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @LTQ_SPI_STAT_ERRORS, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @IRQ_NONE, align 4
  store i32 %18, i32* %3, align 4
  br label %107

19:                                               ; preds = %2
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @LTQ_SPI_STAT_RUE, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = load %struct.lantiq_ssc_spi*, %struct.lantiq_ssc_spi** %6, align 8
  %26 = getelementptr inbounds %struct.lantiq_ssc_spi, %struct.lantiq_ssc_spi* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @dev_err(i32 %27, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %29

29:                                               ; preds = %24, %19
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @LTQ_SPI_STAT_TUE, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = load %struct.lantiq_ssc_spi*, %struct.lantiq_ssc_spi** %6, align 8
  %36 = getelementptr inbounds %struct.lantiq_ssc_spi, %struct.lantiq_ssc_spi* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @dev_err(i32 %37, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %39

39:                                               ; preds = %34, %29
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @LTQ_SPI_STAT_AE, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %39
  %45 = load %struct.lantiq_ssc_spi*, %struct.lantiq_ssc_spi** %6, align 8
  %46 = getelementptr inbounds %struct.lantiq_ssc_spi, %struct.lantiq_ssc_spi* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @dev_err(i32 %47, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  br label %49

49:                                               ; preds = %44, %39
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @LTQ_SPI_STAT_RE, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %49
  %55 = load %struct.lantiq_ssc_spi*, %struct.lantiq_ssc_spi** %6, align 8
  %56 = getelementptr inbounds %struct.lantiq_ssc_spi, %struct.lantiq_ssc_spi* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @dev_err(i32 %57, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  br label %59

59:                                               ; preds = %54, %49
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* @LTQ_SPI_STAT_TE, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %59
  %65 = load %struct.lantiq_ssc_spi*, %struct.lantiq_ssc_spi** %6, align 8
  %66 = getelementptr inbounds %struct.lantiq_ssc_spi, %struct.lantiq_ssc_spi* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @dev_err(i32 %67, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  br label %69

69:                                               ; preds = %64, %59
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* @LTQ_SPI_STAT_ME, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %69
  %75 = load %struct.lantiq_ssc_spi*, %struct.lantiq_ssc_spi** %6, align 8
  %76 = getelementptr inbounds %struct.lantiq_ssc_spi, %struct.lantiq_ssc_spi* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @dev_err(i32 %77, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  br label %79

79:                                               ; preds = %74, %69
  %80 = load %struct.lantiq_ssc_spi*, %struct.lantiq_ssc_spi** %6, align 8
  %81 = load i32, i32* @LTQ_SPI_WHBSTATE_CLR_ERRORS, align 4
  %82 = load i32, i32* @LTQ_SPI_WHBSTATE, align 4
  %83 = call i32 @lantiq_ssc_maskl(%struct.lantiq_ssc_spi* %80, i32 0, i32 %81, i32 %82)
  %84 = load %struct.lantiq_ssc_spi*, %struct.lantiq_ssc_spi** %6, align 8
  %85 = getelementptr inbounds %struct.lantiq_ssc_spi, %struct.lantiq_ssc_spi* %84, i32 0, i32 2
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %87, align 8
  %89 = icmp ne %struct.TYPE_3__* %88, null
  br i1 %89, label %90, label %99

90:                                               ; preds = %79
  %91 = load i32, i32* @EIO, align 4
  %92 = sub nsw i32 0, %91
  %93 = load %struct.lantiq_ssc_spi*, %struct.lantiq_ssc_spi** %6, align 8
  %94 = getelementptr inbounds %struct.lantiq_ssc_spi, %struct.lantiq_ssc_spi* %93, i32 0, i32 2
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 0
  store i32 %92, i32* %98, align 4
  br label %99

99:                                               ; preds = %90, %79
  %100 = load %struct.lantiq_ssc_spi*, %struct.lantiq_ssc_spi** %6, align 8
  %101 = getelementptr inbounds %struct.lantiq_ssc_spi, %struct.lantiq_ssc_spi* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.lantiq_ssc_spi*, %struct.lantiq_ssc_spi** %6, align 8
  %104 = getelementptr inbounds %struct.lantiq_ssc_spi, %struct.lantiq_ssc_spi* %103, i32 0, i32 0
  %105 = call i32 @queue_work(i32 %102, i32* %104)
  %106 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %106, i32* %3, align 4
  br label %107

107:                                              ; preds = %99, %17
  %108 = load i32, i32* %3, align 4
  ret i32 %108
}

declare dso_local i32 @lantiq_ssc_readl(%struct.lantiq_ssc_spi*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @lantiq_ssc_maskl(%struct.lantiq_ssc_spi*, i32, i32, i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
