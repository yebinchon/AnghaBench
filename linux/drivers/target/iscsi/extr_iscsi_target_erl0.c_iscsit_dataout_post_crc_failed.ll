; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_erl0.c_iscsit_dataout_post_crc_failed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_erl0.c_iscsit_dataout_post_crc_failed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_cmd = type { %struct.iscsi_pdu*, %struct.iscsi_conn* }
%struct.iscsi_pdu = type { i32 }
%struct.iscsi_conn = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.iscsi_data = type { i32, i32 }

@DATAOUT_CANNOT_RECOVER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscsi_cmd*, i8*)* @iscsit_dataout_post_crc_failed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iscsit_dataout_post_crc_failed(%struct.iscsi_cmd* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iscsi_cmd*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.iscsi_conn*, align 8
  %7 = alloca %struct.iscsi_pdu*, align 8
  %8 = alloca %struct.iscsi_data*, align 8
  %9 = alloca i32, align 4
  store %struct.iscsi_cmd* %0, %struct.iscsi_cmd** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %11 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %10, i32 0, i32 1
  %12 = load %struct.iscsi_conn*, %struct.iscsi_conn** %11, align 8
  store %struct.iscsi_conn* %12, %struct.iscsi_conn** %6, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.iscsi_data*
  store %struct.iscsi_data* %14, %struct.iscsi_data** %8, align 8
  %15 = load %struct.iscsi_data*, %struct.iscsi_data** %8, align 8
  %16 = getelementptr inbounds %struct.iscsi_data, %struct.iscsi_data* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @ntoh24(i32 %17)
  store i32 %18, i32* %9, align 4
  %19 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  %20 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %2
  br label %45

28:                                               ; preds = %2
  %29 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %30 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %29, i32 0, i32 0
  %31 = load %struct.iscsi_pdu*, %struct.iscsi_pdu** %30, align 8
  store %struct.iscsi_pdu* %31, %struct.iscsi_pdu** %7, align 8
  %32 = load %struct.iscsi_pdu*, %struct.iscsi_pdu** %7, align 8
  %33 = getelementptr inbounds %struct.iscsi_pdu, %struct.iscsi_pdu* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  switch i32 %34, label %42 [
    i32 129, label %35
    i32 130, label %38
    i32 128, label %39
  ]

35:                                               ; preds = %28
  %36 = load %struct.iscsi_pdu*, %struct.iscsi_pdu** %7, align 8
  %37 = getelementptr inbounds %struct.iscsi_pdu, %struct.iscsi_pdu* %36, i32 0, i32 0
  store i32 130, i32* %37, align 4
  br label %44

38:                                               ; preds = %28
  br label %44

39:                                               ; preds = %28
  %40 = load %struct.iscsi_pdu*, %struct.iscsi_pdu** %7, align 8
  %41 = getelementptr inbounds %struct.iscsi_pdu, %struct.iscsi_pdu* %40, i32 0, i32 0
  store i32 130, i32* %41, align 4
  br label %44

42:                                               ; preds = %28
  %43 = load i32, i32* @DATAOUT_CANNOT_RECOVER, align 4
  store i32 %43, i32* %3, align 4
  br label %53

44:                                               ; preds = %39, %38, %35
  br label %45

45:                                               ; preds = %44, %27
  %46 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %47 = load %struct.iscsi_data*, %struct.iscsi_data** %8, align 8
  %48 = getelementptr inbounds %struct.iscsi_data, %struct.iscsi_data* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @be32_to_cpu(i32 %49)
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @iscsit_recover_dataout_sequence(%struct.iscsi_cmd* %46, i32 %50, i32 %51)
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %45, %42
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @ntoh24(i32) #1

declare dso_local i32 @iscsit_recover_dataout_sequence(%struct.iscsi_cmd*, i32, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
