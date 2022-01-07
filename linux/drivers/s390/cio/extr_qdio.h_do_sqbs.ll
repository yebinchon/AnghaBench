; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_qdio.h_do_sqbs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_qdio.h_do_sqbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i8, i32, i32*, i32*)* @do_sqbs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_sqbs(i64 %0, i8 zeroext %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i64 %0, i64* %6, align 8
  store i8 %1, i8* %7, align 1
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %14 = load i32*, i32** %10, align 8
  %15 = load i32, i32* %14, align 4
  %16 = sext i32 %15 to i64
  store i64 %16, i64* %11, align 8
  %17 = load i64, i64* %6, align 8
  store i64 %17, i64* %12, align 8
  %18 = load i32, i32* %8, align 4
  %19 = sext i32 %18 to i64
  %20 = shl i64 %19, 32
  %21 = load i32*, i32** %9, align 8
  %22 = load i32, i32* %21, align 4
  %23 = sext i32 %22 to i64
  %24 = or i64 %20, %23
  store i64 %24, i64* %13, align 8
  %25 = load i64, i64* %11, align 8
  %26 = load i64, i64* %13, align 8
  %27 = load i8, i8* %7, align 1
  %28 = zext i8 %27 to i64
  %29 = load i64, i64* %12, align 8
  %30 = call { i64, i64 } asm sideeffect "\09.insn\09rsy,0xeb000000008A,$1,0,0($2)", "={ax},={dx},{dx},{dx},0,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %28, i64 %29, i64 %25, i64 %26) #1, !srcloc !2
  %31 = extractvalue { i64, i64 } %30, 0
  %32 = extractvalue { i64, i64 } %30, 1
  store i64 %31, i64* %11, align 8
  store i64 %32, i64* %13, align 8
  %33 = load i64, i64* %11, align 8
  %34 = and i64 %33, 255
  %35 = trunc i64 %34 to i32
  %36 = load i32*, i32** %10, align 8
  store i32 %35, i32* %36, align 4
  %37 = load i64, i64* %13, align 8
  %38 = and i64 %37, 255
  %39 = trunc i64 %38 to i32
  %40 = load i32*, i32** %9, align 8
  store i32 %39, i32* %40, align 4
  %41 = load i64, i64* %11, align 8
  %42 = lshr i64 %41, 32
  %43 = and i64 %42, 255
  %44 = trunc i64 %43 to i32
  ret i32 %44
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 477}
