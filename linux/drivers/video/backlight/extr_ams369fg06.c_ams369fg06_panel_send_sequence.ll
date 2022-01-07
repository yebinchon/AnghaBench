; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_ams369fg06.c_ams369fg06_panel_send_sequence.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_ams369fg06.c_ams369fg06_panel_send_sequence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ams369fg06 = type { i32 }

@DEFMASK = common dso_local global i16 0, align 2
@ENDDEF = common dso_local global i16 0, align 2
@SLEEPMSEC = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ams369fg06*, i16*)* @ams369fg06_panel_send_sequence to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ams369fg06_panel_send_sequence(%struct.ams369fg06* %0, i16* %1) #0 {
  %3 = alloca %struct.ams369fg06*, align 8
  %4 = alloca i16*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ams369fg06* %0, %struct.ams369fg06** %3, align 8
  store i16* %1, i16** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %59, %2
  %8 = load i16*, i16** %4, align 8
  %9 = load i32, i32* %6, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i16, i16* %8, i64 %10
  %12 = load i16, i16* %11, align 2
  %13 = zext i16 %12 to i32
  %14 = load i16, i16* @DEFMASK, align 2
  %15 = zext i16 %14 to i32
  %16 = and i32 %13, %15
  %17 = load i16, i16* @ENDDEF, align 2
  %18 = zext i16 %17 to i32
  %19 = icmp ne i32 %16, %18
  br i1 %19, label %20, label %62

20:                                               ; preds = %7
  %21 = load i16*, i16** %4, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i16, i16* %21, i64 %23
  %25 = load i16, i16* %24, align 2
  %26 = zext i16 %25 to i32
  %27 = load i16, i16* @DEFMASK, align 2
  %28 = zext i16 %27 to i32
  %29 = and i32 %26, %28
  %30 = load i16, i16* @SLEEPMSEC, align 2
  %31 = zext i16 %30 to i32
  %32 = icmp ne i32 %29, %31
  br i1 %32, label %33, label %51

33:                                               ; preds = %20
  %34 = load %struct.ams369fg06*, %struct.ams369fg06** %3, align 8
  %35 = load i16*, i16** %4, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i16, i16* %35, i64 %37
  %39 = load i16, i16* %38, align 2
  %40 = load i16*, i16** %4, align 8
  %41 = load i32, i32* %6, align 4
  %42 = add nsw i32 %41, 1
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i16, i16* %40, i64 %43
  %45 = load i16, i16* %44, align 2
  %46 = call i32 @ams369fg06_spi_write(%struct.ams369fg06* %34, i16 zeroext %39, i16 zeroext %45)
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %33
  br label %62

50:                                               ; preds = %33
  br label %59

51:                                               ; preds = %20
  %52 = load i16*, i16** %4, align 8
  %53 = load i32, i32* %6, align 4
  %54 = add nsw i32 %53, 1
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i16, i16* %52, i64 %55
  %57 = load i16, i16* %56, align 2
  %58 = call i32 @msleep(i16 zeroext %57)
  br label %59

59:                                               ; preds = %51, %50
  %60 = load i32, i32* %6, align 4
  %61 = add nsw i32 %60, 2
  store i32 %61, i32* %6, align 4
  br label %7

62:                                               ; preds = %49, %7
  %63 = load i32, i32* %5, align 4
  ret i32 %63
}

declare dso_local i32 @ams369fg06_spi_write(%struct.ams369fg06*, i16 zeroext, i16 zeroext) #1

declare dso_local i32 @msleep(i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
