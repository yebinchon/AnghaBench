; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx_chip.c_rtsx_read_efuse.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx_chip.c_rtsx_read_efuse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_chip = type { i32 }

@EFUSE_CTRL = common dso_local global i32 0, align 4
@STATUS_TIMEDOUT = common dso_local global i32 0, align 4
@EFUSE_DATA = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtsx_read_efuse(%struct.rtsx_chip* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtsx_chip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.rtsx_chip* %0, %struct.rtsx_chip** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %10, align 4
  %11 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %12 = load i32, i32* @EFUSE_CTRL, align 4
  %13 = load i32, i32* %6, align 4
  %14 = or i32 128, %13
  %15 = call i32 @rtsx_write_register(%struct.rtsx_chip* %11, i32 %12, i32 255, i32 %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* %8, align 4
  store i32 %19, i32* %4, align 4
  br label %64

20:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %21

21:                                               ; preds = %39, %20
  %22 = load i32, i32* %9, align 4
  %23 = icmp slt i32 %22, 100
  br i1 %23, label %24, label %42

24:                                               ; preds = %21
  %25 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %26 = load i32, i32* @EFUSE_CTRL, align 4
  %27 = call i32 @rtsx_read_register(%struct.rtsx_chip* %25, i32 %26, i32* %10)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load i32, i32* %8, align 4
  store i32 %31, i32* %4, align 4
  br label %64

32:                                               ; preds = %24
  %33 = load i32, i32* %10, align 4
  %34 = and i32 %33, 128
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %32
  br label %42

37:                                               ; preds = %32
  %38 = call i32 @udelay(i32 1)
  br label %39

39:                                               ; preds = %37
  %40 = load i32, i32* %9, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %9, align 4
  br label %21

42:                                               ; preds = %36, %21
  %43 = load i32, i32* %10, align 4
  %44 = and i32 %43, 128
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = load i32, i32* @STATUS_TIMEDOUT, align 4
  store i32 %47, i32* %4, align 4
  br label %64

48:                                               ; preds = %42
  %49 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %50 = load i32, i32* @EFUSE_DATA, align 4
  %51 = call i32 @rtsx_read_register(%struct.rtsx_chip* %49, i32 %50, i32* %10)
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %48
  %55 = load i32, i32* %8, align 4
  store i32 %55, i32* %4, align 4
  br label %64

56:                                               ; preds = %48
  %57 = load i32*, i32** %7, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load i32, i32* %10, align 4
  %61 = load i32*, i32** %7, align 8
  store i32 %60, i32* %61, align 4
  br label %62

62:                                               ; preds = %59, %56
  %63 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %62, %54, %46, %30, %18
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local i32 @rtsx_write_register(%struct.rtsx_chip*, i32, i32, i32) #1

declare dso_local i32 @rtsx_read_register(%struct.rtsx_chip*, i32, i32*) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
