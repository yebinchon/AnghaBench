; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_cyclades.c_cy_get_icount.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_cyclades.c_cy_get_icount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.cyclades_port* }
%struct.cyclades_port = type { %struct.TYPE_2__*, %struct.cyclades_icount }
%struct.TYPE_2__ = type { i32 }
%struct.cyclades_icount = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.serial_icounter_struct = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, %struct.serial_icounter_struct*)* @cy_get_icount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cy_get_icount(%struct.tty_struct* %0, %struct.serial_icounter_struct* %1) #0 {
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca %struct.serial_icounter_struct*, align 8
  %5 = alloca %struct.cyclades_port*, align 8
  %6 = alloca %struct.cyclades_icount, align 4
  %7 = alloca i64, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %3, align 8
  store %struct.serial_icounter_struct* %1, %struct.serial_icounter_struct** %4, align 8
  %8 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %9 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %8, i32 0, i32 0
  %10 = load %struct.cyclades_port*, %struct.cyclades_port** %9, align 8
  store %struct.cyclades_port* %10, %struct.cyclades_port** %5, align 8
  %11 = load %struct.cyclades_port*, %struct.cyclades_port** %5, align 8
  %12 = getelementptr inbounds %struct.cyclades_port, %struct.cyclades_port* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %7, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.cyclades_port*, %struct.cyclades_port** %5, align 8
  %18 = getelementptr inbounds %struct.cyclades_port, %struct.cyclades_port* %17, i32 0, i32 1
  %19 = bitcast %struct.cyclades_icount* %6 to i8*
  %20 = bitcast %struct.cyclades_icount* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %19, i8* align 8 %20, i64 44, i1 false)
  %21 = load %struct.cyclades_port*, %struct.cyclades_port** %5, align 8
  %22 = getelementptr inbounds %struct.cyclades_port, %struct.cyclades_port* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %7, align 8
  %26 = call i32 @spin_unlock_irqrestore(i32* %24, i64 %25)
  %27 = getelementptr inbounds %struct.cyclades_icount, %struct.cyclades_icount* %6, i32 0, i32 10
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.serial_icounter_struct*, %struct.serial_icounter_struct** %4, align 8
  %30 = getelementptr inbounds %struct.serial_icounter_struct, %struct.serial_icounter_struct* %29, i32 0, i32 10
  store i32 %28, i32* %30, align 4
  %31 = getelementptr inbounds %struct.cyclades_icount, %struct.cyclades_icount* %6, i32 0, i32 9
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.serial_icounter_struct*, %struct.serial_icounter_struct** %4, align 8
  %34 = getelementptr inbounds %struct.serial_icounter_struct, %struct.serial_icounter_struct* %33, i32 0, i32 9
  store i32 %32, i32* %34, align 4
  %35 = getelementptr inbounds %struct.cyclades_icount, %struct.cyclades_icount* %6, i32 0, i32 8
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.serial_icounter_struct*, %struct.serial_icounter_struct** %4, align 8
  %38 = getelementptr inbounds %struct.serial_icounter_struct, %struct.serial_icounter_struct* %37, i32 0, i32 8
  store i32 %36, i32* %38, align 4
  %39 = getelementptr inbounds %struct.cyclades_icount, %struct.cyclades_icount* %6, i32 0, i32 7
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.serial_icounter_struct*, %struct.serial_icounter_struct** %4, align 8
  %42 = getelementptr inbounds %struct.serial_icounter_struct, %struct.serial_icounter_struct* %41, i32 0, i32 7
  store i32 %40, i32* %42, align 4
  %43 = getelementptr inbounds %struct.cyclades_icount, %struct.cyclades_icount* %6, i32 0, i32 6
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.serial_icounter_struct*, %struct.serial_icounter_struct** %4, align 8
  %46 = getelementptr inbounds %struct.serial_icounter_struct, %struct.serial_icounter_struct* %45, i32 0, i32 6
  store i32 %44, i32* %46, align 4
  %47 = getelementptr inbounds %struct.cyclades_icount, %struct.cyclades_icount* %6, i32 0, i32 5
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.serial_icounter_struct*, %struct.serial_icounter_struct** %4, align 8
  %50 = getelementptr inbounds %struct.serial_icounter_struct, %struct.serial_icounter_struct* %49, i32 0, i32 5
  store i32 %48, i32* %50, align 4
  %51 = getelementptr inbounds %struct.cyclades_icount, %struct.cyclades_icount* %6, i32 0, i32 4
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.serial_icounter_struct*, %struct.serial_icounter_struct** %4, align 8
  %54 = getelementptr inbounds %struct.serial_icounter_struct, %struct.serial_icounter_struct* %53, i32 0, i32 4
  store i32 %52, i32* %54, align 4
  %55 = getelementptr inbounds %struct.cyclades_icount, %struct.cyclades_icount* %6, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.serial_icounter_struct*, %struct.serial_icounter_struct** %4, align 8
  %58 = getelementptr inbounds %struct.serial_icounter_struct, %struct.serial_icounter_struct* %57, i32 0, i32 3
  store i32 %56, i32* %58, align 4
  %59 = getelementptr inbounds %struct.cyclades_icount, %struct.cyclades_icount* %6, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.serial_icounter_struct*, %struct.serial_icounter_struct** %4, align 8
  %62 = getelementptr inbounds %struct.serial_icounter_struct, %struct.serial_icounter_struct* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 4
  %63 = getelementptr inbounds %struct.cyclades_icount, %struct.cyclades_icount* %6, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.serial_icounter_struct*, %struct.serial_icounter_struct** %4, align 8
  %66 = getelementptr inbounds %struct.serial_icounter_struct, %struct.serial_icounter_struct* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  %67 = getelementptr inbounds %struct.cyclades_icount, %struct.cyclades_icount* %6, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.serial_icounter_struct*, %struct.serial_icounter_struct** %4, align 8
  %70 = getelementptr inbounds %struct.serial_icounter_struct, %struct.serial_icounter_struct* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 4
  ret i32 0
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
