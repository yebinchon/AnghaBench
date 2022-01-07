; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_smb347-charger.c_smb347_update_ps_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_smb347-charger.c_smb347_update_ps_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb347_charger = type { i32, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64, i64 }

@IRQSTAT_E = common dso_local global i32 0, align 4
@IRQSTAT_E_DCIN_UV_STAT = common dso_local global i32 0, align 4
@IRQSTAT_E_USBIN_UV_STAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smb347_charger*)* @smb347_update_ps_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smb347_update_ps_status(%struct.smb347_charger* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.smb347_charger*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.smb347_charger* %0, %struct.smb347_charger** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %8 = load %struct.smb347_charger*, %struct.smb347_charger** %3, align 8
  %9 = getelementptr inbounds %struct.smb347_charger, %struct.smb347_charger* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @IRQSTAT_E, align 4
  %12 = call i32 @regmap_read(i32 %10, i32 %11, i32* %6)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %7, align 4
  store i32 %16, i32* %2, align 4
  br label %73

17:                                               ; preds = %1
  %18 = load %struct.smb347_charger*, %struct.smb347_charger** %3, align 8
  %19 = getelementptr inbounds %struct.smb347_charger, %struct.smb347_charger* %18, i32 0, i32 3
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %17
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @IRQSTAT_E_DCIN_UV_STAT, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %24, %17
  %32 = load %struct.smb347_charger*, %struct.smb347_charger** %3, align 8
  %33 = getelementptr inbounds %struct.smb347_charger, %struct.smb347_charger* %32, i32 0, i32 3
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %31
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @IRQSTAT_E_USBIN_UV_STAT, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %38, %31
  %46 = load %struct.smb347_charger*, %struct.smb347_charger** %3, align 8
  %47 = getelementptr inbounds %struct.smb347_charger, %struct.smb347_charger* %46, i32 0, i32 2
  %48 = call i32 @mutex_lock(i32* %47)
  %49 = load %struct.smb347_charger*, %struct.smb347_charger** %3, align 8
  %50 = getelementptr inbounds %struct.smb347_charger, %struct.smb347_charger* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* %5, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %60, label %54

54:                                               ; preds = %45
  %55 = load %struct.smb347_charger*, %struct.smb347_charger** %3, align 8
  %56 = getelementptr inbounds %struct.smb347_charger, %struct.smb347_charger* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %4, align 4
  %59 = icmp ne i32 %57, %58
  br label %60

60:                                               ; preds = %54, %45
  %61 = phi i1 [ true, %45 ], [ %59, %54 ]
  %62 = zext i1 %61 to i32
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* %5, align 4
  %64 = load %struct.smb347_charger*, %struct.smb347_charger** %3, align 8
  %65 = getelementptr inbounds %struct.smb347_charger, %struct.smb347_charger* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  %66 = load i32, i32* %4, align 4
  %67 = load %struct.smb347_charger*, %struct.smb347_charger** %3, align 8
  %68 = getelementptr inbounds %struct.smb347_charger, %struct.smb347_charger* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  %69 = load %struct.smb347_charger*, %struct.smb347_charger** %3, align 8
  %70 = getelementptr inbounds %struct.smb347_charger, %struct.smb347_charger* %69, i32 0, i32 2
  %71 = call i32 @mutex_unlock(i32* %70)
  %72 = load i32, i32* %7, align 4
  store i32 %72, i32* %2, align 4
  br label %73

73:                                               ; preds = %60, %15
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
