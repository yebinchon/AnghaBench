; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_qdio_main.c_do_siga_output.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_qdio_main.c_do_siga_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i32*, i32, i64)* @do_siga_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_siga_output(i64 %0, i64 %1, i32* %2, i32 %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i64 %4, i64* %10, align 8
  %16 = load i32, i32* %9, align 4
  %17 = zext i32 %16 to i64
  store i64 %17, i64* %11, align 8
  %18 = load i64, i64* %6, align 8
  store i64 %18, i64* %12, align 8
  %19 = load i64, i64* %7, align 8
  store i64 %19, i64* %13, align 8
  %20 = load i64, i64* %10, align 8
  store i64 %20, i64* %14, align 8
  %21 = load i64, i64* %11, align 8
  %22 = load i64, i64* %14, align 8
  %23 = load i64, i64* %12, align 8
  %24 = load i64, i64* %13, align 8
  %25 = call { i32, i64, i64 } asm sideeffect "\09siga\090\0A\09ipm\09$0\0A\09srl\09$0,28\0A", "={dx},={ax},={bx},{dx},{cx},1,2,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %23, i64 %24, i64 %21, i64 %22) #1, !srcloc !2
  %26 = extractvalue { i32, i64, i64 } %25, 0
  %27 = extractvalue { i32, i64, i64 } %25, 1
  %28 = extractvalue { i32, i64, i64 } %25, 2
  store i32 %26, i32* %15, align 4
  store i64 %27, i64* %11, align 8
  store i64 %28, i64* %14, align 8
  %29 = load i64, i64* %11, align 8
  %30 = lshr i64 %29, 31
  %31 = trunc i64 %30 to i32
  %32 = load i32*, i32** %8, align 8
  store i32 %31, i32* %32, align 4
  %33 = load i32, i32* %15, align 4
  ret i32 %33
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 510, i32 525, i32 539}
