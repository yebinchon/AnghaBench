; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_twl4030_charger.c_twl4030_charger_enable_usb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_twl4030_charger.c_twl4030_charger_enable_usb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.twl4030_bci = type { i64, i32, i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@CHARGE_OFF = common dso_local global i64 0, align 8
@CHARGE_AUTO = common dso_local global i64 0, align 8
@TWL4030_ICHGLOW = common dso_local global i32 0, align 4
@TWL4030_ICHGEOC = common dso_local global i32 0, align 4
@TWL4030_TBATOR2 = common dso_local global i32 0, align 4
@TWL4030_TBATOR1 = common dso_local global i32 0, align 4
@TWL4030_BATSTS = common dso_local global i32 0, align 4
@TWL4030_MODULE_INTERRUPTS = common dso_local global i32 0, align 4
@TWL4030_INTERRUPTS_BCIIMR1A = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"failed to unmask interrupts: %d\0A\00", align 1
@TWL4030_BCIAUTOUSB = common dso_local global i32 0, align 4
@TWL_MODULE_MAIN_CHARGE = common dso_local global i32 0, align 4
@TWL4030_USBFASTMCHG = common dso_local global i32 0, align 4
@TWL4030_BCIMFSTS4 = common dso_local global i32 0, align 4
@CHARGE_LINEAR = common dso_local global i64 0, align 8
@TWL4030_BCIAUTOAC = common dso_local global i32 0, align 4
@TWL4030_CVENAC = common dso_local global i32 0, align 4
@TWL4030_BCIWDKEY = common dso_local global i32 0, align 4
@TWL4030_BCIMDKEY = common dso_local global i32 0, align 4
@TWL4030_BCIMFKEY = common dso_local global i32 0, align 4
@TWL4030_BCIMFEN3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.twl4030_bci*, i32)* @twl4030_charger_enable_usb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twl4030_charger_enable_usb(%struct.twl4030_bci* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.twl4030_bci*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.twl4030_bci* %0, %struct.twl4030_bci** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.twl4030_bci*, %struct.twl4030_bci** %4, align 8
  %9 = getelementptr inbounds %struct.twl4030_bci, %struct.twl4030_bci* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @CHARGE_OFF, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %14

14:                                               ; preds = %13, %2
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %128

17:                                               ; preds = %14
  %18 = load %struct.twl4030_bci*, %struct.twl4030_bci** %4, align 8
  %19 = getelementptr inbounds %struct.twl4030_bci, %struct.twl4030_bci* %18, i32 0, i32 3
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = call i32 @IS_ERR_OR_NULL(%struct.TYPE_2__* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %128, label %23

23:                                               ; preds = %17
  %24 = load %struct.twl4030_bci*, %struct.twl4030_bci** %4, align 8
  %25 = call i32 @twl4030_charger_update_current(%struct.twl4030_bci* %24)
  %26 = load %struct.twl4030_bci*, %struct.twl4030_bci** %4, align 8
  %27 = getelementptr inbounds %struct.twl4030_bci, %struct.twl4030_bci* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %39, label %30

30:                                               ; preds = %23
  %31 = load %struct.twl4030_bci*, %struct.twl4030_bci** %4, align 8
  %32 = getelementptr inbounds %struct.twl4030_bci, %struct.twl4030_bci* %31, i32 0, i32 3
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @pm_runtime_get_sync(i32 %35)
  %37 = load %struct.twl4030_bci*, %struct.twl4030_bci** %4, align 8
  %38 = getelementptr inbounds %struct.twl4030_bci, %struct.twl4030_bci* %37, i32 0, i32 1
  store i32 1, i32* %38, align 8
  br label %39

39:                                               ; preds = %30, %23
  %40 = load %struct.twl4030_bci*, %struct.twl4030_bci** %4, align 8
  %41 = getelementptr inbounds %struct.twl4030_bci, %struct.twl4030_bci* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @CHARGE_AUTO, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %72

45:                                               ; preds = %39
  %46 = load i32, i32* @TWL4030_ICHGLOW, align 4
  %47 = load i32, i32* @TWL4030_ICHGEOC, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @TWL4030_TBATOR2, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @TWL4030_TBATOR1, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @TWL4030_BATSTS, align 4
  %54 = or i32 %52, %53
  %55 = xor i32 %54, -1
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* @TWL4030_MODULE_INTERRUPTS, align 4
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* @TWL4030_INTERRUPTS_BCIIMR1A, align 4
  %59 = call i32 @twl_i2c_write_u8(i32 %56, i32 %57, i32 %58)
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %6, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %45
  %63 = load %struct.twl4030_bci*, %struct.twl4030_bci** %4, align 8
  %64 = getelementptr inbounds %struct.twl4030_bci, %struct.twl4030_bci* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @dev_err(i32 %65, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %66)
  %68 = load i32, i32* %6, align 4
  store i32 %68, i32* %3, align 4
  br label %160

69:                                               ; preds = %45
  %70 = load i32, i32* @TWL4030_BCIAUTOUSB, align 4
  %71 = call i32 @twl4030_clear_set_boot_bci(i32 0, i32 %70)
  store i32 %71, i32* %6, align 4
  br label %72

72:                                               ; preds = %69, %39
  %73 = load i32, i32* @TWL_MODULE_MAIN_CHARGE, align 4
  %74 = load i32, i32* @TWL4030_USBFASTMCHG, align 4
  %75 = load i32, i32* @TWL4030_BCIMFSTS4, align 4
  %76 = call i32 @twl4030_clear_set(i32 %73, i32 0, i32 %74, i32 %75)
  store i32 %76, i32* %6, align 4
  %77 = load %struct.twl4030_bci*, %struct.twl4030_bci** %4, align 8
  %78 = getelementptr inbounds %struct.twl4030_bci, %struct.twl4030_bci* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @CHARGE_LINEAR, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %127

82:                                               ; preds = %72
  %83 = load i32, i32* @TWL4030_ICHGLOW, align 4
  %84 = load i32, i32* @TWL4030_TBATOR2, align 4
  %85 = or i32 %83, %84
  %86 = load i32, i32* @TWL4030_TBATOR1, align 4
  %87 = or i32 %85, %86
  %88 = load i32, i32* @TWL4030_BATSTS, align 4
  %89 = or i32 %87, %88
  %90 = xor i32 %89, -1
  store i32 %90, i32* %7, align 4
  %91 = load i32, i32* @TWL4030_MODULE_INTERRUPTS, align 4
  %92 = load i32, i32* %7, align 4
  %93 = load i32, i32* @TWL4030_INTERRUPTS_BCIIMR1A, align 4
  %94 = call i32 @twl_i2c_write_u8(i32 %91, i32 %92, i32 %93)
  store i32 %94, i32* %6, align 4
  %95 = load i32, i32* %6, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %104

97:                                               ; preds = %82
  %98 = load %struct.twl4030_bci*, %struct.twl4030_bci** %4, align 8
  %99 = getelementptr inbounds %struct.twl4030_bci, %struct.twl4030_bci* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* %6, align 4
  %102 = call i32 @dev_err(i32 %100, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %101)
  %103 = load i32, i32* %6, align 4
  store i32 %103, i32* %3, align 4
  br label %160

104:                                              ; preds = %82
  %105 = load i32, i32* @TWL4030_BCIAUTOAC, align 4
  %106 = load i32, i32* @TWL4030_CVENAC, align 4
  %107 = or i32 %105, %106
  %108 = call i32 @twl4030_clear_set_boot_bci(i32 %107, i32 0)
  %109 = load i32, i32* @TWL_MODULE_MAIN_CHARGE, align 4
  %110 = load i32, i32* @TWL4030_BCIWDKEY, align 4
  %111 = call i32 @twl_i2c_write_u8(i32 %109, i32 51, i32 %110)
  store i32 %111, i32* %6, align 4
  %112 = load i32, i32* @TWL_MODULE_MAIN_CHARGE, align 4
  %113 = load i32, i32* @TWL4030_BCIMDKEY, align 4
  %114 = call i32 @twl_i2c_write_u8(i32 %112, i32 42, i32 %113)
  store i32 %114, i32* %6, align 4
  %115 = load i32, i32* @TWL_MODULE_MAIN_CHARGE, align 4
  %116 = load i32, i32* @TWL4030_BCIMDKEY, align 4
  %117 = call i32 @twl_i2c_write_u8(i32 %115, i32 38, i32 %116)
  store i32 %117, i32* %6, align 4
  %118 = load i32, i32* @TWL_MODULE_MAIN_CHARGE, align 4
  %119 = load i32, i32* @TWL4030_BCIWDKEY, align 4
  %120 = call i32 @twl_i2c_write_u8(i32 %118, i32 243, i32 %119)
  store i32 %120, i32* %6, align 4
  %121 = load i32, i32* @TWL_MODULE_MAIN_CHARGE, align 4
  %122 = load i32, i32* @TWL4030_BCIMFKEY, align 4
  %123 = call i32 @twl_i2c_write_u8(i32 %121, i32 156, i32 %122)
  store i32 %123, i32* %6, align 4
  %124 = load i32, i32* @TWL_MODULE_MAIN_CHARGE, align 4
  %125 = load i32, i32* @TWL4030_BCIMFEN3, align 4
  %126 = call i32 @twl_i2c_write_u8(i32 %124, i32 240, i32 %125)
  store i32 %126, i32* %6, align 4
  br label %127

127:                                              ; preds = %104, %72
  br label %158

128:                                              ; preds = %17, %14
  %129 = load i32, i32* @TWL4030_BCIAUTOUSB, align 4
  %130 = call i32 @twl4030_clear_set_boot_bci(i32 %129, i32 0)
  store i32 %130, i32* %6, align 4
  %131 = load i32, i32* @TWL_MODULE_MAIN_CHARGE, align 4
  %132 = load i32, i32* @TWL4030_BCIMDKEY, align 4
  %133 = call i32 @twl_i2c_write_u8(i32 %131, i32 42, i32 %132)
  %134 = load i32, i32* %6, align 4
  %135 = or i32 %134, %133
  store i32 %135, i32* %6, align 4
  %136 = load %struct.twl4030_bci*, %struct.twl4030_bci** %4, align 8
  %137 = getelementptr inbounds %struct.twl4030_bci, %struct.twl4030_bci* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %155

140:                                              ; preds = %128
  %141 = load %struct.twl4030_bci*, %struct.twl4030_bci** %4, align 8
  %142 = getelementptr inbounds %struct.twl4030_bci, %struct.twl4030_bci* %141, i32 0, i32 3
  %143 = load %struct.TYPE_2__*, %struct.TYPE_2__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @pm_runtime_mark_last_busy(i32 %145)
  %147 = load %struct.twl4030_bci*, %struct.twl4030_bci** %4, align 8
  %148 = getelementptr inbounds %struct.twl4030_bci, %struct.twl4030_bci* %147, i32 0, i32 3
  %149 = load %struct.TYPE_2__*, %struct.TYPE_2__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @pm_runtime_put_autosuspend(i32 %151)
  %153 = load %struct.twl4030_bci*, %struct.twl4030_bci** %4, align 8
  %154 = getelementptr inbounds %struct.twl4030_bci, %struct.twl4030_bci* %153, i32 0, i32 1
  store i32 0, i32* %154, align 8
  br label %155

155:                                              ; preds = %140, %128
  %156 = load %struct.twl4030_bci*, %struct.twl4030_bci** %4, align 8
  %157 = getelementptr inbounds %struct.twl4030_bci, %struct.twl4030_bci* %156, i32 0, i32 2
  store i64 0, i64* %157, align 8
  br label %158

158:                                              ; preds = %155, %127
  %159 = load i32, i32* %6, align 4
  store i32 %159, i32* %3, align 4
  br label %160

160:                                              ; preds = %158, %97, %62
  %161 = load i32, i32* %3, align 4
  ret i32 %161
}

declare dso_local i32 @IS_ERR_OR_NULL(%struct.TYPE_2__*) #1

declare dso_local i32 @twl4030_charger_update_current(%struct.twl4030_bci*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @twl_i2c_write_u8(i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @twl4030_clear_set_boot_bci(i32, i32) #1

declare dso_local i32 @twl4030_clear_set(i32, i32, i32, i32) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
