; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/olpc_dcon/extr_olpc_dcon.c_dcon_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/olpc_dcon/extr_olpc_dcon.c_dcon_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 (i32*)* }
%struct.dcon_priv = type { i32, i32, i8*, i32, i32 }

@pdata = common dso_local global %struct.TYPE_2__* null, align 8
@IRQ_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"DCONLOAD_MISSED interrupt\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"switching w/ status 0/0\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"scanline interrupt w/CPU\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dcon_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.dcon_priv*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.dcon_priv*
  store %struct.dcon_priv* %9, %struct.dcon_priv** %6, align 8
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pdata, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64 (i32*)*, i64 (i32*)** %11, align 8
  %13 = call i64 %12(i32* %7)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* @IRQ_NONE, align 4
  store i32 %16, i32* %3, align 4
  br label %59

17:                                               ; preds = %2
  %18 = load i32, i32* %7, align 4
  %19 = and i32 %18, 3
  switch i32 %19, label %57 [
    i32 3, label %20
    i32 2, label %22
    i32 1, label %22
    i32 0, label %31
  ]

20:                                               ; preds = %17
  %21 = call i32 @pr_debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %57

22:                                               ; preds = %17, %17
  %23 = load %struct.dcon_priv*, %struct.dcon_priv** %6, align 8
  %24 = getelementptr inbounds %struct.dcon_priv, %struct.dcon_priv* %23, i32 0, i32 0
  store i32 1, i32* %24, align 8
  %25 = call i8* (...) @ktime_get()
  %26 = load %struct.dcon_priv*, %struct.dcon_priv** %6, align 8
  %27 = getelementptr inbounds %struct.dcon_priv, %struct.dcon_priv* %26, i32 0, i32 2
  store i8* %25, i8** %27, align 8
  %28 = load %struct.dcon_priv*, %struct.dcon_priv** %6, align 8
  %29 = getelementptr inbounds %struct.dcon_priv, %struct.dcon_priv* %28, i32 0, i32 1
  %30 = call i32 @wake_up(i32* %29)
  br label %57

31:                                               ; preds = %17
  %32 = load %struct.dcon_priv*, %struct.dcon_priv** %6, align 8
  %33 = getelementptr inbounds %struct.dcon_priv, %struct.dcon_priv* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.dcon_priv*, %struct.dcon_priv** %6, align 8
  %36 = getelementptr inbounds %struct.dcon_priv, %struct.dcon_priv* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %34, %37
  br i1 %38, label %39, label %54

39:                                               ; preds = %31
  %40 = load %struct.dcon_priv*, %struct.dcon_priv** %6, align 8
  %41 = getelementptr inbounds %struct.dcon_priv, %struct.dcon_priv* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %54, label %44

44:                                               ; preds = %39
  %45 = load %struct.dcon_priv*, %struct.dcon_priv** %6, align 8
  %46 = getelementptr inbounds %struct.dcon_priv, %struct.dcon_priv* %45, i32 0, i32 0
  store i32 1, i32* %46, align 8
  %47 = call i8* (...) @ktime_get()
  %48 = load %struct.dcon_priv*, %struct.dcon_priv** %6, align 8
  %49 = getelementptr inbounds %struct.dcon_priv, %struct.dcon_priv* %48, i32 0, i32 2
  store i8* %47, i8** %49, align 8
  %50 = load %struct.dcon_priv*, %struct.dcon_priv** %6, align 8
  %51 = getelementptr inbounds %struct.dcon_priv, %struct.dcon_priv* %50, i32 0, i32 1
  %52 = call i32 @wake_up(i32* %51)
  %53 = call i32 @pr_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %56

54:                                               ; preds = %39, %31
  %55 = call i32 @pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %56

56:                                               ; preds = %54, %44
  br label %57

57:                                               ; preds = %56, %17, %22, %20
  %58 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %57, %15
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i8* @ktime_get(...) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
