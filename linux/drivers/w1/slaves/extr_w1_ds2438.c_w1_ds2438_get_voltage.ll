; ModuleID = '/home/carl/AnghaBench/linux/drivers/w1/slaves/extr_w1_ds2438.c_w1_ds2438_get_voltage.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/w1/slaves/extr_w1_ds2438.c_w1_ds2438_get_voltage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.w1_slave = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@W1_DS2438_RETRIES = common dso_local global i32 0, align 4
@DS2438_PAGE_SIZE = common dso_local global i32 0, align 4
@DS2438_MAX_CONVERSION_TIME = common dso_local global i32 0, align 4
@DS2438_STATUS_AD = common dso_local global i32 0, align 4
@W1_DS2438_CONVERT_VOLTAGE = common dso_local global i32 0, align 4
@DS2438_VOLTAGE_MSB = common dso_local global i64 0, align 8
@DS2438_VOLTAGE_LSB = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.w1_slave*, i32, i32*)* @w1_ds2438_get_voltage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @w1_ds2438_get_voltage(%struct.w1_slave* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.w1_slave*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.w1_slave* %0, %struct.w1_slave** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %13 = load i32, i32* @W1_DS2438_RETRIES, align 4
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* @DS2438_PAGE_SIZE, align 4
  %15 = add nsw i32 %14, 1
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %8, align 8
  %18 = alloca i64, i64 %16, align 16
  store i64 %16, i64* %9, align 8
  %19 = load i32, i32* @DS2438_MAX_CONVERSION_TIME, align 4
  store i32 %19, i32* %10, align 4
  %20 = load %struct.w1_slave*, %struct.w1_slave** %4, align 8
  %21 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = call i32 @mutex_lock(i32* %23)
  %25 = load %struct.w1_slave*, %struct.w1_slave** %4, align 8
  %26 = load i32, i32* @DS2438_STATUS_AD, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i64 @w1_ds2438_change_config_bit(%struct.w1_slave* %25, i32 %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %3
  store i32 -1, i32* %12, align 4
  br label %84

31:                                               ; preds = %3
  br label %32

32:                                               ; preds = %40, %31
  %33 = load i32, i32* %7, align 4
  %34 = add i32 %33, -1
  store i32 %34, i32* %7, align 4
  %35 = icmp ne i32 %33, 0
  br i1 %35, label %36, label %66

36:                                               ; preds = %32
  %37 = load %struct.w1_slave*, %struct.w1_slave** %4, align 8
  %38 = call i64 @w1_reset_select_slave(%struct.w1_slave* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  br label %32

41:                                               ; preds = %36
  %42 = load %struct.w1_slave*, %struct.w1_slave** %4, align 8
  %43 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = load i32, i32* @W1_DS2438_CONVERT_VOLTAGE, align 4
  %46 = call i32 @w1_write_8(%struct.TYPE_2__* %44, i32 %45)
  %47 = load %struct.w1_slave*, %struct.w1_slave** %4, align 8
  %48 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = call i32 @mutex_unlock(i32* %50)
  %52 = load i32, i32* %10, align 4
  %53 = call i64 @msleep_interruptible(i32 %52)
  store i64 %53, i64* %11, align 8
  %54 = load i64, i64* %11, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %41
  store i32 -1, i32* %12, align 4
  br label %90

57:                                               ; preds = %41
  %58 = load %struct.w1_slave*, %struct.w1_slave** %4, align 8
  %59 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %58, i32 0, i32 0
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = call i64 @mutex_lock_interruptible(i32* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %57
  store i32 -1, i32* %12, align 4
  br label %90

65:                                               ; preds = %57
  br label %66

66:                                               ; preds = %65, %32
  %67 = load %struct.w1_slave*, %struct.w1_slave** %4, align 8
  %68 = call i64 @w1_ds2438_get_page(%struct.w1_slave* %67, i32 0, i64* %18)
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %82

70:                                               ; preds = %66
  %71 = load i64, i64* @DS2438_VOLTAGE_MSB, align 8
  %72 = getelementptr inbounds i64, i64* %18, i64 %71
  %73 = load i64, i64* %72, align 8
  %74 = trunc i64 %73 to i32
  %75 = shl i32 %74, 8
  %76 = load i64, i64* @DS2438_VOLTAGE_LSB, align 8
  %77 = getelementptr inbounds i64, i64* %18, i64 %76
  %78 = load i64, i64* %77, align 8
  %79 = trunc i64 %78 to i32
  %80 = or i32 %75, %79
  %81 = load i32*, i32** %6, align 8
  store i32 %80, i32* %81, align 4
  store i32 0, i32* %12, align 4
  br label %83

82:                                               ; preds = %66
  store i32 -1, i32* %12, align 4
  br label %83

83:                                               ; preds = %82, %70
  br label %84

84:                                               ; preds = %83, %30
  %85 = load %struct.w1_slave*, %struct.w1_slave** %4, align 8
  %86 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %85, i32 0, i32 0
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = call i32 @mutex_unlock(i32* %88)
  br label %90

90:                                               ; preds = %84, %64, %56
  %91 = load i32, i32* %12, align 4
  %92 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %92)
  ret i32 %91
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @mutex_lock(i32*) #2

declare dso_local i64 @w1_ds2438_change_config_bit(%struct.w1_slave*, i32, i32) #2

declare dso_local i64 @w1_reset_select_slave(%struct.w1_slave*) #2

declare dso_local i32 @w1_write_8(%struct.TYPE_2__*, i32) #2

declare dso_local i32 @mutex_unlock(i32*) #2

declare dso_local i64 @msleep_interruptible(i32) #2

declare dso_local i64 @mutex_lock_interruptible(i32*) #2

declare dso_local i64 @w1_ds2438_get_page(%struct.w1_slave*, i32, i64*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
