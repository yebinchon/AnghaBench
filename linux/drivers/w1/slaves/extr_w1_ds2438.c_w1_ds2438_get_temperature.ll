; ModuleID = '/home/carl/AnghaBench/linux/drivers/w1/slaves/extr_w1_ds2438.c_w1_ds2438_get_temperature.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/w1/slaves/extr_w1_ds2438.c_w1_ds2438_get_temperature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.w1_slave = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@W1_DS2438_RETRIES = common dso_local global i32 0, align 4
@DS2438_PAGE_SIZE = common dso_local global i32 0, align 4
@DS2438_MAX_CONVERSION_TIME = common dso_local global i32 0, align 4
@W1_DS2438_CONVERT_TEMP = common dso_local global i32 0, align 4
@DS2438_TEMP_MSB = common dso_local global i64 0, align 8
@DS2438_TEMP_LSB = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.w1_slave*, i32*)* @w1_ds2438_get_temperature to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @w1_ds2438_get_temperature(%struct.w1_slave* %0, i32* %1) #0 {
  %3 = alloca %struct.w1_slave*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.w1_slave* %0, %struct.w1_slave** %3, align 8
  store i32* %1, i32** %4, align 8
  %11 = load i32, i32* @W1_DS2438_RETRIES, align 4
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* @DS2438_PAGE_SIZE, align 4
  %13 = add nsw i32 %12, 1
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %6, align 8
  %16 = alloca i64, i64 %14, align 16
  store i64 %14, i64* %7, align 8
  %17 = load i32, i32* @DS2438_MAX_CONVERSION_TIME, align 4
  store i32 %17, i32* %8, align 4
  %18 = load %struct.w1_slave*, %struct.w1_slave** %3, align 8
  %19 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = call i32 @mutex_lock(i32* %21)
  br label %23

23:                                               ; preds = %31, %2
  %24 = load i32, i32* %5, align 4
  %25 = add i32 %24, -1
  store i32 %25, i32* %5, align 4
  %26 = icmp ne i32 %24, 0
  br i1 %26, label %27, label %57

27:                                               ; preds = %23
  %28 = load %struct.w1_slave*, %struct.w1_slave** %3, align 8
  %29 = call i64 @w1_reset_select_slave(%struct.w1_slave* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  br label %23

32:                                               ; preds = %27
  %33 = load %struct.w1_slave*, %struct.w1_slave** %3, align 8
  %34 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = load i32, i32* @W1_DS2438_CONVERT_TEMP, align 4
  %37 = call i32 @w1_write_8(%struct.TYPE_2__* %35, i32 %36)
  %38 = load %struct.w1_slave*, %struct.w1_slave** %3, align 8
  %39 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = call i32 @mutex_unlock(i32* %41)
  %43 = load i32, i32* %8, align 4
  %44 = call i64 @msleep_interruptible(i32 %43)
  store i64 %44, i64* %9, align 8
  %45 = load i64, i64* %9, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %32
  store i32 -1, i32* %10, align 4
  br label %80

48:                                               ; preds = %32
  %49 = load %struct.w1_slave*, %struct.w1_slave** %3, align 8
  %50 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = call i64 @mutex_lock_interruptible(i32* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %48
  store i32 -1, i32* %10, align 4
  br label %80

56:                                               ; preds = %48
  br label %57

57:                                               ; preds = %56, %23
  %58 = load %struct.w1_slave*, %struct.w1_slave** %3, align 8
  %59 = call i64 @w1_ds2438_get_page(%struct.w1_slave* %58, i32 0, i64* %16)
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %73

61:                                               ; preds = %57
  %62 = load i64, i64* @DS2438_TEMP_MSB, align 8
  %63 = getelementptr inbounds i64, i64* %16, i64 %62
  %64 = load i64, i64* %63, align 8
  %65 = trunc i64 %64 to i32
  %66 = shl i32 %65, 8
  %67 = load i64, i64* @DS2438_TEMP_LSB, align 8
  %68 = getelementptr inbounds i64, i64* %16, i64 %67
  %69 = load i64, i64* %68, align 8
  %70 = trunc i64 %69 to i32
  %71 = or i32 %66, %70
  %72 = load i32*, i32** %4, align 8
  store i32 %71, i32* %72, align 4
  store i32 0, i32* %10, align 4
  br label %74

73:                                               ; preds = %57
  store i32 -1, i32* %10, align 4
  br label %74

74:                                               ; preds = %73, %61
  %75 = load %struct.w1_slave*, %struct.w1_slave** %3, align 8
  %76 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %75, i32 0, i32 0
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = call i32 @mutex_unlock(i32* %78)
  br label %80

80:                                               ; preds = %74, %55, %47
  %81 = load i32, i32* %10, align 4
  %82 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %82)
  ret i32 %81
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @mutex_lock(i32*) #2

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
