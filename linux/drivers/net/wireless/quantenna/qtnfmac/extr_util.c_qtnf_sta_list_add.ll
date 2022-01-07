; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_util.c_qtnf_sta_list_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_util.c_qtnf_sta_list_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qtnf_sta_node = type { i32, i32 }
%struct.qtnf_vif = type { i32, %struct.qtnf_sta_list }
%struct.qtnf_sta_list = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.qtnf_sta_node* @qtnf_sta_list_add(%struct.qtnf_vif* %0, i32* %1) #0 {
  %3 = alloca %struct.qtnf_sta_node*, align 8
  %4 = alloca %struct.qtnf_vif*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.qtnf_sta_list*, align 8
  %7 = alloca %struct.qtnf_sta_node*, align 8
  store %struct.qtnf_vif* %0, %struct.qtnf_vif** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.qtnf_vif*, %struct.qtnf_vif** %4, align 8
  %9 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %8, i32 0, i32 1
  store %struct.qtnf_sta_list* %9, %struct.qtnf_sta_list** %6, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = icmp ne i32* %10, null
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i64 @unlikely(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store %struct.qtnf_sta_node* null, %struct.qtnf_sta_node** %3, align 8
  br label %54

17:                                               ; preds = %2
  %18 = load %struct.qtnf_sta_list*, %struct.qtnf_sta_list** %6, align 8
  %19 = load i32*, i32** %5, align 8
  %20 = call %struct.qtnf_sta_node* @qtnf_sta_list_lookup(%struct.qtnf_sta_list* %18, i32* %19)
  store %struct.qtnf_sta_node* %20, %struct.qtnf_sta_node** %7, align 8
  %21 = load %struct.qtnf_sta_node*, %struct.qtnf_sta_node** %7, align 8
  %22 = icmp ne %struct.qtnf_sta_node* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  br label %52

24:                                               ; preds = %17
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.qtnf_sta_node* @kzalloc(i32 8, i32 %25)
  store %struct.qtnf_sta_node* %26, %struct.qtnf_sta_node** %7, align 8
  %27 = load %struct.qtnf_sta_node*, %struct.qtnf_sta_node** %7, align 8
  %28 = icmp ne %struct.qtnf_sta_node* %27, null
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = call i64 @unlikely(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %24
  br label %52

34:                                               ; preds = %24
  %35 = load %struct.qtnf_sta_node*, %struct.qtnf_sta_node** %7, align 8
  %36 = getelementptr inbounds %struct.qtnf_sta_node, %struct.qtnf_sta_node* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32*, i32** %5, align 8
  %39 = call i32 @ether_addr_copy(i32 %37, i32* %38)
  %40 = load %struct.qtnf_sta_node*, %struct.qtnf_sta_node** %7, align 8
  %41 = getelementptr inbounds %struct.qtnf_sta_node, %struct.qtnf_sta_node* %40, i32 0, i32 0
  %42 = load %struct.qtnf_sta_list*, %struct.qtnf_sta_list** %6, align 8
  %43 = getelementptr inbounds %struct.qtnf_sta_list, %struct.qtnf_sta_list* %42, i32 0, i32 1
  %44 = call i32 @list_add_tail(i32* %41, i32* %43)
  %45 = load %struct.qtnf_sta_list*, %struct.qtnf_sta_list** %6, align 8
  %46 = getelementptr inbounds %struct.qtnf_sta_list, %struct.qtnf_sta_list* %45, i32 0, i32 0
  %47 = call i32 @atomic_inc(i32* %46)
  %48 = load %struct.qtnf_vif*, %struct.qtnf_vif** %4, align 8
  %49 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %49, align 4
  br label %52

52:                                               ; preds = %34, %33, %23
  %53 = load %struct.qtnf_sta_node*, %struct.qtnf_sta_node** %7, align 8
  store %struct.qtnf_sta_node* %53, %struct.qtnf_sta_node** %3, align 8
  br label %54

54:                                               ; preds = %52, %16
  %55 = load %struct.qtnf_sta_node*, %struct.qtnf_sta_node** %3, align 8
  ret %struct.qtnf_sta_node* %55
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.qtnf_sta_node* @qtnf_sta_list_lookup(%struct.qtnf_sta_list*, i32*) #1

declare dso_local %struct.qtnf_sta_node* @kzalloc(i32, i32) #1

declare dso_local i32 @ether_addr_copy(i32, i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
