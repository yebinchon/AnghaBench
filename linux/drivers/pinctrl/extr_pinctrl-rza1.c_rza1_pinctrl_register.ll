; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-rza1.c_rza1_pinctrl_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-rza1.c_rza1_pinctrl_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rza1_pinctrl = type { i32, i32, %struct.TYPE_2__, i32, %struct.rza1_port*, %struct.pinctrl_pin_desc* }
%struct.TYPE_2__ = type { i32, %struct.pinctrl_pin_desc* }
%struct.rza1_port = type { i32, i32, %struct.pinctrl_pin_desc*, i32 }
%struct.pinctrl_pin_desc = type { i32, i32 }

@RZA1_NPINS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@RZA1_NPORTS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"P%u-%u\00", align 1
@RZA1_PINS_PER_PORT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"RZ/A1 pin controller registration failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"RZ/A1 pin controller failed to start\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"RZ/A1 GPIO registration failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rza1_pinctrl*)* @rza1_pinctrl_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rza1_pinctrl_register(%struct.rza1_pinctrl* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rza1_pinctrl*, align 8
  %4 = alloca %struct.pinctrl_pin_desc*, align 8
  %5 = alloca %struct.rza1_port*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.rza1_pinctrl* %0, %struct.rza1_pinctrl** %3, align 8
  %11 = load %struct.rza1_pinctrl*, %struct.rza1_pinctrl** %3, align 8
  %12 = getelementptr inbounds %struct.rza1_pinctrl, %struct.rza1_pinctrl* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @RZA1_NPINS, align 4
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call i8* @devm_kcalloc(i32 %13, i32 %14, i32 8, i32 %15)
  %17 = bitcast i8* %16 to %struct.pinctrl_pin_desc*
  store %struct.pinctrl_pin_desc* %17, %struct.pinctrl_pin_desc** %4, align 8
  %18 = load %struct.rza1_pinctrl*, %struct.rza1_pinctrl** %3, align 8
  %19 = getelementptr inbounds %struct.rza1_pinctrl, %struct.rza1_pinctrl* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @RZA1_NPORTS, align 4
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call i8* @devm_kcalloc(i32 %20, i32 %21, i32 24, i32 %22)
  %24 = bitcast i8* %23 to %struct.rza1_port*
  store %struct.rza1_port* %24, %struct.rza1_port** %5, align 8
  %25 = load %struct.pinctrl_pin_desc*, %struct.pinctrl_pin_desc** %4, align 8
  %26 = icmp ne %struct.pinctrl_pin_desc* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %1
  %28 = load %struct.rza1_port*, %struct.rza1_port** %5, align 8
  %29 = icmp ne %struct.rza1_port* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %27, %1
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %169

33:                                               ; preds = %27
  %34 = load %struct.pinctrl_pin_desc*, %struct.pinctrl_pin_desc** %4, align 8
  %35 = load %struct.rza1_pinctrl*, %struct.rza1_pinctrl** %3, align 8
  %36 = getelementptr inbounds %struct.rza1_pinctrl, %struct.rza1_pinctrl* %35, i32 0, i32 5
  store %struct.pinctrl_pin_desc* %34, %struct.pinctrl_pin_desc** %36, align 8
  %37 = load %struct.pinctrl_pin_desc*, %struct.pinctrl_pin_desc** %4, align 8
  %38 = load %struct.rza1_pinctrl*, %struct.rza1_pinctrl** %3, align 8
  %39 = getelementptr inbounds %struct.rza1_pinctrl, %struct.rza1_pinctrl* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  store %struct.pinctrl_pin_desc* %37, %struct.pinctrl_pin_desc** %40, align 8
  %41 = load i32, i32* @RZA1_NPINS, align 4
  %42 = load %struct.rza1_pinctrl*, %struct.rza1_pinctrl** %3, align 8
  %43 = getelementptr inbounds %struct.rza1_pinctrl, %struct.rza1_pinctrl* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  store i32 %41, i32* %44, align 8
  %45 = load %struct.rza1_port*, %struct.rza1_port** %5, align 8
  %46 = load %struct.rza1_pinctrl*, %struct.rza1_pinctrl** %3, align 8
  %47 = getelementptr inbounds %struct.rza1_pinctrl, %struct.rza1_pinctrl* %46, i32 0, i32 4
  store %struct.rza1_port* %45, %struct.rza1_port** %47, align 8
  store i32 0, i32* %6, align 4
  br label %48

