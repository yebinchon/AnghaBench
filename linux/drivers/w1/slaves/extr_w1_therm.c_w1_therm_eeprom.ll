; ModuleID = '/home/carl/AnghaBench/linux/drivers/w1/slaves/extr_w1_therm.c_w1_therm_eeprom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/w1/slaves/extr_w1_therm.c_w1_therm_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.w1_slave = type { i64*, %struct.w1_master* }
%struct.w1_master = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@W1_READ_PSUPPLY = common dso_local global i32 0, align 4
@w1_strong_pullup = common dso_local global i32 0, align 4
@W1_COPY_SCRATCHPAD = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @w1_therm_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @w1_therm_eeprom(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.w1_slave*, align 8
  %4 = alloca %struct.w1_master*, align 8
  %5 = alloca [9 x i64], align 16
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %12 = load %struct.device*, %struct.device** %2, align 8
  %13 = call %struct.w1_slave* @dev_to_w1_slave(%struct.device* %12)
  store %struct.w1_slave* %13, %struct.w1_slave** %3, align 8
  %14 = load %struct.w1_slave*, %struct.w1_slave** %3, align 8
  %15 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %14, i32 0, i32 1
  %16 = load %struct.w1_master*, %struct.w1_master** %15, align 8
  store %struct.w1_master* %16, %struct.w1_master** %4, align 8
  store i32 10, i32* %8, align 4
  %17 = load %struct.w1_slave*, %struct.w1_slave** %3, align 8
  %18 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %17, i32 0, i32 0
  %19 = load i64*, i64** %18, align 8
  store i64* %19, i64** %9, align 8
  %20 = load %struct.w1_slave*, %struct.w1_slave** %3, align 8
  %21 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %20, i32 0, i32 0
  %22 = load i64*, i64** %21, align 8
  %23 = icmp ne i64* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %1
  %25 = load i32, i32* @ENODEV, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %7, align 4
  br label %120

27:                                               ; preds = %1
  %28 = load i64*, i64** %9, align 8
  %29 = call i32 @THERM_REFCNT(i64* %28)
  %30 = call i32 @atomic_inc(i32 %29)
  %31 = load %struct.w1_master*, %struct.w1_master** %4, align 8
  %32 = getelementptr inbounds %struct.w1_master, %struct.w1_master* %31, i32 0, i32 0
  %33 = call i32 @mutex_lock_interruptible(i32* %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %27
  br label %116

37:                                               ; preds = %27
  %38 = getelementptr inbounds [9 x i64], [9 x i64]* %5, i64 0, i64 0
  %39 = call i32 @memset(i64* %38, i32 0, i32 72)
  br label %40

40:                                               ; preds = %110, %57, %37
  %41 = load i32, i32* %8, align 4
  %42 = add nsw i32 %41, -1
  store i32 %42, i32* %8, align 4
  %43 = icmp ne i32 %41, 0
  br i1 %43, label %44, label %111

44:                                               ; preds = %40
  %45 = load %struct.w1_slave*, %struct.w1_slave** %3, align 8
  %46 = call i64 @w1_reset_select_slave(%struct.w1_slave* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %110, label %48

48:                                               ; preds = %44
  store i32 10, i32* %10, align 4
  %49 = load %struct.w1_master*, %struct.w1_master** %4, align 8
  %50 = load i32, i32* @W1_READ_PSUPPLY, align 4
  %51 = call i32 @w1_write_8(%struct.w1_master* %49, i32 %50)
  %52 = load %struct.w1_master*, %struct.w1_master** %4, align 8
  %53 = call i64 @w1_read_8(%struct.w1_master* %52)
  store i64 %53, i64* %6, align 8
  %54 = load %struct.w1_slave*, %struct.w1_slave** %3, align 8
  %55 = call i64 @w1_reset_select_slave(%struct.w1_slave* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %48
  br label %40

58:                                               ; preds = %48
  %59 = load i32, i32* @w1_strong_pullup, align 4
  %60 = icmp eq i32 %59, 2
  br i1 %60, label %67, label %61

61:                                               ; preds = %58
  %62 = load i64, i64* %6, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %71, label %64

64:                                               ; preds = %61
  %65 = load i32, i32* @w1_strong_pullup, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %64, %58
  %68 = load %struct.w1_master*, %struct.w1_master** %4, align 8
  %69 = load i32, i32* %10, align 4
  %70 = call i32 @w1_next_pullup(%struct.w1_master* %68, i32 %69)
  br label %71

71:                                               ; preds = %67, %64, %61
  %72 = load %struct.w1_master*, %struct.w1_master** %4, align 8
  %73 = load i32, i32* @W1_COPY_SCRATCHPAD, align 4
  %74 = call i32 @w1_write_8(%struct.w1_master* %72, i32 %73)
  %75 = load i64, i64* %6, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %96

77:                                               ; preds = %71
  %78 = load %struct.w1_master*, %struct.w1_master** %4, align 8
  %79 = getelementptr inbounds %struct.w1_master, %struct.w1_master* %78, i32 0, i32 0
  %80 = call i32 @mutex_unlock(i32* %79)
  %81 = load i32, i32* %10, align 4
  %82 = call i64 @msleep_interruptible(i32 %81)
  store i64 %82, i64* %11, align 8
  %83 = load i64, i64* %11, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %77
  %86 = load i32, i32* @EINTR, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %7, align 4
  br label %116

88:                                               ; preds = %77
  %89 = load %struct.w1_master*, %struct.w1_master** %4, align 8
  %90 = getelementptr inbounds %struct.w1_master, %struct.w1_master* %89, i32 0, i32 0
  %91 = call i32 @mutex_lock_interruptible(i32* %90)
  store i32 %91, i32* %7, align 4
  %92 = load i32, i32* %7, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %88
  br label %116

95:                                               ; preds = %88
  br label %109

96:                                               ; preds = %71
  %97 = load i32, i32* @w1_strong_pullup, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %108, label %99

99:                                               ; preds = %96
  %100 = load i32, i32* %10, align 4
  %101 = call i64 @msleep_interruptible(i32 %100)
  store i64 %101, i64* %11, align 8
  %102 = load i64, i64* %11, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %99
  %105 = load i32, i32* @EINTR, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %7, align 4
  br label %112

107:                                              ; preds = %99
  br label %108

108:                                              ; preds = %107, %96
  br label %109

109:                                              ; preds = %108, %95
  br label %111

110:                                              ; preds = %44
  br label %40

111:                                              ; preds = %109, %40
  br label %112

112:                                              ; preds = %111, %104
  %113 = load %struct.w1_master*, %struct.w1_master** %4, align 8
  %114 = getelementptr inbounds %struct.w1_master, %struct.w1_master* %113, i32 0, i32 0
  %115 = call i32 @mutex_unlock(i32* %114)
  br label %116

116:                                              ; preds = %112, %94, %85, %36
  %117 = load i64*, i64** %9, align 8
  %118 = call i32 @THERM_REFCNT(i64* %117)
  %119 = call i32 @atomic_dec(i32 %118)
  br label %120

120:                                              ; preds = %116, %24
  %121 = load i32, i32* %7, align 4
  ret i32 %121
}

declare dso_local %struct.w1_slave* @dev_to_w1_slave(%struct.device*) #1

declare dso_local i32 @atomic_inc(i32) #1

declare dso_local i32 @THERM_REFCNT(i64*) #1

declare dso_local i32 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @memset(i64*, i32, i32) #1

declare dso_local i64 @w1_reset_select_slave(%struct.w1_slave*) #1

declare dso_local i32 @w1_write_8(%struct.w1_master*, i32) #1

declare dso_local i64 @w1_read_8(%struct.w1_master*) #1

declare dso_local i32 @w1_next_pullup(%struct.w1_master*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @msleep_interruptible(i32) #1

declare dso_local i32 @atomic_dec(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
