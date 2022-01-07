; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_smscufx.c_ufx_read_edid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_smscufx.c_ufx_read_edid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ufx_data = type { i32 }

@EDID_LENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"ufx_i2c_configure failed\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Failed to write 0x1100\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"Timeout waiting for I2C BUSY to clear\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Error reading i2c data\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"edid data read successfully\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"edid data contains all 0xff\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ufx_data*, i32*, i32)* @ufx_read_edid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ufx_read_edid(%struct.ufx_data* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ufx_data*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ufx_data* %0, %struct.ufx_data** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load i32*, i32** %6, align 8
  store i32* %14, i32** %11, align 8
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @EDID_LENGTH, align 4
  %17 = icmp ne i32 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @BUG_ON(i32 %18)
  %20 = load %struct.ufx_data*, %struct.ufx_data** %5, align 8
  %21 = call i32 @ufx_i2c_configure(%struct.ufx_data* %20)
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %3
  %25 = call i32 @pr_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* %10, align 4
  store i32 %26, i32* %4, align 4
  br label %99

27:                                               ; preds = %3
  %28 = load i32*, i32** %6, align 8
  %29 = load i32, i32* @EDID_LENGTH, align 4
  %30 = call i32 @memset(i32* %28, i32 255, i32 %29)
  store i32 0, i32* %8, align 4
  br label %31

31:                                               ; preds = %74, %27
  %32 = load i32, i32* %8, align 4
  %33 = icmp slt i32 %32, 2
  br i1 %33, label %34, label %77

34:                                               ; preds = %31
  %35 = load i32, i32* %8, align 4
  %36 = mul nsw i32 %35, 64
  %37 = shl i32 %36, 8
  %38 = or i32 737607680, %37
  store i32 %38, i32* %12, align 4
  %39 = load %struct.ufx_data*, %struct.ufx_data** %5, align 8
  %40 = load i32, i32* %12, align 4
  %41 = call i32 @ufx_reg_write(%struct.ufx_data* %39, i32 4352, i32 %40)
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  %43 = call i32 @check_warn_return(i32 %42, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %44 = load i32, i32* %12, align 4
  %45 = or i32 %44, -2147483648
  store i32 %45, i32* %12, align 4
  %46 = load %struct.ufx_data*, %struct.ufx_data** %5, align 8
  %47 = load i32, i32* %12, align 4
  %48 = call i32 @ufx_reg_write(%struct.ufx_data* %46, i32 4352, i32 %47)
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %10, align 4
  %50 = call i32 @check_warn_return(i32 %49, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %51 = load %struct.ufx_data*, %struct.ufx_data** %5, align 8
  %52 = call i32 @ufx_i2c_wait_busy(%struct.ufx_data* %51)
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %10, align 4
  %54 = call i32 @check_warn_return(i32 %53, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %55

55:                                               ; preds = %70, %34
  %56 = load i32, i32* %9, align 4
  %57 = icmp slt i32 %56, 16
  br i1 %57, label %58, label %73

58:                                               ; preds = %55
  %59 = load i32, i32* %9, align 4
  %60 = mul nsw i32 %59, 4
  %61 = add nsw i32 4368, %60
  store i32 %61, i32* %13, align 4
  %62 = load %struct.ufx_data*, %struct.ufx_data** %5, align 8
  %63 = load i32, i32* %13, align 4
  %64 = load i32*, i32** %11, align 8
  %65 = getelementptr inbounds i32, i32* %64, i32 1
  store i32* %65, i32** %11, align 8
  %66 = ptrtoint i32* %64 to i32
  %67 = call i32 @ufx_reg_read(%struct.ufx_data* %62, i32 %63, i32 %66)
  store i32 %67, i32* %10, align 4
  %68 = load i32, i32* %10, align 4
  %69 = call i32 @check_warn_return(i32 %68, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  br label %70

70:                                               ; preds = %58
  %71 = load i32, i32* %9, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %9, align 4
  br label %55

73:                                               ; preds = %55
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %8, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %8, align 4
  br label %31

77:                                               ; preds = %31
  store i32 0, i32* %8, align 4
  br label %78

78:                                               ; preds = %92, %77
  %79 = load i32, i32* %8, align 4
  %80 = icmp slt i32 %79, 16
  br i1 %80, label %81, label %95

81:                                               ; preds = %78
  %82 = load i32*, i32** %6, align 8
  %83 = load i32, i32* %8, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = icmp ne i32 %86, 255
  br i1 %87, label %88, label %91

88:                                               ; preds = %81
  %89 = call i32 @pr_debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %90 = load i32, i32* @EDID_LENGTH, align 4
  store i32 %90, i32* %4, align 4
  br label %99

91:                                               ; preds = %81
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %8, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %8, align 4
  br label %78

95:                                               ; preds = %78
  %96 = call i32 @pr_warn(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  %97 = load i32, i32* @ETIMEDOUT, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %4, align 4
  br label %99

99:                                               ; preds = %95, %88, %24
  %100 = load i32, i32* %4, align 4
  ret i32 %100
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ufx_i2c_configure(%struct.ufx_data*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @ufx_reg_write(%struct.ufx_data*, i32, i32) #1

declare dso_local i32 @check_warn_return(i32, i8*) #1

declare dso_local i32 @ufx_i2c_wait_busy(%struct.ufx_data*) #1

declare dso_local i32 @ufx_reg_read(%struct.ufx_data*, i32, i32) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @pr_warn(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
