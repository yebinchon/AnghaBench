; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_c6xdigio.c_c6xdigio_pwm_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_c6xdigio.c_c6xdigio_pwm_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32 }

@C6XDIGIO_DATA_PWM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, i32, i32)* @c6xdigio_pwm_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @c6xdigio_pwm_write(%struct.comedi_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* @C6XDIGIO_DATA_PWM, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @C6XDIGIO_DATA_CHAN(i32 %10)
  %12 = or i32 %9, %11
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ugt i32 %13, 498
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32 498, i32* %6, align 4
  br label %16

16:                                               ; preds = %15, %3
  %17 = load i32, i32* %6, align 4
  %18 = icmp ult i32 %17, 2
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  store i32 2, i32* %6, align 4
  br label %20

20:                                               ; preds = %19, %16
  %21 = load i32, i32* %6, align 4
  %22 = lshr i32 %21, 0
  %23 = and i32 %22, 3
  store i32 %23, i32* %8, align 4
  %24 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %8, align 4
  %27 = or i32 %25, %26
  %28 = call i32 @c6xdigio_write_data(%struct.comedi_device* %24, i32 %27, i32 0)
  %29 = load i32, i32* %6, align 4
  %30 = lshr i32 %29, 2
  %31 = and i32 %30, 3
  store i32 %31, i32* %8, align 4
  %32 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %8, align 4
  %35 = or i32 %33, %34
  %36 = or i32 %35, 4
  %37 = call i32 @c6xdigio_write_data(%struct.comedi_device* %32, i32 %36, i32 128)
  %38 = load i32, i32* %6, align 4
  %39 = lshr i32 %38, 4
  %40 = and i32 %39, 3
  store i32 %40, i32* %8, align 4
  %41 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %8, align 4
  %44 = or i32 %42, %43
  %45 = call i32 @c6xdigio_write_data(%struct.comedi_device* %41, i32 %44, i32 0)
  %46 = load i32, i32* %6, align 4
  %47 = lshr i32 %46, 6
  %48 = and i32 %47, 3
  store i32 %48, i32* %8, align 4
  %49 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* %8, align 4
  %52 = or i32 %50, %51
  %53 = or i32 %52, 4
  %54 = call i32 @c6xdigio_write_data(%struct.comedi_device* %49, i32 %53, i32 128)
  %55 = load i32, i32* %6, align 4
  %56 = lshr i32 %55, 8
  %57 = and i32 %56, 3
  store i32 %57, i32* %8, align 4
  %58 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* %8, align 4
  %61 = or i32 %59, %60
  %62 = call i32 @c6xdigio_write_data(%struct.comedi_device* %58, i32 %61, i32 0)
  %63 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %64 = call i32 @c6xdigio_write_data(%struct.comedi_device* %63, i32 0, i32 128)
  ret void
}

declare dso_local i32 @C6XDIGIO_DATA_CHAN(i32) #1

declare dso_local i32 @c6xdigio_write_data(%struct.comedi_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
