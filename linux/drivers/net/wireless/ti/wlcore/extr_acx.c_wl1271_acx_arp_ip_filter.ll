; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_acx.c_wl1271_acx_arp_ip_filter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_acx.c_wl1271_acx_arp_ip_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i32 }
%struct.wl12xx_vif = type { i32 }
%struct.wl1271_acx_arp_filter = type { i32, i64, i32, i32 }

@DEBUG_ACX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"acx arp ip filter, enable: %d\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ACX_IPV4_VERSION = common dso_local global i32 0, align 4
@ACX_IPV4_ADDR_SIZE = common dso_local global i32 0, align 4
@ACX_ARP_IP_FILTER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"failed to set arp ip filter: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wl1271_acx_arp_ip_filter(%struct.wl1271* %0, %struct.wl12xx_vif* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.wl1271*, align 8
  %6 = alloca %struct.wl12xx_vif*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.wl1271_acx_arp_filter*, align 8
  %10 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %5, align 8
  store %struct.wl12xx_vif* %1, %struct.wl12xx_vif** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* @DEBUG_ACX, align 4
  %12 = load i64, i64* %7, align 8
  %13 = call i32 @wl1271_debug(i32 %11, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i64 %12)
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.wl1271_acx_arp_filter* @kzalloc(i32 24, i32 %14)
  store %struct.wl1271_acx_arp_filter* %15, %struct.wl1271_acx_arp_filter** %9, align 8
  %16 = load %struct.wl1271_acx_arp_filter*, %struct.wl1271_acx_arp_filter** %9, align 8
  %17 = icmp ne %struct.wl1271_acx_arp_filter* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %10, align 4
  br label %52

21:                                               ; preds = %4
  %22 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %6, align 8
  %23 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.wl1271_acx_arp_filter*, %struct.wl1271_acx_arp_filter** %9, align 8
  %26 = getelementptr inbounds %struct.wl1271_acx_arp_filter, %struct.wl1271_acx_arp_filter* %25, i32 0, i32 3
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @ACX_IPV4_VERSION, align 4
  %28 = load %struct.wl1271_acx_arp_filter*, %struct.wl1271_acx_arp_filter** %9, align 8
  %29 = getelementptr inbounds %struct.wl1271_acx_arp_filter, %struct.wl1271_acx_arp_filter* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 8
  %30 = load i64, i64* %7, align 8
  %31 = load %struct.wl1271_acx_arp_filter*, %struct.wl1271_acx_arp_filter** %9, align 8
  %32 = getelementptr inbounds %struct.wl1271_acx_arp_filter, %struct.wl1271_acx_arp_filter* %31, i32 0, i32 1
  store i64 %30, i64* %32, align 8
  %33 = load i64, i64* %7, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %21
  %36 = load %struct.wl1271_acx_arp_filter*, %struct.wl1271_acx_arp_filter** %9, align 8
  %37 = getelementptr inbounds %struct.wl1271_acx_arp_filter, %struct.wl1271_acx_arp_filter* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @ACX_IPV4_ADDR_SIZE, align 4
  %40 = call i32 @memcpy(i32 %38, i32* %8, i32 %39)
  br label %41

41:                                               ; preds = %35, %21
  %42 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %43 = load i32, i32* @ACX_ARP_IP_FILTER, align 4
  %44 = load %struct.wl1271_acx_arp_filter*, %struct.wl1271_acx_arp_filter** %9, align 8
  %45 = call i32 @wl1271_cmd_configure(%struct.wl1271* %42, i32 %43, %struct.wl1271_acx_arp_filter* %44, i32 24)
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %41
  %49 = load i32, i32* %10, align 4
  %50 = call i32 @wl1271_warning(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  br label %52

51:                                               ; preds = %41
  br label %52

52:                                               ; preds = %51, %48, %18
  %53 = load %struct.wl1271_acx_arp_filter*, %struct.wl1271_acx_arp_filter** %9, align 8
  %54 = call i32 @kfree(%struct.wl1271_acx_arp_filter* %53)
  %55 = load i32, i32* %10, align 4
  ret i32 %55
}

declare dso_local i32 @wl1271_debug(i32, i8*, i64) #1

declare dso_local %struct.wl1271_acx_arp_filter* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @wl1271_cmd_configure(%struct.wl1271*, i32, %struct.wl1271_acx_arp_filter*, i32) #1

declare dso_local i32 @wl1271_warning(i8*, i32) #1

declare dso_local i32 @kfree(%struct.wl1271_acx_arp_filter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
