; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/extr_r819xU_cmdpkt.c_cmpk_handle_interrupt_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/extr_r819xU_cmdpkt.c_cmpk_handle_interrupt_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.cmd_pkt_interrupt_status = type { i32, i32 }
%struct.r8192_priv = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i64, i32 }

@.str = private unnamed_addr constant [37 x i8] c"---> cmpk_Handle_Interrupt_Status()\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"cmpk_Handle_Interrupt_Status: wrong length!\0A\00", align 1
@IW_MODE_ADHOC = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [25 x i8] c"interrupt status = 0x%x\0A\00", align 1
@ISR_TX_BCN_OK = common dso_local global i32 0, align 4
@ISR_TX_BCN_ERR = common dso_local global i32 0, align 4
@ISR_BCN_TIMER_INTR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"<---- cmpk_handle_interrupt_status()\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32*)* @cmpk_handle_interrupt_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cmpk_handle_interrupt_status(%struct.net_device* %0, i32* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.cmd_pkt_interrupt_status, align 4
  %6 = alloca %struct.r8192_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.r8192_priv* @ieee80211_priv(%struct.net_device* %7)
  store %struct.r8192_priv* %8, %struct.r8192_priv** %6, align 8
  %9 = call i32 (i8*, ...) @DMESG(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %10 = load i32*, i32** %4, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 1
  %12 = load i32, i32* %11, align 4
  %13 = getelementptr inbounds %struct.cmd_pkt_interrupt_status, %struct.cmd_pkt_interrupt_status* %5, i32 0, i32 0
  store i32 %12, i32* %13, align 4
  %14 = getelementptr inbounds %struct.cmd_pkt_interrupt_status, %struct.cmd_pkt_interrupt_status* %5, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = sext i32 %15 to i64
  %17 = icmp ne i64 %16, 6
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = call i32 (i8*, ...) @DMESG(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  br label %80

20:                                               ; preds = %2
  %21 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %22 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %21, i32 0, i32 1
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @IW_MODE_ADHOC, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %78

28:                                               ; preds = %20
  %29 = load i32*, i32** %4, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 4
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct.cmd_pkt_interrupt_status, %struct.cmd_pkt_interrupt_status* %5, i32 0, i32 1
  store i32 %31, i32* %32, align 4
  %33 = getelementptr inbounds %struct.cmd_pkt_interrupt_status, %struct.cmd_pkt_interrupt_status* %5, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 (i8*, ...) @DMESG(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %34)
  %36 = getelementptr inbounds %struct.cmd_pkt_interrupt_status, %struct.cmd_pkt_interrupt_status* %5, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @ISR_TX_BCN_OK, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %28
  %42 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %43 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %42, i32 0, i32 1
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  store i32 1, i32* %45, align 8
  %46 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %47 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %48, align 4
  br label %68

51:                                               ; preds = %28
  %52 = getelementptr inbounds %struct.cmd_pkt_interrupt_status, %struct.cmd_pkt_interrupt_status* %5, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @ISR_TX_BCN_ERR, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %67

57:                                               ; preds = %51
  %58 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %59 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %58, i32 0, i32 1
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 1
  store i32 0, i32* %61, align 8
  %62 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %63 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %64, align 8
  br label %67

67:                                               ; preds = %57, %51
  br label %68

68:                                               ; preds = %67, %41
  %69 = getelementptr inbounds %struct.cmd_pkt_interrupt_status, %struct.cmd_pkt_interrupt_status* %5, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @ISR_BCN_TIMER_INTR, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %68
  %75 = load %struct.net_device*, %struct.net_device** %3, align 8
  %76 = call i32 @cmdpkt_beacontimerinterrupt_819xusb(%struct.net_device* %75)
  br label %77

77:                                               ; preds = %74, %68
  br label %78

78:                                               ; preds = %77, %20
  %79 = call i32 (i8*, ...) @DMESG(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  br label %80

80:                                               ; preds = %78, %18
  ret void
}

declare dso_local %struct.r8192_priv* @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @DMESG(i8*, ...) #1

declare dso_local i32 @cmdpkt_beacontimerinterrupt_819xusb(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
