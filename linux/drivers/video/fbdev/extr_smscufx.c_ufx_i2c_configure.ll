; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_smscufx.c_ufx_i2c_configure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_smscufx.c_ufx_i2c_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ufx_data = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"failed to disable I2C\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"failed to write 0x3010\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"failed to set TAR bits in 0x1004\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"failed to enable I2C\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ufx_data*)* @ufx_i2c_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ufx_i2c_configure(%struct.ufx_data* %0) #0 {
  %2 = alloca %struct.ufx_data*, align 8
  %3 = alloca i32, align 4
  store %struct.ufx_data* %0, %struct.ufx_data** %2, align 8
  %4 = load %struct.ufx_data*, %struct.ufx_data** %2, align 8
  %5 = call i32 @ufx_reg_write(%struct.ufx_data* %4, i32 4204, i32 0)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i32 @check_warn_return(i32 %6, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.ufx_data*, %struct.ufx_data** %2, align 8
  %9 = call i32 @ufx_reg_write(%struct.ufx_data* %8, i32 12304, i32 0)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @check_warn_return(i32 %10, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %12 = load %struct.ufx_data*, %struct.ufx_data** %2, align 8
  %13 = call i32 @ufx_reg_clear_and_set_bits(%struct.ufx_data* %12, i32 4100, i32 1023, i32 80)
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @check_warn_return(i32 %14, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %16 = load %struct.ufx_data*, %struct.ufx_data** %2, align 8
  %17 = call i32 @ufx_reg_write(%struct.ufx_data* %16, i32 4204, i32 1)
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @check_warn_return(i32 %18, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @ufx_reg_write(%struct.ufx_data*, i32, i32) #1

declare dso_local i32 @check_warn_return(i32, i8*) #1

declare dso_local i32 @ufx_reg_clear_and_set_bits(%struct.ufx_data*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
