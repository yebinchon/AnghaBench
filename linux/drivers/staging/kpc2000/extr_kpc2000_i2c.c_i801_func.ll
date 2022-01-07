; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/kpc2000/extr_kpc2000_i2c.c_i801_func.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/kpc2000/extr_kpc2000_i2c.c_i801_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%struct.i2c_device = type { i32 }

@I2C_FUNC_I2C = common dso_local global i32 0, align 4
@I2C_FUNC_10BIT_ADDR = common dso_local global i32 0, align 4
@I2C_FUNC_PROTOCOL_MANGLING = common dso_local global i32 0, align 4
@FEATURE_SMBUS_PEC = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_PEC = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_BLOCK_PROC_CALL = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_QUICK = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_READ_BYTE = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_WRITE_BYTE = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_READ_BYTE_DATA = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_WRITE_BYTE_DATA = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_READ_WORD_DATA = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_WRITE_WORD_DATA = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_PROC_CALL = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_READ_BLOCK_DATA = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_WRITE_BLOCK_DATA = common dso_local global i32 0, align 4
@FEATURE_I2C_BLOCK_READ = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_READ_I2C_BLOCK = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_WRITE_I2C_BLOCK = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_BYTE = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_WORD_DATA = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_BLOCK_DATA = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_I2C_BLOCK = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_EMUL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*)* @i801_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i801_func(%struct.i2c_adapter* %0) #0 {
  %2 = alloca %struct.i2c_adapter*, align 8
  %3 = alloca %struct.i2c_device*, align 8
  %4 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %2, align 8
  %5 = load %struct.i2c_adapter*, %struct.i2c_adapter** %2, align 8
  %6 = call %struct.i2c_device* @i2c_get_adapdata(%struct.i2c_adapter* %5)
  store %struct.i2c_device* %6, %struct.i2c_device** %3, align 8
  %7 = load i32, i32* @I2C_FUNC_I2C, align 4
  %8 = load i32, i32* @I2C_FUNC_10BIT_ADDR, align 4
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = or i32 %7, %11
  %13 = load i32, i32* @I2C_FUNC_PROTOCOL_MANGLING, align 4
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = or i32 %12, %16
  %18 = load %struct.i2c_device*, %struct.i2c_device** %3, align 8
  %19 = getelementptr inbounds %struct.i2c_device, %struct.i2c_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @FEATURE_SMBUS_PEC, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %1
  %25 = load i32, i32* @I2C_FUNC_SMBUS_PEC, align 4
  br label %27

26:                                               ; preds = %1
  br label %27

27:                                               ; preds = %26, %24
  %28 = phi i32 [ %25, %24 ], [ 0, %26 ]
  %29 = or i32 %17, %28
  %30 = load i32, i32* @I2C_FUNC_SMBUS_BLOCK_PROC_CALL, align 4
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = or i32 %29, %33
  %35 = load i32, i32* @I2C_FUNC_SMBUS_QUICK, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @I2C_FUNC_SMBUS_READ_BYTE, align 4
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  %41 = or i32 %36, %40
  %42 = load i32, i32* @I2C_FUNC_SMBUS_WRITE_BYTE, align 4
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  %46 = or i32 %41, %45
  %47 = load i32, i32* @I2C_FUNC_SMBUS_READ_BYTE_DATA, align 4
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  %51 = or i32 %46, %50
  %52 = load i32, i32* @I2C_FUNC_SMBUS_WRITE_BYTE_DATA, align 4
  %53 = icmp ne i32 %52, 0
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  %56 = or i32 %51, %55
  %57 = load i32, i32* @I2C_FUNC_SMBUS_READ_WORD_DATA, align 4
  %58 = icmp ne i32 %57, 0
  %59 = xor i1 %58, true
  %60 = zext i1 %59 to i32
  %61 = or i32 %56, %60
  %62 = load i32, i32* @I2C_FUNC_SMBUS_WRITE_WORD_DATA, align 4
  %63 = icmp ne i32 %62, 0
  %64 = xor i1 %63, true
  %65 = zext i1 %64 to i32
  %66 = or i32 %61, %65
  %67 = load i32, i32* @I2C_FUNC_SMBUS_PROC_CALL, align 4
  %68 = icmp ne i32 %67, 0
  %69 = xor i1 %68, true
  %70 = zext i1 %69 to i32
  %71 = or i32 %66, %70
  %72 = load i32, i32* @I2C_FUNC_SMBUS_READ_BLOCK_DATA, align 4
  %73 = icmp ne i32 %72, 0
  %74 = xor i1 %73, true
  %75 = zext i1 %74 to i32
  %76 = or i32 %71, %75
  %77 = load i32, i32* @I2C_FUNC_SMBUS_WRITE_BLOCK_DATA, align 4
  %78 = icmp ne i32 %77, 0
  %79 = xor i1 %78, true
  %80 = zext i1 %79 to i32
  %81 = or i32 %76, %80
  %82 = load %struct.i2c_device*, %struct.i2c_device** %3, align 8
  %83 = getelementptr inbounds %struct.i2c_device, %struct.i2c_device* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @FEATURE_I2C_BLOCK_READ, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %27
  %89 = load i32, i32* @I2C_FUNC_SMBUS_READ_I2C_BLOCK, align 4
  br label %91

90:                                               ; preds = %27
  br label %91

91:                                               ; preds = %90, %88
  %92 = phi i32 [ %89, %88 ], [ 0, %90 ]
  %93 = or i32 %81, %92
  %94 = load i32, i32* @I2C_FUNC_SMBUS_WRITE_I2C_BLOCK, align 4
  %95 = or i32 %93, %94
  %96 = load i32, i32* @I2C_FUNC_SMBUS_BYTE, align 4
  %97 = or i32 %95, %96
  %98 = load i32, i32* @I2C_FUNC_SMBUS_BYTE_DATA, align 4
  %99 = or i32 %97, %98
  %100 = load i32, i32* @I2C_FUNC_SMBUS_WORD_DATA, align 4
  %101 = or i32 %99, %100
  %102 = load i32, i32* @I2C_FUNC_SMBUS_BLOCK_DATA, align 4
  %103 = or i32 %101, %102
  %104 = load i32, i32* @I2C_FUNC_SMBUS_I2C_BLOCK, align 4
  %105 = icmp ne i32 %104, 0
  %106 = xor i1 %105, true
  %107 = zext i1 %106 to i32
  %108 = or i32 %103, %107
  %109 = load i32, i32* @I2C_FUNC_SMBUS_EMUL, align 4
  %110 = icmp ne i32 %109, 0
  %111 = xor i1 %110, true
  %112 = zext i1 %111 to i32
  %113 = or i32 %108, %112
  store i32 %113, i32* %4, align 4
  %114 = load i32, i32* %4, align 4
  ret i32 %114
}

declare dso_local %struct.i2c_device* @i2c_get_adapdata(%struct.i2c_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
