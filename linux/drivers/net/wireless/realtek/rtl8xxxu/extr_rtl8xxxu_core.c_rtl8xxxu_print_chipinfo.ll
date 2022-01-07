; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl8xxxu/extr_rtl8xxxu_core.c_rtl8xxxu_print_chipinfo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl8xxxu/extr_rtl8xxxu_core.c_rtl8xxxu_print_chipinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl8xxxu_priv = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"D\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"E\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.6 = private unnamed_addr constant [74 x i8] c"RTL%s rev %s (%s) %iT%iR, TX queues %i, WiFi=%i, BT=%i, GPS=%i, HI PA=%i\0A\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"RTL%s MAC: %pM\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtl8xxxu_priv*)* @rtl8xxxu_print_chipinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8xxxu_print_chipinfo(%struct.rtl8xxxu_priv* %0) #0 {
  %2 = alloca %struct.rtl8xxxu_priv*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca i8*, align 8
  store %struct.rtl8xxxu_priv* %0, %struct.rtl8xxxu_priv** %2, align 8
  %5 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %6 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %5, i32 0, i32 11
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  store %struct.device* %8, %struct.device** %3, align 8
  %9 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %10 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  switch i32 %11, label %17 [
    i32 0, label %12
    i32 1, label %13
    i32 2, label %14
    i32 3, label %15
    i32 4, label %16
  ]

12:                                               ; preds = %1
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  br label %18

13:                                               ; preds = %1
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %4, align 8
  br label %18

14:                                               ; preds = %1
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8** %4, align 8
  br label %18

15:                                               ; preds = %1
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8** %4, align 8
  br label %18

16:                                               ; preds = %1
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8** %4, align 8
  br label %18

17:                                               ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8** %4, align 8
  br label %18

18:                                               ; preds = %17, %16, %15, %14, %13, %12
  %19 = load %struct.device*, %struct.device** %3, align 8
  %20 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %21 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load i8*, i8** %4, align 8
  %24 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %25 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %24, i32 0, i32 10
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %28 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %27, i32 0, i32 9
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %31 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %30, i32 0, i32 8
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %34 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %33, i32 0, i32 7
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %37 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %36, i32 0, i32 6
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %40 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %43 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %46 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = call i32 (%struct.device*, i8*, i32, i8*, ...) @dev_info(%struct.device* %19, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.6, i64 0, i64 0), i32 %22, i8* %23, i32 %26, i32 %29, i32 %32, i32 %35, i32 %38, i32 %41, i32 %44, i32 %47)
  %49 = load %struct.device*, %struct.device** %3, align 8
  %50 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %51 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %54 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = sext i32 %55 to i64
  %57 = inttoptr i64 %56 to i8*
  %58 = call i32 (%struct.device*, i8*, i32, i8*, ...) @dev_info(%struct.device* %49, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i32 %52, i8* %57)
  ret void
}

declare dso_local i32 @dev_info(%struct.device*, i8*, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
