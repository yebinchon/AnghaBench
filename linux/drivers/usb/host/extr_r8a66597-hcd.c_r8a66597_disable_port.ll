; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_r8a66597-hcd.c_r8a66597_disable_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_r8a66597-hcd.c_r8a66597_disable_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r8a66597 = type { i32 }

@SOFCFG = common dso_local global i32 0, align 4
@EDGESTS = common dso_local global i32 0, align 4
@DRPD = common dso_local global i32 0, align 4
@DCFM = common dso_local global i32 0, align 4
@HSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r8a66597*, i32)* @r8a66597_disable_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r8a66597_disable_port(%struct.r8a66597* %0, i32 %1) #0 {
  %3 = alloca %struct.r8a66597*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.r8a66597* %0, %struct.r8a66597** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.r8a66597*, %struct.r8a66597** %3, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @get_intenb_reg(i32 %8)
  %10 = call i32 @r8a66597_write(%struct.r8a66597* %7, i32 0, i32 %9)
  %11 = load %struct.r8a66597*, %struct.r8a66597** %3, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @get_intsts_reg(i32 %12)
  %14 = call i32 @r8a66597_write(%struct.r8a66597* %11, i32 0, i32 %13)
  %15 = load %struct.r8a66597*, %struct.r8a66597** %3, align 8
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @r8a66597_port_power(%struct.r8a66597* %15, i32 %16, i32 0)
  br label %18

18:                                               ; preds = %25, %2
  %19 = load %struct.r8a66597*, %struct.r8a66597** %3, align 8
  %20 = load i32, i32* @SOFCFG, align 4
  %21 = call i32 @r8a66597_read(%struct.r8a66597* %19, i32 %20)
  %22 = load i32, i32* @EDGESTS, align 4
  %23 = and i32 %21, %22
  store i32 %23, i32* %6, align 4
  %24 = call i32 @udelay(i32 640)
  br label %25

25:                                               ; preds = %18
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @EDGESTS, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %18, label %29

29:                                               ; preds = %25
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = load i32, i32* @DRPD, align 4
  br label %38

34:                                               ; preds = %29
  %35 = load i32, i32* @DCFM, align 4
  %36 = load i32, i32* @DRPD, align 4
  %37 = or i32 %35, %36
  br label %38

38:                                               ; preds = %34, %32
  %39 = phi i32 [ %33, %32 ], [ %37, %34 ]
  store i32 %39, i32* %5, align 4
  %40 = load %struct.r8a66597*, %struct.r8a66597** %3, align 8
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @get_syscfg_reg(i32 %42)
  %44 = call i32 @r8a66597_bclr(%struct.r8a66597* %40, i32 %41, i32 %43)
  %45 = load %struct.r8a66597*, %struct.r8a66597** %3, align 8
  %46 = load i32, i32* @HSE, align 4
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @get_syscfg_reg(i32 %47)
  %49 = call i32 @r8a66597_bclr(%struct.r8a66597* %45, i32 %46, i32 %48)
  ret void
}

declare dso_local i32 @r8a66597_write(%struct.r8a66597*, i32, i32) #1

declare dso_local i32 @get_intenb_reg(i32) #1

declare dso_local i32 @get_intsts_reg(i32) #1

declare dso_local i32 @r8a66597_port_power(%struct.r8a66597*, i32, i32) #1

declare dso_local i32 @r8a66597_read(%struct.r8a66597*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @r8a66597_bclr(%struct.r8a66597*, i32, i32) #1

declare dso_local i32 @get_syscfg_reg(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
