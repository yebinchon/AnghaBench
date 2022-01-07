; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_qdio.h_do_eqbs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_qdio.h_do_eqbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i8*, i32, i32*, i32*, i32)* @do_eqbs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_eqbs(i64 %0, i8* %1, i32 %2, i32* %3, i32* %4, i32 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store i64 %0, i64* %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  %17 = load i32*, i32** %11, align 8
  %18 = load i32, i32* %17, align 4
  %19 = sext i32 %18 to i64
  store i64 %19, i64* %13, align 8
  %20 = load i64, i64* %7, align 8
  store i64 %20, i64* %14, align 8
  %21 = load i32, i32* %9, align 4
  %22 = sext i32 %21 to i64
  %23 = shl i64 %22, 32
  %24 = load i32*, i32** %10, align 8
  %25 = load i32, i32* %24, align 4
  %26 = sext i32 %25 to i64
  %27 = or i64 %23, %26
  store i64 %27, i64* %15, align 8
  %28 = load i32, i32* %12, align 4
  %29 = sext i32 %28 to i64
  %30 = shl i64 %29, 63
  store i64 %30, i64* %16, align 8
  %31 = load i64, i64* %13, align 8
  %32 = load i64, i64* %15, align 8
  %33 = load i64, i64* %16, align 8
  %34 = load i64, i64* %14, align 8
  %35 = call { i64, i64, i64 } asm sideeffect "\09.insn\09rrf,0xB99c0000,$1,$2,0,0", "={ax},={dx},={dx},{dx},0,1,2,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %34, i64 %31, i64 %32, i64 %33) #1, !srcloc !2
  %36 = extractvalue { i64, i64, i64 } %35, 0
  %37 = extractvalue { i64, i64, i64 } %35, 1
  %38 = extractvalue { i64, i64, i64 } %35, 2
  store i64 %36, i64* %13, align 8
  store i64 %37, i64* %15, align 8
  store i64 %38, i64* %16, align 8
  %39 = load i64, i64* %13, align 8
  %40 = and i64 %39, 255
  %41 = trunc i64 %40 to i32
  %42 = load i32*, i32** %11, align 8
  store i32 %41, i32* %42, align 4
  %43 = load i64, i64* %15, align 8
  %44 = and i64 %43, 255
  %45 = trunc i64 %44 to i32
  %46 = load i32*, i32** %10, align 8
  store i32 %45, i32* %46, align 4
  %47 = load i64, i64* %16, align 8
  %48 = and i64 %47, 255
  %49 = trunc i64 %48 to i8
  %50 = load i8*, i8** %8, align 8
  store i8 %49, i8* %50, align 1
  %51 = load i64, i64* %13, align 8
  %52 = lshr i64 %51, 32
  %53 = and i64 %52, 255
  %54 = trunc i64 %53 to i32
  ret i32 %54
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 537}
