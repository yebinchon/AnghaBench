; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_n_gsm.c_gsm_encode_modem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_n_gsm.c_gsm_encode_modem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gsm_dlci = type { i32, i64 }

@MDM_FC = common dso_local global i32 0, align 4
@TIOCM_DTR = common dso_local global i32 0, align 4
@MDM_RTC = common dso_local global i32 0, align 4
@TIOCM_RTS = common dso_local global i32 0, align 4
@MDM_RTR = common dso_local global i32 0, align 4
@TIOCM_RI = common dso_local global i32 0, align 4
@MDM_IC = common dso_local global i32 0, align 4
@TIOCM_CD = common dso_local global i32 0, align 4
@MDM_DV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gsm_dlci*)* @gsm_encode_modem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gsm_encode_modem(%struct.gsm_dlci* %0) #0 {
  %2 = alloca %struct.gsm_dlci*, align 8
  %3 = alloca i32, align 4
  store %struct.gsm_dlci* %0, %struct.gsm_dlci** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.gsm_dlci*, %struct.gsm_dlci** %2, align 8
  %5 = getelementptr inbounds %struct.gsm_dlci, %struct.gsm_dlci* %4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load i32, i32* @MDM_FC, align 4
  %10 = load i32, i32* %3, align 4
  %11 = or i32 %10, %9
  store i32 %11, i32* %3, align 4
  br label %12

12:                                               ; preds = %8, %1
  %13 = load %struct.gsm_dlci*, %struct.gsm_dlci** %2, align 8
  %14 = getelementptr inbounds %struct.gsm_dlci, %struct.gsm_dlci* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @TIOCM_DTR, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %12
  %20 = load i32, i32* @MDM_RTC, align 4
  %21 = load i32, i32* %3, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %3, align 4
  br label %23

23:                                               ; preds = %19, %12
  %24 = load %struct.gsm_dlci*, %struct.gsm_dlci** %2, align 8
  %25 = getelementptr inbounds %struct.gsm_dlci, %struct.gsm_dlci* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @TIOCM_RTS, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %23
  %31 = load i32, i32* @MDM_RTR, align 4
  %32 = load i32, i32* %3, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %30, %23
  %35 = load %struct.gsm_dlci*, %struct.gsm_dlci** %2, align 8
  %36 = getelementptr inbounds %struct.gsm_dlci, %struct.gsm_dlci* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @TIOCM_RI, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %34
  %42 = load i32, i32* @MDM_IC, align 4
  %43 = load i32, i32* %3, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %41, %34
  %46 = load %struct.gsm_dlci*, %struct.gsm_dlci** %2, align 8
  %47 = getelementptr inbounds %struct.gsm_dlci, %struct.gsm_dlci* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @TIOCM_CD, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %45
  %53 = load i32, i32* @MDM_DV, align 4
  %54 = load i32, i32* %3, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %52, %45
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
