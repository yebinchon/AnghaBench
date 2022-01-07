; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq2415x_charger.c_bq2415x_exec_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq2415x_charger.c_bq2415x_exec_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bq2415x_device = type { i32 }

@BQ2415X_REG_STATUS = common dso_local global i32 0, align 4
@BQ2415X_BIT_TMR_RST = common dso_local global i32 0, align 4
@BQ2415X_BIT_OTG = common dso_local global i32 0, align 4
@BQ2415X_BIT_EN_STAT = common dso_local global i32 0, align 4
@BQ2415X_MASK_STAT = common dso_local global i32 0, align 4
@BQ2415X_SHIFT_STAT = common dso_local global i32 0, align 4
@BQ2415X_BIT_BOOST = common dso_local global i32 0, align 4
@BQ2415X_MASK_FAULT = common dso_local global i32 0, align 4
@BQ2415X_SHIFT_FAULT = common dso_local global i32 0, align 4
@BQ2415X_REG_CONTROL = common dso_local global i32 0, align 4
@BQ2415X_BIT_TE = common dso_local global i32 0, align 4
@BQ2415X_BIT_CE = common dso_local global i32 0, align 4
@BQ2415X_BIT_HZ_MODE = common dso_local global i32 0, align 4
@BQ2415X_BIT_OPA_MODE = common dso_local global i32 0, align 4
@BQ2415X_REG_VOLTAGE = common dso_local global i32 0, align 4
@BQ2415X_BIT_OTG_PL = common dso_local global i32 0, align 4
@BQ2415X_BIT_OTG_EN = common dso_local global i32 0, align 4
@BQ2415X_REG_VENDER = common dso_local global i32 0, align 4
@BQ2415X_MASK_VENDER = common dso_local global i32 0, align 4
@BQ2415X_SHIFT_VENDER = common dso_local global i32 0, align 4
@BQ2415X_MASK_PN = common dso_local global i32 0, align 4
@BQ2415X_SHIFT_PN = common dso_local global i32 0, align 4
@BQ2415X_MASK_REVISION = common dso_local global i32 0, align 4
@BQ2415X_SHIFT_REVISION = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bq2415x_device*, i32)* @bq2415x_exec_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bq2415x_exec_command(%struct.bq2415x_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bq2415x_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.bq2415x_device* %0, %struct.bq2415x_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  switch i32 %7, label %167 [
    i32 129, label %8
    i32 135, label %13
    i32 130, label %18
    i32 131, label %23
    i32 132, label %28
    i32 149, label %33
    i32 153, label %39
    i32 145, label %44
    i32 146, label %50
    i32 147, label %55
    i32 148, label %60
    i32 150, label %65
    i32 151, label %79
    i32 152, label %84
    i32 142, label %89
    i32 143, label %94
    i32 144, label %99
    i32 154, label %104
    i32 155, label %109
    i32 156, label %114
    i32 139, label %119
    i32 141, label %124
    i32 140, label %129
    i32 136, label %134
    i32 137, label %139
    i32 138, label %144
    i32 128, label %149
    i32 134, label %155
    i32 133, label %161
  ]

8:                                                ; preds = %2
  %9 = load %struct.bq2415x_device*, %struct.bq2415x_device** %4, align 8
  %10 = load i32, i32* @BQ2415X_REG_STATUS, align 4
  %11 = load i32, i32* @BQ2415X_BIT_TMR_RST, align 4
  %12 = call i32 @bq2415x_i2c_write_bit(%struct.bq2415x_device* %9, i32 %10, i32 1, i32 %11)
  store i32 %12, i32* %3, align 4
  br label %170

13:                                               ; preds = %2
  %14 = load %struct.bq2415x_device*, %struct.bq2415x_device** %4, align 8
  %15 = load i32, i32* @BQ2415X_REG_STATUS, align 4
  %16 = load i32, i32* @BQ2415X_BIT_OTG, align 4
  %17 = call i32 @bq2415x_i2c_read_bit(%struct.bq2415x_device* %14, i32 %15, i32 %16)
  store i32 %17, i32* %3, align 4
  br label %170

18:                                               ; preds = %2
  %19 = load %struct.bq2415x_device*, %struct.bq2415x_device** %4, align 8
  %20 = load i32, i32* @BQ2415X_REG_STATUS, align 4
  %21 = load i32, i32* @BQ2415X_BIT_EN_STAT, align 4
  %22 = call i32 @bq2415x_i2c_read_bit(%struct.bq2415x_device* %19, i32 %20, i32 %21)
  store i32 %22, i32* %3, align 4
  br label %170

23:                                               ; preds = %2
  %24 = load %struct.bq2415x_device*, %struct.bq2415x_device** %4, align 8
  %25 = load i32, i32* @BQ2415X_REG_STATUS, align 4
  %26 = load i32, i32* @BQ2415X_BIT_EN_STAT, align 4
  %27 = call i32 @bq2415x_i2c_write_bit(%struct.bq2415x_device* %24, i32 %25, i32 1, i32 %26)
  store i32 %27, i32* %3, align 4
  br label %170

28:                                               ; preds = %2
  %29 = load %struct.bq2415x_device*, %struct.bq2415x_device** %4, align 8
  %30 = load i32, i32* @BQ2415X_REG_STATUS, align 4
  %31 = load i32, i32* @BQ2415X_BIT_EN_STAT, align 4
  %32 = call i32 @bq2415x_i2c_write_bit(%struct.bq2415x_device* %29, i32 %30, i32 0, i32 %31)
  store i32 %32, i32* %3, align 4
  br label %170

33:                                               ; preds = %2
  %34 = load %struct.bq2415x_device*, %struct.bq2415x_device** %4, align 8
  %35 = load i32, i32* @BQ2415X_REG_STATUS, align 4
  %36 = load i32, i32* @BQ2415X_MASK_STAT, align 4
  %37 = load i32, i32* @BQ2415X_SHIFT_STAT, align 4
  %38 = call i32 @bq2415x_i2c_read_mask(%struct.bq2415x_device* %34, i32 %35, i32 %36, i32 %37)
  store i32 %38, i32* %3, align 4
  br label %170

39:                                               ; preds = %2
  %40 = load %struct.bq2415x_device*, %struct.bq2415x_device** %4, align 8
  %41 = load i32, i32* @BQ2415X_REG_STATUS, align 4
  %42 = load i32, i32* @BQ2415X_BIT_BOOST, align 4
  %43 = call i32 @bq2415x_i2c_read_bit(%struct.bq2415x_device* %40, i32 %41, i32 %42)
  store i32 %43, i32* %3, align 4
  br label %170

44:                                               ; preds = %2
  %45 = load %struct.bq2415x_device*, %struct.bq2415x_device** %4, align 8
  %46 = load i32, i32* @BQ2415X_REG_STATUS, align 4
  %47 = load i32, i32* @BQ2415X_MASK_FAULT, align 4
  %48 = load i32, i32* @BQ2415X_SHIFT_FAULT, align 4
  %49 = call i32 @bq2415x_i2c_read_mask(%struct.bq2415x_device* %45, i32 %46, i32 %47, i32 %48)
  store i32 %49, i32* %3, align 4
  br label %170

50:                                               ; preds = %2
  %51 = load %struct.bq2415x_device*, %struct.bq2415x_device** %4, align 8
  %52 = load i32, i32* @BQ2415X_REG_CONTROL, align 4
  %53 = load i32, i32* @BQ2415X_BIT_TE, align 4
  %54 = call i32 @bq2415x_i2c_read_bit(%struct.bq2415x_device* %51, i32 %52, i32 %53)
  store i32 %54, i32* %3, align 4
  br label %170

55:                                               ; preds = %2
  %56 = load %struct.bq2415x_device*, %struct.bq2415x_device** %4, align 8
  %57 = load i32, i32* @BQ2415X_REG_CONTROL, align 4
  %58 = load i32, i32* @BQ2415X_BIT_TE, align 4
  %59 = call i32 @bq2415x_i2c_write_bit(%struct.bq2415x_device* %56, i32 %57, i32 1, i32 %58)
  store i32 %59, i32* %3, align 4
  br label %170

60:                                               ; preds = %2
  %61 = load %struct.bq2415x_device*, %struct.bq2415x_device** %4, align 8
  %62 = load i32, i32* @BQ2415X_REG_CONTROL, align 4
  %63 = load i32, i32* @BQ2415X_BIT_TE, align 4
  %64 = call i32 @bq2415x_i2c_write_bit(%struct.bq2415x_device* %61, i32 %62, i32 0, i32 %63)
  store i32 %64, i32* %3, align 4
  br label %170

65:                                               ; preds = %2
  %66 = load %struct.bq2415x_device*, %struct.bq2415x_device** %4, align 8
  %67 = load i32, i32* @BQ2415X_REG_CONTROL, align 4
  %68 = load i32, i32* @BQ2415X_BIT_CE, align 4
  %69 = call i32 @bq2415x_i2c_read_bit(%struct.bq2415x_device* %66, i32 %67, i32 %68)
  store i32 %69, i32* %6, align 4
  %70 = load i32, i32* %6, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %65
  %73 = load i32, i32* %6, align 4
  store i32 %73, i32* %3, align 4
  br label %170

74:                                               ; preds = %65
  %75 = load i32, i32* %6, align 4
  %76 = icmp sgt i32 %75, 0
  %77 = zext i1 %76 to i64
  %78 = select i1 %76, i32 0, i32 1
  store i32 %78, i32* %3, align 4
  br label %170

79:                                               ; preds = %2
  %80 = load %struct.bq2415x_device*, %struct.bq2415x_device** %4, align 8
  %81 = load i32, i32* @BQ2415X_REG_CONTROL, align 4
  %82 = load i32, i32* @BQ2415X_BIT_CE, align 4
  %83 = call i32 @bq2415x_i2c_write_bit(%struct.bq2415x_device* %80, i32 %81, i32 0, i32 %82)
  store i32 %83, i32* %3, align 4
  br label %170

84:                                               ; preds = %2
  %85 = load %struct.bq2415x_device*, %struct.bq2415x_device** %4, align 8
  %86 = load i32, i32* @BQ2415X_REG_CONTROL, align 4
  %87 = load i32, i32* @BQ2415X_BIT_CE, align 4
  %88 = call i32 @bq2415x_i2c_write_bit(%struct.bq2415x_device* %85, i32 %86, i32 1, i32 %87)
  store i32 %88, i32* %3, align 4
  br label %170

89:                                               ; preds = %2
  %90 = load %struct.bq2415x_device*, %struct.bq2415x_device** %4, align 8
  %91 = load i32, i32* @BQ2415X_REG_CONTROL, align 4
  %92 = load i32, i32* @BQ2415X_BIT_HZ_MODE, align 4
  %93 = call i32 @bq2415x_i2c_read_bit(%struct.bq2415x_device* %90, i32 %91, i32 %92)
  store i32 %93, i32* %3, align 4
  br label %170

94:                                               ; preds = %2
  %95 = load %struct.bq2415x_device*, %struct.bq2415x_device** %4, align 8
  %96 = load i32, i32* @BQ2415X_REG_CONTROL, align 4
  %97 = load i32, i32* @BQ2415X_BIT_HZ_MODE, align 4
  %98 = call i32 @bq2415x_i2c_write_bit(%struct.bq2415x_device* %95, i32 %96, i32 1, i32 %97)
  store i32 %98, i32* %3, align 4
  br label %170

99:                                               ; preds = %2
  %100 = load %struct.bq2415x_device*, %struct.bq2415x_device** %4, align 8
  %101 = load i32, i32* @BQ2415X_REG_CONTROL, align 4
  %102 = load i32, i32* @BQ2415X_BIT_HZ_MODE, align 4
  %103 = call i32 @bq2415x_i2c_write_bit(%struct.bq2415x_device* %100, i32 %101, i32 0, i32 %102)
  store i32 %103, i32* %3, align 4
  br label %170

104:                                              ; preds = %2
  %105 = load %struct.bq2415x_device*, %struct.bq2415x_device** %4, align 8
  %106 = load i32, i32* @BQ2415X_REG_CONTROL, align 4
  %107 = load i32, i32* @BQ2415X_BIT_OPA_MODE, align 4
  %108 = call i32 @bq2415x_i2c_read_bit(%struct.bq2415x_device* %105, i32 %106, i32 %107)
  store i32 %108, i32* %3, align 4
  br label %170

109:                                              ; preds = %2
  %110 = load %struct.bq2415x_device*, %struct.bq2415x_device** %4, align 8
  %111 = load i32, i32* @BQ2415X_REG_CONTROL, align 4
  %112 = load i32, i32* @BQ2415X_BIT_OPA_MODE, align 4
  %113 = call i32 @bq2415x_i2c_write_bit(%struct.bq2415x_device* %110, i32 %111, i32 1, i32 %112)
  store i32 %113, i32* %3, align 4
  br label %170

114:                                              ; preds = %2
  %115 = load %struct.bq2415x_device*, %struct.bq2415x_device** %4, align 8
  %116 = load i32, i32* @BQ2415X_REG_CONTROL, align 4
  %117 = load i32, i32* @BQ2415X_BIT_OPA_MODE, align 4
  %118 = call i32 @bq2415x_i2c_write_bit(%struct.bq2415x_device* %115, i32 %116, i32 0, i32 %117)
  store i32 %118, i32* %3, align 4
  br label %170

119:                                              ; preds = %2
  %120 = load %struct.bq2415x_device*, %struct.bq2415x_device** %4, align 8
  %121 = load i32, i32* @BQ2415X_REG_VOLTAGE, align 4
  %122 = load i32, i32* @BQ2415X_BIT_OTG_PL, align 4
  %123 = call i32 @bq2415x_i2c_read_bit(%struct.bq2415x_device* %120, i32 %121, i32 %122)
  store i32 %123, i32* %3, align 4
  br label %170

124:                                              ; preds = %2
  %125 = load %struct.bq2415x_device*, %struct.bq2415x_device** %4, align 8
  %126 = load i32, i32* @BQ2415X_REG_VOLTAGE, align 4
  %127 = load i32, i32* @BQ2415X_BIT_OTG_PL, align 4
  %128 = call i32 @bq2415x_i2c_write_bit(%struct.bq2415x_device* %125, i32 %126, i32 1, i32 %127)
  store i32 %128, i32* %3, align 4
  br label %170

129:                                              ; preds = %2
  %130 = load %struct.bq2415x_device*, %struct.bq2415x_device** %4, align 8
  %131 = load i32, i32* @BQ2415X_REG_VOLTAGE, align 4
  %132 = load i32, i32* @BQ2415X_BIT_OTG_PL, align 4
  %133 = call i32 @bq2415x_i2c_write_bit(%struct.bq2415x_device* %130, i32 %131, i32 0, i32 %132)
  store i32 %133, i32* %3, align 4
  br label %170

134:                                              ; preds = %2
  %135 = load %struct.bq2415x_device*, %struct.bq2415x_device** %4, align 8
  %136 = load i32, i32* @BQ2415X_REG_VOLTAGE, align 4
  %137 = load i32, i32* @BQ2415X_BIT_OTG_EN, align 4
  %138 = call i32 @bq2415x_i2c_read_bit(%struct.bq2415x_device* %135, i32 %136, i32 %137)
  store i32 %138, i32* %3, align 4
  br label %170

139:                                              ; preds = %2
  %140 = load %struct.bq2415x_device*, %struct.bq2415x_device** %4, align 8
  %141 = load i32, i32* @BQ2415X_REG_VOLTAGE, align 4
  %142 = load i32, i32* @BQ2415X_BIT_OTG_EN, align 4
  %143 = call i32 @bq2415x_i2c_write_bit(%struct.bq2415x_device* %140, i32 %141, i32 1, i32 %142)
  store i32 %143, i32* %3, align 4
  br label %170

144:                                              ; preds = %2
  %145 = load %struct.bq2415x_device*, %struct.bq2415x_device** %4, align 8
  %146 = load i32, i32* @BQ2415X_REG_VOLTAGE, align 4
  %147 = load i32, i32* @BQ2415X_BIT_OTG_EN, align 4
  %148 = call i32 @bq2415x_i2c_write_bit(%struct.bq2415x_device* %145, i32 %146, i32 0, i32 %147)
  store i32 %148, i32* %3, align 4
  br label %170

149:                                              ; preds = %2
  %150 = load %struct.bq2415x_device*, %struct.bq2415x_device** %4, align 8
  %151 = load i32, i32* @BQ2415X_REG_VENDER, align 4
  %152 = load i32, i32* @BQ2415X_MASK_VENDER, align 4
  %153 = load i32, i32* @BQ2415X_SHIFT_VENDER, align 4
  %154 = call i32 @bq2415x_i2c_read_mask(%struct.bq2415x_device* %150, i32 %151, i32 %152, i32 %153)
  store i32 %154, i32* %3, align 4
  br label %170

155:                                              ; preds = %2
  %156 = load %struct.bq2415x_device*, %struct.bq2415x_device** %4, align 8
  %157 = load i32, i32* @BQ2415X_REG_VENDER, align 4
  %158 = load i32, i32* @BQ2415X_MASK_PN, align 4
  %159 = load i32, i32* @BQ2415X_SHIFT_PN, align 4
  %160 = call i32 @bq2415x_i2c_read_mask(%struct.bq2415x_device* %156, i32 %157, i32 %158, i32 %159)
  store i32 %160, i32* %3, align 4
  br label %170

161:                                              ; preds = %2
  %162 = load %struct.bq2415x_device*, %struct.bq2415x_device** %4, align 8
  %163 = load i32, i32* @BQ2415X_REG_VENDER, align 4
  %164 = load i32, i32* @BQ2415X_MASK_REVISION, align 4
  %165 = load i32, i32* @BQ2415X_SHIFT_REVISION, align 4
  %166 = call i32 @bq2415x_i2c_read_mask(%struct.bq2415x_device* %162, i32 %163, i32 %164, i32 %165)
  store i32 %166, i32* %3, align 4
  br label %170

167:                                              ; preds = %2
  %168 = load i32, i32* @EINVAL, align 4
  %169 = sub nsw i32 0, %168
  store i32 %169, i32* %3, align 4
  br label %170

170:                                              ; preds = %167, %161, %155, %149, %144, %139, %134, %129, %124, %119, %114, %109, %104, %99, %94, %89, %84, %79, %74, %72, %60, %55, %50, %44, %39, %33, %28, %23, %18, %13, %8
  %171 = load i32, i32* %3, align 4
  ret i32 %171
}

declare dso_local i32 @bq2415x_i2c_write_bit(%struct.bq2415x_device*, i32, i32, i32) #1

declare dso_local i32 @bq2415x_i2c_read_bit(%struct.bq2415x_device*, i32, i32) #1

declare dso_local i32 @bq2415x_i2c_read_mask(%struct.bq2415x_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
