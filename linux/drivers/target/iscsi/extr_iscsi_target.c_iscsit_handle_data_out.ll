; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target.c_iscsit_handle_data_out.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target.c_iscsit_handle_data_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_conn = type { i32 }
%struct.iscsi_cmd = type { i32 }
%struct.iscsi_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscsi_conn*, i8*)* @iscsit_handle_data_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iscsit_handle_data_out(%struct.iscsi_conn* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iscsi_conn*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.iscsi_cmd*, align 8
  %7 = alloca %struct.iscsi_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.iscsi_conn* %0, %struct.iscsi_conn** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.iscsi_cmd* null, %struct.iscsi_cmd** %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.iscsi_data*
  store %struct.iscsi_data* %11, %struct.iscsi_data** %7, align 8
  store i32 0, i32* %9, align 4
  %12 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = call i32 @iscsit_check_dataout_hdr(%struct.iscsi_conn* %12, i8* %13, %struct.iscsi_cmd** %6)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %42

18:                                               ; preds = %2
  %19 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %20 = icmp ne %struct.iscsi_cmd* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %42

22:                                               ; preds = %18
  br label %23

23:                                               ; preds = %22
  %24 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %25 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %26 = load %struct.iscsi_data*, %struct.iscsi_data** %7, align 8
  %27 = call i32 @iscsit_get_dataout(%struct.iscsi_conn* %24, %struct.iscsi_cmd* %25, %struct.iscsi_data* %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %23
  %31 = load i32, i32* %8, align 4
  store i32 %31, i32* %3, align 4
  br label %42

32:                                               ; preds = %23
  %33 = load i32, i32* %8, align 4
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  store i32 1, i32* %9, align 4
  br label %36

36:                                               ; preds = %35, %32
  br label %37

37:                                               ; preds = %36
  %38 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %39 = load %struct.iscsi_data*, %struct.iscsi_data** %7, align 8
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @iscsit_check_dataout_payload(%struct.iscsi_cmd* %38, %struct.iscsi_data* %39, i32 %40)
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %37, %30, %21, %17
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @iscsit_check_dataout_hdr(%struct.iscsi_conn*, i8*, %struct.iscsi_cmd**) #1

declare dso_local i32 @iscsit_get_dataout(%struct.iscsi_conn*, %struct.iscsi_cmd*, %struct.iscsi_data*) #1

declare dso_local i32 @iscsit_check_dataout_payload(%struct.iscsi_cmd*, %struct.iscsi_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
