; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/rsi/extr_rsi_91x_ps.c_rsi_handle_ps_confirm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/rsi/extr_rsi_91x_ps.c_rsi_handle_ps_confirm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsi_hw = type { i32 }

@PS_CONFIRM_INDEX = common dso_local global i32 0, align 4
@PS_ENABLE_REQ_SENT = common dso_local global i32 0, align 4
@PS_ENABLED = common dso_local global i32 0, align 4
@PS_DISABLE_REQ_SENT = common dso_local global i32 0, align 4
@PS_NONE = common dso_local global i32 0, align 4
@ERR_ZONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Invalid PS confirm type %x in state %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rsi_handle_ps_confirm(%struct.rsi_hw* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rsi_hw*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.rsi_hw* %0, %struct.rsi_hw** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load i32*, i32** %5, align 8
  %8 = load i32, i32* @PS_CONFIRM_INDEX, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i32, i32* %7, i64 %9
  %11 = call i32 @get_unaligned_le16(i32* %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  switch i32 %12, label %35 [
    i32 129, label %13
    i32 128, label %24
  ]

13:                                               ; preds = %2
  %14 = load %struct.rsi_hw*, %struct.rsi_hw** %4, align 8
  %15 = getelementptr inbounds %struct.rsi_hw, %struct.rsi_hw* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @PS_ENABLE_REQ_SENT, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %13
  %20 = load %struct.rsi_hw*, %struct.rsi_hw** %4, align 8
  %21 = load i32, i32* @PS_ENABLED, align 4
  %22 = call i32 @rsi_modify_ps_state(%struct.rsi_hw* %20, i32 %21)
  br label %23

23:                                               ; preds = %19, %13
  br label %43

24:                                               ; preds = %2
  %25 = load %struct.rsi_hw*, %struct.rsi_hw** %4, align 8
  %26 = getelementptr inbounds %struct.rsi_hw, %struct.rsi_hw* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @PS_DISABLE_REQ_SENT, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %24
  %31 = load %struct.rsi_hw*, %struct.rsi_hw** %4, align 8
  %32 = load i32, i32* @PS_NONE, align 4
  %33 = call i32 @rsi_modify_ps_state(%struct.rsi_hw* %31, i32 %32)
  br label %34

34:                                               ; preds = %30, %24
  br label %43

35:                                               ; preds = %2
  %36 = load i32, i32* @ERR_ZONE, align 4
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.rsi_hw*, %struct.rsi_hw** %4, align 8
  %39 = getelementptr inbounds %struct.rsi_hw, %struct.rsi_hw* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @str_psstate(i32 %40)
  %42 = call i32 @rsi_dbg(i32 %36, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %41)
  store i32 -1, i32* %3, align 4
  br label %44

43:                                               ; preds = %34, %23
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %43, %35
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @get_unaligned_le16(i32*) #1

declare dso_local i32 @rsi_modify_ps_state(%struct.rsi_hw*, i32) #1

declare dso_local i32 @rsi_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @str_psstate(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
