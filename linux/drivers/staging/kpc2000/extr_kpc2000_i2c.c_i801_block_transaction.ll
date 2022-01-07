; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/kpc2000/extr_kpc2000_i2c.c_i801_block_transaction.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/kpc2000/extr_kpc2000_i2c.c_i801_block_transaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%union.i2c_smbus_data = type { i32* }

@I2C_SMBUS_I2C_BLOCK_DATA = common dso_local global i32 0, align 4
@I2C_SMBUS_WRITE = common dso_local global i8 0, align 1
@FEATURE_I2C_BLOCK_READ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"I2C block read is unsupported!\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@I2C_SMBUS_BLOCK_MAX = common dso_local global i32 0, align 4
@FEATURE_BLOCK_BUFFER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_device*, %union.i2c_smbus_data*, i8, i32, i32)* @i801_block_transaction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i801_block_transaction(%struct.i2c_device* %0, %union.i2c_smbus_data* %1, i8 signext %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.i2c_device*, align 8
  %8 = alloca %union.i2c_smbus_data*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.i2c_device* %0, %struct.i2c_device** %7, align 8
  store %union.i2c_smbus_data* %1, %union.i2c_smbus_data** %8, align 8
  store i8 %2, i8* %9, align 1
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %13 = load i32, i32* %10, align 4
  %14 = load i32, i32* @I2C_SMBUS_I2C_BLOCK_DATA, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %39

16:                                               ; preds = %5
  %17 = load i8, i8* %9, align 1
  %18 = sext i8 %17 to i32
  %19 = load i8, i8* @I2C_SMBUS_WRITE, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %18, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  br label %38

23:                                               ; preds = %16
  %24 = load %struct.i2c_device*, %struct.i2c_device** %7, align 8
  %25 = getelementptr inbounds %struct.i2c_device, %struct.i2c_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @FEATURE_I2C_BLOCK_READ, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %37, label %30

30:                                               ; preds = %23
  %31 = load %struct.i2c_device*, %struct.i2c_device** %7, align 8
  %32 = getelementptr inbounds %struct.i2c_device, %struct.i2c_device* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = call i32 @dev_err(i32* %33, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* @EOPNOTSUPP, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %6, align 4
  br label %131

37:                                               ; preds = %23
  br label %38

38:                                               ; preds = %37, %22
  br label %39

39:                                               ; preds = %38, %5
  %40 = load i8, i8* %9, align 1
  %41 = sext i8 %40 to i32
  %42 = load i8, i8* @I2C_SMBUS_WRITE, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %41, %43
  br i1 %44, label %49, label %45

45:                                               ; preds = %39
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* @I2C_SMBUS_I2C_BLOCK_DATA, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %76

49:                                               ; preds = %45, %39
  %50 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %8, align 8
  %51 = bitcast %union.i2c_smbus_data* %50 to i32**
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp slt i32 %54, 1
  br i1 %55, label %56, label %61

56:                                               ; preds = %49
  %57 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %8, align 8
  %58 = bitcast %union.i2c_smbus_data* %57 to i32**
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  store i32 1, i32* %60, align 4
  br label %61

61:                                               ; preds = %56, %49
  %62 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %8, align 8
  %63 = bitcast %union.i2c_smbus_data* %62 to i32**
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @I2C_SMBUS_BLOCK_MAX, align 4
  %68 = icmp sgt i32 %66, %67
  br i1 %68, label %69, label %75

69:                                               ; preds = %61
  %70 = load i32, i32* @I2C_SMBUS_BLOCK_MAX, align 4
  %71 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %8, align 8
  %72 = bitcast %union.i2c_smbus_data* %71 to i32**
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 0
  store i32 %70, i32* %74, align 4
  br label %75

75:                                               ; preds = %69, %61
  br label %81

76:                                               ; preds = %45
  %77 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %8, align 8
  %78 = bitcast %union.i2c_smbus_data* %77 to i32**
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 0
  store i32 32, i32* %80, align 4
  br label %81

81:                                               ; preds = %76, %75
  %82 = load %struct.i2c_device*, %struct.i2c_device** %7, align 8
  %83 = getelementptr inbounds %struct.i2c_device, %struct.i2c_device* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @FEATURE_BLOCK_BUFFER, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %102

88:                                               ; preds = %81
  %89 = load i32, i32* %10, align 4
  %90 = load i32, i32* @I2C_SMBUS_I2C_BLOCK_DATA, align 4
  %91 = icmp ne i32 %89, %90
  br i1 %91, label %92, label %102

92:                                               ; preds = %88
  %93 = load %struct.i2c_device*, %struct.i2c_device** %7, align 8
  %94 = call i64 @i801_set_block_buffer_mode(%struct.i2c_device* %93)
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %92
  %97 = load %struct.i2c_device*, %struct.i2c_device** %7, align 8
  %98 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %8, align 8
  %99 = load i8, i8* %9, align 1
  %100 = load i32, i32* %11, align 4
  %101 = call i32 @i801_block_transaction_by_block(%struct.i2c_device* %97, %union.i2c_smbus_data* %98, i8 signext %99, i32 %100)
  store i32 %101, i32* %12, align 4
  br label %109

102:                                              ; preds = %92, %88, %81
  %103 = load %struct.i2c_device*, %struct.i2c_device** %7, align 8
  %104 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %8, align 8
  %105 = load i8, i8* %9, align 1
  %106 = load i32, i32* %10, align 4
  %107 = load i32, i32* %11, align 4
  %108 = call i32 @i801_block_transaction_byte_by_byte(%struct.i2c_device* %103, %union.i2c_smbus_data* %104, i8 signext %105, i32 %106, i32 %107)
  store i32 %108, i32* %12, align 4
  br label %109

109:                                              ; preds = %102, %96
  %110 = load i32, i32* %12, align 4
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %118

112:                                              ; preds = %109
  %113 = load i32, i32* %11, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %112
  %116 = load %struct.i2c_device*, %struct.i2c_device** %7, align 8
  %117 = call i32 @i801_wait_hwpec(%struct.i2c_device* %116)
  br label %118

118:                                              ; preds = %115, %112, %109
  %119 = load i32, i32* %10, align 4
  %120 = load i32, i32* @I2C_SMBUS_I2C_BLOCK_DATA, align 4
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %122, label %129

122:                                              ; preds = %118
  %123 = load i8, i8* %9, align 1
  %124 = sext i8 %123 to i32
  %125 = load i8, i8* @I2C_SMBUS_WRITE, align 1
  %126 = sext i8 %125 to i32
  %127 = icmp eq i32 %124, %126
  br i1 %127, label %128, label %129

128:                                              ; preds = %122
  br label %129

129:                                              ; preds = %128, %122, %118
  %130 = load i32, i32* %12, align 4
  store i32 %130, i32* %6, align 4
  br label %131

131:                                              ; preds = %129, %30
  %132 = load i32, i32* %6, align 4
  ret i32 %132
}

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i64 @i801_set_block_buffer_mode(%struct.i2c_device*) #1

declare dso_local i32 @i801_block_transaction_by_block(%struct.i2c_device*, %union.i2c_smbus_data*, i8 signext, i32) #1

declare dso_local i32 @i801_block_transaction_byte_by_byte(%struct.i2c_device*, %union.i2c_smbus_data*, i8 signext, i32, i32) #1

declare dso_local i32 @i801_wait_hwpec(%struct.i2c_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
