; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl1251/extr_acx.c_wl1251_acx_arp_ip_filter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl1251/extr_acx.c_wl1251_acx_arp_ip_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1251 = type { i32 }
%struct.wl1251_acx_arp_filter = type { i32, i32, i32 }

@DEBUG_ACX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"acx arp ip filter, enable: %d\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ACX_IPV4_VERSION = common dso_local global i32 0, align 4
@ACX_IPV4_ADDR_SIZE = common dso_local global i32 0, align 4
@ACX_ARP_IP_FILTER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"failed to set arp ip filter: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wl1251_acx_arp_ip_filter(%struct.wl1251* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wl1251*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.wl1251_acx_arp_filter*, align 8
  %9 = alloca i32, align 4
  store %struct.wl1251* %0, %struct.wl1251** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* @DEBUG_ACX, align 4
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @wl1251_debug(i32 %10, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.wl1251_acx_arp_filter* @kzalloc(i32 12, i32 %13)
  store %struct.wl1251_acx_arp_filter* %14, %struct.wl1251_acx_arp_filter** %8, align 8
  %15 = load %struct.wl1251_acx_arp_filter*, %struct.wl1251_acx_arp_filter** %8, align 8
  %16 = icmp ne %struct.wl1251_acx_arp_filter* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %49

20:                                               ; preds = %3
  %21 = load i32, i32* @ACX_IPV4_VERSION, align 4
  %22 = load %struct.wl1251_acx_arp_filter*, %struct.wl1251_acx_arp_filter** %8, align 8
  %23 = getelementptr inbounds %struct.wl1251_acx_arp_filter, %struct.wl1251_acx_arp_filter* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.wl1251_acx_arp_filter*, %struct.wl1251_acx_arp_filter** %8, align 8
  %26 = getelementptr inbounds %struct.wl1251_acx_arp_filter, %struct.wl1251_acx_arp_filter* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %20
  %30 = load %struct.wl1251_acx_arp_filter*, %struct.wl1251_acx_arp_filter** %8, align 8
  %31 = getelementptr inbounds %struct.wl1251_acx_arp_filter, %struct.wl1251_acx_arp_filter* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @ACX_IPV4_ADDR_SIZE, align 4
  %34 = call i32 @memcpy(i32 %32, i32* %7, i32 %33)
  br label %35

35:                                               ; preds = %29, %20
  %36 = load %struct.wl1251*, %struct.wl1251** %5, align 8
  %37 = load i32, i32* @ACX_ARP_IP_FILTER, align 4
  %38 = load %struct.wl1251_acx_arp_filter*, %struct.wl1251_acx_arp_filter** %8, align 8
  %39 = call i32 @wl1251_cmd_configure(%struct.wl1251* %36, i32 %37, %struct.wl1251_acx_arp_filter* %38, i32 12)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %35
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @wl1251_warning(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  br label %45

45:                                               ; preds = %42, %35
  %46 = load %struct.wl1251_acx_arp_filter*, %struct.wl1251_acx_arp_filter** %8, align 8
  %47 = call i32 @kfree(%struct.wl1251_acx_arp_filter* %46)
  %48 = load i32, i32* %9, align 4
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %45, %17
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i32 @wl1251_debug(i32, i8*, i32) #1

declare dso_local %struct.wl1251_acx_arp_filter* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @wl1251_cmd_configure(%struct.wl1251*, i32, %struct.wl1251_acx_arp_filter*, i32) #1

declare dso_local i32 @wl1251_warning(i8*, i32) #1

declare dso_local i32 @kfree(%struct.wl1251_acx_arp_filter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
