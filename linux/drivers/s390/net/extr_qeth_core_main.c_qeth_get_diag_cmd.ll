; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_get_diag_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_get_diag_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_cmd_buffer = type { i32 }
%struct.qeth_card = type { i32 }
%struct.qeth_ipacmd_diagass = type { i32, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.qeth_ipacmd_diagass }

@IPA_CMD_SET_DIAG_ASS = common dso_local global i32 0, align 4
@QETH_PROT_NONE = common dso_local global i32 0, align 4
@DIAG_HDR_LEN = common dso_local global i64 0, align 8
@DIAG_SUB_HDR_LEN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.qeth_cmd_buffer* @qeth_get_diag_cmd(%struct.qeth_card* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.qeth_cmd_buffer*, align 8
  %5 = alloca %struct.qeth_card*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.qeth_ipacmd_diagass*, align 8
  %9 = alloca %struct.qeth_cmd_buffer*, align 8
  store %struct.qeth_card* %0, %struct.qeth_card** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %11 = load i32, i32* @IPA_CMD_SET_DIAG_ASS, align 4
  %12 = load i32, i32* @QETH_PROT_NONE, align 4
  %13 = load i64, i64* @DIAG_HDR_LEN, align 8
  %14 = load i32, i32* %7, align 4
  %15 = zext i32 %14 to i64
  %16 = add nsw i64 %13, %15
  %17 = call %struct.qeth_cmd_buffer* @qeth_ipa_alloc_cmd(%struct.qeth_card* %10, i32 %11, i32 %12, i64 %16)
  store %struct.qeth_cmd_buffer* %17, %struct.qeth_cmd_buffer** %9, align 8
  %18 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %9, align 8
  %19 = icmp ne %struct.qeth_cmd_buffer* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %3
  store %struct.qeth_cmd_buffer* null, %struct.qeth_cmd_buffer** %4, align 8
  br label %36

21:                                               ; preds = %3
  %22 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %9, align 8
  %23 = call %struct.TYPE_4__* @__ipa_cmd(%struct.qeth_cmd_buffer* %22)
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  store %struct.qeth_ipacmd_diagass* %25, %struct.qeth_ipacmd_diagass** %8, align 8
  %26 = load i64, i64* @DIAG_SUB_HDR_LEN, align 8
  %27 = load i32, i32* %7, align 4
  %28 = zext i32 %27 to i64
  %29 = add nsw i64 %26, %28
  %30 = load %struct.qeth_ipacmd_diagass*, %struct.qeth_ipacmd_diagass** %8, align 8
  %31 = getelementptr inbounds %struct.qeth_ipacmd_diagass, %struct.qeth_ipacmd_diagass* %30, i32 0, i32 1
  store i64 %29, i64* %31, align 8
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.qeth_ipacmd_diagass*, %struct.qeth_ipacmd_diagass** %8, align 8
  %34 = getelementptr inbounds %struct.qeth_ipacmd_diagass, %struct.qeth_ipacmd_diagass* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %9, align 8
  store %struct.qeth_cmd_buffer* %35, %struct.qeth_cmd_buffer** %4, align 8
  br label %36

36:                                               ; preds = %21, %20
  %37 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %4, align 8
  ret %struct.qeth_cmd_buffer* %37
}

declare dso_local %struct.qeth_cmd_buffer* @qeth_ipa_alloc_cmd(%struct.qeth_card*, i32, i32, i64) #1

declare dso_local %struct.TYPE_4__* @__ipa_cmd(%struct.qeth_cmd_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
