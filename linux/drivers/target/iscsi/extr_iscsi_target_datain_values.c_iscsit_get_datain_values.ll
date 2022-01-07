; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_datain_values.c_iscsit_get_datain_values.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_datain_values.c_iscsit_get_datain_values.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_datain_req = type { i32 }
%struct.iscsi_cmd = type { %struct.iscsi_conn* }
%struct.iscsi_conn = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i64 }
%struct.iscsi_datain = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.iscsi_datain_req* @iscsit_get_datain_values(%struct.iscsi_cmd* %0, %struct.iscsi_datain* %1) #0 {
  %3 = alloca %struct.iscsi_datain_req*, align 8
  %4 = alloca %struct.iscsi_cmd*, align 8
  %5 = alloca %struct.iscsi_datain*, align 8
  %6 = alloca %struct.iscsi_conn*, align 8
  store %struct.iscsi_cmd* %0, %struct.iscsi_cmd** %4, align 8
  store %struct.iscsi_datain* %1, %struct.iscsi_datain** %5, align 8
  %7 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %8 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %7, i32 0, i32 0
  %9 = load %struct.iscsi_conn*, %struct.iscsi_conn** %8, align 8
  store %struct.iscsi_conn* %9, %struct.iscsi_conn** %6, align 8
  %10 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  %11 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %31

18:                                               ; preds = %2
  %19 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  %20 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %18
  %28 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %29 = load %struct.iscsi_datain*, %struct.iscsi_datain** %5, align 8
  %30 = call %struct.iscsi_datain_req* @iscsit_set_datain_values_yes_and_yes(%struct.iscsi_cmd* %28, %struct.iscsi_datain* %29)
  store %struct.iscsi_datain_req* %30, %struct.iscsi_datain_req** %3, align 8
  br label %101

31:                                               ; preds = %18, %2
  %32 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  %33 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %53, label %40

40:                                               ; preds = %31
  %41 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  %42 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %40
  %50 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %51 = load %struct.iscsi_datain*, %struct.iscsi_datain** %5, align 8
  %52 = call %struct.iscsi_datain_req* @iscsit_set_datain_values_no_and_yes(%struct.iscsi_cmd* %50, %struct.iscsi_datain* %51)
  store %struct.iscsi_datain_req* %52, %struct.iscsi_datain_req** %3, align 8
  br label %101

53:                                               ; preds = %40, %31
  %54 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  %55 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %54, i32 0, i32 0
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %75

62:                                               ; preds = %53
  %63 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  %64 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %63, i32 0, i32 0
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %75, label %71

71:                                               ; preds = %62
  %72 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %73 = load %struct.iscsi_datain*, %struct.iscsi_datain** %5, align 8
  %74 = call %struct.iscsi_datain_req* @iscsit_set_datain_values_yes_and_no(%struct.iscsi_cmd* %72, %struct.iscsi_datain* %73)
  store %struct.iscsi_datain_req* %74, %struct.iscsi_datain_req** %3, align 8
  br label %101

75:                                               ; preds = %62, %53
  %76 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  %77 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %76, i32 0, i32 0
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %97, label %84

84:                                               ; preds = %75
  %85 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  %86 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %85, i32 0, i32 0
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %97, label %93

93:                                               ; preds = %84
  %94 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %95 = load %struct.iscsi_datain*, %struct.iscsi_datain** %5, align 8
  %96 = call %struct.iscsi_datain_req* @iscsit_set_datain_values_no_and_no(%struct.iscsi_cmd* %94, %struct.iscsi_datain* %95)
  store %struct.iscsi_datain_req* %96, %struct.iscsi_datain_req** %3, align 8
  br label %101

97:                                               ; preds = %84, %75
  br label %98

98:                                               ; preds = %97
  br label %99

99:                                               ; preds = %98
  br label %100

100:                                              ; preds = %99
  store %struct.iscsi_datain_req* null, %struct.iscsi_datain_req** %3, align 8
  br label %101

101:                                              ; preds = %100, %93, %71, %49, %27
  %102 = load %struct.iscsi_datain_req*, %struct.iscsi_datain_req** %3, align 8
  ret %struct.iscsi_datain_req* %102
}

declare dso_local %struct.iscsi_datain_req* @iscsit_set_datain_values_yes_and_yes(%struct.iscsi_cmd*, %struct.iscsi_datain*) #1

declare dso_local %struct.iscsi_datain_req* @iscsit_set_datain_values_no_and_yes(%struct.iscsi_cmd*, %struct.iscsi_datain*) #1

declare dso_local %struct.iscsi_datain_req* @iscsit_set_datain_values_yes_and_no(%struct.iscsi_cmd*, %struct.iscsi_datain*) #1

declare dso_local %struct.iscsi_datain_req* @iscsit_set_datain_values_no_and_no(%struct.iscsi_cmd*, %struct.iscsi_datain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
