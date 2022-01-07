; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_fdomain.c_fdomain_identify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_fdomain.c_fdomain_identify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@REG_ID_LSB = common dso_local global i64 0, align 8
@REG_ID_MSB = common dso_local global i64 0, align 8
@tmc1800 = common dso_local global i32 0, align 4
@unknown = common dso_local global i32 0, align 4
@CFG2_32BIT = common dso_local global i32 0, align 4
@REG_CFG2 = common dso_local global i64 0, align 8
@tmc18c30 = common dso_local global i32 0, align 4
@tmc18c50 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @fdomain_identify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fdomain_identify(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = sext i32 %5 to i64
  %7 = load i64, i64* @REG_ID_LSB, align 8
  %8 = add nsw i64 %6, %7
  %9 = call i32 @inb(i64 %8)
  %10 = load i32, i32* %3, align 4
  %11 = sext i32 %10 to i64
  %12 = load i64, i64* @REG_ID_MSB, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @inb(i64 %13)
  %15 = shl i32 %14, 8
  %16 = or i32 %9, %15
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  switch i32 %17, label %21 [
    i32 24871, label %18
    i32 24809, label %20
  ]

18:                                               ; preds = %1
  %19 = load i32, i32* @tmc1800, align 4
  store i32 %19, i32* %2, align 4
  br label %57

20:                                               ; preds = %1
  br label %23

21:                                               ; preds = %1
  %22 = load i32, i32* @unknown, align 4
  store i32 %22, i32* %2, align 4
  br label %57

23:                                               ; preds = %20
  %24 = load i32, i32* @CFG2_32BIT, align 4
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = load i64, i64* @REG_CFG2, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @outb(i32 %24, i64 %28)
  %30 = load i32, i32* %3, align 4
  %31 = sext i32 %30 to i64
  %32 = load i64, i64* @REG_CFG2, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @inb(i64 %33)
  %35 = load i32, i32* @CFG2_32BIT, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %55

38:                                               ; preds = %23
  %39 = load i32, i32* %3, align 4
  %40 = sext i32 %39 to i64
  %41 = load i64, i64* @REG_CFG2, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @outb(i32 0, i64 %42)
  %44 = load i32, i32* %3, align 4
  %45 = sext i32 %44 to i64
  %46 = load i64, i64* @REG_CFG2, align 8
  %47 = add nsw i64 %45, %46
  %48 = call i32 @inb(i64 %47)
  %49 = load i32, i32* @CFG2_32BIT, align 4
  %50 = and i32 %48, %49
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %38
  %53 = load i32, i32* @tmc18c30, align 4
  store i32 %53, i32* %2, align 4
  br label %57

54:                                               ; preds = %38
  br label %55

55:                                               ; preds = %54, %23
  %56 = load i32, i32* @tmc18c50, align 4
  store i32 %56, i32* %2, align 4
  br label %57

57:                                               ; preds = %55, %52, %21, %18
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @outb(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
