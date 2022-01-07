; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-st.c_st_pinconf_get_direction.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-st.c_st_pinconf_get_direction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_pio_control = type { i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.st_pio_control*, i32, i64*)* @st_pinconf_get_direction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @st_pinconf_get_direction(%struct.st_pio_control* %0, i32 %1, i64* %2) #0 {
  %4 = alloca %struct.st_pio_control*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.st_pio_control* %0, %struct.st_pio_control** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64* %2, i64** %6, align 8
  %10 = load %struct.st_pio_control*, %struct.st_pio_control** %4, align 8
  %11 = getelementptr inbounds %struct.st_pio_control, %struct.st_pio_control* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %29

14:                                               ; preds = %3
  %15 = load %struct.st_pio_control*, %struct.st_pio_control** %4, align 8
  %16 = getelementptr inbounds %struct.st_pio_control, %struct.st_pio_control* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @regmap_field_read(i64 %17, i32* %7)
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @BIT(i32 %20)
  %22 = and i32 %19, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %14
  %25 = load i64*, i64** %6, align 8
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @ST_PINCONF_PACK_OE(i64 %26)
  br label %28

28:                                               ; preds = %24, %14
  br label %29

29:                                               ; preds = %28, %3
  %30 = load %struct.st_pio_control*, %struct.st_pio_control** %4, align 8
  %31 = getelementptr inbounds %struct.st_pio_control, %struct.st_pio_control* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %49

34:                                               ; preds = %29
  %35 = load %struct.st_pio_control*, %struct.st_pio_control** %4, align 8
  %36 = getelementptr inbounds %struct.st_pio_control, %struct.st_pio_control* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @regmap_field_read(i64 %37, i32* %8)
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @BIT(i32 %40)
  %42 = and i32 %39, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %34
  %45 = load i64*, i64** %6, align 8
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @ST_PINCONF_PACK_PU(i64 %46)
  br label %48

48:                                               ; preds = %44, %34
  br label %49

49:                                               ; preds = %48, %29
  %50 = load %struct.st_pio_control*, %struct.st_pio_control** %4, align 8
  %51 = getelementptr inbounds %struct.st_pio_control, %struct.st_pio_control* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %69

54:                                               ; preds = %49
  %55 = load %struct.st_pio_control*, %struct.st_pio_control** %4, align 8
  %56 = getelementptr inbounds %struct.st_pio_control, %struct.st_pio_control* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @regmap_field_read(i64 %57, i32* %9)
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @BIT(i32 %60)
  %62 = and i32 %59, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %54
  %65 = load i64*, i64** %6, align 8
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @ST_PINCONF_PACK_OD(i64 %66)
  br label %68

68:                                               ; preds = %64, %54
  br label %69

69:                                               ; preds = %68, %49
  ret void
}

declare dso_local i32 @regmap_field_read(i64, i32*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @ST_PINCONF_PACK_OE(i64) #1

declare dso_local i32 @ST_PINCONF_PACK_PU(i64) #1

declare dso_local i32 @ST_PINCONF_PACK_OD(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
