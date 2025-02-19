; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_r8a66597-hcd.c_r8a66597_enable_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_r8a66597-hcd.c_r8a66597_enable_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r8a66597 = type { i32 }

@DRPD = common dso_local global i32 0, align 4
@DCFM = common dso_local global i32 0, align 4
@HSE = common dso_local global i32 0, align 4
@BURST = common dso_local global i32 0, align 4
@CPU_ADR_RD_WR = common dso_local global i32 0, align 4
@DTCHE = common dso_local global i32 0, align 4
@ATTCHE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r8a66597*, i32)* @r8a66597_enable_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r8a66597_enable_port(%struct.r8a66597* %0, i32 %1) #0 {
  %3 = alloca %struct.r8a66597*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.r8a66597* %0, %struct.r8a66597** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = load i32, i32* @DRPD, align 4
  br label %14

10:                                               ; preds = %2
  %11 = load i32, i32* @DCFM, align 4
  %12 = load i32, i32* @DRPD, align 4
  %13 = or i32 %11, %12
  br label %14

14:                                               ; preds = %10, %8
  %15 = phi i32 [ %9, %8 ], [ %13, %10 ]
  store i32 %15, i32* %5, align 4
  %16 = load %struct.r8a66597*, %struct.r8a66597** %3, align 8
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @get_syscfg_reg(i32 %18)
  %20 = call i32 @r8a66597_bset(%struct.r8a66597* %16, i32 %17, i32 %19)
  %21 = load %struct.r8a66597*, %struct.r8a66597** %3, align 8
  %22 = load i32, i32* @HSE, align 4
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @get_syscfg_reg(i32 %23)
  %25 = call i32 @r8a66597_bset(%struct.r8a66597* %21, i32 %22, i32 %24)
  %26 = load %struct.r8a66597*, %struct.r8a66597** %3, align 8
  %27 = load i32, i32* @BURST, align 4
  %28 = load i32, i32* @CPU_ADR_RD_WR, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @get_dmacfg_reg(i32 %30)
  %32 = call i32 @r8a66597_write(%struct.r8a66597* %26, i32 %29, i32 %31)
  %33 = load %struct.r8a66597*, %struct.r8a66597** %3, align 8
  %34 = load i32, i32* @DTCHE, align 4
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @get_intenb_reg(i32 %35)
  %37 = call i32 @r8a66597_bclr(%struct.r8a66597* %33, i32 %34, i32 %36)
  %38 = load %struct.r8a66597*, %struct.r8a66597** %3, align 8
  %39 = load i32, i32* @ATTCHE, align 4
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @get_intenb_reg(i32 %40)
  %42 = call i32 @r8a66597_bset(%struct.r8a66597* %38, i32 %39, i32 %41)
  ret void
}

declare dso_local i32 @r8a66597_bset(%struct.r8a66597*, i32, i32) #1

declare dso_local i32 @get_syscfg_reg(i32) #1

declare dso_local i32 @r8a66597_write(%struct.r8a66597*, i32, i32) #1

declare dso_local i32 @get_dmacfg_reg(i32) #1

declare dso_local i32 @r8a66597_bclr(%struct.r8a66597*, i32, i32) #1

declare dso_local i32 @get_intenb_reg(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
