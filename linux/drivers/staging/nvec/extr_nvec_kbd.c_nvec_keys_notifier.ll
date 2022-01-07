; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/nvec/extr_nvec_kbd.c_nvec_keys_notifier.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/nvec/extr_nvec_kbd.c_nvec_keys_notifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.notifier_block = type { i32 }

@NVEC_KB_EVT = common dso_local global i64 0, align 8
@NVEC_VAR_SIZE = common dso_local global i32 0, align 4
@NOTIFY_STOP = common dso_local global i32 0, align 4
@NVEC_3BYTES = common dso_local global i32 0, align 4
@code_tabs = common dso_local global i64** null, align 8
@KEY_CAPSLOCK = common dso_local global i64 0, align 8
@keys_dev = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@NOTIFY_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.notifier_block*, i64, i8*)* @nvec_keys_notifier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvec_keys_notifier(%struct.notifier_block* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.notifier_block*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.notifier_block* %0, %struct.notifier_block** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load i8*, i8** %7, align 8
  store i8* %12, i8** %10, align 8
  %13 = load i64, i64* %6, align 8
  %14 = load i64, i64* @NVEC_KB_EVT, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %81

16:                                               ; preds = %3
  %17 = load i8*, i8** %10, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 0
  %19 = load i8, i8* %18, align 1
  %20 = zext i8 %19 to i32
  %21 = and i32 %20, 96
  %22 = ashr i32 %21, 5
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %11, align 4
  %24 = load i32, i32* @NVEC_VAR_SIZE, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %16
  %27 = load i32, i32* @NOTIFY_STOP, align 4
  store i32 %27, i32* %4, align 4
  br label %83

28:                                               ; preds = %16
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* @NVEC_3BYTES, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load i8*, i8** %10, align 8
  %34 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %34, i8** %10, align 8
  br label %35

35:                                               ; preds = %32, %28
  %36 = load i8*, i8** %10, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 1
  %38 = load i8, i8* %37, align 1
  %39 = zext i8 %38 to i32
  %40 = and i32 %39, 127
  store i32 %40, i32* %8, align 4
  %41 = load i8*, i8** %10, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 1
  %43 = load i8, i8* %42, align 1
  %44 = zext i8 %43 to i32
  %45 = and i32 %44, 128
  store i32 %45, i32* %9, align 4
  %46 = load i64**, i64*** @code_tabs, align 8
  %47 = load i32, i32* %11, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i64*, i64** %46, i64 %48
  %50 = load i64*, i64** %49, align 8
  %51 = load i32, i32* %8, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i64, i64* %50, i64 %52
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @KEY_CAPSLOCK, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %35
  %58 = load i32, i32* %9, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  %61 = call i32 (...) @nvec_kbd_toggle_led()
  br label %62

62:                                               ; preds = %60, %57, %35
  %63 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @keys_dev, i32 0, i32 0), align 4
  %64 = load i64**, i64*** @code_tabs, align 8
  %65 = load i32, i32* %11, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i64*, i64** %64, i64 %66
  %68 = load i64*, i64** %67, align 8
  %69 = load i32, i32* %8, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i64, i64* %68, i64 %70
  %72 = load i64, i64* %71, align 8
  %73 = load i32, i32* %9, align 4
  %74 = icmp ne i32 %73, 0
  %75 = xor i1 %74, true
  %76 = zext i1 %75 to i32
  %77 = call i32 @input_report_key(i32 %63, i64 %72, i32 %76)
  %78 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @keys_dev, i32 0, i32 0), align 4
  %79 = call i32 @input_sync(i32 %78)
  %80 = load i32, i32* @NOTIFY_STOP, align 4
  store i32 %80, i32* %4, align 4
  br label %83

81:                                               ; preds = %3
  %82 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %82, i32* %4, align 4
  br label %83

83:                                               ; preds = %81, %62, %26
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local i32 @nvec_kbd_toggle_led(...) #1

declare dso_local i32 @input_report_key(i32, i64, i32) #1

declare dso_local i32 @input_sync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
