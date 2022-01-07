; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/xenbus/extr_xenbus_comms.c_xb_data_to_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/xenbus/extr_xenbus_comms.c_xb_data_to_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xenstore_domain_interface = type { i64, i64 }

@xen_store_interface = common dso_local global %struct.xenstore_domain_interface* null, align 8
@XENSTORE_RING_SIZE = common dso_local global i64 0, align 8
@xb_write_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @xb_data_to_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xb_data_to_write() #0 {
  %1 = alloca %struct.xenstore_domain_interface*, align 8
  %2 = load %struct.xenstore_domain_interface*, %struct.xenstore_domain_interface** @xen_store_interface, align 8
  store %struct.xenstore_domain_interface* %2, %struct.xenstore_domain_interface** %1, align 8
  %3 = load %struct.xenstore_domain_interface*, %struct.xenstore_domain_interface** %1, align 8
  %4 = getelementptr inbounds %struct.xenstore_domain_interface, %struct.xenstore_domain_interface* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load %struct.xenstore_domain_interface*, %struct.xenstore_domain_interface** %1, align 8
  %7 = getelementptr inbounds %struct.xenstore_domain_interface, %struct.xenstore_domain_interface* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = sub nsw i64 %5, %8
  %10 = load i64, i64* @XENSTORE_RING_SIZE, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %0
  %13 = call i32 @list_empty(i32* @xb_write_list)
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  br label %16

16:                                               ; preds = %12, %0
  %17 = phi i1 [ false, %0 ], [ %15, %12 ]
  %18 = zext i1 %17 to i32
  ret i32 %18
}

declare dso_local i32 @list_empty(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
