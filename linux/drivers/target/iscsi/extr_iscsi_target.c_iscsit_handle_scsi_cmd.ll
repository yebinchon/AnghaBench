; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target.c_iscsit_handle_scsi_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target.c_iscsit_handle_scsi_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_conn = type { i32 }
%struct.iscsi_cmd = type { i32 }
%struct.iscsi_scsi_req = type { i32 }

@ISCSI_REASON_BOOKMARK_NO_RESOURCES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscsi_conn*, %struct.iscsi_cmd*, i8*)* @iscsit_handle_scsi_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iscsit_handle_scsi_cmd(%struct.iscsi_conn* %0, %struct.iscsi_cmd* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iscsi_conn*, align 8
  %6 = alloca %struct.iscsi_cmd*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.iscsi_scsi_req*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.iscsi_conn* %0, %struct.iscsi_conn** %5, align 8
  store %struct.iscsi_cmd* %1, %struct.iscsi_cmd** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = bitcast i8* %12 to %struct.iscsi_scsi_req*
  store %struct.iscsi_scsi_req* %13, %struct.iscsi_scsi_req** %8, align 8
  store i32 0, i32* %11, align 4
  %14 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %15 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = call i32 @iscsit_setup_scsi_cmd(%struct.iscsi_conn* %14, %struct.iscsi_cmd* %15, i8* %16)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %56

21:                                               ; preds = %3
  %22 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %23 = call i64 @iscsit_allocate_iovecs(%struct.iscsi_cmd* %22)
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %21
  %26 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %27 = load i32, i32* @ISCSI_REASON_BOOKMARK_NO_RESOURCES, align 4
  %28 = load i8*, i8** %7, align 8
  %29 = call i32 @iscsit_reject_cmd(%struct.iscsi_cmd* %26, i32 %27, i8* %28)
  store i32 %29, i32* %4, align 4
  br label %56

30:                                               ; preds = %21
  %31 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %32 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %10, align 4
  %34 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %35 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %36 = load %struct.iscsi_scsi_req*, %struct.iscsi_scsi_req** %8, align 8
  %37 = call i32 @iscsit_process_scsi_cmd(%struct.iscsi_conn* %34, %struct.iscsi_cmd* %35, %struct.iscsi_scsi_req* %36)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %30
  %41 = load i32, i32* %9, align 4
  store i32 %41, i32* %4, align 4
  br label %56

42:                                               ; preds = %30
  %43 = load i32, i32* %9, align 4
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  store i32 1, i32* %11, align 4
  br label %46

46:                                               ; preds = %45, %42
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %10, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %47
  store i32 0, i32* %4, align 4
  br label %56

51:                                               ; preds = %47
  %52 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %53 = load %struct.iscsi_scsi_req*, %struct.iscsi_scsi_req** %8, align 8
  %54 = load i32, i32* %11, align 4
  %55 = call i32 @iscsit_get_immediate_data(%struct.iscsi_cmd* %52, %struct.iscsi_scsi_req* %53, i32 %54)
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %51, %50, %40, %25, %20
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i32 @iscsit_setup_scsi_cmd(%struct.iscsi_conn*, %struct.iscsi_cmd*, i8*) #1

declare dso_local i64 @iscsit_allocate_iovecs(%struct.iscsi_cmd*) #1

declare dso_local i32 @iscsit_reject_cmd(%struct.iscsi_cmd*, i32, i8*) #1

declare dso_local i32 @iscsit_process_scsi_cmd(%struct.iscsi_conn*, %struct.iscsi_cmd*, %struct.iscsi_scsi_req*) #1

declare dso_local i32 @iscsit_get_immediate_data(%struct.iscsi_cmd*, %struct.iscsi_scsi_req*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
