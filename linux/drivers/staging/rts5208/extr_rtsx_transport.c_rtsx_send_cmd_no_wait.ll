; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx_transport.c_rtsx_send_cmd_no_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx_transport.c_rtsx_send_cmd_no_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_chip = type { i32, i32 }

@RTSX_HCBAR = common dso_local global i32 0, align 4
@RTSX_HCBCTLR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtsx_send_cmd_no_wait(%struct.rtsx_chip* %0) #0 {
  %2 = alloca %struct.rtsx_chip*, align 8
  %3 = alloca i32, align 4
  store %struct.rtsx_chip* %0, %struct.rtsx_chip** %2, align 8
  %4 = call i32 @BIT(i32 31)
  store i32 %4, i32* %3, align 4
  %5 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %6 = load i32, i32* @RTSX_HCBAR, align 4
  %7 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %8 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @rtsx_writel(%struct.rtsx_chip* %5, i32 %6, i32 %9)
  %11 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %12 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = mul nsw i32 %13, 4
  %15 = and i32 %14, 16777215
  %16 = load i32, i32* %3, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %3, align 4
  %19 = or i32 %18, 1073741824
  store i32 %19, i32* %3, align 4
  %20 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %21 = load i32, i32* @RTSX_HCBCTLR, align 4
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @rtsx_writel(%struct.rtsx_chip* %20, i32 %21, i32 %22)
  ret void
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @rtsx_writel(%struct.rtsx_chip*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
