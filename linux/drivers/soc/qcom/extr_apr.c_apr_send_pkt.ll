; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_apr.c_apr_send_pkt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_apr.c_apr_send_pkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.apr_device = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.apr_pkt = type { %struct.apr_hdr }
%struct.apr_hdr = type { i32, i32, i32, i32, i32 }
%struct.apr = type { i32 }

@APR_DOMAIN_APPS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @apr_send_pkt(%struct.apr_device* %0, %struct.apr_pkt* %1) #0 {
  %3 = alloca %struct.apr_device*, align 8
  %4 = alloca %struct.apr_pkt*, align 8
  %5 = alloca %struct.apr*, align 8
  %6 = alloca %struct.apr_hdr*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.apr_device* %0, %struct.apr_device** %3, align 8
  store %struct.apr_pkt* %1, %struct.apr_pkt** %4, align 8
  %9 = load %struct.apr_device*, %struct.apr_device** %3, align 8
  %10 = getelementptr inbounds %struct.apr_device, %struct.apr_device* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.apr* @dev_get_drvdata(i32 %12)
  store %struct.apr* %13, %struct.apr** %5, align 8
  %14 = load %struct.apr_device*, %struct.apr_device** %3, align 8
  %15 = getelementptr inbounds %struct.apr_device, %struct.apr_device* %14, i32 0, i32 0
  %16 = load i64, i64* %7, align 8
  %17 = call i32 @spin_lock_irqsave(i32* %15, i64 %16)
  %18 = load %struct.apr_pkt*, %struct.apr_pkt** %4, align 8
  %19 = getelementptr inbounds %struct.apr_pkt, %struct.apr_pkt* %18, i32 0, i32 0
  store %struct.apr_hdr* %19, %struct.apr_hdr** %6, align 8
  %20 = load i32, i32* @APR_DOMAIN_APPS, align 4
  %21 = load %struct.apr_hdr*, %struct.apr_hdr** %6, align 8
  %22 = getelementptr inbounds %struct.apr_hdr, %struct.apr_hdr* %21, i32 0, i32 4
  store i32 %20, i32* %22, align 4
  %23 = load %struct.apr_device*, %struct.apr_device** %3, align 8
  %24 = getelementptr inbounds %struct.apr_device, %struct.apr_device* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.apr_hdr*, %struct.apr_hdr** %6, align 8
  %27 = getelementptr inbounds %struct.apr_hdr, %struct.apr_hdr* %26, i32 0, i32 3
  store i32 %25, i32* %27, align 4
  %28 = load %struct.apr_device*, %struct.apr_device** %3, align 8
  %29 = getelementptr inbounds %struct.apr_device, %struct.apr_device* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.apr_hdr*, %struct.apr_hdr** %6, align 8
  %32 = getelementptr inbounds %struct.apr_hdr, %struct.apr_hdr* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 4
  %33 = load %struct.apr_device*, %struct.apr_device** %3, align 8
  %34 = getelementptr inbounds %struct.apr_device, %struct.apr_device* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.apr_hdr*, %struct.apr_hdr** %6, align 8
  %37 = getelementptr inbounds %struct.apr_hdr, %struct.apr_hdr* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load %struct.apr*, %struct.apr** %5, align 8
  %39 = getelementptr inbounds %struct.apr, %struct.apr* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.apr_pkt*, %struct.apr_pkt** %4, align 8
  %42 = load %struct.apr_hdr*, %struct.apr_hdr** %6, align 8
  %43 = getelementptr inbounds %struct.apr_hdr, %struct.apr_hdr* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @rpmsg_trysend(i32 %40, %struct.apr_pkt* %41, i32 %44)
  store i32 %45, i32* %8, align 4
  %46 = load %struct.apr_device*, %struct.apr_device** %3, align 8
  %47 = getelementptr inbounds %struct.apr_device, %struct.apr_device* %46, i32 0, i32 0
  %48 = load i64, i64* %7, align 8
  %49 = call i32 @spin_unlock_irqrestore(i32* %47, i64 %48)
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %2
  %53 = load i32, i32* %8, align 4
  br label %58

54:                                               ; preds = %2
  %55 = load %struct.apr_hdr*, %struct.apr_hdr** %6, align 8
  %56 = getelementptr inbounds %struct.apr_hdr, %struct.apr_hdr* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  br label %58

58:                                               ; preds = %54, %52
  %59 = phi i32 [ %53, %52 ], [ %57, %54 ]
  ret i32 %59
}

declare dso_local %struct.apr* @dev_get_drvdata(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @rpmsg_trysend(i32, %struct.apr_pkt*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
