; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_cyclades.c_cy_get_serial_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_cyclades.c_cy_get_serial_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cyclades_card = type { i32, i64 }
%struct.tty_struct = type { i32, %struct.cyclades_port* }
%struct.cyclades_port = type { i32, i32, %struct.TYPE_2__, i64, %struct.cyclades_card*, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.serial_struct = type { i32, i32, i32, i32, i32, i32, i64, i64, i32 }

@.str = private unnamed_addr constant [9 x i8] c"cy_ioctl\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@cy_card = common dso_local global %struct.cyclades_card* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, %struct.serial_struct*)* @cy_get_serial_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cy_get_serial_info(%struct.tty_struct* %0, %struct.serial_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca %struct.serial_struct*, align 8
  %6 = alloca %struct.cyclades_port*, align 8
  %7 = alloca %struct.cyclades_card*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %4, align 8
  store %struct.serial_struct* %1, %struct.serial_struct** %5, align 8
  %8 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %9 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %8, i32 0, i32 1
  %10 = load %struct.cyclades_port*, %struct.cyclades_port** %9, align 8
  store %struct.cyclades_port* %10, %struct.cyclades_port** %6, align 8
  %11 = load %struct.cyclades_port*, %struct.cyclades_port** %6, align 8
  %12 = getelementptr inbounds %struct.cyclades_port, %struct.cyclades_port* %11, i32 0, i32 4
  %13 = load %struct.cyclades_card*, %struct.cyclades_card** %12, align 8
  store %struct.cyclades_card* %13, %struct.cyclades_card** %7, align 8
  %14 = load %struct.cyclades_port*, %struct.cyclades_port** %6, align 8
  %15 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %16 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i64 @serial_paranoia_check(%struct.cyclades_port* %14, i32 %17, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i32, i32* @ENODEV, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %86

23:                                               ; preds = %2
  %24 = load %struct.cyclades_port*, %struct.cyclades_port** %6, align 8
  %25 = getelementptr inbounds %struct.cyclades_port, %struct.cyclades_port* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.serial_struct*, %struct.serial_struct** %5, align 8
  %28 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %27, i32 0, i32 8
  store i32 %26, i32* %28, align 8
  %29 = load %struct.cyclades_port*, %struct.cyclades_port** %6, align 8
  %30 = getelementptr inbounds %struct.cyclades_port, %struct.cyclades_port* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.serial_struct*, %struct.serial_struct** %5, align 8
  %33 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %32, i32 0, i32 7
  store i64 %31, i64* %33, align 8
  %34 = load %struct.cyclades_port*, %struct.cyclades_port** %6, align 8
  %35 = getelementptr inbounds %struct.cyclades_port, %struct.cyclades_port* %34, i32 0, i32 4
  %36 = load %struct.cyclades_card*, %struct.cyclades_card** %35, align 8
  %37 = load %struct.cyclades_card*, %struct.cyclades_card** @cy_card, align 8
  %38 = ptrtoint %struct.cyclades_card* %36 to i64
  %39 = ptrtoint %struct.cyclades_card* %37 to i64
  %40 = sub i64 %38, %39
  %41 = sdiv exact i64 %40, 16
  %42 = mul nsw i64 %41, 256
  %43 = load %struct.cyclades_port*, %struct.cyclades_port** %6, align 8
  %44 = getelementptr inbounds %struct.cyclades_port, %struct.cyclades_port* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %42, %45
  %47 = load %struct.cyclades_card*, %struct.cyclades_card** %7, align 8
  %48 = getelementptr inbounds %struct.cyclades_card, %struct.cyclades_card* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = sub nsw i64 %46, %49
  %51 = load %struct.serial_struct*, %struct.serial_struct** %5, align 8
  %52 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %51, i32 0, i32 6
  store i64 %50, i64* %52, align 8
  %53 = load %struct.cyclades_card*, %struct.cyclades_card** %7, align 8
  %54 = getelementptr inbounds %struct.cyclades_card, %struct.cyclades_card* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.serial_struct*, %struct.serial_struct** %5, align 8
  %57 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %56, i32 0, i32 5
  store i32 %55, i32* %57, align 4
  %58 = load %struct.cyclades_port*, %struct.cyclades_port** %6, align 8
  %59 = getelementptr inbounds %struct.cyclades_port, %struct.cyclades_port* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.serial_struct*, %struct.serial_struct** %5, align 8
  %63 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %62, i32 0, i32 4
  store i32 %61, i32* %63, align 8
  %64 = load %struct.cyclades_port*, %struct.cyclades_port** %6, align 8
  %65 = getelementptr inbounds %struct.cyclades_port, %struct.cyclades_port* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.serial_struct*, %struct.serial_struct** %5, align 8
  %69 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %68, i32 0, i32 3
  store i32 %67, i32* %69, align 4
  %70 = load %struct.cyclades_port*, %struct.cyclades_port** %6, align 8
  %71 = getelementptr inbounds %struct.cyclades_port, %struct.cyclades_port* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.serial_struct*, %struct.serial_struct** %5, align 8
  %75 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %74, i32 0, i32 2
  store i32 %73, i32* %75, align 8
  %76 = load %struct.cyclades_port*, %struct.cyclades_port** %6, align 8
  %77 = getelementptr inbounds %struct.cyclades_port, %struct.cyclades_port* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.serial_struct*, %struct.serial_struct** %5, align 8
  %80 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 4
  %81 = load %struct.cyclades_port*, %struct.cyclades_port** %6, align 8
  %82 = getelementptr inbounds %struct.cyclades_port, %struct.cyclades_port* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.serial_struct*, %struct.serial_struct** %5, align 8
  %85 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 8
  store i32 0, i32* %3, align 4
  br label %86

86:                                               ; preds = %23, %20
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local i64 @serial_paranoia_check(%struct.cyclades_port*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
