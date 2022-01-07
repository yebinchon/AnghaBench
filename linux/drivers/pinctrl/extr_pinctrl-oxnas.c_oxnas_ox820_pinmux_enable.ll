; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-oxnas.c_oxnas_ox820_pinmux_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-oxnas.c_oxnas_ox820_pinmux_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.oxnas_pinctrl = type { i32, i32, %struct.oxnas_function*, %struct.oxnas_pin_group* }
%struct.oxnas_function = type { i8* }
%struct.oxnas_pin_group = type { i32, i64, %struct.oxnas_desc_function* }
%struct.oxnas_desc_function = type { i32, i64 }

@PINMUX_820_BANK_OFFSET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"setting function %s bank %d pin %d fct %d mask %x\0A\00", align 1
@PINMUX_820_SECONDARY_SEL = common dso_local global i64 0, align 8
@PINMUX_820_TERTIARY_SEL = common dso_local global i64 0, align 8
@PINMUX_820_QUATERNARY_SEL = common dso_local global i64 0, align 8
@PINMUX_820_DEBUG_SEL = common dso_local global i64 0, align 8
@PINMUX_820_ALTERNATIVE_SEL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"cannot mux pin %u to function %u\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i32, i32)* @oxnas_ox820_pinmux_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @oxnas_ox820_pinmux_enable(%struct.pinctrl_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pinctrl_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.oxnas_pinctrl*, align 8
  %9 = alloca %struct.oxnas_pin_group*, align 8
  %10 = alloca %struct.oxnas_function*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.oxnas_desc_function*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %15 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %16 = call %struct.oxnas_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %15)
  store %struct.oxnas_pinctrl* %16, %struct.oxnas_pinctrl** %8, align 8
  %17 = load %struct.oxnas_pinctrl*, %struct.oxnas_pinctrl** %8, align 8
  %18 = getelementptr inbounds %struct.oxnas_pinctrl, %struct.oxnas_pinctrl* %17, i32 0, i32 3
  %19 = load %struct.oxnas_pin_group*, %struct.oxnas_pin_group** %18, align 8
  %20 = load i32, i32* %7, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.oxnas_pin_group, %struct.oxnas_pin_group* %19, i64 %21
  store %struct.oxnas_pin_group* %22, %struct.oxnas_pin_group** %9, align 8
  %23 = load %struct.oxnas_pinctrl*, %struct.oxnas_pinctrl** %8, align 8
  %24 = getelementptr inbounds %struct.oxnas_pinctrl, %struct.oxnas_pinctrl* %23, i32 0, i32 2
  %25 = load %struct.oxnas_function*, %struct.oxnas_function** %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.oxnas_function, %struct.oxnas_function* %25, i64 %27
  store %struct.oxnas_function* %28, %struct.oxnas_function** %10, align 8
  %29 = load %struct.oxnas_function*, %struct.oxnas_function** %10, align 8
  %30 = getelementptr inbounds %struct.oxnas_function, %struct.oxnas_function* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  store i8* %31, i8** %11, align 8
  %32 = load %struct.oxnas_pin_group*, %struct.oxnas_pin_group** %9, align 8
  %33 = getelementptr inbounds %struct.oxnas_pin_group, %struct.oxnas_pin_group* %32, i32 0, i32 2
  %34 = load %struct.oxnas_desc_function*, %struct.oxnas_desc_function** %33, align 8
  store %struct.oxnas_desc_function* %34, %struct.oxnas_desc_function** %12, align 8
  %35 = load %struct.oxnas_pin_group*, %struct.oxnas_pin_group** %9, align 8
  %36 = getelementptr inbounds %struct.oxnas_pin_group, %struct.oxnas_pin_group* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %3
  %40 = load i32, i32* @PINMUX_820_BANK_OFFSET, align 4
  br label %42

41:                                               ; preds = %3
  br label %42

42:                                               ; preds = %41, %39
  %43 = phi i32 [ %40, %39 ], [ 0, %41 ]
  store i32 %43, i32* %13, align 4
  %44 = load %struct.oxnas_pin_group*, %struct.oxnas_pin_group** %9, align 8
  %45 = getelementptr inbounds %struct.oxnas_pin_group, %struct.oxnas_pin_group* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @BIT(i32 %46)
  store i32 %47, i32* %14, align 4
  br label %48

