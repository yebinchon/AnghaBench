; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fieldbus/anybuss/extr_arcx-anybus.c_do_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fieldbus/anybuss/extr_arcx-anybus.c_do_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.controller_priv = type { i32, i64, i32 }

@CPLD_CONTROL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.controller_priv*, i32, i32)* @do_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_reset(%struct.controller_priv* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.controller_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.controller_priv* %0, %struct.controller_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.controller_priv*, %struct.controller_priv** %4, align 8
  %8 = getelementptr inbounds %struct.controller_priv, %struct.controller_priv* %7, i32 0, i32 0
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %3
  %13 = load i32, i32* %5, align 4
  %14 = xor i32 %13, -1
  %15 = load %struct.controller_priv*, %struct.controller_priv** %4, align 8
  %16 = getelementptr inbounds %struct.controller_priv, %struct.controller_priv* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = and i32 %17, %14
  store i32 %18, i32* %16, align 8
  br label %25

19:                                               ; preds = %3
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.controller_priv*, %struct.controller_priv** %4, align 8
  %22 = getelementptr inbounds %struct.controller_priv, %struct.controller_priv* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = or i32 %23, %20
  store i32 %24, i32* %22, align 8
  br label %25

25:                                               ; preds = %19, %12
  %26 = load %struct.controller_priv*, %struct.controller_priv** %4, align 8
  %27 = getelementptr inbounds %struct.controller_priv, %struct.controller_priv* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.controller_priv*, %struct.controller_priv** %4, align 8
  %30 = getelementptr inbounds %struct.controller_priv, %struct.controller_priv* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @CPLD_CONTROL, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @writeb(i32 %28, i64 %33)
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %25
  %38 = call i32 @usleep_range(i32 100, i32 200)
  br label %39

39:                                               ; preds = %37, %25
  %40 = load %struct.controller_priv*, %struct.controller_priv** %4, align 8
  %41 = getelementptr inbounds %struct.controller_priv, %struct.controller_priv* %40, i32 0, i32 0
  %42 = call i32 @mutex_unlock(i32* %41)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @writeb(i32, i64) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
