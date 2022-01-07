; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/cxgbit/extr_cxgbit_main.c_cxgbit_uld_lro_flush.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/cxgbit/extr_cxgbit_main.c_cxgbit_uld_lro_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t4_lro_mgr = type { i32 }
%struct.sk_buff = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.t4_lro_mgr*)* @cxgbit_uld_lro_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cxgbit_uld_lro_flush(%struct.t4_lro_mgr* %0) #0 {
  %2 = alloca %struct.t4_lro_mgr*, align 8
  %3 = alloca %struct.sk_buff*, align 8
  store %struct.t4_lro_mgr* %0, %struct.t4_lro_mgr** %2, align 8
  br label %4

4:                                                ; preds = %9, %1
  %5 = load %struct.t4_lro_mgr*, %struct.t4_lro_mgr** %2, align 8
  %6 = getelementptr inbounds %struct.t4_lro_mgr, %struct.t4_lro_mgr* %5, i32 0, i32 0
  %7 = call %struct.sk_buff* @skb_peek(i32* %6)
  store %struct.sk_buff* %7, %struct.sk_buff** %3, align 8
  %8 = icmp ne %struct.sk_buff* %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %4
  %10 = load %struct.t4_lro_mgr*, %struct.t4_lro_mgr** %2, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %12 = call i32 @cxgbit_lro_flush(%struct.t4_lro_mgr* %10, %struct.sk_buff* %11)
  br label %4

13:                                               ; preds = %4
  ret void
}

declare dso_local %struct.sk_buff* @skb_peek(i32*) #1

declare dso_local i32 @cxgbit_lro_flush(%struct.t4_lro_mgr*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
