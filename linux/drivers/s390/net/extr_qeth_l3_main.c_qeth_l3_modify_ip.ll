; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_l3_main.c_qeth_l3_modify_ip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_l3_main.c_qeth_l3_modify_ip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { i32 }
%struct.qeth_ipaddr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qeth_card*, %struct.qeth_ipaddr*, i32)* @qeth_l3_modify_ip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_l3_modify_ip(%struct.qeth_card* %0, %struct.qeth_ipaddr* %1, i32 %2) #0 {
  %4 = alloca %struct.qeth_card*, align 8
  %5 = alloca %struct.qeth_ipaddr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.qeth_card* %0, %struct.qeth_card** %4, align 8
  store %struct.qeth_ipaddr* %1, %struct.qeth_ipaddr** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %9 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %8, i32 0, i32 0
  %10 = call i32 @mutex_lock(i32* %9)
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %3
  %14 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %15 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %5, align 8
  %16 = call i32 @qeth_l3_add_ip(%struct.qeth_card* %14, %struct.qeth_ipaddr* %15)
  br label %21

17:                                               ; preds = %3
  %18 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %19 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %5, align 8
  %20 = call i32 @qeth_l3_delete_ip(%struct.qeth_card* %18, %struct.qeth_ipaddr* %19)
  br label %21

21:                                               ; preds = %17, %13
  %22 = phi i32 [ %16, %13 ], [ %20, %17 ]
  store i32 %22, i32* %7, align 4
  %23 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %24 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %23, i32 0, i32 0
  %25 = call i32 @mutex_unlock(i32* %24)
  %26 = load i32, i32* %7, align 4
  ret i32 %26
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @qeth_l3_add_ip(%struct.qeth_card*, %struct.qeth_ipaddr*) #1

declare dso_local i32 @qeth_l3_delete_ip(%struct.qeth_card*, %struct.qeth_ipaddr*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
