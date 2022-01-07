; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fieldbus/anybuss/extr_arcx-anybus.c_anybuss_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fieldbus/anybuss/extr_arcx-anybus.c_anybuss_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.controller_priv = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@CPLD_CONTROL_CRST = common dso_local global i32 0, align 4
@CPLD_CONTROL_RST2 = common dso_local global i32 0, align 4
@CPLD_CONTROL_RST1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.controller_priv*, i64, i32)* @anybuss_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @anybuss_reset(%struct.controller_priv* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.controller_priv*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.controller_priv* %0, %struct.controller_priv** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i64, i64* %6, align 8
  %9 = icmp uge i64 %8, 2
  br i1 %9, label %10, label %13

10:                                               ; preds = %3
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %4, align 4
  br label %36

13:                                               ; preds = %3
  %14 = load %struct.controller_priv*, %struct.controller_priv** %5, align 8
  %15 = getelementptr inbounds %struct.controller_priv, %struct.controller_priv* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %13
  %19 = load %struct.controller_priv*, %struct.controller_priv** %5, align 8
  %20 = load i32, i32* @CPLD_CONTROL_CRST, align 4
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @do_reset(%struct.controller_priv* %19, i32 %20, i32 %21)
  br label %35

23:                                               ; preds = %13
  %24 = load %struct.controller_priv*, %struct.controller_priv** %5, align 8
  %25 = load i64, i64* %6, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = load i32, i32* @CPLD_CONTROL_RST2, align 4
  br label %31

29:                                               ; preds = %23
  %30 = load i32, i32* @CPLD_CONTROL_RST1, align 4
  br label %31

31:                                               ; preds = %29, %27
  %32 = phi i32 [ %28, %27 ], [ %30, %29 ]
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @do_reset(%struct.controller_priv* %24, i32 %32, i32 %33)
  br label %35

35:                                               ; preds = %31, %18
  store i32 0, i32* %4, align 4
  br label %36

36:                                               ; preds = %35, %10
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local i32 @do_reset(%struct.controller_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
