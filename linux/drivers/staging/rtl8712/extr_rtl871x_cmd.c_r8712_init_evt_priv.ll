; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_cmd.c_r8712_init_evt_priv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_cmd.c_r8712_init_evt_priv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evt_priv = type { i64, i64, i64, i64 }

@MAX_EVTSZ = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @r8712_init_evt_priv(%struct.evt_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.evt_priv*, align 8
  store %struct.evt_priv* %0, %struct.evt_priv** %3, align 8
  %4 = load %struct.evt_priv*, %struct.evt_priv** %3, align 8
  %5 = getelementptr inbounds %struct.evt_priv, %struct.evt_priv* %4, i32 0, i32 3
  store i64 0, i64* %5, align 8
  %6 = load i64, i64* @MAX_EVTSZ, align 8
  %7 = add nsw i64 %6, 4
  %8 = load i32, i32* @GFP_ATOMIC, align 4
  %9 = call i64 @kmalloc(i64 %7, i32 %8)
  %10 = load %struct.evt_priv*, %struct.evt_priv** %3, align 8
  %11 = getelementptr inbounds %struct.evt_priv, %struct.evt_priv* %10, i32 0, i32 1
  store i64 %9, i64* %11, align 8
  %12 = load %struct.evt_priv*, %struct.evt_priv** %3, align 8
  %13 = getelementptr inbounds %struct.evt_priv, %struct.evt_priv* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %35

19:                                               ; preds = %1
  %20 = load %struct.evt_priv*, %struct.evt_priv** %3, align 8
  %21 = getelementptr inbounds %struct.evt_priv, %struct.evt_priv* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %22, 4
  %24 = load %struct.evt_priv*, %struct.evt_priv** %3, align 8
  %25 = getelementptr inbounds %struct.evt_priv, %struct.evt_priv* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = trunc i64 %26 to i32
  %28 = and i32 %27, 3
  %29 = sext i32 %28 to i64
  %30 = sub nsw i64 %23, %29
  %31 = load %struct.evt_priv*, %struct.evt_priv** %3, align 8
  %32 = getelementptr inbounds %struct.evt_priv, %struct.evt_priv* %31, i32 0, i32 2
  store i64 %30, i64* %32, align 8
  %33 = load %struct.evt_priv*, %struct.evt_priv** %3, align 8
  %34 = getelementptr inbounds %struct.evt_priv, %struct.evt_priv* %33, i32 0, i32 0
  store i64 0, i64* %34, align 8
  store i32 0, i32* %2, align 4
  br label %35

35:                                               ; preds = %19, %16
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i64 @kmalloc(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
