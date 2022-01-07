; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl8xxxu/extr_rtl8xxxu_core.c_rtl8xxxu_init_rf_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl8xxxu/extr_rtl8xxxu_core.c_rtl8xxxu_init_rf_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl8xxxu_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.rtl8xxxu_rfregval = type { i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"Failed to initialize RF\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtl8xxxu_priv*, %struct.rtl8xxxu_rfregval*, i32)* @rtl8xxxu_init_rf_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl8xxxu_init_rf_regs(%struct.rtl8xxxu_priv* %0, %struct.rtl8xxxu_rfregval* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtl8xxxu_priv*, align 8
  %6 = alloca %struct.rtl8xxxu_rfregval*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.rtl8xxxu_priv* %0, %struct.rtl8xxxu_priv** %5, align 8
  store %struct.rtl8xxxu_rfregval* %1, %struct.rtl8xxxu_rfregval** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %12

12:                                               ; preds = %63, %3
  %13 = load %struct.rtl8xxxu_rfregval*, %struct.rtl8xxxu_rfregval** %6, align 8
  %14 = load i32, i32* %8, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.rtl8xxxu_rfregval, %struct.rtl8xxxu_rfregval* %13, i64 %15
  %17 = getelementptr inbounds %struct.rtl8xxxu_rfregval, %struct.rtl8xxxu_rfregval* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %10, align 4
  %19 = load %struct.rtl8xxxu_rfregval*, %struct.rtl8xxxu_rfregval** %6, align 8
  %20 = load i32, i32* %8, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.rtl8xxxu_rfregval, %struct.rtl8xxxu_rfregval* %19, i64 %21
  %23 = getelementptr inbounds %struct.rtl8xxxu_rfregval, %struct.rtl8xxxu_rfregval* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %10, align 4
  %26 = icmp eq i32 %25, 255
  br i1 %26, label %27, label %31

27:                                               ; preds = %12
  %28 = load i32, i32* %11, align 4
  %29 = icmp eq i32 %28, -1
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  br label %66

31:                                               ; preds = %27, %12
  %32 = load i32, i32* %10, align 4
  switch i32 %32, label %45 [
    i32 254, label %33
    i32 253, label %35
    i32 252, label %37
    i32 251, label %39
    i32 250, label %41
    i32 249, label %43
  ]

33:                                               ; preds = %31
  %34 = call i32 @msleep(i32 50)
  br label %63

35:                                               ; preds = %31
  %36 = call i32 @mdelay(i32 5)
  br label %63

37:                                               ; preds = %31
  %38 = call i32 @mdelay(i32 1)
  br label %63

39:                                               ; preds = %31
  %40 = call i32 @udelay(i32 50)
  br label %63

41:                                               ; preds = %31
  %42 = call i32 @udelay(i32 5)
  br label %63

43:                                               ; preds = %31
  %44 = call i32 @udelay(i32 1)
  br label %63

45:                                               ; preds = %31
  %46 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %5, align 8
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* %11, align 4
  %50 = call i32 @rtl8xxxu_write_rfreg(%struct.rtl8xxxu_priv* %46, i32 %47, i32 %48, i32 %49)
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %9, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %45
  %54 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %5, align 8
  %55 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %54, i32 0, i32 0
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = call i32 @dev_warn(i32* %57, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %59 = load i32, i32* @EAGAIN, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %4, align 4
  br label %67

61:                                               ; preds = %45
  %62 = call i32 @udelay(i32 1)
  br label %63

63:                                               ; preds = %61, %43, %41, %39, %37, %35, %33
  %64 = load i32, i32* %8, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %8, align 4
  br label %12

66:                                               ; preds = %30
  store i32 0, i32* %4, align 4
  br label %67

67:                                               ; preds = %66, %53
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @rtl8xxxu_write_rfreg(%struct.rtl8xxxu_priv*, i32, i32, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
