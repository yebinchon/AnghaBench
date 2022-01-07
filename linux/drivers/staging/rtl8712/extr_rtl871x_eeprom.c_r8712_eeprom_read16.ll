; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_eeprom.c_r8712_eeprom_read16.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_eeprom.c_r8712_eeprom_read16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._adapter = type { i32, i64 }

@EE_9346CR = common dso_local global i32 0, align 4
@_EEDI = common dso_local global i32 0, align 4
@_EEDO = common dso_local global i32 0, align 4
@_EESK = common dso_local global i32 0, align 4
@_EEM0 = common dso_local global i32 0, align 4
@_EEM1 = common dso_local global i32 0, align 4
@_EECS = common dso_local global i32 0, align 4
@EEPROM_READ_OPCODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @r8712_eeprom_read16(%struct._adapter* %0, i32 %1) #0 {
  %3 = alloca %struct._adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct._adapter* %0, %struct._adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %11 = load %struct._adapter*, %struct._adapter** %3, align 8
  %12 = call i8* @r8712_read8(%struct._adapter* %11, i32 270861041)
  %13 = ptrtoint i8* %12 to i32
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = and i32 %14, 247
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %2
  %20 = load %struct._adapter*, %struct._adapter** %3, align 8
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @r8712_write8(%struct._adapter* %20, i32 270861041, i32 %21)
  br label %23

23:                                               ; preds = %19, %2
  %24 = load %struct._adapter*, %struct._adapter** %3, align 8
  %25 = call i8* @r8712_read8(%struct._adapter* %24, i32 270860291)
  %26 = ptrtoint i8* %25 to i32
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = or i32 %27, 32
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %23
  %33 = load %struct._adapter*, %struct._adapter** %3, align 8
  %34 = load i32, i32* %10, align 4
  %35 = call i32 @r8712_write8(%struct._adapter* %33, i32 270860291, i32 %34)
  br label %36

36:                                               ; preds = %32, %23
  %37 = load %struct._adapter*, %struct._adapter** %3, align 8
  %38 = getelementptr inbounds %struct._adapter, %struct._adapter* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  br label %87

42:                                               ; preds = %36
  %43 = load %struct._adapter*, %struct._adapter** %3, align 8
  %44 = load i32, i32* @EE_9346CR, align 4
  %45 = call i8* @r8712_read8(%struct._adapter* %43, i32 %44)
  %46 = ptrtoint i8* %45 to i32
  store i32 %46, i32* %5, align 4
  %47 = load %struct._adapter*, %struct._adapter** %3, align 8
  %48 = getelementptr inbounds %struct._adapter, %struct._adapter* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %42
  br label %87

52:                                               ; preds = %42
  %53 = load i32, i32* @_EEDI, align 4
  %54 = load i32, i32* @_EEDO, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @_EESK, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @_EEM0, align 4
  %59 = or i32 %57, %58
  %60 = xor i32 %59, -1
  %61 = load i32, i32* %5, align 4
  %62 = and i32 %61, %60
  store i32 %62, i32* %5, align 4
  %63 = load i32, i32* @_EEM1, align 4
  %64 = load i32, i32* @_EECS, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* %5, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %5, align 4
  %68 = load %struct._adapter*, %struct._adapter** %3, align 8
  %69 = load i32, i32* @EE_9346CR, align 4
  %70 = load i32, i32* %5, align 4
  %71 = trunc i32 %70 to i8
  %72 = zext i8 %71 to i32
  %73 = call i32 @r8712_write8(%struct._adapter* %68, i32 %69, i32 %72)
  %74 = load %struct._adapter*, %struct._adapter** %3, align 8
  %75 = load i32, i32* @EEPROM_READ_OPCODE, align 4
  %76 = call i32 @shift_out_bits(%struct._adapter* %74, i32 %75, i32 3)
  %77 = load %struct._adapter*, %struct._adapter** %3, align 8
  %78 = load i32, i32* %4, align 4
  %79 = load %struct._adapter*, %struct._adapter** %3, align 8
  %80 = getelementptr inbounds %struct._adapter, %struct._adapter* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @shift_out_bits(%struct._adapter* %77, i32 %78, i32 %81)
  %83 = load %struct._adapter*, %struct._adapter** %3, align 8
  %84 = call i32 @shift_in_bits(%struct._adapter* %83)
  store i32 %84, i32* %6, align 4
  %85 = load %struct._adapter*, %struct._adapter** %3, align 8
  %86 = call i32 @eeprom_clean(%struct._adapter* %85)
  br label %87

87:                                               ; preds = %52, %51, %41
  %88 = load i32, i32* %10, align 4
  %89 = load i32, i32* %9, align 4
  %90 = icmp ne i32 %88, %89
  br i1 %90, label %91, label %95

91:                                               ; preds = %87
  %92 = load %struct._adapter*, %struct._adapter** %3, align 8
  %93 = load i32, i32* %9, align 4
  %94 = call i32 @r8712_write8(%struct._adapter* %92, i32 270860291, i32 %93)
  br label %95

95:                                               ; preds = %91, %87
  %96 = load i32, i32* %8, align 4
  %97 = load i32, i32* %7, align 4
  %98 = icmp ne i32 %96, %97
  br i1 %98, label %99, label %103

99:                                               ; preds = %95
  %100 = load %struct._adapter*, %struct._adapter** %3, align 8
  %101 = load i32, i32* %7, align 4
  %102 = call i32 @r8712_write8(%struct._adapter* %100, i32 270861041, i32 %101)
  br label %103

103:                                              ; preds = %99, %95
  %104 = load i32, i32* %6, align 4
  ret i32 %104
}

declare dso_local i8* @r8712_read8(%struct._adapter*, i32) #1

declare dso_local i32 @r8712_write8(%struct._adapter*, i32, i32) #1

declare dso_local i32 @shift_out_bits(%struct._adapter*, i32, i32) #1

declare dso_local i32 @shift_in_bits(%struct._adapter*) #1

declare dso_local i32 @eeprom_clean(%struct._adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
