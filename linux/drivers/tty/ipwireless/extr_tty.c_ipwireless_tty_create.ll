; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/ipwireless/extr_tty.c_ipwireless_tty_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/ipwireless/extr_tty.c_ipwireless_tty_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw_tty = type { i32 }
%struct.ipw_hardware = type { i32 }
%struct.ipw_network = type { i32 }

@IPWIRELESS_PCMCIA_MINOR_RANGE = common dso_local global i32 0, align 4
@IPWIRELESS_PCMCIA_MINORS = common dso_local global i32 0, align 4
@ttys = common dso_local global %struct.ipw_tty** null, align 8
@IPW_CHANNEL_DIALLER = common dso_local global i32 0, align 4
@IPW_CHANNEL_RAS = common dso_local global i32 0, align 4
@TTYTYPE_MODEM = common dso_local global i32 0, align 4
@TTYTYPE_MONITOR = common dso_local global i32 0, align 4
@TTYTYPE_RAS_RAW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ipw_tty* @ipwireless_tty_create(%struct.ipw_hardware* %0, %struct.ipw_network* %1) #0 {
  %3 = alloca %struct.ipw_tty*, align 8
  %4 = alloca %struct.ipw_hardware*, align 8
  %5 = alloca %struct.ipw_network*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ipw_hardware* %0, %struct.ipw_hardware** %4, align 8
  store %struct.ipw_network* %1, %struct.ipw_network** %5, align 8
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %77, %2
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @IPWIRELESS_PCMCIA_MINOR_RANGE, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %80

13:                                               ; preds = %9
  store i32 1, i32* %8, align 4
  %14 = load i32, i32* %6, align 4
  store i32 %14, i32* %7, align 4
  br label %15

15:                                               ; preds = %28, %13
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @IPWIRELESS_PCMCIA_MINORS, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %32

19:                                               ; preds = %15
  %20 = load %struct.ipw_tty**, %struct.ipw_tty*** @ttys, align 8
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.ipw_tty*, %struct.ipw_tty** %20, i64 %22
  %24 = load %struct.ipw_tty*, %struct.ipw_tty** %23, align 8
  %25 = icmp ne %struct.ipw_tty* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  store i32 0, i32* %8, align 4
  br label %32

27:                                               ; preds = %19
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* @IPWIRELESS_PCMCIA_MINOR_RANGE, align 4
  %30 = load i32, i32* %7, align 4
  %31 = add nsw i32 %30, %29
  store i32 %31, i32* %7, align 4
  br label %15

32:                                               ; preds = %26, %15
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %76

35:                                               ; preds = %32
  %36 = load i32, i32* %6, align 4
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = load %struct.ipw_hardware*, %struct.ipw_hardware** %4, align 8
  %39 = load %struct.ipw_network*, %struct.ipw_network** %5, align 8
  %40 = load i32, i32* @IPW_CHANNEL_DIALLER, align 4
  %41 = load i32, i32* @IPW_CHANNEL_RAS, align 4
  %42 = load i32, i32* @TTYTYPE_MODEM, align 4
  %43 = call i64 @add_tty(i32 %37, %struct.ipw_hardware* %38, %struct.ipw_network* %39, i32 %40, i32 %41, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %35
  store %struct.ipw_tty* null, %struct.ipw_tty** %3, align 8
  br label %81

46:                                               ; preds = %35
  %47 = load i32, i32* @IPWIRELESS_PCMCIA_MINOR_RANGE, align 4
  %48 = load i32, i32* %7, align 4
  %49 = add nsw i32 %48, %47
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = load %struct.ipw_hardware*, %struct.ipw_hardware** %4, align 8
  %52 = load %struct.ipw_network*, %struct.ipw_network** %5, align 8
  %53 = load i32, i32* @IPW_CHANNEL_DIALLER, align 4
  %54 = load i32, i32* @TTYTYPE_MONITOR, align 4
  %55 = call i64 @add_tty(i32 %50, %struct.ipw_hardware* %51, %struct.ipw_network* %52, i32 %53, i32 -1, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %46
  store %struct.ipw_tty* null, %struct.ipw_tty** %3, align 8
  br label %81

58:                                               ; preds = %46
  %59 = load i32, i32* @IPWIRELESS_PCMCIA_MINOR_RANGE, align 4
  %60 = load i32, i32* %7, align 4
  %61 = add nsw i32 %60, %59
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %7, align 4
  %63 = load %struct.ipw_hardware*, %struct.ipw_hardware** %4, align 8
  %64 = load %struct.ipw_network*, %struct.ipw_network** %5, align 8
  %65 = load i32, i32* @IPW_CHANNEL_RAS, align 4
  %66 = load i32, i32* @TTYTYPE_RAS_RAW, align 4
  %67 = call i64 @add_tty(i32 %62, %struct.ipw_hardware* %63, %struct.ipw_network* %64, i32 %65, i32 -1, i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %58
  store %struct.ipw_tty* null, %struct.ipw_tty** %3, align 8
  br label %81

70:                                               ; preds = %58
  %71 = load %struct.ipw_tty**, %struct.ipw_tty*** @ttys, align 8
  %72 = load i32, i32* %6, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.ipw_tty*, %struct.ipw_tty** %71, i64 %73
  %75 = load %struct.ipw_tty*, %struct.ipw_tty** %74, align 8
  store %struct.ipw_tty* %75, %struct.ipw_tty** %3, align 8
  br label %81

76:                                               ; preds = %32
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %6, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %6, align 4
  br label %9

80:                                               ; preds = %9
  store %struct.ipw_tty* null, %struct.ipw_tty** %3, align 8
  br label %81

81:                                               ; preds = %80, %70, %69, %57, %45
  %82 = load %struct.ipw_tty*, %struct.ipw_tty** %3, align 8
  ret %struct.ipw_tty* %82
}

declare dso_local i64 @add_tty(i32, %struct.ipw_hardware*, %struct.ipw_network*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
