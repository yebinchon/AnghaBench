; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-zynq.c_zynq_pinconf_cfg_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-zynq.c_zynq_pinconf_cfg_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.zynq_pinctrl = type { i64, i32 }

@ZYNQ_NUM_MIOS = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@ZYNQ_PINCONF_PULLUP = common dso_local global i32 0, align 4
@ZYNQ_PINCONF_TRISTATE = common dso_local global i32 0, align 4
@ZYNQ_PINCONF_SPEED = common dso_local global i32 0, align 4
@zynq_iostd_min = common dso_local global i32 0, align 4
@zynq_iostd_max = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"unsupported IO standard '%u'\0A\00", align 1
@ZYNQ_PINCONF_IOTYPE_MASK = common dso_local global i32 0, align 4
@ZYNQ_PINCONF_IOTYPE_SHIFT = common dso_local global i32 0, align 4
@ZYNQ_PINCONF_DISABLE_RECVR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"unsupported configuration parameter '%u'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i32, i64*, i32)* @zynq_pinconf_cfg_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zynq_pinconf_cfg_set(%struct.pinctrl_dev* %0, i32 %1, i64* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pinctrl_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.zynq_pinctrl*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64* %2, i64** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %18 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %6, align 8
  %19 = call %struct.zynq_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %18)
  store %struct.zynq_pinctrl* %19, %struct.zynq_pinctrl** %15, align 8
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @ZYNQ_NUM_MIOS, align 4
  %22 = icmp uge i32 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %4
  %24 = load i32, i32* @ENOTSUPP, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %170

26:                                               ; preds = %4
  %27 = load %struct.zynq_pinctrl*, %struct.zynq_pinctrl** %15, align 8
  %28 = getelementptr inbounds %struct.zynq_pinctrl, %struct.zynq_pinctrl* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.zynq_pinctrl*, %struct.zynq_pinctrl** %15, align 8
  %31 = getelementptr inbounds %struct.zynq_pinctrl, %struct.zynq_pinctrl* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i32, i32* %7, align 4
  %34 = mul i32 4, %33
  %35 = zext i32 %34 to i64
  %36 = add nsw i64 %32, %35
  %37 = call i32 @regmap_read(i32 %29, i64 %36, i32* %12)
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %11, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %26
  %41 = load i32, i32* @EIO, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %5, align 4
  br label %170

43:                                               ; preds = %26
  store i32 0, i32* %10, align 4
  br label %44

44:                                               ; preds = %130, %43
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp ult i32 %45, %46
  br i1 %47, label %48, label %133

48:                                               ; preds = %44
  %49 = load i64*, i64** %8, align 8
  %50 = load i32, i32* %10, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i64, i64* %49, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @pinconf_to_config_param(i64 %53)
  store i32 %54, i32* %16, align 4
  %55 = load i64*, i64** %8, align 8
  %56 = load i32, i32* %10, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i64, i64* %55, i64 %57
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @pinconf_to_config_argument(i64 %59)
  store i32 %60, i32* %17, align 4
  %61 = load i32, i32* %16, align 4
  switch i32 %61, label %123 [
    i32 131, label %62
    i32 132, label %64
    i32 133, label %66
    i32 128, label %73
    i32 130, label %86
    i32 129, label %110
  ]

62:                                               ; preds = %48
  %63 = load i32, i32* @ZYNQ_PINCONF_PULLUP, align 4
  store i32 %63, i32* %13, align 4
  br label %129

64:                                               ; preds = %48
  %65 = load i32, i32* @ZYNQ_PINCONF_TRISTATE, align 4
  store i32 %65, i32* %14, align 4
  br label %129

66:                                               ; preds = %48
  %67 = load i32, i32* @ZYNQ_PINCONF_PULLUP, align 4
  %68 = load i32, i32* @ZYNQ_PINCONF_TRISTATE, align 4
  %69 = or i32 %67, %68
  %70 = xor i32 %69, -1
  %71 = load i32, i32* %12, align 4
  %72 = and i32 %71, %70
  store i32 %72, i32* %12, align 4
  br label %129

73:                                               ; preds = %48
  %74 = load i32, i32* %17, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %73
  %77 = load i32, i32* @ZYNQ_PINCONF_SPEED, align 4
  %78 = load i32, i32* %12, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %12, align 4
  br label %85

80:                                               ; preds = %73
  %81 = load i32, i32* @ZYNQ_PINCONF_SPEED, align 4
  %82 = xor i32 %81, -1
  %83 = load i32, i32* %12, align 4
  %84 = and i32 %83, %82
  store i32 %84, i32* %12, align 4
  br label %85

85:                                               ; preds = %80, %76
  br label %129

86:                                               ; preds = %48
  %87 = load i32, i32* %17, align 4
  %88 = load i32, i32* @zynq_iostd_min, align 4
  %89 = icmp ule i32 %87, %88
  br i1 %89, label %94, label %90