48:                                               ; preds = %166, %42
  %49 = load %struct.oxnas_desc_function*, %struct.oxnas_desc_function** %12, align 8
  %50 = getelementptr inbounds %struct.oxnas_desc_function, %struct.oxnas_desc_function* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %169

53:                                               ; preds = %48
  %54 = load %struct.oxnas_desc_function*, %struct.oxnas_desc_function** %12, align 8
  %55 = getelementptr inbounds %struct.oxnas_desc_function, %struct.oxnas_desc_function* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i8*, i8** %11, align 8
  %58 = call i32 @strcmp(i64 %56, i8* %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %166, label %60

60:                                               ; preds = %53
  %61 = load %struct.oxnas_pinctrl*, %struct.oxnas_pinctrl** %8, align 8
  %62 = getelementptr inbounds %struct.oxnas_pinctrl, %struct.oxnas_pinctrl* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i8*, i8** %11, align 8
  %65 = load %struct.oxnas_pin_group*, %struct.oxnas_pin_group** %9, align 8
  %66 = getelementptr inbounds %struct.oxnas_pin_group, %struct.oxnas_pin_group* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.oxnas_pin_group*, %struct.oxnas_pin_group** %9, align 8
  %69 = getelementptr inbounds %struct.oxnas_pin_group, %struct.oxnas_pin_group* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.oxnas_desc_function*, %struct.oxnas_desc_function** %12, align 8
  %72 = getelementptr inbounds %struct.oxnas_desc_function, %struct.oxnas_desc_function* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* %14, align 4
  %75 = call i32 @dev_dbg(i32 %63, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i8* %64, i64 %67, i32 %70, i32 %73, i32 %74)
  %76 = load %struct.oxnas_pinctrl*, %struct.oxnas_pinctrl** %8, align 8
  %77 = getelementptr inbounds %struct.oxnas_pinctrl, %struct.oxnas_pinctrl* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %13, align 4
  %80 = zext i32 %79 to i64
  %81 = load i64, i64* @PINMUX_820_SECONDARY_SEL, align 8
  %82 = add nsw i64 %80, %81
  %83 = load i32, i32* %14, align 4
  %84 = load %struct.oxnas_desc_function*, %struct.oxnas_desc_function** %12, align 8
  %85 = getelementptr inbounds %struct.oxnas_desc_function, %struct.oxnas_desc_function* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = icmp eq i32 %86, 1
  br i1 %87, label %88, label %90

88:                                               ; preds = %60
  %89 = load i32, i32* %14, align 4
  br label %91

90:                                               ; preds = %60
  br label %91

91:                                               ; preds = %90, %88
  %92 = phi i32 [ %89, %88 ], [ 0, %90 ]
  %93 = call i32 @regmap_write_bits(i32 %78, i64 %82, i32 %83, i32 %92)
  %94 = load %struct.oxnas_pinctrl*, %struct.oxnas_pinctrl** %8, align 8
  %95 = getelementptr inbounds %struct.oxnas_pinctrl, %struct.oxnas_pinctrl* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %13, align 4
  %98 = zext i32 %97 to i64
  %99 = load i64, i64* @PINMUX_820_TERTIARY_SEL, align 8
  %100 = add nsw i64 %98, %99
  %101 = load i32, i32* %14, align 4
  %102 = load %struct.oxnas_desc_function*, %struct.oxnas_desc_function** %12, align 8
  %103 = getelementptr inbounds %struct.oxnas_desc_function, %struct.oxnas_desc_function* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = icmp eq i32 %104, 2
  br i1 %105, label %106, label %108

106:                                              ; preds = %91
  %107 = load i32, i32* %14, align 4
  br label %109

108:                                              ; preds = %91
  br label %109

109:                                              ; preds = %108, %106
  %110 = phi i32 [ %107, %106 ], [ 0, %108 ]
  %111 = call i32 @regmap_write_bits(i32 %96, i64 %100, i32 %101, i32 %110)
  %112 = load %struct.oxnas_pinctrl*, %struct.oxnas_pinctrl** %8, align 8
  %113 = getelementptr inbounds %struct.oxnas_pinctrl, %struct.oxnas_pinctrl* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* %13, align 4
  %116 = zext i32 %115 to i64
  %117 = load i64, i64* @PINMUX_820_QUATERNARY_SEL, align 8
  %118 = add nsw i64 %116, %117
  %119 = load i32, i32* %14, align 4
  %120 = load %struct.oxnas_desc_function*, %struct.oxnas_desc_function** %12, align 8
  %121 = getelementptr inbounds %struct.oxnas_desc_function, %struct.oxnas_desc_function* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = icmp eq i32 %122, 3
  br i1 %123, label %124, label %126

124:                                              ; preds = %109
  %125 = load i32, i32* %14, align 4
  br label %127

126:                                              ; preds = %109
  br label %127

127:                                              ; preds = %126, %124
  %128 = phi i32 [ %125, %124 ], [ 0, %126 ]
  %129 = call i32 @regmap_write_bits(i32 %114, i64 %118, i32 %119, i32 %128)
  %130 = load %struct.oxnas_pinctrl*, %struct.oxnas_pinctrl** %8, align 8
  %131 = getelementptr inbounds %struct.oxnas_pinctrl, %struct.oxnas_pinctrl* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* %13, align 4
  %134 = zext i32 %133 to i64
  %135 = load i64, i64* @PINMUX_820_DEBUG_SEL, align 8
  %136 = add nsw i64 %134, %135
  %137 = load i32, i32* %14, align 4
  %138 = load %struct.oxnas_desc_function*, %struct.oxnas_desc_function** %12, align 8
  %139 = getelementptr inbounds %struct.oxnas_desc_function, %struct.oxnas_desc_function* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = icmp eq i32 %140, 4
  br i1 %141, label %142, label %144

142:                                              ; preds = %127
  %143 = load i32, i32* %14, align 4
  br label %145

144:                                              ; preds = %127
  br label %145

145:                                              ; preds = %144, %142
  %146 = phi i32 [ %143, %142 ], [ 0, %144 ]
  %147 = call i32 @regmap_write_bits(i32 %132, i64 %136, i32 %137, i32 %146)
  %148 = load %struct.oxnas_pinctrl*, %struct.oxnas_pinctrl** %8, align 8
  %149 = getelementptr inbounds %struct.oxnas_pinctrl, %struct.oxnas_pinctrl* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* %13, align 4
  %152 = zext i32 %151 to i64
  %153 = load i64, i64* @PINMUX_820_ALTERNATIVE_SEL, align 8
  %154 = add nsw i64 %152, %153
  %155 = load i32, i32* %14, align 4
  %156 = load %struct.oxnas_desc_function*, %struct.oxnas_desc_function** %12, align 8
  %157 = getelementptr inbounds %struct.oxnas_desc_function, %struct.oxnas_desc_function* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = icmp eq i32 %158, 5
  br i1 %159, label %160, label %162

160:                                              ; preds = %145
  %161 = load i32, i32* %14, align 4
  br label %163

162:                                              ; preds = %145
  br label %163

163:                                              ; preds = %162, %160
  %164 = phi i32 [ %161, %160 ], [ 0, %162 ]
  %165 = call i32 @regmap_write_bits(i32 %150, i64 %154, i32 %155, i32 %164)
  store i32 0, i32* %4, align 4
  br label %178

166:                                              ; preds = %53
  %167 = load %struct.oxnas_desc_function*, %struct.oxnas_desc_function** %12, align 8
  %168 = getelementptr inbounds %struct.oxnas_desc_function, %struct.oxnas_desc_function* %167, i32 1
  store %struct.oxnas_desc_function* %168, %struct.oxnas_desc_function** %12, align 8
  br label %48

169:                                              ; preds = %48
  %170 = load %struct.oxnas_pinctrl*, %struct.oxnas_pinctrl** %8, align 8
  %171 = getelementptr inbounds %struct.oxnas_pinctrl, %struct.oxnas_pinctrl* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = load i32, i32* %7, align 4
  %174 = load i32, i32* %6, align 4
  %175 = call i32 @dev_err(i32 %172, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %173, i32 %174)
  %176 = load i32, i32* @EINVAL, align 4
  %177 = sub nsw i32 0, %176
  store i32 %177, i32* %4, align 4
  br label %178

178:                                              ; preds = %169, %163
  %179 = load i32, i32* %4, align 4
  ret i32 %179
}

declare dso_local %struct.oxnas_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @strcmp(i64, i8*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i8*, i64, i32, i32, i32) #1

declare dso_local i32 @regmap_write_bits(i32, i64, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
