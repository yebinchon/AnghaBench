; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_eeprom.c_r8712_eeprom_write16.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_eeprom.c_r8712_eeprom_write16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._adapter = type { i32 }

@EE_9346CR = common dso_local global i32 0, align 4
@_EEDI = common dso_local global i32 0, align 4
@_EEDO = common dso_local global i32 0, align 4
@_EESK = common dso_local global i32 0, align 4
@_EEM0 = common dso_local global i32 0, align 4
@_EEM1 = common dso_local global i32 0, align 4
@_EECS = common dso_local global i32 0, align 4
@EEPROM_EWEN_OPCODE = common dso_local global i32 0, align 4
@EEPROM_WRITE_OPCODE = common dso_local global i32 0, align 4
@EEPROM_EWDS_OPCODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r8712_eeprom_write16(%struct._adapter* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct._adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct._adapter* %0, %struct._adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load %struct._adapter*, %struct._adapter** %4, align 8
  %13 = call i32 @r8712_read8(%struct._adapter* %12, i32 270861041)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = and i32 %14, 247
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %3
  %20 = load %struct._adapter*, %struct._adapter** %4, align 8
  %21 = load i32, i32* %9, align 4
  %22 = call i32 @r8712_write8(%struct._adapter* %20, i32 270861041, i32 %21)
  br label %23

23:                                               ; preds = %19, %3
  %24 = load %struct._adapter*, %struct._adapter** %4, align 8
  %25 = call i32 @r8712_read8(%struct._adapter* %24, i32 270860291)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = or i32 %26, 32
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %23
  %32 = load %struct._adapter*, %struct._adapter** %4, align 8
  %33 = load i32, i32* %11, align 4
  %34 = call i32 @r8712_write8(%struct._adapter* %32, i32 270860291, i32 %33)
  br label %35

35:                                               ; preds = %31, %23
  %36 = load %struct._adapter*, %struct._adapter** %4, align 8
  %37 = load i32, i32* @EE_9346CR, align 4
  %38 = call i32 @r8712_read8(%struct._adapter* %36, i32 %37)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* @_EEDI, align 4
  %40 = load i32, i32* @_EEDO, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @_EESK, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @_EEM0, align 4
  %45 = or i32 %43, %44
  %46 = xor i32 %45, -1
  %47 = load i32, i32* %7, align 4
  %48 = and i32 %47, %46
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* @_EEM1, align 4
  %50 = load i32, i32* @_EECS, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* %7, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %7, align 4
  %54 = load %struct._adapter*, %struct._adapter** %4, align 8
  %55 = load i32, i32* @EE_9346CR, align 4
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @r8712_write8(%struct._adapter* %54, i32 %55, i32 %56)
  %58 = load %struct._adapter*, %struct._adapter** %4, align 8
  %59 = load i32, i32* @EEPROM_EWEN_OPCODE, align 4
  %60 = call i32 @shift_out_bits(%struct._adapter* %58, i32 %59, i32 5)
  %61 = load %struct._adapter*, %struct._adapter** %4, align 8
  %62 = getelementptr inbounds %struct._adapter, %struct._adapter* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = icmp eq i32 %63, 8
  br i1 %64, label %65, label %68

65:                                               ; preds = %35
  %66 = load %struct._adapter*, %struct._adapter** %4, align 8
  %67 = call i32 @shift_out_bits(%struct._adapter* %66, i32 0, i32 6)
  br label %71

68:                                               ; preds = %35
  %69 = load %struct._adapter*, %struct._adapter** %4, align 8
  %70 = call i32 @shift_out_bits(%struct._adapter* %69, i32 0, i32 4)
  br label %71

71:                                               ; preds = %68, %65
  %72 = load %struct._adapter*, %struct._adapter** %4, align 8
  %73 = call i32 @standby(%struct._adapter* %72)
  %74 = load %struct._adapter*, %struct._adapter** %4, align 8
  %75 = call i32 @standby(%struct._adapter* %74)
  %76 = load %struct._adapter*, %struct._adapter** %4, align 8
  %77 = load i32, i32* @EEPROM_WRITE_OPCODE, align 4
  %78 = call i32 @shift_out_bits(%struct._adapter* %76, i32 %77, i32 3)
  %79 = load %struct._adapter*, %struct._adapter** %4, align 8
  %80 = load i32, i32* %5, align 4
  %81 = load %struct._adapter*, %struct._adapter** %4, align 8
  %82 = getelementptr inbounds %struct._adapter, %struct._adapter* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @shift_out_bits(%struct._adapter* %79, i32 %80, i32 %83)
  %85 = load %struct._adapter*, %struct._adapter** %4, align 8
  %86 = load i32, i32* %6, align 4
  %87 = call i32 @shift_out_bits(%struct._adapter* %85, i32 %86, i32 16)
  %88 = load %struct._adapter*, %struct._adapter** %4, align 8
  %89 = call i64 @wait_eeprom_cmd_done(%struct._adapter* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %102

91:                                               ; preds = %71
  %92 = load %struct._adapter*, %struct._adapter** %4, align 8
  %93 = call i32 @standby(%struct._adapter* %92)
  %94 = load %struct._adapter*, %struct._adapter** %4, align 8
  %95 = load i32, i32* @EEPROM_EWDS_OPCODE, align 4
  %96 = call i32 @shift_out_bits(%struct._adapter* %94, i32 %95, i32 5)
  %97 = load %struct._adapter*, %struct._adapter** %4, align 8
  %98 = load i32, i32* %5, align 4
  %99 = call i32 @shift_out_bits(%struct._adapter* %97, i32 %98, i32 4)
  %100 = load %struct._adapter*, %struct._adapter** %4, align 8
  %101 = call i32 @eeprom_clean(%struct._adapter* %100)
  br label %102

102:                                              ; preds = %91, %71
  %103 = load i32, i32* %11, align 4
  %104 = load i32, i32* %10, align 4
  %105 = icmp ne i32 %103, %104
  br i1 %105, label %106, label %110

106:                                              ; preds = %102
  %107 = load %struct._adapter*, %struct._adapter** %4, align 8
  %108 = load i32, i32* %10, align 4
  %109 = call i32 @r8712_write8(%struct._adapter* %107, i32 270860291, i32 %108)
  br label %110

110:                                              ; preds = %106, %102
  %111 = load i32, i32* %9, align 4
  %112 = load i32, i32* %8, align 4
  %113 = icmp ne i32 %111, %112
  br i1 %113, label %114, label %118

114:                                              ; preds = %110
  %115 = load %struct._adapter*, %struct._adapter** %4, align 8
  %116 = load i32, i32* %8, align 4
  %117 = call i32 @r8712_write8(%struct._adapter* %115, i32 270861041, i32 %116)
  br label %118

118:                                              ; preds = %114, %110
  ret void
}

declare dso_local i32 @r8712_read8(%struct._adapter*, i32) #1

declare dso_local i32 @r8712_write8(%struct._adapter*, i32, i32) #1

declare dso_local i32 @shift_out_bits(%struct._adapter*, i32, i32) #1

declare dso_local i32 @standby(%struct._adapter*) #1

declare dso_local i64 @wait_eeprom_cmd_done(%struct._adapter*) #1

declare dso_local i32 @eeprom_clean(%struct._adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
