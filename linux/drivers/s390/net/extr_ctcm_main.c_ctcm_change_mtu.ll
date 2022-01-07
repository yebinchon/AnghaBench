; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_ctcm_main.c_ctcm_change_mtu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_ctcm_main.c_ctcm_change_mtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32, %struct.ctcm_priv* }
%struct.ctcm_priv = type { %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32 }

@CTCM_READ = common dso_local global i64 0, align 8
@TH_HEADER_LENGTH = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PDU_HEADER_LENGTH = common dso_local global i32 0, align 4
@LL_HEADER_LENGTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @ctcm_change_mtu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctcm_change_mtu(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ctcm_priv*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = getelementptr inbounds %struct.net_device, %struct.net_device* %8, i32 0, i32 2
  %10 = load %struct.ctcm_priv*, %struct.ctcm_priv** %9, align 8
  store %struct.ctcm_priv* %10, %struct.ctcm_priv** %6, align 8
  %11 = load %struct.ctcm_priv*, %struct.ctcm_priv** %6, align 8
  %12 = getelementptr inbounds %struct.ctcm_priv, %struct.ctcm_priv* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %12, align 8
  %14 = load i64, i64* @CTCM_READ, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %13, i64 %14
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %7, align 4
  %19 = load %struct.ctcm_priv*, %struct.ctcm_priv** %6, align 8
  %20 = call i64 @IS_MPC(%struct.ctcm_priv* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %37

22:                                               ; preds = %2
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @TH_HEADER_LENGTH, align 4
  %26 = sub nsw i32 %24, %25
  %27 = icmp sgt i32 %23, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %56

31:                                               ; preds = %22
  %32 = load i32, i32* @TH_HEADER_LENGTH, align 4
  %33 = load i32, i32* @PDU_HEADER_LENGTH, align 4
  %34 = add nsw i32 %32, %33
  %35 = load %struct.net_device*, %struct.net_device** %4, align 8
  %36 = getelementptr inbounds %struct.net_device, %struct.net_device* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  br label %52

37:                                               ; preds = %2
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @LL_HEADER_LENGTH, align 4
  %41 = sub nsw i32 %39, %40
  %42 = sub nsw i32 %41, 2
  %43 = icmp sgt i32 %38, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %37
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %56

47:                                               ; preds = %37
  %48 = load i32, i32* @LL_HEADER_LENGTH, align 4
  %49 = add nsw i32 %48, 2
  %50 = load %struct.net_device*, %struct.net_device** %4, align 8
  %51 = getelementptr inbounds %struct.net_device, %struct.net_device* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  br label %52

52:                                               ; preds = %47, %31
  %53 = load i32, i32* %5, align 4
  %54 = load %struct.net_device*, %struct.net_device** %4, align 8
  %55 = getelementptr inbounds %struct.net_device, %struct.net_device* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  store i32 0, i32* %3, align 4
  br label %56

56:                                               ; preds = %52, %44, %28
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i64 @IS_MPC(%struct.ctcm_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
