; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/ipwireless/extr_network.c_ipwireless_network_notify_control_line_change.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/ipwireless/extr_network.c_ipwireless_network_notify_control_line_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw_network = type { i32, %struct.ipw_tty*** }
%struct.ipw_tty = type { i32 }

@IPW_CHANNEL_RAS = common dso_local global i32 0, align 4
@MAX_ASSOCIATED_TTYS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipwireless_network_notify_control_line_change(%struct.ipw_network* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ipw_network*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ipw_tty*, align 8
  store %struct.ipw_network* %0, %struct.ipw_network** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @IPW_CHANNEL_RAS, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %4
  %15 = load i32, i32* %7, align 4
  %16 = load %struct.ipw_network*, %struct.ipw_network** %5, align 8
  %17 = getelementptr inbounds %struct.ipw_network, %struct.ipw_network* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  br label %18

18:                                               ; preds = %14, %4
  store i32 0, i32* %9, align 4
  br label %19

19:                                               ; preds = %44, %18
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* @MAX_ASSOCIATED_TTYS, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %47

23:                                               ; preds = %19
  %24 = load %struct.ipw_network*, %struct.ipw_network** %5, align 8
  %25 = getelementptr inbounds %struct.ipw_network, %struct.ipw_network* %24, i32 0, i32 1
  %26 = load %struct.ipw_tty***, %struct.ipw_tty**** %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.ipw_tty**, %struct.ipw_tty*** %26, i64 %28
  %30 = load %struct.ipw_tty**, %struct.ipw_tty*** %29, align 8
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.ipw_tty*, %struct.ipw_tty** %30, i64 %32
  %34 = load %struct.ipw_tty*, %struct.ipw_tty** %33, align 8
  store %struct.ipw_tty* %34, %struct.ipw_tty** %10, align 8
  %35 = load %struct.ipw_tty*, %struct.ipw_tty** %10, align 8
  %36 = icmp ne %struct.ipw_tty* %35, null
  br i1 %36, label %37, label %43

37:                                               ; preds = %23
  %38 = load %struct.ipw_tty*, %struct.ipw_tty** %10, align 8
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @ipwireless_tty_notify_control_line_change(%struct.ipw_tty* %38, i32 %39, i32 %40, i32 %41)
  br label %43

43:                                               ; preds = %37, %23
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %9, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %9, align 4
  br label %19

47:                                               ; preds = %19
  ret void
}

declare dso_local i32 @ipwireless_tty_notify_control_line_change(%struct.ipw_tty*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
