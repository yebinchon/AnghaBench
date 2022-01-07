; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_ams369fg06.c__ams369fg06_gamma_ctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_ams369fg06.c__ams369fg06_gamma_ctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ams369fg06 = type { i32 }

@GAMMA_TABLE_COUNT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"failed to set gamma table.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ams369fg06*, i32*)* @_ams369fg06_gamma_ctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_ams369fg06_gamma_ctl(%struct.ams369fg06* %0, i32* %1) #0 {
  %3 = alloca %struct.ams369fg06*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ams369fg06* %0, %struct.ams369fg06** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %50, %2
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @GAMMA_TABLE_COUNT, align 4
  %10 = sdiv i32 %9, 3
  %11 = icmp ult i32 %8, %10
  br i1 %11, label %12, label %53

12:                                               ; preds = %7
  %13 = load %struct.ams369fg06*, %struct.ams369fg06** %3, align 8
  %14 = load i32, i32* %5, align 4
  %15 = add i32 64, %14
  %16 = load i32*, i32** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @ams369fg06_spi_write(%struct.ams369fg06* %13, i32 %15, i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load %struct.ams369fg06*, %struct.ams369fg06** %3, align 8
  %23 = load i32, i32* %5, align 4
  %24 = add i32 80, %23
  %25 = load i32*, i32** %4, align 8
  %26 = load i32, i32* %5, align 4
  %27 = add i32 %26, 7
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %25, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @ams369fg06_spi_write(%struct.ams369fg06* %22, i32 %24, i32 %30)
  store i32 %31, i32* %6, align 4
  %32 = load %struct.ams369fg06*, %struct.ams369fg06** %3, align 8
  %33 = load i32, i32* %5, align 4
  %34 = add i32 96, %33
  %35 = load i32*, i32** %4, align 8
  %36 = load i32, i32* %5, align 4
  %37 = add i32 %36, 14
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %35, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @ams369fg06_spi_write(%struct.ams369fg06* %32, i32 %34, i32 %40)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %12
  %45 = load %struct.ams369fg06*, %struct.ams369fg06** %3, align 8
  %46 = getelementptr inbounds %struct.ams369fg06, %struct.ams369fg06* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @dev_err(i32 %47, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %54

49:                                               ; preds = %12
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %5, align 4
  %52 = add i32 %51, 1
  store i32 %52, i32* %5, align 4
  br label %7

53:                                               ; preds = %7
  br label %54

54:                                               ; preds = %53, %44
  %55 = load i32, i32* %6, align 4
  ret i32 %55
}

declare dso_local i32 @ams369fg06_spi_write(%struct.ams369fg06*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