90:                                               ; preds = %86
  %91 = load i32, i32* %17, align 4
  %92 = load i32, i32* @zynq_iostd_max, align 4
  %93 = icmp uge i32 %91, %92
  br i1 %93, label %94, label %100

94:                                               ; preds = %90, %86
  %95 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %6, align 8
  %96 = getelementptr inbounds %struct.pinctrl_dev, %struct.pinctrl_dev* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* %16, align 4
  %99 = call i32 @dev_warn(i32 %97, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %98)
  br label %129

100:                                              ; preds = %90
  %101 = load i32, i32* @ZYNQ_PINCONF_IOTYPE_MASK, align 4
  %102 = xor i32 %101, -1
  %103 = load i32, i32* %12, align 4
  %104 = and i32 %103, %102
  store i32 %104, i32* %12, align 4
  %105 = load i32, i32* %17, align 4
  %106 = load i32, i32* @ZYNQ_PINCONF_IOTYPE_SHIFT, align 4
  %107 = shl i32 %105, %106
  %108 = load i32, i32* %12, align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* %12, align 4
  br label %129

110:                                              ; preds = %48
  %111 = load i32, i32* %17, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %110
  %114 = load i32, i32* @ZYNQ_PINCONF_DISABLE_RECVR, align 4
  %115 = load i32, i32* %12, align 4
  %116 = or i32 %115, %114
  store i32 %116, i32* %12, align 4
  br label %122

117:                                              ; preds = %110
  %118 = load i32, i32* @ZYNQ_PINCONF_DISABLE_RECVR, align 4
  %119 = xor i32 %118, -1
  %120 = load i32, i32* %12, align 4
  %121 = and i32 %120, %119
  store i32 %121, i32* %12, align 4
  br label %122

122:                                              ; preds = %117, %113
  br label %129

123:                                              ; preds = %48
  %124 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %6, align 8
  %125 = getelementptr inbounds %struct.pinctrl_dev, %struct.pinctrl_dev* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* %16, align 4
  %128 = call i32 @dev_warn(i32 %126, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %127)
  br label %130

129:                                              ; preds = %122, %100, %94, %85, %66, %64, %62
  br label %130

130:                                              ; preds = %129, %123
  %131 = load i32, i32* %10, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %10, align 4
  br label %44

133:                                              ; preds = %44
  %134 = load i32, i32* %14, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %139, label %136

136:                                              ; preds = %133
  %137 = load i32, i32* %13, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %151

139:                                              ; preds = %136, %133
  %140 = load i32, i32* @ZYNQ_PINCONF_PULLUP, align 4
  %141 = load i32, i32* @ZYNQ_PINCONF_TRISTATE, align 4
  %142 = or i32 %140, %141
  %143 = xor i32 %142, -1
  %144 = load i32, i32* %12, align 4
  %145 = and i32 %144, %143
  store i32 %145, i32* %12, align 4
  %146 = load i32, i32* %14, align 4
  %147 = load i32, i32* %13, align 4
  %148 = or i32 %146, %147
  %149 = load i32, i32* %12, align 4
  %150 = or i32 %149, %148
  store i32 %150, i32* %12, align 4
  br label %151

151:                                              ; preds = %139, %136
  %152 = load %struct.zynq_pinctrl*, %struct.zynq_pinctrl** %15, align 8
  %153 = getelementptr inbounds %struct.zynq_pinctrl, %struct.zynq_pinctrl* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 8
  %155 = load %struct.zynq_pinctrl*, %struct.zynq_pinctrl** %15, align 8
  %156 = getelementptr inbounds %struct.zynq_pinctrl, %struct.zynq_pinctrl* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = load i32, i32* %7, align 4
  %159 = mul i32 4, %158
  %160 = zext i32 %159 to i64
  %161 = add nsw i64 %157, %160
  %162 = load i32, i32* %12, align 4
  %163 = call i32 @regmap_write(i32 %154, i64 %161, i32 %162)
  store i32 %163, i32* %11, align 4
  %164 = load i32, i32* %11, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %169

166:                                              ; preds = %151
  %167 = load i32, i32* @EIO, align 4
  %168 = sub nsw i32 0, %167
  store i32 %168, i32* %5, align 4
  br label %170

169:                                              ; preds = %151
  store i32 0, i32* %5, align 4
  br label %170

170:                                              ; preds = %169, %166, %40, %23
  %171 = load i32, i32* %5, align 4
  ret i32 %171
}

declare dso_local %struct.zynq_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local i32 @regmap_read(i32, i64, i32*) #1

declare dso_local i32 @pinconf_to_config_param(i64) #1

declare dso_local i32 @pinconf_to_config_argument(i64) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

declare dso_local i32 @regmap_write(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
