; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_erl1.c_iscsit_create_recovery_datain_values_datasequenceinorder_yes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_erl1.c_iscsit_create_recovery_datain_values_datasequenceinorder_yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_cmd = type { i64, i64, i64, %struct.iscsi_conn* }
%struct.iscsi_conn = type { %struct.TYPE_6__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.iscsi_datain_req = type { i64, i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iscsit_create_recovery_datain_values_datasequenceinorder_yes(%struct.iscsi_cmd* %0, %struct.iscsi_datain_req* %1) #0 {
  %3 = alloca %struct.iscsi_cmd*, align 8
  %4 = alloca %struct.iscsi_datain_req*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.iscsi_conn*, align 8
  store %struct.iscsi_cmd* %0, %struct.iscsi_cmd** %3, align 8
  store %struct.iscsi_datain_req* %1, %struct.iscsi_datain_req** %4, align 8
  store i64 0, i64* %5, align 8
  store i64 0, i64* %6, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  %11 = load %struct.iscsi_datain_req*, %struct.iscsi_datain_req** %4, align 8
  %12 = getelementptr inbounds %struct.iscsi_datain_req, %struct.iscsi_datain_req* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %9, align 8
  %14 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %3, align 8
  %15 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %14, i32 0, i32 3
  %16 = load %struct.iscsi_conn*, %struct.iscsi_conn** %15, align 8
  store %struct.iscsi_conn* %16, %struct.iscsi_conn** %10, align 8
  br label %17

17:                                               ; preds = %88, %2
  %18 = load i64, i64* %9, align 8
  %19 = load i64, i64* %5, align 8
  %20 = add nsw i64 %19, 1
  store i64 %20, i64* %5, align 8
  %21 = icmp sgt i64 %18, %19
  br i1 %21, label %22, label %89

22:                                               ; preds = %17
  %23 = load i64, i64* %6, align 8
  %24 = add nsw i64 %23, 1
  store i64 %24, i64* %6, align 8
  %25 = load %struct.iscsi_datain_req*, %struct.iscsi_datain_req** %4, align 8
  %26 = getelementptr inbounds %struct.iscsi_datain_req, %struct.iscsi_datain_req* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.iscsi_conn*, %struct.iscsi_conn** %10, align 8
  %29 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %28, i32 0, i32 1
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %27, %32
  %34 = load %struct.iscsi_conn*, %struct.iscsi_conn** %10, align 8
  %35 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %34, i32 0, i32 0
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp slt i64 %33, %40
  br i1 %41, label %42, label %63

42:                                               ; preds = %22
  %43 = load %struct.iscsi_conn*, %struct.iscsi_conn** %10, align 8
  %44 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %43, i32 0, i32 1
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.iscsi_datain_req*, %struct.iscsi_datain_req** %4, align 8
  %49 = getelementptr inbounds %struct.iscsi_datain_req, %struct.iscsi_datain_req* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = sext i32 %50 to i64
  %52 = add nsw i64 %51, %47
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %49, align 8
  %54 = load %struct.iscsi_conn*, %struct.iscsi_conn** %10, align 8
  %55 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %54, i32 0, i32 1
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.iscsi_datain_req*, %struct.iscsi_datain_req** %4, align 8
  %60 = getelementptr inbounds %struct.iscsi_datain_req, %struct.iscsi_datain_req* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = add nsw i64 %61, %58
  store i64 %62, i64* %60, align 8
  br label %88

63:                                               ; preds = %22
  %64 = load %struct.iscsi_conn*, %struct.iscsi_conn** %10, align 8
  %65 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %64, i32 0, i32 0
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.iscsi_datain_req*, %struct.iscsi_datain_req** %4, align 8
  %72 = getelementptr inbounds %struct.iscsi_datain_req, %struct.iscsi_datain_req* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = sub nsw i64 %70, %73
  %75 = load %struct.iscsi_datain_req*, %struct.iscsi_datain_req** %4, align 8
  %76 = getelementptr inbounds %struct.iscsi_datain_req, %struct.iscsi_datain_req* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = sext i32 %77 to i64
  %79 = add nsw i64 %78, %74
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %76, align 8
  %81 = load %struct.iscsi_datain_req*, %struct.iscsi_datain_req** %4, align 8
  %82 = getelementptr inbounds %struct.iscsi_datain_req, %struct.iscsi_datain_req* %81, i32 0, i32 1
  store i64 0, i64* %82, align 8
  %83 = load i64, i64* %6, align 8
  %84 = load i64, i64* %7, align 8
  %85 = add nsw i64 %84, %83
  store i64 %85, i64* %7, align 8
  store i64 0, i64* %6, align 8
  %86 = load i64, i64* %8, align 8
  %87 = add nsw i64 %86, 1
  store i64 %87, i64* %8, align 8
  br label %88

88:                                               ; preds = %63, %42
  br label %17

89:                                               ; preds = %17
  %90 = load %struct.iscsi_conn*, %struct.iscsi_conn** %10, align 8
  %91 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %90, i32 0, i32 0
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %108, label %98

98:                                               ; preds = %89
  %99 = load i64, i64* %8, align 8
  %100 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %3, align 8
  %101 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %100, i32 0, i32 2
  store i64 %99, i64* %101, align 8
  %102 = load i64, i64* %7, align 8
  %103 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %3, align 8
  %104 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %103, i32 0, i32 1
  store i64 %102, i64* %104, align 8
  %105 = load i64, i64* %6, align 8
  %106 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %3, align 8
  %107 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %106, i32 0, i32 0
  store i64 %105, i64* %107, align 8
  br label %108

108:                                              ; preds = %98, %89
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
