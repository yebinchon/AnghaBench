; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_n_gsm.c_gsmtty_modem_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_n_gsm.c_gsmtty_modem_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gsm_dlci = type { i32, i32 }
%struct.gsm_control = type { i32 }

@EA = common dso_local global i32 0, align 4
@CMD_MSC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gsm_dlci*, i32)* @gsmtty_modem_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gsmtty_modem_update(%struct.gsm_dlci* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gsm_dlci*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [5 x i32], align 16
  %7 = alloca %struct.gsm_control*, align 8
  %8 = alloca i32, align 4
  store %struct.gsm_dlci* %0, %struct.gsm_dlci** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 2, i32* %8, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* %8, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %8, align 4
  br label %14

14:                                               ; preds = %11, %2
  %15 = load i32, i32* %8, align 4
  %16 = shl i32 %15, 1
  %17 = load i32, i32* @EA, align 4
  %18 = or i32 %16, %17
  %19 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 0
  store i32 %18, i32* %19, align 16
  %20 = load %struct.gsm_dlci*, %struct.gsm_dlci** %4, align 8
  %21 = getelementptr inbounds %struct.gsm_dlci, %struct.gsm_dlci* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = shl i32 %22, 2
  %24 = or i32 %23, 3
  %25 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 1
  store i32 %24, i32* %25, align 4
  %26 = load %struct.gsm_dlci*, %struct.gsm_dlci** %4, align 8
  %27 = call i32 @gsm_encode_modem(%struct.gsm_dlci* %26)
  %28 = shl i32 %27, 1
  %29 = load i32, i32* @EA, align 4
  %30 = or i32 %28, %29
  %31 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 2
  store i32 %30, i32* %31, align 8
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %14
  %35 = load i32, i32* %5, align 4
  %36 = shl i32 %35, 4
  %37 = or i32 %36, 2
  %38 = load i32, i32* @EA, align 4
  %39 = or i32 %37, %38
  %40 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 3
  store i32 %39, i32* %40, align 4
  br label %41

41:                                               ; preds = %34, %14
  %42 = load %struct.gsm_dlci*, %struct.gsm_dlci** %4, align 8
  %43 = getelementptr inbounds %struct.gsm_dlci, %struct.gsm_dlci* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @CMD_MSC, align 4
  %46 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 0
  %47 = load i32, i32* %8, align 4
  %48 = add nsw i32 %47, 1
  %49 = call %struct.gsm_control* @gsm_control_send(i32 %44, i32 %45, i32* %46, i32 %48)
  store %struct.gsm_control* %49, %struct.gsm_control** %7, align 8
  %50 = load %struct.gsm_control*, %struct.gsm_control** %7, align 8
  %51 = icmp eq %struct.gsm_control* %50, null
  br i1 %51, label %52, label %55

52:                                               ; preds = %41
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %61

55:                                               ; preds = %41
  %56 = load %struct.gsm_dlci*, %struct.gsm_dlci** %4, align 8
  %57 = getelementptr inbounds %struct.gsm_dlci, %struct.gsm_dlci* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.gsm_control*, %struct.gsm_control** %7, align 8
  %60 = call i32 @gsm_control_wait(i32 %58, %struct.gsm_control* %59)
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %55, %52
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32 @gsm_encode_modem(%struct.gsm_dlci*) #1

declare dso_local %struct.gsm_control* @gsm_control_send(i32, i32, i32*, i32) #1

declare dso_local i32 @gsm_control_wait(i32, %struct.gsm_control*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
