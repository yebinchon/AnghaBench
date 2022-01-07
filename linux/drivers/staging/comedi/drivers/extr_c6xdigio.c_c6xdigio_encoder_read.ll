; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_c6xdigio.c_c6xdigio_encoder_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_c6xdigio.c_c6xdigio_encoder_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32 }

@C6XDIGIO_DATA_ENCODER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, i32)* @c6xdigio_encoder_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @c6xdigio_encoder_read(%struct.comedi_device* %0, i32 %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* @C6XDIGIO_DATA_ENCODER, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @C6XDIGIO_DATA_CHAN(i32 %9)
  %11 = or i32 %8, %10
  store i32 %11, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %12 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @c6xdigio_write_data(%struct.comedi_device* %12, i32 %13, i32 0)
  %15 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %16 = load i32, i32* %5, align 4
  %17 = or i32 %16, 4
  %18 = call i32 @c6xdigio_get_encoder_bits(%struct.comedi_device* %15, i32* %7, i32 %17, i32 128)
  %19 = load i32, i32* %7, align 4
  %20 = shl i32 %19, 0
  %21 = load i32, i32* %6, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %6, align 4
  %23 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @c6xdigio_get_encoder_bits(%struct.comedi_device* %23, i32* %7, i32 %24, i32 0)
  %26 = load i32, i32* %7, align 4
  %27 = shl i32 %26, 3
  %28 = load i32, i32* %6, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %6, align 4
  %30 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %31 = load i32, i32* %5, align 4
  %32 = or i32 %31, 4
  %33 = call i32 @c6xdigio_get_encoder_bits(%struct.comedi_device* %30, i32* %7, i32 %32, i32 128)
  %34 = load i32, i32* %7, align 4
  %35 = shl i32 %34, 6
  %36 = load i32, i32* %6, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %6, align 4
  %38 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @c6xdigio_get_encoder_bits(%struct.comedi_device* %38, i32* %7, i32 %39, i32 0)
  %41 = load i32, i32* %7, align 4
  %42 = shl i32 %41, 9
  %43 = load i32, i32* %6, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %6, align 4
  %45 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %46 = load i32, i32* %5, align 4
  %47 = or i32 %46, 4
  %48 = call i32 @c6xdigio_get_encoder_bits(%struct.comedi_device* %45, i32* %7, i32 %47, i32 128)
  %49 = load i32, i32* %7, align 4
  %50 = shl i32 %49, 12
  %51 = load i32, i32* %6, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %6, align 4
  %53 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @c6xdigio_get_encoder_bits(%struct.comedi_device* %53, i32* %7, i32 %54, i32 0)
  %56 = load i32, i32* %7, align 4
  %57 = shl i32 %56, 15
  %58 = load i32, i32* %6, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %6, align 4
  %60 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %61 = load i32, i32* %5, align 4
  %62 = or i32 %61, 4
  %63 = call i32 @c6xdigio_get_encoder_bits(%struct.comedi_device* %60, i32* %7, i32 %62, i32 128)
  %64 = load i32, i32* %7, align 4
  %65 = shl i32 %64, 18
  %66 = load i32, i32* %6, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %6, align 4
  %68 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %69 = load i32, i32* %5, align 4
  %70 = call i32 @c6xdigio_get_encoder_bits(%struct.comedi_device* %68, i32* %7, i32 %69, i32 0)
  %71 = load i32, i32* %7, align 4
  %72 = shl i32 %71, 21
  %73 = load i32, i32* %6, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %6, align 4
  %75 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %76 = call i32 @c6xdigio_write_data(%struct.comedi_device* %75, i32 0, i32 128)
  %77 = load i32, i32* %6, align 4
  ret i32 %77
}

declare dso_local i32 @C6XDIGIO_DATA_CHAN(i32) #1

declare dso_local i32 @c6xdigio_write_data(%struct.comedi_device*, i32, i32) #1

declare dso_local i32 @c6xdigio_get_encoder_bits(%struct.comedi_device*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
