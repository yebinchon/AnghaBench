; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/isci/extr_remote_node_table.c_sci_remote_node_table_clear_group_index.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/isci/extr_remote_node_table.c_sci_remote_node_table_clear_group_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sci_remote_node_table = type { i32, i32** }

@SCU_STP_REMOTE_NODE_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sci_remote_node_table*, i32, i32)* @sci_remote_node_table_clear_group_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sci_remote_node_table_clear_group_index(%struct.sci_remote_node_table* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.sci_remote_node_table*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.sci_remote_node_table* %0, %struct.sci_remote_node_table** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @SCU_STP_REMOTE_NODE_COUNT, align 4
  %12 = icmp sge i32 %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @BUG_ON(i32 %13)
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.sci_remote_node_table*, %struct.sci_remote_node_table** %4, align 8
  %17 = getelementptr inbounds %struct.sci_remote_node_table, %struct.sci_remote_node_table* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = mul nsw i32 %18, 32
  %20 = icmp sge i32 %15, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @BUG_ON(i32 %21)
  %23 = load i32, i32* %6, align 4
  %24 = sdiv i32 %23, 32
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %6, align 4
  %26 = srem i32 %25, 32
  store i32 %26, i32* %8, align 4
  %27 = load %struct.sci_remote_node_table*, %struct.sci_remote_node_table** %4, align 8
  %28 = getelementptr inbounds %struct.sci_remote_node_table, %struct.sci_remote_node_table* %27, i32 0, i32 1
  %29 = load i32**, i32*** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32*, i32** %29, i64 %31
  %33 = load i32*, i32** %32, align 8
  store i32* %33, i32** %9, align 8
  %34 = load i32*, i32** %9, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %8, align 4
  %40 = shl i32 1, %39
  %41 = xor i32 %40, -1
  %42 = and i32 %38, %41
  %43 = load i32*, i32** %9, align 8
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  store i32 %42, i32* %46, align 4
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
