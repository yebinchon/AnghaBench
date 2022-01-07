; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/isci/extr_remote_node_table.c_sci_remote_node_table_allocate_remote_node.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/isci/extr_remote_node_table.c_sci_remote_node_table_allocate_remote_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sci_remote_node_table = type { i32 }

@SCIC_SDS_REMOTE_NODE_CONTEXT_INVALID_INDEX = common dso_local global i64 0, align 8
@SCU_SSP_REMOTE_NODE_COUNT = common dso_local global i64 0, align 8
@SCU_STP_REMOTE_NODE_COUNT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @sci_remote_node_table_allocate_remote_node(%struct.sci_remote_node_table* %0, i64 %1) #0 {
  %3 = alloca %struct.sci_remote_node_table*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.sci_remote_node_table* %0, %struct.sci_remote_node_table** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* @SCIC_SDS_REMOTE_NODE_CONTEXT_INVALID_INDEX, align 8
  store i64 %6, i64* %5, align 8
  %7 = load i64, i64* %4, align 8
  %8 = load i64, i64* @SCU_SSP_REMOTE_NODE_COUNT, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %27

10:                                               ; preds = %2
  %11 = load %struct.sci_remote_node_table*, %struct.sci_remote_node_table** %3, align 8
  %12 = call i64 @sci_remote_node_table_allocate_single_remote_node(%struct.sci_remote_node_table* %11, i32 0)
  store i64 %12, i64* %5, align 8
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* @SCIC_SDS_REMOTE_NODE_CONTEXT_INVALID_INDEX, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %10
  %17 = load %struct.sci_remote_node_table*, %struct.sci_remote_node_table** %3, align 8
  %18 = call i64 @sci_remote_node_table_allocate_single_remote_node(%struct.sci_remote_node_table* %17, i32 1)
  store i64 %18, i64* %5, align 8
  br label %19

19:                                               ; preds = %16, %10
  %20 = load i64, i64* %5, align 8
  %21 = load i64, i64* @SCIC_SDS_REMOTE_NODE_CONTEXT_INVALID_INDEX, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load %struct.sci_remote_node_table*, %struct.sci_remote_node_table** %3, align 8
  %25 = call i64 @sci_remote_node_table_allocate_single_remote_node(%struct.sci_remote_node_table* %24, i32 2)
  store i64 %25, i64* %5, align 8
  br label %26

26:                                               ; preds = %23, %19
  br label %35

27:                                               ; preds = %2
  %28 = load i64, i64* %4, align 8
  %29 = load i64, i64* @SCU_STP_REMOTE_NODE_COUNT, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load %struct.sci_remote_node_table*, %struct.sci_remote_node_table** %3, align 8
  %33 = call i64 @sci_remote_node_table_allocate_triple_remote_node(%struct.sci_remote_node_table* %32, i32 2)
  store i64 %33, i64* %5, align 8
  br label %34

34:                                               ; preds = %31, %27
  br label %35

35:                                               ; preds = %34, %26
  %36 = load i64, i64* %5, align 8
  ret i64 %36
}

declare dso_local i64 @sci_remote_node_table_allocate_single_remote_node(%struct.sci_remote_node_table*, i32) #1

declare dso_local i64 @sci_remote_node_table_allocate_triple_remote_node(%struct.sci_remote_node_table*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
