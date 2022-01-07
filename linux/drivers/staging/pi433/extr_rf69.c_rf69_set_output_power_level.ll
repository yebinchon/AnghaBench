; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/pi433/extr_rf69.c_rf69_set_output_power_level.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/pi433/extr_rf69.c_rf69_set_output_power_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32 }

@REG_PALEVEL = common dso_local global i32 0, align 4
@MASK_PALEVEL_PA0 = common dso_local global i32 0, align 4
@MASK_PALEVEL_PA1 = common dso_local global i32 0, align 4
@MASK_PALEVEL_PA2 = common dso_local global i32 0, align 4
@REG_OCP = common dso_local global i32 0, align 4
@REG_TESTPA1 = common dso_local global i32 0, align 4
@REG_TESTPA2 = common dso_local global i32 0, align 4
@MASK_PALEVEL_OUTPUT_POWER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"set: illegal input param\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rf69_set_output_power_level(%struct.spi_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.spi_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %15 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %16 = load i32, i32* @REG_PALEVEL, align 4
  %17 = call i32 @rf69_read_reg(%struct.spi_device* %15, i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @MASK_PALEVEL_PA0, align 4
  %20 = and i32 %18, %19
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @MASK_PALEVEL_PA1, align 4
  %23 = and i32 %21, %22
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @MASK_PALEVEL_PA2, align 4
  %26 = and i32 %24, %25
  store i32 %26, i32* %12, align 4
  %27 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %28 = load i32, i32* @REG_OCP, align 4
  %29 = call i32 @rf69_read_reg(%struct.spi_device* %27, i32 %28)
  store i32 %29, i32* %7, align 4
  %30 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %31 = load i32, i32* @REG_TESTPA1, align 4
  %32 = call i32 @rf69_read_reg(%struct.spi_device* %30, i32 %31)
  store i32 %32, i32* %8, align 4
  %33 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %34 = load i32, i32* @REG_TESTPA2, align 4
  %35 = call i32 @rf69_read_reg(%struct.spi_device* %33, i32 %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp eq i32 %36, 15
  br i1 %37, label %38, label %44

38:                                               ; preds = %2
  %39 = load i32, i32* %8, align 4
  %40 = icmp eq i32 %39, 93
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load i32, i32* %9, align 4
  %43 = icmp eq i32 %42, 124
  br label %44

44:                                               ; preds = %41, %38, %2
  %45 = phi i1 [ false, %38 ], [ false, %2 ], [ %43, %41 ]
  %46 = zext i1 %45 to i32
  store i32 %46, i32* %13, align 4
  %47 = load i32, i32* %10, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %44
  %50 = load i32, i32* %11, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %58, label %52

52:                                               ; preds = %49
  %53 = load i32, i32* %12, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %52
  %56 = load i32, i32* %5, align 4
  %57 = add nsw i32 %56, 18
  store i32 %57, i32* %5, align 4
  store i32 0, i32* %14, align 4
  br label %92

58:                                               ; preds = %52, %49, %44
  %59 = load i32, i32* %10, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %70, label %61

61:                                               ; preds = %58
  %62 = load i32, i32* %11, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %61
  %65 = load i32, i32* %12, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %64
  %68 = load i32, i32* %5, align 4
  %69 = add nsw i32 %68, 18
  store i32 %69, i32* %5, align 4
  store i32 16, i32* %14, align 4
  br label %91

70:                                               ; preds = %64, %61, %58
  %71 = load i32, i32* %10, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %89, label %73

73:                                               ; preds = %70
  %74 = load i32, i32* %11, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %89

76:                                               ; preds = %73
  %77 = load i32, i32* %12, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %89

79:                                               ; preds = %76
  %80 = load i32, i32* %13, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %79
  %83 = load i32, i32* %5, align 4
  %84 = add nsw i32 %83, 11
  store i32 %84, i32* %5, align 4
  br label %88

85:                                               ; preds = %79
  %86 = load i32, i32* %5, align 4
  %87 = add nsw i32 %86, 14
  store i32 %87, i32* %5, align 4
  br label %88

88:                                               ; preds = %85, %82
  store i32 16, i32* %14, align 4
  br label %90

89:                                               ; preds = %76, %73, %70
  br label %107

90:                                               ; preds = %88
  br label %91

91:                                               ; preds = %90, %67
  br label %92

92:                                               ; preds = %91, %55
  %93 = load i32, i32* %5, align 4
  %94 = icmp sgt i32 %93, 31
  br i1 %94, label %95, label %96

95:                                               ; preds = %92
  br label %107

96:                                               ; preds = %92
  %97 = load i32, i32* %5, align 4
  %98 = load i32, i32* %14, align 4
  %99 = icmp slt i32 %97, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %96
  br label %107

101:                                              ; preds = %96
  %102 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %103 = load i32, i32* @REG_PALEVEL, align 4
  %104 = load i32, i32* @MASK_PALEVEL_OUTPUT_POWER, align 4
  %105 = load i32, i32* %5, align 4
  %106 = call i32 @rf69_read_mod_write(%struct.spi_device* %102, i32 %103, i32 %104, i32 %105)
  store i32 %106, i32* %3, align 4
  br label %113

107:                                              ; preds = %100, %95, %89
  %108 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %109 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %108, i32 0, i32 0
  %110 = call i32 @dev_dbg(i32* %109, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %111 = load i32, i32* @EINVAL, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %3, align 4
  br label %113

113:                                              ; preds = %107, %101
  %114 = load i32, i32* %3, align 4
  ret i32 %114
}

declare dso_local i32 @rf69_read_reg(%struct.spi_device*, i32) #1

declare dso_local i32 @rf69_read_mod_write(%struct.spi_device*, i32, i32, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
