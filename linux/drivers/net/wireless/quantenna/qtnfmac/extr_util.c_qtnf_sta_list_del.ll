; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_util.c_qtnf_sta_list_del.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_util.c_qtnf_sta_list_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qtnf_vif = type { i32, %struct.qtnf_sta_list }
%struct.qtnf_sta_list = type { i32 }
%struct.qtnf_sta_node = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qtnf_sta_list_del(%struct.qtnf_vif* %0, i32* %1) #0 {
  %3 = alloca %struct.qtnf_vif*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.qtnf_sta_list*, align 8
  %6 = alloca %struct.qtnf_sta_node*, align 8
  %7 = alloca i32, align 4
  store %struct.qtnf_vif* %0, %struct.qtnf_vif** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load %struct.qtnf_vif*, %struct.qtnf_vif** %3, align 8
  %9 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %8, i32 0, i32 1
  store %struct.qtnf_sta_list* %9, %struct.qtnf_sta_list** %5, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.qtnf_sta_list*, %struct.qtnf_sta_list** %5, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = call %struct.qtnf_sta_node* @qtnf_sta_list_lookup(%struct.qtnf_sta_list* %10, i32* %11)
  store %struct.qtnf_sta_node* %12, %struct.qtnf_sta_node** %6, align 8
  %13 = load %struct.qtnf_sta_node*, %struct.qtnf_sta_node** %6, align 8
  %14 = icmp ne %struct.qtnf_sta_node* %13, null
  br i1 %14, label %15, label %28

15:                                               ; preds = %2
  %16 = load %struct.qtnf_sta_node*, %struct.qtnf_sta_node** %6, align 8
  %17 = getelementptr inbounds %struct.qtnf_sta_node, %struct.qtnf_sta_node* %16, i32 0, i32 0
  %18 = call i32 @list_del(i32* %17)
  %19 = load %struct.qtnf_sta_list*, %struct.qtnf_sta_list** %5, align 8
  %20 = getelementptr inbounds %struct.qtnf_sta_list, %struct.qtnf_sta_list* %19, i32 0, i32 0
  %21 = call i32 @atomic_dec(i32* %20)
  %22 = load %struct.qtnf_sta_node*, %struct.qtnf_sta_node** %6, align 8
  %23 = call i32 @kfree(%struct.qtnf_sta_node* %22)
  %24 = load %struct.qtnf_vif*, %struct.qtnf_vif** %3, align 8
  %25 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %25, align 4
  store i32 1, i32* %7, align 4
  br label %28

28:                                               ; preds = %15, %2
  %29 = load i32, i32* %7, align 4
  ret i32 %29
}

declare dso_local %struct.qtnf_sta_node* @qtnf_sta_list_lookup(%struct.qtnf_sta_list*, i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @kfree(%struct.qtnf_sta_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
