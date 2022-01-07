; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/isci/extr_remote_node_table.c_sci_remote_node_table_initialize.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/isci/extr_remote_node_table.c_sci_remote_node_table_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sci_remote_node_table = type { i8*, i8*, i32, i32 }

@SCIC_SDS_REMOTE_NODES_PER_DWORD = common dso_local global i32 0, align 4
@SCU_STP_REMOTE_NODE_COUNT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sci_remote_node_table_initialize(%struct.sci_remote_node_table* %0, i32 %1) #0 {
  %3 = alloca %struct.sci_remote_node_table*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.sci_remote_node_table* %0, %struct.sci_remote_node_table** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.sci_remote_node_table*, %struct.sci_remote_node_table** %3, align 8
  %7 = getelementptr inbounds %struct.sci_remote_node_table, %struct.sci_remote_node_table* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @memset(i32 %8, i32 0, i32 4)
  %10 = load %struct.sci_remote_node_table*, %struct.sci_remote_node_table** %3, align 8
  %11 = getelementptr inbounds %struct.sci_remote_node_table, %struct.sci_remote_node_table* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @memset(i32 %12, i32 0, i32 4)
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @SCIC_SDS_REMOTE_NODES_PER_DWORD, align 4
  %16 = sdiv i32 %14, %15
  %17 = sext i32 %16 to i64
  %18 = inttoptr i64 %17 to i8*
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @SCIC_SDS_REMOTE_NODES_PER_DWORD, align 4
  %21 = srem i32 %19, %20
  %22 = icmp ne i32 %21, 0
  %23 = zext i1 %22 to i32
  %24 = sext i32 %23 to i64
  %25 = getelementptr i8, i8* %18, i64 %24
  %26 = load %struct.sci_remote_node_table*, %struct.sci_remote_node_table** %3, align 8
  %27 = getelementptr inbounds %struct.sci_remote_node_table, %struct.sci_remote_node_table* %26, i32 0, i32 1
  store i8* %25, i8** %27, align 8
  store i32 0, i32* %5, align 4
  br label %28

28:                                               ; preds = %36, %2
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %28
  %33 = load %struct.sci_remote_node_table*, %struct.sci_remote_node_table** %3, align 8
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @sci_remote_node_table_set_node_index(%struct.sci_remote_node_table* %33, i32 %34)
  br label %36

36:                                               ; preds = %32
  %37 = load i32, i32* %5, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %5, align 4
  br label %28

39:                                               ; preds = %28
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @SCU_STP_REMOTE_NODE_COUNT, align 4
  %42 = mul nsw i32 %41, 32
  %43 = sdiv i32 %40, %42
  %44 = sext i32 %43 to i64
  %45 = inttoptr i64 %44 to i8*
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* @SCU_STP_REMOTE_NODE_COUNT, align 4
  %48 = mul nsw i32 %47, 32
  %49 = srem i32 %46, %48
  %50 = icmp ne i32 %49, 0
  %51 = zext i1 %50 to i32
  %52 = sext i32 %51 to i64
  %53 = getelementptr i8, i8* %45, i64 %52
  %54 = load %struct.sci_remote_node_table*, %struct.sci_remote_node_table** %3, align 8
  %55 = getelementptr inbounds %struct.sci_remote_node_table, %struct.sci_remote_node_table* %54, i32 0, i32 0
  store i8* %53, i8** %55, align 8
  store i32 0, i32* %5, align 4
  br label %56

56:                                               ; preds = %66, %39
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* @SCU_STP_REMOTE_NODE_COUNT, align 4
  %60 = sdiv i32 %58, %59
  %61 = icmp slt i32 %57, %60
  br i1 %61, label %62, label %69

62:                                               ; preds = %56
  %63 = load %struct.sci_remote_node_table*, %struct.sci_remote_node_table** %3, align 8
  %64 = load i32, i32* %5, align 4
  %65 = call i32 @sci_remote_node_table_set_group_index(%struct.sci_remote_node_table* %63, i32 2, i32 %64)
  br label %66

66:                                               ; preds = %62
  %67 = load i32, i32* %5, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %5, align 4
  br label %56

69:                                               ; preds = %56
  %70 = load i32, i32* %4, align 4
  %71 = load i32, i32* @SCU_STP_REMOTE_NODE_COUNT, align 4
  %72 = srem i32 %70, %71
  %73 = icmp eq i32 %72, 2
  br i1 %73, label %74, label %78

74:                                               ; preds = %69
  %75 = load %struct.sci_remote_node_table*, %struct.sci_remote_node_table** %3, align 8
  %76 = load i32, i32* %5, align 4
  %77 = call i32 @sci_remote_node_table_set_group_index(%struct.sci_remote_node_table* %75, i32 1, i32 %76)
  br label %88

78:                                               ; preds = %69
  %79 = load i32, i32* %4, align 4
  %80 = load i32, i32* @SCU_STP_REMOTE_NODE_COUNT, align 4
  %81 = srem i32 %79, %80
  %82 = icmp eq i32 %81, 1
  br i1 %82, label %83, label %87

83:                                               ; preds = %78
  %84 = load %struct.sci_remote_node_table*, %struct.sci_remote_node_table** %3, align 8
  %85 = load i32, i32* %5, align 4
  %86 = call i32 @sci_remote_node_table_set_group_index(%struct.sci_remote_node_table* %84, i32 0, i32 %85)
  br label %87

87:                                               ; preds = %83, %78
  br label %88

88:                                               ; preds = %87, %74
  ret void
}

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @sci_remote_node_table_set_node_index(%struct.sci_remote_node_table*, i32) #1

declare dso_local i32 @sci_remote_node_table_set_group_index(%struct.sci_remote_node_table*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
