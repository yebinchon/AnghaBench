; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/mtu3/extr_mtu3_core.c_mtu3_hs_softconn_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/mtu3/extr_mtu3_core.c_mtu3_hs_softconn_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtu3 = type { i32, i32 }

@U3D_POWER_MANAGEMENT = common dso_local global i32 0, align 4
@SOFT_CONN = common dso_local global i32 0, align 4
@SUSPENDM_ENABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"SOFTCONN = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtu3*, i32)* @mtu3_hs_softconn_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtu3_hs_softconn_set(%struct.mtu3* %0, i32 %1) #0 {
  %3 = alloca %struct.mtu3*, align 8
  %4 = alloca i32, align 4
  store %struct.mtu3* %0, %struct.mtu3** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %16

7:                                                ; preds = %2
  %8 = load %struct.mtu3*, %struct.mtu3** %3, align 8
  %9 = getelementptr inbounds %struct.mtu3, %struct.mtu3* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @U3D_POWER_MANAGEMENT, align 4
  %12 = load i32, i32* @SOFT_CONN, align 4
  %13 = load i32, i32* @SUSPENDM_ENABLE, align 4
  %14 = or i32 %12, %13
  %15 = call i32 @mtu3_setbits(i32 %10, i32 %11, i32 %14)
  br label %25

16:                                               ; preds = %2
  %17 = load %struct.mtu3*, %struct.mtu3** %3, align 8
  %18 = getelementptr inbounds %struct.mtu3, %struct.mtu3* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @U3D_POWER_MANAGEMENT, align 4
  %21 = load i32, i32* @SOFT_CONN, align 4
  %22 = load i32, i32* @SUSPENDM_ENABLE, align 4
  %23 = or i32 %21, %22
  %24 = call i32 @mtu3_clrbits(i32 %19, i32 %20, i32 %23)
  br label %25

25:                                               ; preds = %16, %7
  %26 = load %struct.mtu3*, %struct.mtu3** %3, align 8
  %27 = getelementptr inbounds %struct.mtu3, %struct.mtu3* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = call i32 @dev_dbg(i32 %28, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %33)
  ret void
}

declare dso_local i32 @mtu3_setbits(i32, i32, i32) #1

declare dso_local i32 @mtu3_clrbits(i32, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
