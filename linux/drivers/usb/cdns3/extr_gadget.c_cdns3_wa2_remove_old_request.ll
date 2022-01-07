; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/cdns3/extr_gadget.c_cdns3_wa2_remove_old_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/cdns3/extr_gadget.c_cdns3_wa2_remove_old_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdns3_endpoint = type { i32, i32, i32 }
%struct.cdns3_request = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@REQUEST_INTERNAL_CH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"removes eldest request\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cdns3_endpoint*)* @cdns3_wa2_remove_old_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cdns3_wa2_remove_old_request(%struct.cdns3_endpoint* %0) #0 {
  %2 = alloca %struct.cdns3_endpoint*, align 8
  %3 = alloca %struct.cdns3_request*, align 8
  %4 = alloca i32, align 4
  store %struct.cdns3_endpoint* %0, %struct.cdns3_endpoint** %2, align 8
  br label %5

5:                                                ; preds = %46, %1
  %6 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %2, align 8
  %7 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %6, i32 0, i32 2
  %8 = call i32 @list_empty(i32* %7)
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  br i1 %10, label %11, label %47

11:                                               ; preds = %5
  %12 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %2, align 8
  %13 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %12, i32 0, i32 2
  %14 = call %struct.cdns3_request* @cdns3_next_priv_request(i32* %13)
  store %struct.cdns3_request* %14, %struct.cdns3_request** %3, align 8
  %15 = load %struct.cdns3_request*, %struct.cdns3_request** %3, align 8
  %16 = getelementptr inbounds %struct.cdns3_request, %struct.cdns3_request* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @REQUEST_INTERNAL_CH, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %4, align 4
  %24 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %2, align 8
  %25 = call i32 @trace_cdns3_wa2(%struct.cdns3_endpoint* %24, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.cdns3_request*, %struct.cdns3_request** %3, align 8
  %27 = getelementptr inbounds %struct.cdns3_request, %struct.cdns3_request* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @kfree(i32 %29)
  %31 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %2, align 8
  %32 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %31, i32 0, i32 1
  %33 = load %struct.cdns3_request*, %struct.cdns3_request** %3, align 8
  %34 = getelementptr inbounds %struct.cdns3_request, %struct.cdns3_request* %33, i32 0, i32 2
  %35 = call i32 @cdns3_gadget_ep_free_request(i32* %32, %struct.TYPE_2__* %34)
  %36 = load %struct.cdns3_request*, %struct.cdns3_request** %3, align 8
  %37 = getelementptr inbounds %struct.cdns3_request, %struct.cdns3_request* %36, i32 0, i32 1
  %38 = call i32 @list_del_init(i32* %37)
  %39 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %2, align 8
  %40 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, -1
  store i32 %42, i32* %40, align 4
  %43 = load i32, i32* %4, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %11
  br label %47

46:                                               ; preds = %11
  br label %5

47:                                               ; preds = %45, %5
  ret void
}

declare dso_local i32 @list_empty(i32*) #1

declare dso_local %struct.cdns3_request* @cdns3_next_priv_request(i32*) #1

declare dso_local i32 @trace_cdns3_wa2(%struct.cdns3_endpoint*, i8*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @cdns3_gadget_ep_free_request(i32*, %struct.TYPE_2__*) #1

declare dso_local i32 @list_del_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
