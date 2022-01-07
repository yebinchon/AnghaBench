; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/ipwireless/extr_network.c_ipwireless_network_packet_received.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/ipwireless/extr_network.c_ipwireless_network_packet_received.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw_network = type { i32, i32, i32, i32*, %struct.ipw_tty*** }
%struct.ipw_tty = type { i32 }
%struct.sk_buff = type { i32 }

@MAX_ASSOCIATED_TTYS = common dso_local global i32 0, align 4
@IPW_CHANNEL_RAS = common dso_local global i32 0, align 4
@IPW_CONTROL_LINE_DCD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipwireless_network_packet_received(%struct.ipw_network* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.ipw_network*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.ipw_tty*, align 8
  %12 = alloca %struct.sk_buff*, align 8
  store %struct.ipw_network* %0, %struct.ipw_network** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %13

13:                                               ; preds = %91, %4
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* @MAX_ASSOCIATED_TTYS, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %94

17:                                               ; preds = %13
  %18 = load %struct.ipw_network*, %struct.ipw_network** %5, align 8
  %19 = getelementptr inbounds %struct.ipw_network, %struct.ipw_network* %18, i32 0, i32 4
  %20 = load %struct.ipw_tty***, %struct.ipw_tty**** %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.ipw_tty**, %struct.ipw_tty*** %20, i64 %22
  %24 = load %struct.ipw_tty**, %struct.ipw_tty*** %23, align 8
  %25 = load i32, i32* %9, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.ipw_tty*, %struct.ipw_tty** %24, i64 %26
  %28 = load %struct.ipw_tty*, %struct.ipw_tty** %27, align 8
  store %struct.ipw_tty* %28, %struct.ipw_tty** %11, align 8
  %29 = load %struct.ipw_tty*, %struct.ipw_tty** %11, align 8
  %30 = icmp ne %struct.ipw_tty* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %17
  br label %91

32:                                               ; preds = %17
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @IPW_CHANNEL_RAS, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %85

36:                                               ; preds = %32
  %37 = load %struct.ipw_network*, %struct.ipw_network** %5, align 8
  %38 = getelementptr inbounds %struct.ipw_network, %struct.ipw_network* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @IPW_CONTROL_LINE_DCD, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %85

43:                                               ; preds = %36
  %44 = load %struct.ipw_tty*, %struct.ipw_tty** %11, align 8
  %45 = call i64 @ipwireless_tty_is_modem(%struct.ipw_tty* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %85

47:                                               ; preds = %43
  %48 = load %struct.ipw_network*, %struct.ipw_network** %5, align 8
  %49 = getelementptr inbounds %struct.ipw_network, %struct.ipw_network* %48, i32 0, i32 1
  %50 = call i32 @mutex_lock(i32* %49)
  %51 = load %struct.ipw_network*, %struct.ipw_network** %5, align 8
  %52 = getelementptr inbounds %struct.ipw_network, %struct.ipw_network* %51, i32 0, i32 2
  %53 = load i64, i64* %10, align 8
  %54 = call i32 @spin_lock_irqsave(i32* %52, i64 %53)
  %55 = load %struct.ipw_network*, %struct.ipw_network** %5, align 8
  %56 = getelementptr inbounds %struct.ipw_network, %struct.ipw_network* %55, i32 0, i32 3
  %57 = load i32*, i32** %56, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %76

59:                                               ; preds = %47
  %60 = load %struct.ipw_network*, %struct.ipw_network** %5, align 8
  %61 = getelementptr inbounds %struct.ipw_network, %struct.ipw_network* %60, i32 0, i32 2
  %62 = load i64, i64* %10, align 8
  %63 = call i32 @spin_unlock_irqrestore(i32* %61, i64 %62)
  %64 = load i8*, i8** %7, align 8
  %65 = load i32, i32* %8, align 4
  %66 = call %struct.sk_buff* @ipw_packet_received_skb(i8* %64, i32 %65)
  store %struct.sk_buff* %66, %struct.sk_buff** %12, align 8
  %67 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %68 = icmp ne %struct.sk_buff* %67, null
  br i1 %68, label %69, label %75

69:                                               ; preds = %59
  %70 = load %struct.ipw_network*, %struct.ipw_network** %5, align 8
  %71 = getelementptr inbounds %struct.ipw_network, %struct.ipw_network* %70, i32 0, i32 3
  %72 = load i32*, i32** %71, align 8
  %73 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %74 = call i32 @ppp_input(i32* %72, %struct.sk_buff* %73)
  br label %75

75:                                               ; preds = %69, %59
  br label %81

76:                                               ; preds = %47
  %77 = load %struct.ipw_network*, %struct.ipw_network** %5, align 8
  %78 = getelementptr inbounds %struct.ipw_network, %struct.ipw_network* %77, i32 0, i32 2
  %79 = load i64, i64* %10, align 8
  %80 = call i32 @spin_unlock_irqrestore(i32* %78, i64 %79)
  br label %81

81:                                               ; preds = %76, %75
  %82 = load %struct.ipw_network*, %struct.ipw_network** %5, align 8
  %83 = getelementptr inbounds %struct.ipw_network, %struct.ipw_network* %82, i32 0, i32 1
  %84 = call i32 @mutex_unlock(i32* %83)
  br label %90

85:                                               ; preds = %43, %36, %32
  %86 = load %struct.ipw_tty*, %struct.ipw_tty** %11, align 8
  %87 = load i8*, i8** %7, align 8
  %88 = load i32, i32* %8, align 4
  %89 = call i32 @ipwireless_tty_received(%struct.ipw_tty* %86, i8* %87, i32 %88)
  br label %90

90:                                               ; preds = %85, %81
  br label %91

91:                                               ; preds = %90, %31
  %92 = load i32, i32* %9, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %9, align 4
  br label %13

94:                                               ; preds = %13
  ret void
}

declare dso_local i64 @ipwireless_tty_is_modem(%struct.ipw_tty*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local %struct.sk_buff* @ipw_packet_received_skb(i8*, i32) #1

declare dso_local i32 @ppp_input(i32*, %struct.sk_buff*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ipwireless_tty_received(%struct.ipw_tty*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
