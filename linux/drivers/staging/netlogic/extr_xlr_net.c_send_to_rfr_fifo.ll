; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/netlogic/extr_xlr_net.c_send_to_rfr_fifo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/netlogic/extr_xlr_net.c_send_to_rfr_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xlr_net_priv = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.nlm_fmn_msg = type { i32, i64, i64, i64 }

@.str = private unnamed_addr constant [31 x i8] c"Send to RFR failed in RX path\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xlr_net_priv*, i8*)* @send_to_rfr_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_to_rfr_fifo(%struct.xlr_net_priv* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xlr_net_priv*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.nlm_fmn_msg, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.xlr_net_priv* %0, %struct.xlr_net_priv** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = call i64 @virt_to_bus(i8* %12)
  store i64 %13, i64* %10, align 8
  %14 = load i64, i64* %10, align 8
  %15 = trunc i64 %14 to i32
  %16 = sext i32 %15 to i64
  %17 = and i64 %16, 1099511627744
  %18 = trunc i64 %17 to i32
  %19 = getelementptr inbounds %struct.nlm_fmn_msg, %struct.nlm_fmn_msg* %6, i32 0, i32 0
  store i32 %18, i32* %19, align 8
  %20 = getelementptr inbounds %struct.nlm_fmn_msg, %struct.nlm_fmn_msg* %6, i32 0, i32 3
  store i64 0, i64* %20, align 8
  %21 = getelementptr inbounds %struct.nlm_fmn_msg, %struct.nlm_fmn_msg* %6, i32 0, i32 2
  store i64 0, i64* %21, align 8
  %22 = getelementptr inbounds %struct.nlm_fmn_msg, %struct.nlm_fmn_msg* %6, i32 0, i32 1
  store i64 0, i64* %22, align 8
  %23 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %4, align 8
  %24 = getelementptr inbounds %struct.xlr_net_priv, %struct.xlr_net_priv* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %9, align 4
  br label %28

28:                                               ; preds = %38, %2
  %29 = call i64 (...) @nlm_cop2_enable_irqsave()
  store i64 %29, i64* %11, align 8
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @nlm_fmn_send(i32 1, i32 0, i32 %30, %struct.nlm_fmn_msg* %6)
  store i32 %31, i32* %7, align 4
  %32 = load i64, i64* %11, align 8
  %33 = call i32 @nlm_cop2_disable_irqrestore(i64 %32)
  %34 = load i32, i32* %7, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %48

37:                                               ; preds = %28
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %8, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %8, align 4
  %41 = icmp slt i32 %40, 10000
  br i1 %41, label %28, label %42

42:                                               ; preds = %38
  %43 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %4, align 8
  %44 = getelementptr inbounds %struct.xlr_net_priv, %struct.xlr_net_priv* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @netdev_err(i32 %45, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %47 = load i32, i32* %7, align 4
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %42, %36
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i64 @virt_to_bus(i8*) #1

declare dso_local i64 @nlm_cop2_enable_irqsave(...) #1

declare dso_local i32 @nlm_fmn_send(i32, i32, i32, %struct.nlm_fmn_msg*) #1

declare dso_local i32 @nlm_cop2_disable_irqrestore(i64) #1

declare dso_local i32 @netdev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