48:                                               ; preds = %123, %33
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* @RZA1_NPINS, align 4
  %51 = icmp ult i32 %49, %50
  br i1 %51, label %52, label %126

52:                                               ; preds = %48
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @RZA1_PIN_ID_TO_PIN(i32 %53)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @RZA1_PIN_ID_TO_PORT(i32 %55)
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %6, align 4
  %58 = load %struct.pinctrl_pin_desc*, %struct.pinctrl_pin_desc** %4, align 8
  %59 = load i32, i32* %6, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds %struct.pinctrl_pin_desc, %struct.pinctrl_pin_desc* %58, i64 %60
  %62 = getelementptr inbounds %struct.pinctrl_pin_desc, %struct.pinctrl_pin_desc* %61, i32 0, i32 0
  store i32 %57, i32* %62, align 4
  %63 = load %struct.rza1_pinctrl*, %struct.rza1_pinctrl** %3, align 8
  %64 = getelementptr inbounds %struct.rza1_pinctrl, %struct.rza1_pinctrl* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @GFP_KERNEL, align 4
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @devm_kasprintf(i32 %65, i32 %66, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %67, i32 %68)
  %70 = load %struct.pinctrl_pin_desc*, %struct.pinctrl_pin_desc** %4, align 8
  %71 = load i32, i32* %6, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds %struct.pinctrl_pin_desc, %struct.pinctrl_pin_desc* %70, i64 %72
  %74 = getelementptr inbounds %struct.pinctrl_pin_desc, %struct.pinctrl_pin_desc* %73, i32 0, i32 1
  store i32 %69, i32* %74, align 4
  %75 = load %struct.pinctrl_pin_desc*, %struct.pinctrl_pin_desc** %4, align 8
  %76 = load i32, i32* %6, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds %struct.pinctrl_pin_desc, %struct.pinctrl_pin_desc* %75, i64 %77
  %79 = getelementptr inbounds %struct.pinctrl_pin_desc, %struct.pinctrl_pin_desc* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %85, label %82

82:                                               ; preds = %52
  %83 = load i32, i32* @ENOMEM, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %2, align 4
  br label %169

85:                                               ; preds = %52
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* @RZA1_PINS_PER_PORT, align 4
  %88 = urem i32 %86, %87
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %122

90:                                               ; preds = %85
  %91 = load i32, i32* %6, align 4
  %92 = call i32 @RZA1_PIN_ID_TO_PORT(i32 %91)
  store i32 %92, i32* %10, align 4
  %93 = load i32, i32* %10, align 4
  %94 = load %struct.rza1_port*, %struct.rza1_port** %5, align 8
  %95 = load i32, i32* %10, align 4
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds %struct.rza1_port, %struct.rza1_port* %94, i64 %96
  %98 = getelementptr inbounds %struct.rza1_port, %struct.rza1_port* %97, i32 0, i32 0
  store i32 %93, i32* %98, align 8
  %99 = load %struct.rza1_pinctrl*, %struct.rza1_pinctrl** %3, align 8
  %100 = getelementptr inbounds %struct.rza1_pinctrl, %struct.rza1_pinctrl* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.rza1_port*, %struct.rza1_port** %5, align 8
  %103 = load i32, i32* %10, align 4
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds %struct.rza1_port, %struct.rza1_port* %102, i64 %104
  %106 = getelementptr inbounds %struct.rza1_port, %struct.rza1_port* %105, i32 0, i32 3
  store i32 %101, i32* %106, align 8
  %107 = load %struct.pinctrl_pin_desc*, %struct.pinctrl_pin_desc** %4, align 8
  %108 = load i32, i32* %6, align 4
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds %struct.pinctrl_pin_desc, %struct.pinctrl_pin_desc* %107, i64 %109
  %111 = load %struct.rza1_port*, %struct.rza1_port** %5, align 8
  %112 = load i32, i32* %10, align 4
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds %struct.rza1_port, %struct.rza1_port* %111, i64 %113
  %115 = getelementptr inbounds %struct.rza1_port, %struct.rza1_port* %114, i32 0, i32 2
  store %struct.pinctrl_pin_desc* %110, %struct.pinctrl_pin_desc** %115, align 8
  %116 = load %struct.rza1_port*, %struct.rza1_port** %5, align 8
  %117 = load i32, i32* %10, align 4
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds %struct.rza1_port, %struct.rza1_port* %116, i64 %118
  %120 = getelementptr inbounds %struct.rza1_port, %struct.rza1_port* %119, i32 0, i32 1
  %121 = call i32 @spin_lock_init(i32* %120)
  br label %122

