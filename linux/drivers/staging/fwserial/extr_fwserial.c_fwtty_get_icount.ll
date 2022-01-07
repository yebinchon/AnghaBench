; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fwserial/extr_fwserial.c_fwtty_get_icount.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fwserial/extr_fwserial.c_fwtty_get_icount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.fwtty_port* }
%struct.fwtty_port = type { %struct.TYPE_6__, i32, %struct.TYPE_5__*, %struct.TYPE_4__, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i64, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 (%struct.stats*, i32)* }
%struct.stats = type { i64 }
%struct.TYPE_4__ = type { i64 }
%struct.serial_icounter_struct = type { i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, %struct.serial_icounter_struct*)* @fwtty_get_icount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fwtty_get_icount(%struct.tty_struct* %0, %struct.serial_icounter_struct* %1) #0 {
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca %struct.serial_icounter_struct*, align 8
  %5 = alloca %struct.fwtty_port*, align 8
  %6 = alloca %struct.stats, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %3, align 8
  store %struct.serial_icounter_struct* %1, %struct.serial_icounter_struct** %4, align 8
  %7 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %8 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %7, i32 0, i32 0
  %9 = load %struct.fwtty_port*, %struct.fwtty_port** %8, align 8
  store %struct.fwtty_port* %9, %struct.fwtty_port** %5, align 8
  %10 = load %struct.fwtty_port*, %struct.fwtty_port** %5, align 8
  %11 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %10, i32 0, i32 4
  %12 = call i32 @memcpy(%struct.stats* %6, i32* %11, i32 8)
  %13 = load %struct.fwtty_port*, %struct.fwtty_port** %5, align 8
  %14 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %2
  %19 = load %struct.fwtty_port*, %struct.fwtty_port** %5, align 8
  %20 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %19, i32 0, i32 2
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32 (%struct.stats*, i32)*, i32 (%struct.stats*, i32)** %22, align 8
  %24 = load %struct.fwtty_port*, %struct.fwtty_port** %5, align 8
  %25 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i32 %23(%struct.stats* %6, i32 %26)
  br label %28

28:                                               ; preds = %18, %2
  %29 = load %struct.fwtty_port*, %struct.fwtty_port** %5, align 8
  %30 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 9
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.serial_icounter_struct*, %struct.serial_icounter_struct** %4, align 8
  %34 = getelementptr inbounds %struct.serial_icounter_struct, %struct.serial_icounter_struct* %33, i32 0, i32 10
  store i32 %32, i32* %34, align 8
  %35 = load %struct.fwtty_port*, %struct.fwtty_port** %5, align 8
  %36 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 8
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.serial_icounter_struct*, %struct.serial_icounter_struct** %4, align 8
  %40 = getelementptr inbounds %struct.serial_icounter_struct, %struct.serial_icounter_struct* %39, i32 0, i32 9
  store i32 %38, i32* %40, align 4
  %41 = load %struct.fwtty_port*, %struct.fwtty_port** %5, align 8
  %42 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 7
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.serial_icounter_struct*, %struct.serial_icounter_struct** %4, align 8
  %46 = getelementptr inbounds %struct.serial_icounter_struct, %struct.serial_icounter_struct* %45, i32 0, i32 8
  store i32 %44, i32* %46, align 8
  %47 = load %struct.fwtty_port*, %struct.fwtty_port** %5, align 8
  %48 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 6
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.serial_icounter_struct*, %struct.serial_icounter_struct** %4, align 8
  %52 = getelementptr inbounds %struct.serial_icounter_struct, %struct.serial_icounter_struct* %51, i32 0, i32 7
  store i32 %50, i32* %52, align 4
  %53 = load %struct.fwtty_port*, %struct.fwtty_port** %5, align 8
  %54 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 5
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.serial_icounter_struct*, %struct.serial_icounter_struct** %4, align 8
  %58 = getelementptr inbounds %struct.serial_icounter_struct, %struct.serial_icounter_struct* %57, i32 0, i32 6
  store i32 %56, i32* %58, align 8
  %59 = load %struct.fwtty_port*, %struct.fwtty_port** %5, align 8
  %60 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 4
  %62 = load i64, i64* %61, align 8
  %63 = getelementptr inbounds %struct.stats, %struct.stats* %6, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = add nsw i64 %62, %64
  %66 = load %struct.serial_icounter_struct*, %struct.serial_icounter_struct** %4, align 8
  %67 = getelementptr inbounds %struct.serial_icounter_struct, %struct.serial_icounter_struct* %66, i32 0, i32 5
  store i64 %65, i64* %67, align 8
  %68 = load %struct.fwtty_port*, %struct.fwtty_port** %5, align 8
  %69 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.serial_icounter_struct*, %struct.serial_icounter_struct** %4, align 8
  %73 = getelementptr inbounds %struct.serial_icounter_struct, %struct.serial_icounter_struct* %72, i32 0, i32 4
  store i32 %71, i32* %73, align 8
  %74 = load %struct.fwtty_port*, %struct.fwtty_port** %5, align 8
  %75 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.serial_icounter_struct*, %struct.serial_icounter_struct** %4, align 8
  %79 = getelementptr inbounds %struct.serial_icounter_struct, %struct.serial_icounter_struct* %78, i32 0, i32 3
  store i32 %77, i32* %79, align 4
  %80 = load %struct.fwtty_port*, %struct.fwtty_port** %5, align 8
  %81 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.serial_icounter_struct*, %struct.serial_icounter_struct** %4, align 8
  %85 = getelementptr inbounds %struct.serial_icounter_struct, %struct.serial_icounter_struct* %84, i32 0, i32 2
  store i32 %83, i32* %85, align 8
  %86 = load %struct.fwtty_port*, %struct.fwtty_port** %5, align 8
  %87 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.serial_icounter_struct*, %struct.serial_icounter_struct** %4, align 8
  %91 = getelementptr inbounds %struct.serial_icounter_struct, %struct.serial_icounter_struct* %90, i32 0, i32 1
  store i32 %89, i32* %91, align 4
  %92 = load %struct.fwtty_port*, %struct.fwtty_port** %5, align 8
  %93 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.serial_icounter_struct*, %struct.serial_icounter_struct** %4, align 8
  %97 = getelementptr inbounds %struct.serial_icounter_struct, %struct.serial_icounter_struct* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 8
  ret i32 0
}

declare dso_local i32 @memcpy(%struct.stats*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
