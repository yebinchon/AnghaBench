; ModuleID = '/home/carl/AnghaBench/linux/fs/dlm/extr_config.c_node_nodeid_store.c'
source_filename = "/home/carl/AnghaBench/linux/fs/dlm/extr_config.c_node_nodeid_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_item = type { i32 }
%struct.dlm_node = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.config_item*, i8*, i64)* @node_nodeid_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @node_nodeid_store(%struct.config_item* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.config_item*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.dlm_node*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.config_item* %0, %struct.config_item** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.config_item*, %struct.config_item** %5, align 8
  %12 = call %struct.dlm_node* @config_item_to_node(%struct.config_item* %11)
  store %struct.dlm_node* %12, %struct.dlm_node** %8, align 8
  store i32 0, i32* %9, align 4
  %13 = load i8*, i8** %6, align 8
  %14 = load %struct.dlm_node*, %struct.dlm_node** %8, align 8
  %15 = getelementptr inbounds %struct.dlm_node, %struct.dlm_node* %14, i32 0, i32 1
  %16 = call i32 @kstrtoint(i8* %13, i32 0, i32* %15)
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* %10, align 4
  store i32 %20, i32* %4, align 4
  br label %31

21:                                               ; preds = %3
  %22 = load %struct.dlm_node*, %struct.dlm_node** %8, align 8
  %23 = getelementptr inbounds %struct.dlm_node, %struct.dlm_node* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @dlm_comm_seq(i32 %24, i32* %9)
  %26 = load i32, i32* %9, align 4
  %27 = load %struct.dlm_node*, %struct.dlm_node** %8, align 8
  %28 = getelementptr inbounds %struct.dlm_node, %struct.dlm_node* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load i64, i64* %7, align 8
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %4, align 4
  br label %31

31:                                               ; preds = %21, %19
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

declare dso_local %struct.dlm_node* @config_item_to_node(%struct.config_item*) #1

declare dso_local i32 @kstrtoint(i8*, i32, i32*) #1

declare dso_local i32 @dlm_comm_seq(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
