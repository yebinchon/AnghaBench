; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-st.c_st_pinconf_set_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-st.c_st_pinconf_set_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_pio_control = type { %struct.regmap_field*, %struct.regmap_field*, %struct.regmap_field* }
%struct.regmap_field = type { i32 }

@ST_PINCONF_OE = common dso_local global i64 0, align 8
@ST_PINCONF_PU = common dso_local global i64 0, align 8
@ST_PINCONF_OD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.st_pio_control*, i32, i64)* @st_pinconf_set_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @st_pinconf_set_config(%struct.st_pio_control* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.st_pio_control*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.regmap_field*, align 8
  %8 = alloca %struct.regmap_field*, align 8
  %9 = alloca %struct.regmap_field*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.st_pio_control* %0, %struct.st_pio_control** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %14 = load %struct.st_pio_control*, %struct.st_pio_control** %4, align 8
  %15 = getelementptr inbounds %struct.st_pio_control, %struct.st_pio_control* %14, i32 0, i32 2
  %16 = load %struct.regmap_field*, %struct.regmap_field** %15, align 8
  store %struct.regmap_field* %16, %struct.regmap_field** %7, align 8
  %17 = load %struct.st_pio_control*, %struct.st_pio_control** %4, align 8
  %18 = getelementptr inbounds %struct.st_pio_control, %struct.st_pio_control* %17, i32 0, i32 1
  %19 = load %struct.regmap_field*, %struct.regmap_field** %18, align 8
  store %struct.regmap_field* %19, %struct.regmap_field** %8, align 8
  %20 = load %struct.st_pio_control*, %struct.st_pio_control** %4, align 8
  %21 = getelementptr inbounds %struct.st_pio_control, %struct.st_pio_control* %20, i32 0, i32 0
  %22 = load %struct.regmap_field*, %struct.regmap_field** %21, align 8
  store %struct.regmap_field* %22, %struct.regmap_field** %9, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call i64 @BIT(i32 %23)
  store i64 %24, i64* %13, align 8
  %25 = load %struct.regmap_field*, %struct.regmap_field** %7, align 8
  %26 = icmp ne %struct.regmap_field* %25, null
  br i1 %26, label %27, label %50

27:                                               ; preds = %3
  %28 = load %struct.regmap_field*, %struct.regmap_field** %7, align 8
  %29 = call i32 @regmap_field_read(%struct.regmap_field* %28, i32* %10)
  %30 = load i64, i64* %13, align 8
  %31 = xor i64 %30, -1
  %32 = load i32, i32* %10, align 4
  %33 = zext i32 %32 to i64
  %34 = and i64 %33, %31
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %10, align 4
  %36 = load i64, i64* %6, align 8
  %37 = load i64, i64* @ST_PINCONF_OE, align 8
  %38 = and i64 %36, %37
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %27
  %41 = load i64, i64* %13, align 8
  %42 = load i32, i32* %10, align 4
  %43 = zext i32 %42 to i64
  %44 = or i64 %43, %41
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %10, align 4
  br label %46

46:                                               ; preds = %40, %27
  %47 = load %struct.regmap_field*, %struct.regmap_field** %7, align 8
  %48 = load i32, i32* %10, align 4
  %49 = call i32 @regmap_field_write(%struct.regmap_field* %47, i32 %48)
  br label %50

50:                                               ; preds = %46, %3
  %51 = load %struct.regmap_field*, %struct.regmap_field** %8, align 8
  %52 = icmp ne %struct.regmap_field* %51, null
  br i1 %52, label %53, label %76

53:                                               ; preds = %50
  %54 = load %struct.regmap_field*, %struct.regmap_field** %8, align 8
  %55 = call i32 @regmap_field_read(%struct.regmap_field* %54, i32* %11)
  %56 = load i64, i64* %13, align 8
  %57 = xor i64 %56, -1
  %58 = load i32, i32* %11, align 4
  %59 = zext i32 %58 to i64
  %60 = and i64 %59, %57
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %11, align 4
  %62 = load i64, i64* %6, align 8
  %63 = load i64, i64* @ST_PINCONF_PU, align 8
  %64 = and i64 %62, %63
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %53
  %67 = load i64, i64* %13, align 8
  %68 = load i32, i32* %11, align 4
  %69 = zext i32 %68 to i64
  %70 = or i64 %69, %67
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %11, align 4
  br label %72

72:                                               ; preds = %66, %53
  %73 = load %struct.regmap_field*, %struct.regmap_field** %8, align 8
  %74 = load i32, i32* %11, align 4
  %75 = call i32 @regmap_field_write(%struct.regmap_field* %73, i32 %74)
  br label %76

76:                                               ; preds = %72, %50
  %77 = load %struct.regmap_field*, %struct.regmap_field** %9, align 8
  %78 = icmp ne %struct.regmap_field* %77, null
  br i1 %78, label %79, label %102

79:                                               ; preds = %76
  %80 = load %struct.regmap_field*, %struct.regmap_field** %9, align 8
  %81 = call i32 @regmap_field_read(%struct.regmap_field* %80, i32* %12)
  %82 = load i64, i64* %13, align 8
  %83 = xor i64 %82, -1
  %84 = load i32, i32* %12, align 4
  %85 = zext i32 %84 to i64
  %86 = and i64 %85, %83
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %12, align 4
  %88 = load i64, i64* %6, align 8
  %89 = load i64, i64* @ST_PINCONF_OD, align 8
  %90 = and i64 %88, %89
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %79
  %93 = load i64, i64* %13, align 8
  %94 = load i32, i32* %12, align 4
  %95 = zext i32 %94 to i64
  %96 = or i64 %95, %93
  %97 = trunc i64 %96 to i32
  store i32 %97, i32* %12, align 4
  br label %98

98:                                               ; preds = %92, %79
  %99 = load %struct.regmap_field*, %struct.regmap_field** %9, align 8
  %100 = load i32, i32* %12, align 4
  %101 = call i32 @regmap_field_write(%struct.regmap_field* %99, i32 %100)
  br label %102

102:                                              ; preds = %98, %76
  ret void
}

declare dso_local i64 @BIT(i32) #1

declare dso_local i32 @regmap_field_read(%struct.regmap_field*, i32*) #1

declare dso_local i32 @regmap_field_write(%struct.regmap_field*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
