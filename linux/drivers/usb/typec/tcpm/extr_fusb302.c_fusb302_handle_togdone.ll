; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_fusb302.c_fusb302_handle_togdone.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_fusb302.c_fusb302_handle_togdone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fusb302_chip = type { i32 }

@FUSB_REG_STATUS1A = common dso_local global i32 0, align 4
@FUSB_REG_STATUS1A_TOGSS_POS = common dso_local global i32 0, align 4
@FUSB_REG_STATUS1A_TOGSS_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"AudioAccessory not supported\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"TOGDONE with an invalid state: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fusb302_chip*)* @fusb302_handle_togdone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fusb302_handle_togdone(%struct.fusb302_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fusb302_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.fusb302_chip* %0, %struct.fusb302_chip** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.fusb302_chip*, %struct.fusb302_chip** %3, align 8
  %8 = load i32, i32* @FUSB_REG_STATUS1A, align 4
  %9 = call i32 @fusb302_i2c_read(%struct.fusb302_chip* %7, i32 %8, i32* %5)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %4, align 4
  store i32 %13, i32* %2, align 4
  br label %48

14:                                               ; preds = %1
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @FUSB_REG_STATUS1A_TOGSS_POS, align 4
  %17 = ashr i32 %15, %16
  %18 = load i32, i32* @FUSB_REG_STATUS1A_TOGSS_MASK, align 4
  %19 = and i32 %17, %18
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  switch i32 %20, label %37 [
    i32 131, label %21
    i32 130, label %21
    i32 129, label %25
    i32 128, label %25
    i32 132, label %29
  ]

21:                                               ; preds = %14, %14
  %22 = load %struct.fusb302_chip*, %struct.fusb302_chip** %3, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @fusb302_handle_togdone_snk(%struct.fusb302_chip* %22, i32 %23)
  store i32 %24, i32* %2, align 4
  br label %48

25:                                               ; preds = %14, %14
  %26 = load %struct.fusb302_chip*, %struct.fusb302_chip** %3, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @fusb302_handle_togdone_src(%struct.fusb302_chip* %26, i32 %27)
  store i32 %28, i32* %2, align 4
  br label %48

29:                                               ; preds = %14
  %30 = load %struct.fusb302_chip*, %struct.fusb302_chip** %3, align 8
  %31 = call i32 (%struct.fusb302_chip*, i8*, ...) @fusb302_log(%struct.fusb302_chip* %30, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %32 = load %struct.fusb302_chip*, %struct.fusb302_chip** %3, align 8
  %33 = load %struct.fusb302_chip*, %struct.fusb302_chip** %3, align 8
  %34 = getelementptr inbounds %struct.fusb302_chip, %struct.fusb302_chip* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @fusb302_set_toggling(%struct.fusb302_chip* %32, i32 %35)
  br label %46

37:                                               ; preds = %14
  %38 = load %struct.fusb302_chip*, %struct.fusb302_chip** %3, align 8
  %39 = load i32, i32* %6, align 4
  %40 = call i32 (%struct.fusb302_chip*, i8*, ...) @fusb302_log(%struct.fusb302_chip* %38, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  %41 = load %struct.fusb302_chip*, %struct.fusb302_chip** %3, align 8
  %42 = load %struct.fusb302_chip*, %struct.fusb302_chip** %3, align 8
  %43 = getelementptr inbounds %struct.fusb302_chip, %struct.fusb302_chip* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @fusb302_set_toggling(%struct.fusb302_chip* %41, i32 %44)
  br label %46

46:                                               ; preds = %37, %29
  %47 = load i32, i32* %4, align 4
  store i32 %47, i32* %2, align 4
  br label %48

48:                                               ; preds = %46, %25, %21, %12
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i32 @fusb302_i2c_read(%struct.fusb302_chip*, i32, i32*) #1

declare dso_local i32 @fusb302_handle_togdone_snk(%struct.fusb302_chip*, i32) #1

declare dso_local i32 @fusb302_handle_togdone_src(%struct.fusb302_chip*, i32) #1

declare dso_local i32 @fusb302_log(%struct.fusb302_chip*, i8*, ...) #1

declare dso_local i32 @fusb302_set_toggling(%struct.fusb302_chip*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