122:                                              ; preds = %90, %85
  br label %123

123:                                              ; preds = %122
  %124 = load i32, i32* %6, align 4
  %125 = add i32 %124, 1
  store i32 %125, i32* %6, align 4
  br label %48

126:                                              ; preds = %48
  %127 = load %struct.rza1_pinctrl*, %struct.rza1_pinctrl** %3, align 8
  %128 = getelementptr inbounds %struct.rza1_pinctrl, %struct.rza1_pinctrl* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.rza1_pinctrl*, %struct.rza1_pinctrl** %3, align 8
  %131 = getelementptr inbounds %struct.rza1_pinctrl, %struct.rza1_pinctrl* %130, i32 0, i32 2
  %132 = load %struct.rza1_pinctrl*, %struct.rza1_pinctrl** %3, align 8
  %133 = load %struct.rza1_pinctrl*, %struct.rza1_pinctrl** %3, align 8
  %134 = getelementptr inbounds %struct.rza1_pinctrl, %struct.rza1_pinctrl* %133, i32 0, i32 1
  %135 = call i32 @devm_pinctrl_register_and_init(i32 %129, %struct.TYPE_2__* %131, %struct.rza1_pinctrl* %132, i32* %134)
  store i32 %135, i32* %7, align 4
  %136 = load i32, i32* %7, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %144

138:                                              ; preds = %126
  %139 = load %struct.rza1_pinctrl*, %struct.rza1_pinctrl** %3, align 8
  %140 = getelementptr inbounds %struct.rza1_pinctrl, %struct.rza1_pinctrl* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = call i32 @dev_err(i32 %141, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %143 = load i32, i32* %7, align 4
  store i32 %143, i32* %2, align 4
  br label %169

144:                                              ; preds = %126
  %145 = load %struct.rza1_pinctrl*, %struct.rza1_pinctrl** %3, align 8
  %146 = getelementptr inbounds %struct.rza1_pinctrl, %struct.rza1_pinctrl* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @pinctrl_enable(i32 %147)
  store i32 %148, i32* %7, align 4
  %149 = load i32, i32* %7, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %157

151:                                              ; preds = %144
  %152 = load %struct.rza1_pinctrl*, %struct.rza1_pinctrl** %3, align 8
  %153 = getelementptr inbounds %struct.rza1_pinctrl, %struct.rza1_pinctrl* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = call i32 @dev_err(i32 %154, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %156 = load i32, i32* %7, align 4
  store i32 %156, i32* %2, align 4
  br label %169

157:                                              ; preds = %144
  %158 = load %struct.rza1_pinctrl*, %struct.rza1_pinctrl** %3, align 8
  %159 = call i32 @rza1_gpio_register(%struct.rza1_pinctrl* %158)
  store i32 %159, i32* %7, align 4
  %160 = load i32, i32* %7, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %168

162:                                              ; preds = %157
  %163 = load %struct.rza1_pinctrl*, %struct.rza1_pinctrl** %3, align 8
  %164 = getelementptr inbounds %struct.rza1_pinctrl, %struct.rza1_pinctrl* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = call i32 @dev_err(i32 %165, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %167 = load i32, i32* %7, align 4
  store i32 %167, i32* %2, align 4
  br label %169

168:                                              ; preds = %157
  store i32 0, i32* %2, align 4
  br label %169

169:                                              ; preds = %168, %162, %151, %138, %82, %30
  %170 = load i32, i32* %2, align 4
  ret i32 %170
}

declare dso_local i8* @devm_kcalloc(i32, i32, i32, i32) #1

declare dso_local i32 @RZA1_PIN_ID_TO_PIN(i32) #1

declare dso_local i32 @RZA1_PIN_ID_TO_PORT(i32) #1

declare dso_local i32 @devm_kasprintf(i32, i32, i8*, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @devm_pinctrl_register_and_init(i32, %struct.TYPE_2__*, %struct.rza1_pinctrl*, i32*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @pinctrl_enable(i32) #1

declare dso_local i32 @rza1_gpio_register(%struct.rza1_pinctrl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
