; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target.c_iscsit_check_dataout_hdr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target.c_iscsit_check_dataout_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_conn = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.iscsi_cmd = type { i32 }
%struct.iscsi_data = type { i32, i32 }

@.str = private unnamed_addr constant [36 x i8] c"DataOUT payload is ZERO, ignoring.\0A\00", align 1
@.str.1 = private unnamed_addr constant [68 x i8] c"DataSegmentLength: %u is greater than MaxXmitDataSegmentLength: %u\0A\00", align 1
@ISCSI_REASON_PROTOCOL_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iscsit_check_dataout_hdr(%struct.iscsi_conn* %0, i8* %1, %struct.iscsi_cmd** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iscsi_conn*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.iscsi_cmd**, align 8
  %8 = alloca %struct.iscsi_data*, align 8
  %9 = alloca %struct.iscsi_cmd*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.iscsi_conn* %0, %struct.iscsi_conn** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.iscsi_cmd** %2, %struct.iscsi_cmd*** %7, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.iscsi_data*
  store %struct.iscsi_data* %14, %struct.iscsi_data** %8, align 8
  %15 = load %struct.iscsi_data*, %struct.iscsi_data** %8, align 8
  %16 = getelementptr inbounds %struct.iscsi_data, %struct.iscsi_data* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @ntoh24(i32 %17)
  store i32 %18, i32* %10, align 4
  store i32 0, i32* %12, align 4
  %19 = load i32, i32* %10, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %3
  %22 = call i32 @pr_warn_ratelimited(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %66

23:                                               ; preds = %3
  %24 = load i32, i32* %10, align 4
  %25 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %26 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp sgt i32 %24, %29
  br i1 %30, label %31, label %43

31:                                               ; preds = %23
  %32 = load i32, i32* %10, align 4
  %33 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %34 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @pr_err_ratelimited(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.1, i64 0, i64 0), i32 %32, i32 %37)
  %39 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %40 = load i32, i32* @ISCSI_REASON_PROTOCOL_ERROR, align 4
  %41 = load i8*, i8** %6, align 8
  %42 = call i32 @iscsit_add_reject(%struct.iscsi_conn* %39, i32 %40, i8* %41)
  store i32 %42, i32* %4, align 4
  br label %66

43:                                               ; preds = %23
  %44 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %45 = load %struct.iscsi_data*, %struct.iscsi_data** %8, align 8
  %46 = getelementptr inbounds %struct.iscsi_data, %struct.iscsi_data* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %10, align 4
  %49 = call %struct.iscsi_cmd* @iscsit_find_cmd_from_itt_or_dump(%struct.iscsi_conn* %44, i32 %47, i32 %48)
  store %struct.iscsi_cmd* %49, %struct.iscsi_cmd** %9, align 8
  %50 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %9, align 8
  %51 = icmp ne %struct.iscsi_cmd* %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %43
  store i32 0, i32* %4, align 4
  br label %66

53:                                               ; preds = %43
  %54 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %55 = load i8*, i8** %6, align 8
  %56 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %9, align 8
  %57 = load i32, i32* %10, align 4
  %58 = call i32 @__iscsit_check_dataout_hdr(%struct.iscsi_conn* %54, i8* %55, %struct.iscsi_cmd* %56, i32 %57, i32* %12)
  store i32 %58, i32* %11, align 4
  %59 = load i32, i32* %12, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %53
  %62 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %9, align 8
  %63 = load %struct.iscsi_cmd**, %struct.iscsi_cmd*** %7, align 8
  store %struct.iscsi_cmd* %62, %struct.iscsi_cmd** %63, align 8
  br label %64

64:                                               ; preds = %61, %53
  %65 = load i32, i32* %11, align 4
  store i32 %65, i32* %4, align 4
  br label %66

66:                                               ; preds = %64, %52, %31, %21
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i32 @ntoh24(i32) #1

declare dso_local i32 @pr_warn_ratelimited(i8*) #1

declare dso_local i32 @pr_err_ratelimited(i8*, i32, i32) #1

declare dso_local i32 @iscsit_add_reject(%struct.iscsi_conn*, i32, i8*) #1

declare dso_local %struct.iscsi_cmd* @iscsit_find_cmd_from_itt_or_dump(%struct.iscsi_conn*, i32, i32) #1

declare dso_local i32 @__iscsit_check_dataout_hdr(%struct.iscsi_conn*, i8*, %struct.iscsi_cmd*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
