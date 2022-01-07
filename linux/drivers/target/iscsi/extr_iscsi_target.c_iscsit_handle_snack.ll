; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target.c_iscsit_handle_snack.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target.c_iscsit_handle_snack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_conn = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.iscsi_snack = type { i32, i32, i32, i32, i32, i32 }

@ISCSI_FLAG_CMD_FINAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [113 x i8] c"Got ISCSI_INIT_SNACK, ITT: 0x%08x, ExpStatSN: 0x%08x, Type: 0x%02x, BegRun: 0x%08x, RunLength: 0x%08x, CID: %hu\0A\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"Initiator sent SNACK request while in ErrorRecoveryLevel=0.\0A\00", align 1
@ISCSI_REASON_PROTOCOL_ERROR = common dso_local global i32 0, align 4
@ISCSI_FLAG_SNACK_TYPE_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"R-Data SNACK Not Supported.\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"Unknown SNACK type 0x%02x, protocol error.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iscsit_handle_snack(%struct.iscsi_conn* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iscsi_conn*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.iscsi_snack*, align 8
  store %struct.iscsi_conn* %0, %struct.iscsi_conn** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = bitcast i8* %7 to %struct.iscsi_snack*
  store %struct.iscsi_snack* %8, %struct.iscsi_snack** %6, align 8
  %9 = load i32, i32* @ISCSI_FLAG_CMD_FINAL, align 4
  %10 = xor i32 %9, -1
  %11 = load %struct.iscsi_snack*, %struct.iscsi_snack** %6, align 8
  %12 = getelementptr inbounds %struct.iscsi_snack, %struct.iscsi_snack* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = and i32 %13, %10
  store i32 %14, i32* %12, align 4
  %15 = load %struct.iscsi_snack*, %struct.iscsi_snack** %6, align 8
  %16 = getelementptr inbounds %struct.iscsi_snack, %struct.iscsi_snack* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.iscsi_snack*, %struct.iscsi_snack** %6, align 8
  %19 = getelementptr inbounds %struct.iscsi_snack, %struct.iscsi_snack* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.iscsi_snack*, %struct.iscsi_snack** %6, align 8
  %22 = getelementptr inbounds %struct.iscsi_snack, %struct.iscsi_snack* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.iscsi_snack*, %struct.iscsi_snack** %6, align 8
  %25 = getelementptr inbounds %struct.iscsi_snack, %struct.iscsi_snack* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.iscsi_snack*, %struct.iscsi_snack** %6, align 8
  %28 = getelementptr inbounds %struct.iscsi_snack, %struct.iscsi_snack* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %31 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @pr_debug(i8* getelementptr inbounds ([113 x i8], [113 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %20, i32 %23, i32 %26, i32 %29, i32 %32)
  %34 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %35 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %2
  %43 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0))
  %44 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %45 = load i32, i32* @ISCSI_REASON_PROTOCOL_ERROR, align 4
  %46 = load i8*, i8** %5, align 8
  %47 = call i32 @iscsit_add_reject(%struct.iscsi_conn* %44, i32 %45, i8* %46)
  store i32 %47, i32* %3, align 4
  br label %122

48:                                               ; preds = %2
  %49 = load %struct.iscsi_snack*, %struct.iscsi_snack** %6, align 8
  %50 = getelementptr inbounds %struct.iscsi_snack, %struct.iscsi_snack* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @ISCSI_FLAG_SNACK_TYPE_MASK, align 4
  %53 = and i32 %51, %52
  switch i32 %53, label %112 [
    i32 0, label %54
    i32 128, label %73
    i32 130, label %91
    i32 129, label %106
  ]

54:                                               ; preds = %48
  %55 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %56 = load i8*, i8** %5, align 8
  %57 = load %struct.iscsi_snack*, %struct.iscsi_snack** %6, align 8
  %58 = getelementptr inbounds %struct.iscsi_snack, %struct.iscsi_snack* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.iscsi_snack*, %struct.iscsi_snack** %6, align 8
  %61 = getelementptr inbounds %struct.iscsi_snack, %struct.iscsi_snack* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @be32_to_cpu(i32 %62)
  %64 = load %struct.iscsi_snack*, %struct.iscsi_snack** %6, align 8
  %65 = getelementptr inbounds %struct.iscsi_snack, %struct.iscsi_snack* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @be32_to_cpu(i32 %66)
  %68 = load %struct.iscsi_snack*, %struct.iscsi_snack** %6, align 8
  %69 = getelementptr inbounds %struct.iscsi_snack, %struct.iscsi_snack* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @be32_to_cpu(i32 %70)
  %72 = call i32 @iscsit_handle_recovery_datain_or_r2t(%struct.iscsi_conn* %55, i8* %56, i32 %59, i32 %63, i32 %67, i32 %71)
  store i32 %72, i32* %3, align 4
  br label %122

73:                                               ; preds = %48
  %74 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %75 = load %struct.iscsi_snack*, %struct.iscsi_snack** %6, align 8
  %76 = getelementptr inbounds %struct.iscsi_snack, %struct.iscsi_snack* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.iscsi_snack*, %struct.iscsi_snack** %6, align 8
  %79 = getelementptr inbounds %struct.iscsi_snack, %struct.iscsi_snack* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @be32_to_cpu(i32 %80)
  %82 = load %struct.iscsi_snack*, %struct.iscsi_snack** %6, align 8
  %83 = getelementptr inbounds %struct.iscsi_snack, %struct.iscsi_snack* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @be32_to_cpu(i32 %84)
  %86 = load %struct.iscsi_snack*, %struct.iscsi_snack** %6, align 8
  %87 = getelementptr inbounds %struct.iscsi_snack, %struct.iscsi_snack* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @be32_to_cpu(i32 %88)
  %90 = call i32 @iscsit_handle_status_snack(%struct.iscsi_conn* %74, i32 %77, i32 %81, i32 %85, i32 %89)
  store i32 %90, i32* %3, align 4
  br label %122

91:                                               ; preds = %48
  %92 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %93 = load %struct.iscsi_snack*, %struct.iscsi_snack** %6, align 8
  %94 = getelementptr inbounds %struct.iscsi_snack, %struct.iscsi_snack* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @be32_to_cpu(i32 %95)
  %97 = load %struct.iscsi_snack*, %struct.iscsi_snack** %6, align 8
  %98 = getelementptr inbounds %struct.iscsi_snack, %struct.iscsi_snack* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @be32_to_cpu(i32 %99)
  %101 = load %struct.iscsi_snack*, %struct.iscsi_snack** %6, align 8
  %102 = getelementptr inbounds %struct.iscsi_snack, %struct.iscsi_snack* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @be32_to_cpu(i32 %103)
  %105 = call i32 @iscsit_handle_data_ack(%struct.iscsi_conn* %92, i32 %96, i32 %100, i32 %104)
  store i32 %105, i32* %3, align 4
  br label %122

106:                                              ; preds = %48
  %107 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %108 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %109 = load i32, i32* @ISCSI_REASON_PROTOCOL_ERROR, align 4
  %110 = load i8*, i8** %5, align 8
  %111 = call i32 @iscsit_add_reject(%struct.iscsi_conn* %108, i32 %109, i8* %110)
  store i32 %111, i32* %3, align 4
  br label %122

112:                                              ; preds = %48
  %113 = load %struct.iscsi_snack*, %struct.iscsi_snack** %6, align 8
  %114 = getelementptr inbounds %struct.iscsi_snack, %struct.iscsi_snack* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = and i32 %115, 15
  %117 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32 %116)
  %118 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %119 = load i32, i32* @ISCSI_REASON_PROTOCOL_ERROR, align 4
  %120 = load i8*, i8** %5, align 8
  %121 = call i32 @iscsit_add_reject(%struct.iscsi_conn* %118, i32 %119, i8* %120)
  store i32 %121, i32* %3, align 4
  br label %122

122:                                              ; preds = %112, %106, %91, %73, %54, %42
  %123 = load i32, i32* %3, align 4
  ret i32 %123
}

declare dso_local i32 @pr_debug(i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @iscsit_add_reject(%struct.iscsi_conn*, i32, i8*) #1

declare dso_local i32 @iscsit_handle_recovery_datain_or_r2t(%struct.iscsi_conn*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @iscsit_handle_status_snack(%struct.iscsi_conn*, i32, i32, i32, i32) #1

declare dso_local i32 @iscsit_handle_data_ack(%struct.iscsi_conn*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
