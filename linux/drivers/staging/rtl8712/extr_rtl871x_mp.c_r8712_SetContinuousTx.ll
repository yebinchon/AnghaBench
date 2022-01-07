; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_mp.c_r8712_SetContinuousTx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_mp.c_r8712_SetContinuousTx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._adapter = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@rRx_Wait_CCCA = common dso_local global i32 0, align 4
@MPT_RATE_11M = common dso_local global i64 0, align 8
@MPT_RATE_6M = common dso_local global i64 0, align 8
@MPT_RATE_MCS15 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r8712_SetContinuousTx(%struct._adapter* %0, i64 %1) #0 {
  %3 = alloca %struct._adapter*, align 8
  %4 = alloca i64, align 8
  store %struct._adapter* %0, %struct._adapter** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %16

7:                                                ; preds = %2
  %8 = load %struct._adapter*, %struct._adapter** %3, align 8
  %9 = load i32, i32* @rRx_Wait_CCCA, align 4
  %10 = load %struct._adapter*, %struct._adapter** %3, align 8
  %11 = load i32, i32* @rRx_Wait_CCCA, align 4
  %12 = call i32 @r8712_bb_reg_read(%struct._adapter* %10, i32 %11)
  %13 = and i32 %12, -31457281
  %14 = call i32 @r8712_bb_reg_write(%struct._adapter* %8, i32 %9, i32 %13)
  %15 = call i32 @msleep(i32 100)
  br label %16

16:                                               ; preds = %7, %2
  %17 = load %struct._adapter*, %struct._adapter** %3, align 8
  %18 = getelementptr inbounds %struct._adapter, %struct._adapter* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @MPT_RATE_11M, align 8
  %22 = icmp sle i64 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %16
  %24 = load %struct._adapter*, %struct._adapter** %3, align 8
  %25 = load i64, i64* %4, align 8
  %26 = call i32 @SetCCKContinuousTx(%struct._adapter* %24, i64 %25)
  br label %46

27:                                               ; preds = %16
  %28 = load %struct._adapter*, %struct._adapter** %3, align 8
  %29 = getelementptr inbounds %struct._adapter, %struct._adapter* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @MPT_RATE_6M, align 8
  %33 = icmp sge i64 %31, %32
  br i1 %33, label %34, label %45

34:                                               ; preds = %27
  %35 = load %struct._adapter*, %struct._adapter** %3, align 8
  %36 = getelementptr inbounds %struct._adapter, %struct._adapter* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @MPT_RATE_MCS15, align 8
  %40 = icmp sle i64 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %34
  %42 = load %struct._adapter*, %struct._adapter** %3, align 8
  %43 = load i64, i64* %4, align 8
  %44 = call i32 @SetOFDMContinuousTx(%struct._adapter* %42, i64 %43)
  br label %45

45:                                               ; preds = %41, %34, %27
  br label %46

46:                                               ; preds = %45, %23
  %47 = load i64, i64* %4, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %57, label %49

49:                                               ; preds = %46
  %50 = load %struct._adapter*, %struct._adapter** %3, align 8
  %51 = load i32, i32* @rRx_Wait_CCCA, align 4
  %52 = load %struct._adapter*, %struct._adapter** %3, align 8
  %53 = load i32, i32* @rRx_Wait_CCCA, align 4
  %54 = call i32 @r8712_bb_reg_read(%struct._adapter* %52, i32 %53)
  %55 = or i32 %54, 31457280
  %56 = call i32 @r8712_bb_reg_write(%struct._adapter* %50, i32 %51, i32 %55)
  br label %57

57:                                               ; preds = %49, %46
  ret void
}

declare dso_local i32 @r8712_bb_reg_write(%struct._adapter*, i32, i32) #1

declare dso_local i32 @r8712_bb_reg_read(%struct._adapter*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @SetCCKContinuousTx(%struct._adapter*, i64) #1

declare dso_local i32 @SetOFDMContinuousTx(%struct._adapter*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
