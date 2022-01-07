; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_eeprom.c_eeprom_clean.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_eeprom.c_eeprom_clean.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._adapter = type { i64 }

@EE_9346CR = common dso_local global i32 0, align 4
@_EECS = common dso_local global i32 0, align 4
@_EEDI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct._adapter*)* @eeprom_clean to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eeprom_clean(%struct._adapter* %0) #0 {
  %2 = alloca %struct._adapter*, align 8
  %3 = alloca i32, align 4
  store %struct._adapter* %0, %struct._adapter** %2, align 8
  %4 = load %struct._adapter*, %struct._adapter** %2, align 8
  %5 = getelementptr inbounds %struct._adapter, %struct._adapter* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %45

9:                                                ; preds = %1
  %10 = load %struct._adapter*, %struct._adapter** %2, align 8
  %11 = load i32, i32* @EE_9346CR, align 4
  %12 = call i32 @r8712_read8(%struct._adapter* %10, i32 %11)
  store i32 %12, i32* %3, align 4
  %13 = load %struct._adapter*, %struct._adapter** %2, align 8
  %14 = getelementptr inbounds %struct._adapter, %struct._adapter* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %9
  br label %45

18:                                               ; preds = %9
  %19 = load i32, i32* @_EECS, align 4
  %20 = load i32, i32* @_EEDI, align 4
  %21 = or i32 %19, %20
  %22 = xor i32 %21, -1
  %23 = load i32, i32* %3, align 4
  %24 = and i32 %23, %22
  store i32 %24, i32* %3, align 4
  %25 = load %struct._adapter*, %struct._adapter** %2, align 8
  %26 = load i32, i32* @EE_9346CR, align 4
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @r8712_write8(%struct._adapter* %25, i32 %26, i32 %27)
  %29 = load %struct._adapter*, %struct._adapter** %2, align 8
  %30 = getelementptr inbounds %struct._adapter, %struct._adapter* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %18
  br label %45

34:                                               ; preds = %18
  %35 = load %struct._adapter*, %struct._adapter** %2, align 8
  %36 = call i32 @up_clk(%struct._adapter* %35, i32* %3)
  %37 = load %struct._adapter*, %struct._adapter** %2, align 8
  %38 = getelementptr inbounds %struct._adapter, %struct._adapter* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  br label %45

42:                                               ; preds = %34
  %43 = load %struct._adapter*, %struct._adapter** %2, align 8
  %44 = call i32 @down_clk(%struct._adapter* %43, i32* %3)
  br label %45

45:                                               ; preds = %42, %41, %33, %17, %8
  ret void
}

declare dso_local i32 @r8712_read8(%struct._adapter*, i32) #1

declare dso_local i32 @r8712_write8(%struct._adapter*, i32, i32) #1

declare dso_local i32 @up_clk(%struct._adapter*, i32*) #1

declare dso_local i32 @down_clk(%struct._adapter*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
