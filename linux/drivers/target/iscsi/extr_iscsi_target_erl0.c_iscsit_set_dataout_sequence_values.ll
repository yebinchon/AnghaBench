; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_erl0.c_iscsit_set_dataout_sequence_values.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_erl0.c_iscsit_set_dataout_sequence_values.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_cmd = type { i64, i64, i64, %struct.TYPE_4__, i64, %struct.iscsi_conn* }
%struct.TYPE_4__ = type { i64 }
%struct.iscsi_conn = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iscsit_set_dataout_sequence_values(%struct.iscsi_cmd* %0) #0 {
  %2 = alloca %struct.iscsi_cmd*, align 8
  %3 = alloca %struct.iscsi_conn*, align 8
  store %struct.iscsi_cmd* %0, %struct.iscsi_cmd** %2, align 8
  %4 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %2, align 8
  %5 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %4, i32 0, i32 5
  %6 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  store %struct.iscsi_conn* %6, %struct.iscsi_conn** %3, align 8
  %7 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %2, align 8
  %8 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %7, i32 0, i32 4
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %31

11:                                               ; preds = %1
  %12 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %2, align 8
  %13 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %2, align 8
  %16 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %15, i32 0, i32 0
  store i64 %14, i64* %16, align 8
  %17 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %2, align 8
  %18 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %22 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %21, i32 0, i32 0
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @min(i64 %20, i32 %27)
  %29 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %2, align 8
  %30 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %29, i32 0, i32 2
  store i64 %28, i64* %30, align 8
  br label %133

31:                                               ; preds = %1
  %32 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %33 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %32, i32 0, i32 0
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %31
  br label %133

41:                                               ; preds = %31
  %42 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %2, align 8
  %43 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %90, label %46

46:                                               ; preds = %41
  %47 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %2, align 8
  %48 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %90, label %51

51:                                               ; preds = %46
  %52 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %2, align 8
  %53 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %2, align 8
  %56 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %55, i32 0, i32 0
  store i64 %54, i64* %56, align 8
  %57 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %2, align 8
  %58 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %57, i32 0, i32 3
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %62 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %61, i32 0, i32 0
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp sgt i64 %60, %67
  br i1 %68, label %69, label %81

69:                                               ; preds = %51
  %70 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %2, align 8
  %71 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %74 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %73, i32 0, i32 0
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = add nsw i64 %72, %79
  br label %86

81:                                               ; preds = %51
  %82 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %2, align 8
  %83 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %82, i32 0, i32 3
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  br label %86

86:                                               ; preds = %81, %69
  %87 = phi i64 [ %80, %69 ], [ %85, %81 ]
  %88 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %2, align 8
  %89 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %88, i32 0, i32 2
  store i64 %87, i64* %89, align 8
  br label %133

90:                                               ; preds = %46, %41
  %91 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %2, align 8
  %92 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %2, align 8
  %95 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %94, i32 0, i32 0
  store i64 %93, i64* %95, align 8
  %96 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %2, align 8
  %97 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %100 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %99, i32 0, i32 0
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = add nsw i64 %98, %105
  %107 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %2, align 8
  %108 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %107, i32 0, i32 3
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = icmp sge i64 %106, %110
  br i1 %111, label %112, label %117

112:                                              ; preds = %90
  %113 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %2, align 8
  %114 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %113, i32 0, i32 3
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  br label %129

117:                                              ; preds = %90
  %118 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %2, align 8
  %119 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %118, i32 0, i32 2
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %122 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %121, i32 0, i32 0
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 0
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = add nsw i64 %120, %127
  br label %129

129:                                              ; preds = %117, %112
  %130 = phi i64 [ %116, %112 ], [ %128, %117 ]
  %131 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %2, align 8
  %132 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %131, i32 0, i32 2
  store i64 %130, i64* %132, align 8
  br label %133

133:                                              ; preds = %11, %40, %129, %86
  ret void
}

declare dso_local i64 @min(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
