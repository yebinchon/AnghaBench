; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/extr_configfs.c_gadget_info_attr_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/extr_configfs.c_gadget_info_attr_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_item = type { i32 }
%struct.gadget_info = type { %struct.TYPE_6__, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.gadget_info* }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.config_item*)* @gadget_info_attr_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gadget_info_attr_release(%struct.config_item* %0) #0 {
  %2 = alloca %struct.config_item*, align 8
  %3 = alloca %struct.gadget_info*, align 8
  store %struct.config_item* %0, %struct.config_item** %2, align 8
  %4 = load %struct.config_item*, %struct.config_item** %2, align 8
  %5 = call %struct.gadget_info* @to_gadget_info(%struct.config_item* %4)
  store %struct.gadget_info* %5, %struct.gadget_info** %3, align 8
  %6 = load %struct.gadget_info*, %struct.gadget_info** %3, align 8
  %7 = getelementptr inbounds %struct.gadget_info, %struct.gadget_info* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = call i32 @list_empty(i32* %8)
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i32 @WARN_ON(i32 %12)
  %14 = load %struct.gadget_info*, %struct.gadget_info** %3, align 8
  %15 = getelementptr inbounds %struct.gadget_info, %struct.gadget_info* %14, i32 0, i32 2
  %16 = call i32 @list_empty(i32* %15)
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i32 @WARN_ON(i32 %19)
  %21 = load %struct.gadget_info*, %struct.gadget_info** %3, align 8
  %22 = getelementptr inbounds %struct.gadget_info, %struct.gadget_info* %21, i32 0, i32 1
  %23 = call i32 @list_empty(i32* %22)
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = call i32 @WARN_ON(i32 %26)
  %28 = load %struct.gadget_info*, %struct.gadget_info** %3, align 8
  %29 = getelementptr inbounds %struct.gadget_info, %struct.gadget_info* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load %struct.gadget_info*, %struct.gadget_info** %31, align 8
  %33 = call i32 @kfree(%struct.gadget_info* %32)
  %34 = load %struct.gadget_info*, %struct.gadget_info** %3, align 8
  %35 = call i32 @kfree(%struct.gadget_info* %34)
  ret void
}

declare dso_local %struct.gadget_info* @to_gadget_info(%struct.config_item*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @kfree(%struct.gadget_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
