; ModuleID = '/home/carl/AnghaBench/linux/drivers/w1/slaves/extr_w1_therm.c_w1_DS18B20_precision.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/w1/slaves/extr_w1_therm.c_w1_DS18B20_precision.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.w1_slave = type { i32*, %struct.w1_master* }
%struct.w1_master = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"Unsupported precision\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@W1_READ_SCRATCHPAD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"w1_read_block() returned %u instead of 9.\0A\00", align 1
@W1_WRITE_SCRATCHPAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32)* @w1_DS18B20_precision to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @w1_DS18B20_precision(%struct.device* %0, i32 %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.w1_slave*, align 8
  %6 = alloca %struct.w1_master*, align 8
  %7 = alloca [9 x i32], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store i32 %1, i32* %4, align 4
  %15 = load %struct.device*, %struct.device** %3, align 8
  %16 = call %struct.w1_slave* @dev_to_w1_slave(%struct.device* %15)
  store %struct.w1_slave* %16, %struct.w1_slave** %5, align 8
  %17 = load %struct.w1_slave*, %struct.w1_slave** %5, align 8
  %18 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %17, i32 0, i32 1
  %19 = load %struct.w1_master*, %struct.w1_master** %18, align 8
  store %struct.w1_master* %19, %struct.w1_master** %6, align 8
  store i32 10, i32* %10, align 4
  %20 = load %struct.w1_slave*, %struct.w1_slave** %5, align 8
  %21 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %11, align 8
  store i32 96, i32* %13, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp sgt i32 %23, 12
  br i1 %24, label %28, label %25

25:                                               ; preds = %2
  %26 = load i32, i32* %4, align 4
  %27 = icmp slt i32 %26, 9
  br i1 %27, label %28, label %32

28:                                               ; preds = %25, %2
  %29 = call i32 @pr_warn(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %9, align 4
  br label %129

32:                                               ; preds = %25
  %33 = load %struct.w1_slave*, %struct.w1_slave** %5, align 8
  %34 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %32
  %38 = load i32, i32* @ENODEV, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %9, align 4
  br label %129

40:                                               ; preds = %32
  %41 = load i32*, i32** %11, align 8
  %42 = call i32 @THERM_REFCNT(i32* %41)
  %43 = call i32 @atomic_inc(i32 %42)
  %44 = load %struct.w1_master*, %struct.w1_master** %6, align 8
  %45 = getelementptr inbounds %struct.w1_master, %struct.w1_master* %44, i32 0, i32 0
  %46 = call i32 @mutex_lock_interruptible(i32* %45)
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %40
  br label %125

50:                                               ; preds = %40
  %51 = getelementptr inbounds [9 x i32], [9 x i32]* %7, i64 0, i64 0
  %52 = call i32 @memset(i32* %51, i32 0, i32 36)
  %53 = load i32, i32* %4, align 4
  switch i32 %53, label %58 [
    i32 9, label %54
    i32 10, label %55
    i32 11, label %56
    i32 12, label %57
  ]

54:                                               ; preds = %50
  store i32 0, i32* %12, align 4
  br label %59

55:                                               ; preds = %50
  store i32 32, i32* %12, align 4
  br label %59

56:                                               ; preds = %50
  store i32 64, i32* %12, align 4
  br label %59

57:                                               ; preds = %50
  br label %58

58:                                               ; preds = %50, %57
  store i32 96, i32* %12, align 4
  br label %59

59:                                               ; preds = %58, %56, %55, %54
  br label %60

60:                                               ; preds = %120, %59
  %61 = load i32, i32* %10, align 4
  %62 = add nsw i32 %61, -1
  store i32 %62, i32* %10, align 4
  %63 = icmp ne i32 %61, 0
  br i1 %63, label %64, label %121

64:                                               ; preds = %60
  store i32 0, i32* %8, align 4
  %65 = load %struct.w1_slave*, %struct.w1_slave** %5, align 8
  %66 = call i32 @w1_reset_select_slave(%struct.w1_slave* %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %120, label %68

68:                                               ; preds = %64
  store i32 0, i32* %14, align 4
  %69 = load %struct.w1_master*, %struct.w1_master** %6, align 8
  %70 = load i32, i32* @W1_READ_SCRATCHPAD, align 4
  %71 = call i32 @w1_write_8(%struct.w1_master* %69, i32 %70)
  %72 = load %struct.w1_master*, %struct.w1_master** %6, align 8
  %73 = getelementptr inbounds [9 x i32], [9 x i32]* %7, i64 0, i64 0
  %74 = call i32 @w1_read_block(%struct.w1_master* %72, i32* %73, i32 9)
  store i32 %74, i32* %14, align 4
  %75 = load i32, i32* %14, align 4
  %76 = icmp ne i32 %75, 9
  br i1 %76, label %77, label %81

77:                                               ; preds = %68
  %78 = load %struct.device*, %struct.device** %3, align 8
  %79 = load i32, i32* %14, align 4
  %80 = call i32 @dev_warn(%struct.device* %78, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %79)
  br label %81

81:                                               ; preds = %77, %68
  %82 = getelementptr inbounds [9 x i32], [9 x i32]* %7, i64 0, i64 0
  %83 = call i32 @w1_calc_crc8(i32* %82, i32 8)
  store i32 %83, i32* %8, align 4
  %84 = getelementptr inbounds [9 x i32], [9 x i32]* %7, i64 0, i64 8
  %85 = load i32, i32* %84, align 16
  %86 = load i32, i32* %8, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %119

88:                                               ; preds = %81
  %89 = getelementptr inbounds [9 x i32], [9 x i32]* %7, i64 0, i64 4
  %90 = load i32, i32* %89, align 16
  %91 = load i32, i32* %13, align 4
  %92 = xor i32 %91, -1
  %93 = and i32 %90, %92
  %94 = load i32, i32* %12, align 4
  %95 = load i32, i32* %13, align 4
  %96 = and i32 %94, %95
  %97 = or i32 %93, %96
  %98 = getelementptr inbounds [9 x i32], [9 x i32]* %7, i64 0, i64 4
  store i32 %97, i32* %98, align 16
  %99 = load %struct.w1_slave*, %struct.w1_slave** %5, align 8
  %100 = call i32 @w1_reset_select_slave(%struct.w1_slave* %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %118, label %102

102:                                              ; preds = %88
  %103 = load %struct.w1_master*, %struct.w1_master** %6, align 8
  %104 = load i32, i32* @W1_WRITE_SCRATCHPAD, align 4
  %105 = call i32 @w1_write_8(%struct.w1_master* %103, i32 %104)
  %106 = load %struct.w1_master*, %struct.w1_master** %6, align 8
  %107 = getelementptr inbounds [9 x i32], [9 x i32]* %7, i64 0, i64 2
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @w1_write_8(%struct.w1_master* %106, i32 %108)
  %110 = load %struct.w1_master*, %struct.w1_master** %6, align 8
  %111 = getelementptr inbounds [9 x i32], [9 x i32]* %7, i64 0, i64 3
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @w1_write_8(%struct.w1_master* %110, i32 %112)
  %114 = load %struct.w1_master*, %struct.w1_master** %6, align 8
  %115 = getelementptr inbounds [9 x i32], [9 x i32]* %7, i64 0, i64 4
  %116 = load i32, i32* %115, align 16
  %117 = call i32 @w1_write_8(%struct.w1_master* %114, i32 %116)
  br label %121

118:                                              ; preds = %88
  br label %119

119:                                              ; preds = %118, %81
  br label %120

120:                                              ; preds = %119, %64
  br label %60

121:                                              ; preds = %102, %60
  %122 = load %struct.w1_master*, %struct.w1_master** %6, align 8
  %123 = getelementptr inbounds %struct.w1_master, %struct.w1_master* %122, i32 0, i32 0
  %124 = call i32 @mutex_unlock(i32* %123)
  br label %125

125:                                              ; preds = %121, %49
  %126 = load i32*, i32** %11, align 8
  %127 = call i32 @THERM_REFCNT(i32* %126)
  %128 = call i32 @atomic_dec(i32 %127)
  br label %129

129:                                              ; preds = %125, %37, %28
  %130 = load i32, i32* %9, align 4
  ret i32 %130
}

declare dso_local %struct.w1_slave* @dev_to_w1_slave(%struct.device*) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i32 @atomic_inc(i32) #1

declare dso_local i32 @THERM_REFCNT(i32*) #1

declare dso_local i32 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @w1_reset_select_slave(%struct.w1_slave*) #1

declare dso_local i32 @w1_write_8(%struct.w1_master*, i32) #1

declare dso_local i32 @w1_read_block(%struct.w1_master*, i32*, i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32) #1

declare dso_local i32 @w1_calc_crc8(i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @atomic_dec(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
