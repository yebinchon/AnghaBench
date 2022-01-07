; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_nozomi.c_ntty_tiocgicount.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_nozomi.c_ntty_tiocgicount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.port* }
%struct.port = type { %struct.async_icount }
%struct.async_icount = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.serial_icounter_struct = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, %struct.serial_icounter_struct*)* @ntty_tiocgicount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ntty_tiocgicount(%struct.tty_struct* %0, %struct.serial_icounter_struct* %1) #0 {
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca %struct.serial_icounter_struct*, align 8
  %5 = alloca %struct.port*, align 8
  %6 = alloca %struct.async_icount, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %3, align 8
  store %struct.serial_icounter_struct* %1, %struct.serial_icounter_struct** %4, align 8
  %7 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %8 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %7, i32 0, i32 0
  %9 = load %struct.port*, %struct.port** %8, align 8
  store %struct.port* %9, %struct.port** %5, align 8
  %10 = load %struct.port*, %struct.port** %5, align 8
  %11 = getelementptr inbounds %struct.port, %struct.port* %10, i32 0, i32 0
  %12 = bitcast %struct.async_icount* %6 to i8*
  %13 = bitcast %struct.async_icount* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %12, i8* align 4 %13, i64 44, i1 false)
  %14 = getelementptr inbounds %struct.async_icount, %struct.async_icount* %6, i32 0, i32 10
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.serial_icounter_struct*, %struct.serial_icounter_struct** %4, align 8
  %17 = getelementptr inbounds %struct.serial_icounter_struct, %struct.serial_icounter_struct* %16, i32 0, i32 10
  store i32 %15, i32* %17, align 4
  %18 = getelementptr inbounds %struct.async_icount, %struct.async_icount* %6, i32 0, i32 9
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.serial_icounter_struct*, %struct.serial_icounter_struct** %4, align 8
  %21 = getelementptr inbounds %struct.serial_icounter_struct, %struct.serial_icounter_struct* %20, i32 0, i32 9
  store i32 %19, i32* %21, align 4
  %22 = getelementptr inbounds %struct.async_icount, %struct.async_icount* %6, i32 0, i32 8
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.serial_icounter_struct*, %struct.serial_icounter_struct** %4, align 8
  %25 = getelementptr inbounds %struct.serial_icounter_struct, %struct.serial_icounter_struct* %24, i32 0, i32 8
  store i32 %23, i32* %25, align 4
  %26 = getelementptr inbounds %struct.async_icount, %struct.async_icount* %6, i32 0, i32 7
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.serial_icounter_struct*, %struct.serial_icounter_struct** %4, align 8
  %29 = getelementptr inbounds %struct.serial_icounter_struct, %struct.serial_icounter_struct* %28, i32 0, i32 7
  store i32 %27, i32* %29, align 4
  %30 = getelementptr inbounds %struct.async_icount, %struct.async_icount* %6, i32 0, i32 6
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.serial_icounter_struct*, %struct.serial_icounter_struct** %4, align 8
  %33 = getelementptr inbounds %struct.serial_icounter_struct, %struct.serial_icounter_struct* %32, i32 0, i32 6
  store i32 %31, i32* %33, align 4
  %34 = getelementptr inbounds %struct.async_icount, %struct.async_icount* %6, i32 0, i32 5
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.serial_icounter_struct*, %struct.serial_icounter_struct** %4, align 8
  %37 = getelementptr inbounds %struct.serial_icounter_struct, %struct.serial_icounter_struct* %36, i32 0, i32 5
  store i32 %35, i32* %37, align 4
  %38 = getelementptr inbounds %struct.async_icount, %struct.async_icount* %6, i32 0, i32 4
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.serial_icounter_struct*, %struct.serial_icounter_struct** %4, align 8
  %41 = getelementptr inbounds %struct.serial_icounter_struct, %struct.serial_icounter_struct* %40, i32 0, i32 4
  store i32 %39, i32* %41, align 4
  %42 = getelementptr inbounds %struct.async_icount, %struct.async_icount* %6, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.serial_icounter_struct*, %struct.serial_icounter_struct** %4, align 8
  %45 = getelementptr inbounds %struct.serial_icounter_struct, %struct.serial_icounter_struct* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 4
  %46 = getelementptr inbounds %struct.async_icount, %struct.async_icount* %6, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.serial_icounter_struct*, %struct.serial_icounter_struct** %4, align 8
  %49 = getelementptr inbounds %struct.serial_icounter_struct, %struct.serial_icounter_struct* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 4
  %50 = getelementptr inbounds %struct.async_icount, %struct.async_icount* %6, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.serial_icounter_struct*, %struct.serial_icounter_struct** %4, align 8
  %53 = getelementptr inbounds %struct.serial_icounter_struct, %struct.serial_icounter_struct* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = getelementptr inbounds %struct.async_icount, %struct.async_icount* %6, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.serial_icounter_struct*, %struct.serial_icounter_struct** %4, align 8
  %57 = getelementptr inbounds %struct.serial_icounter_struct, %struct.serial_icounter_struct* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 4
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
