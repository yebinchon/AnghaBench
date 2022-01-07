; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/nvec/extr_nvec_kbd.c_nvec_kbd_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/nvec/extr_nvec_kbd.c_nvec_kbd_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.nvec_chip* }
%struct.nvec_chip = type { i32 }
%struct.input_dev = type { i32 }

@keys_dev = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@NVEC_KBD = common dso_local global i8 0, align 1
@SET_LEDS = common dso_local global i8 0, align 1
@EV_REP = common dso_local global i32 0, align 4
@EV_LED = common dso_local global i32 0, align 4
@LED_CAPSL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.input_dev*, i32, i32, i32)* @nvec_kbd_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvec_kbd_event(%struct.input_dev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.input_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.nvec_chip*, align 8
  %11 = alloca [3 x i8], align 1
  store %struct.input_dev* %0, %struct.input_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.nvec_chip*, %struct.nvec_chip** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @keys_dev, i32 0, i32 0), align 8
  store %struct.nvec_chip* %12, %struct.nvec_chip** %10, align 8
  %13 = getelementptr inbounds [3 x i8], [3 x i8]* %11, i64 0, i64 0
  %14 = load i8, i8* @NVEC_KBD, align 1
  store i8 %14, i8* %13, align 1
  %15 = getelementptr inbounds i8, i8* %13, i64 1
  %16 = load i8, i8* @SET_LEDS, align 1
  store i8 %16, i8* %15, align 1
  %17 = getelementptr inbounds i8, i8* %15, i64 1
  store i8 0, i8* %17, align 1
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @EV_REP, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %43

22:                                               ; preds = %4
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @EV_LED, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  store i32 -1, i32* %5, align 4
  br label %43

27:                                               ; preds = %22
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @LED_CAPSL, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  store i32 -1, i32* %5, align 4
  br label %43

32:                                               ; preds = %27
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = trunc i32 %37 to i8
  %39 = getelementptr inbounds [3 x i8], [3 x i8]* %11, i64 0, i64 2
  store i8 %38, i8* %39, align 1
  %40 = load %struct.nvec_chip*, %struct.nvec_chip** %10, align 8
  %41 = getelementptr inbounds [3 x i8], [3 x i8]* %11, i64 0, i64 0
  %42 = call i32 @nvec_write_async(%struct.nvec_chip* %40, i8* %41, i32 3)
  store i32 0, i32* %5, align 4
  br label %43

43:                                               ; preds = %32, %31, %26, %21
  %44 = load i32, i32* %5, align 4
  ret i32 %44
}

declare dso_local i32 @nvec_write_async(%struct.nvec_chip*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
