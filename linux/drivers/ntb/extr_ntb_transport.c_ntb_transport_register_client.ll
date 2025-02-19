; ModuleID = '/home/carl/AnghaBench/linux/drivers/ntb/extr_ntb_transport.c_ntb_transport_register_client.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ntb/extr_ntb_transport.c_ntb_transport_register_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntb_transport_client = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@ntb_transport_bus = common dso_local global i32 0, align 4
@ntb_transport_list = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ntb_transport_register_client(%struct.ntb_transport_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ntb_transport_client*, align 8
  store %struct.ntb_transport_client* %0, %struct.ntb_transport_client** %3, align 8
  %4 = load %struct.ntb_transport_client*, %struct.ntb_transport_client** %3, align 8
  %5 = getelementptr inbounds %struct.ntb_transport_client, %struct.ntb_transport_client* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  store i32* @ntb_transport_bus, i32** %6, align 8
  %7 = call i64 @list_empty(i32* @ntb_transport_list)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i32, i32* @ENODEV, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %16

12:                                               ; preds = %1
  %13 = load %struct.ntb_transport_client*, %struct.ntb_transport_client** %3, align 8
  %14 = getelementptr inbounds %struct.ntb_transport_client, %struct.ntb_transport_client* %13, i32 0, i32 0
  %15 = call i32 @driver_register(%struct.TYPE_2__* %14)
  store i32 %15, i32* %2, align 4
  br label %16

16:                                               ; preds = %12, %9
  %17 = load i32, i32* %2, align 4
  ret i32 %17
}

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @driver_register(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
