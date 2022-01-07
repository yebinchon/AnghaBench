; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_io_ti.c_get_descriptor_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_io_ti.c_get_descriptor_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edgeport_serial = type { i32 }
%struct.ti_i2c_desc = type { i32, i32 }

@TI_MAX_I2C_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.edgeport_serial*, i32, %struct.ti_i2c_desc*)* @get_descriptor_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_descriptor_addr(%struct.edgeport_serial* %0, i32 %1, %struct.ti_i2c_desc* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.edgeport_serial*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ti_i2c_desc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.edgeport_serial* %0, %struct.edgeport_serial** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ti_i2c_desc* %2, %struct.ti_i2c_desc** %7, align 8
  store i32 2, i32* %8, align 4
  br label %10

10:                                               ; preds = %47, %3
  %11 = load %struct.edgeport_serial*, %struct.edgeport_serial** %5, align 8
  %12 = load i32, i32* %8, align 4
  %13 = load %struct.ti_i2c_desc*, %struct.ti_i2c_desc** %7, align 8
  %14 = bitcast %struct.ti_i2c_desc* %13 to i32*
  %15 = call i32 @read_rom(%struct.edgeport_serial* %11, i32 %12, i32 8, i32* %14)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %10
  store i32 0, i32* %4, align 4
  br label %50

19:                                               ; preds = %10
  %20 = load %struct.ti_i2c_desc*, %struct.ti_i2c_desc** %7, align 8
  %21 = getelementptr inbounds %struct.ti_i2c_desc, %struct.ti_i2c_desc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load i32, i32* %8, align 4
  store i32 %26, i32* %4, align 4
  br label %50

27:                                               ; preds = %19
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  %30 = add i64 %29, 8
  %31 = load %struct.ti_i2c_desc*, %struct.ti_i2c_desc** %7, align 8
  %32 = getelementptr inbounds %struct.ti_i2c_desc, %struct.ti_i2c_desc* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @le16_to_cpu(i32 %33)
  %35 = sext i32 %34 to i64
  %36 = add i64 %30, %35
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %8, align 4
  br label %38

38:                                               ; preds = %27
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @TI_MAX_I2C_SIZE, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %38
  %43 = load %struct.ti_i2c_desc*, %struct.ti_i2c_desc** %7, align 8
  %44 = getelementptr inbounds %struct.ti_i2c_desc, %struct.ti_i2c_desc* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br label %47

47:                                               ; preds = %42, %38
  %48 = phi i1 [ false, %38 ], [ %46, %42 ]
  br i1 %48, label %10, label %49

49:                                               ; preds = %47
  store i32 0, i32* %4, align 4
  br label %50

50:                                               ; preds = %49, %25, %18
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i32 @read_rom(%struct.edgeport_serial*, i32, i32, i32*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
