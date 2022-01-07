; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_fusb302.c_fusb302_pd_set_interrupts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_fusb302.c_fusb302_pd_set_interrupts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fusb302_chip = type { i32 }

@FUSB_REG_MASK_COLLISION = common dso_local global i32 0, align 4
@FUSB_REG_MASKA_RETRYFAIL = common dso_local global i32 0, align 4
@FUSB_REG_MASKA_HARDSENT = common dso_local global i32 0, align 4
@FUSB_REG_MASKA_TX_SUCCESS = common dso_local global i32 0, align 4
@FUSB_REG_MASKA_HARDRESET = common dso_local global i32 0, align 4
@FUSB_REG_MASKB_GCRCSENT = common dso_local global i32 0, align 4
@FUSB_REG_MASK = common dso_local global i32 0, align 4
@FUSB_REG_MASKA = common dso_local global i32 0, align 4
@FUSB_REG_MASKB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fusb302_chip*, i32)* @fusb302_pd_set_interrupts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fusb302_pd_set_interrupts(%struct.fusb302_chip* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fusb302_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.fusb302_chip* %0, %struct.fusb302_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %10 = load i32, i32* @FUSB_REG_MASK_COLLISION, align 4
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* @FUSB_REG_MASKA_RETRYFAIL, align 4
  %12 = load i32, i32* @FUSB_REG_MASKA_HARDSENT, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @FUSB_REG_MASKA_TX_SUCCESS, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @FUSB_REG_MASKA_HARDRESET, align 4
  %17 = or i32 %15, %16
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* @FUSB_REG_MASKB_GCRCSENT, align 4
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %2
  %22 = load %struct.fusb302_chip*, %struct.fusb302_chip** %4, align 8
  %23 = load i32, i32* @FUSB_REG_MASK, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @fusb302_i2c_clear_bits(%struct.fusb302_chip* %22, i32 %23, i32 %24)
  br label %31

26:                                               ; preds = %2
  %27 = load %struct.fusb302_chip*, %struct.fusb302_chip** %4, align 8
  %28 = load i32, i32* @FUSB_REG_MASK, align 4
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @fusb302_i2c_set_bits(%struct.fusb302_chip* %27, i32 %28, i32 %29)
  br label %31

31:                                               ; preds = %26, %21
  %32 = phi i32 [ %25, %21 ], [ %30, %26 ]
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = load i32, i32* %6, align 4
  store i32 %36, i32* %3, align 4
  br label %72

37:                                               ; preds = %31
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %37
  %41 = load %struct.fusb302_chip*, %struct.fusb302_chip** %4, align 8
  %42 = load i32, i32* @FUSB_REG_MASKA, align 4
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @fusb302_i2c_clear_bits(%struct.fusb302_chip* %41, i32 %42, i32 %43)
  br label %50

45:                                               ; preds = %37
  %46 = load %struct.fusb302_chip*, %struct.fusb302_chip** %4, align 8
  %47 = load i32, i32* @FUSB_REG_MASKA, align 4
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @fusb302_i2c_set_bits(%struct.fusb302_chip* %46, i32 %47, i32 %48)
  br label %50

50:                                               ; preds = %45, %40
  %51 = phi i32 [ %44, %40 ], [ %49, %45 ]
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = load i32, i32* %6, align 4
  store i32 %55, i32* %3, align 4
  br label %72

56:                                               ; preds = %50
  %57 = load i32, i32* %5, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %56
  %60 = load %struct.fusb302_chip*, %struct.fusb302_chip** %4, align 8
  %61 = load i32, i32* @FUSB_REG_MASKB, align 4
  %62 = load i32, i32* %9, align 4
  %63 = call i32 @fusb302_i2c_clear_bits(%struct.fusb302_chip* %60, i32 %61, i32 %62)
  br label %69

64:                                               ; preds = %56
  %65 = load %struct.fusb302_chip*, %struct.fusb302_chip** %4, align 8
  %66 = load i32, i32* @FUSB_REG_MASKB, align 4
  %67 = load i32, i32* %9, align 4
  %68 = call i32 @fusb302_i2c_set_bits(%struct.fusb302_chip* %65, i32 %66, i32 %67)
  br label %69

69:                                               ; preds = %64, %59
  %70 = phi i32 [ %63, %59 ], [ %68, %64 ]
  store i32 %70, i32* %6, align 4
  %71 = load i32, i32* %6, align 4
  store i32 %71, i32* %3, align 4
  br label %72

72:                                               ; preds = %69, %54, %35
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32 @fusb302_i2c_clear_bits(%struct.fusb302_chip*, i32, i32) #1

declare dso_local i32 @fusb302_i2c_set_bits(%struct.fusb302_chip*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
