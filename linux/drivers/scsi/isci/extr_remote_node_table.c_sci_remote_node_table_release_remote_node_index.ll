; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/isci/extr_remote_node_table.c_sci_remote_node_table_release_remote_node_index.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/isci/extr_remote_node_table.c_sci_remote_node_table_release_remote_node_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sci_remote_node_table = type { i32 }

@SCU_SSP_REMOTE_NODE_COUNT = common dso_local global i64 0, align 8
@SCU_STP_REMOTE_NODE_COUNT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sci_remote_node_table_release_remote_node_index(%struct.sci_remote_node_table* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.sci_remote_node_table*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.sci_remote_node_table* %0, %struct.sci_remote_node_table** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i64, i64* %5, align 8
  %8 = load i64, i64* @SCU_SSP_REMOTE_NODE_COUNT, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %14

10:                                               ; preds = %3
  %11 = load %struct.sci_remote_node_table*, %struct.sci_remote_node_table** %4, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @sci_remote_node_table_release_single_remote_node(%struct.sci_remote_node_table* %11, i32 %12)
  br label %23

14:                                               ; preds = %3
  %15 = load i64, i64* %5, align 8
  %16 = load i64, i64* @SCU_STP_REMOTE_NODE_COUNT, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = load %struct.sci_remote_node_table*, %struct.sci_remote_node_table** %4, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @sci_remote_node_table_release_triple_remote_node(%struct.sci_remote_node_table* %19, i32 %20)
  br label %22

22:                                               ; preds = %18, %14
  br label %23

23:                                               ; preds = %22, %10
  ret void
}

declare dso_local i32 @sci_remote_node_table_release_single_remote_node(%struct.sci_remote_node_table*, i32) #1

declare dso_local i32 @sci_remote_node_table_release_triple_remote_node(%struct.sci_remote_node_table*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
