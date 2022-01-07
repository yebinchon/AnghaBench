; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target.c_iscsit_build_rsp_pdu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target.c_iscsit_build_rsp_pdu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_cmd = type { %struct.TYPE_3__, i64, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i64 }
%struct.iscsi_conn = type { i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32, i64, i32 }
%struct.iscsi_scsi_rsp = type { i8*, i8*, i8*, i32, i32, i32, i8*, i32, i32 }

@ISCSI_HDR_LEN = common dso_local global i32 0, align 4
@ISCSI_OP_SCSI_CMD_RSP = common dso_local global i32 0, align 4
@ISCSI_FLAG_CMD_FINAL = common dso_local global i32 0, align 4
@SCF_OVERFLOW_BIT = common dso_local global i32 0, align 4
@ISCSI_FLAG_CMD_OVERFLOW = common dso_local global i32 0, align 4
@SCF_UNDERFLOW_BIT = common dso_local global i32 0, align 4
@ISCSI_FLAG_CMD_UNDERFLOW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [98 x i8] c"Built SCSI Response, ITT: 0x%08x, StatSN: 0x%08x, Response: 0x%02x, SAM Status: 0x%02x, CID: %hu\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iscsit_build_rsp_pdu(%struct.iscsi_cmd* %0, %struct.iscsi_conn* %1, i32 %2, %struct.iscsi_scsi_rsp* %3) #0 {
  %5 = alloca %struct.iscsi_cmd*, align 8
  %6 = alloca %struct.iscsi_conn*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.iscsi_scsi_rsp*, align 8
  store %struct.iscsi_cmd* %0, %struct.iscsi_cmd** %5, align 8
  store %struct.iscsi_conn* %1, %struct.iscsi_conn** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.iscsi_scsi_rsp* %3, %struct.iscsi_scsi_rsp** %8, align 8
  %9 = load i32, i32* %7, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %4
  %12 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  %13 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %13, align 8
  %16 = sext i32 %14 to i64
  %17 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %18 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %17, i32 0, i32 1
  store i64 %16, i64* %18, align 8
  br label %19

19:                                               ; preds = %11, %4
  %20 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  %21 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %20, i32 0, i32 1
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 2
  %24 = call i32 @atomic_long_inc(i32* %23)
  %25 = load %struct.iscsi_scsi_rsp*, %struct.iscsi_scsi_rsp** %8, align 8
  %26 = load i32, i32* @ISCSI_HDR_LEN, align 4
  %27 = call i32 @memset(%struct.iscsi_scsi_rsp* %25, i32 0, i32 %26)
  %28 = load i32, i32* @ISCSI_OP_SCSI_CMD_RSP, align 4
  %29 = load %struct.iscsi_scsi_rsp*, %struct.iscsi_scsi_rsp** %8, align 8
  %30 = getelementptr inbounds %struct.iscsi_scsi_rsp, %struct.iscsi_scsi_rsp* %29, i32 0, i32 8
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* @ISCSI_FLAG_CMD_FINAL, align 4
  %32 = load %struct.iscsi_scsi_rsp*, %struct.iscsi_scsi_rsp** %8, align 8
  %33 = getelementptr inbounds %struct.iscsi_scsi_rsp, %struct.iscsi_scsi_rsp* %32, i32 0, i32 7
  %34 = load i32, i32* %33, align 8
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 8
  %36 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %37 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @SCF_OVERFLOW_BIT, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %56

43:                                               ; preds = %19
  %44 = load i32, i32* @ISCSI_FLAG_CMD_OVERFLOW, align 4
  %45 = load %struct.iscsi_scsi_rsp*, %struct.iscsi_scsi_rsp** %8, align 8
  %46 = getelementptr inbounds %struct.iscsi_scsi_rsp, %struct.iscsi_scsi_rsp* %45, i32 0, i32 7
  %47 = load i32, i32* %46, align 8
  %48 = or i32 %47, %44
  store i32 %48, i32* %46, align 8
  %49 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %50 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = call i8* @cpu_to_be32(i64 %52)
  %54 = load %struct.iscsi_scsi_rsp*, %struct.iscsi_scsi_rsp** %8, align 8
  %55 = getelementptr inbounds %struct.iscsi_scsi_rsp, %struct.iscsi_scsi_rsp* %54, i32 0, i32 6
  store i8* %53, i8** %55, align 8
  br label %78

56:                                               ; preds = %19
  %57 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %58 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @SCF_UNDERFLOW_BIT, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %77

64:                                               ; preds = %56
  %65 = load i32, i32* @ISCSI_FLAG_CMD_UNDERFLOW, align 4
  %66 = load %struct.iscsi_scsi_rsp*, %struct.iscsi_scsi_rsp** %8, align 8
  %67 = getelementptr inbounds %struct.iscsi_scsi_rsp, %struct.iscsi_scsi_rsp* %66, i32 0, i32 7
  %68 = load i32, i32* %67, align 8
  %69 = or i32 %68, %65
  store i32 %69, i32* %67, align 8
  %70 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %71 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = call i8* @cpu_to_be32(i64 %73)
  %75 = load %struct.iscsi_scsi_rsp*, %struct.iscsi_scsi_rsp** %8, align 8
  %76 = getelementptr inbounds %struct.iscsi_scsi_rsp, %struct.iscsi_scsi_rsp* %75, i32 0, i32 6
  store i8* %74, i8** %76, align 8
  br label %77

77:                                               ; preds = %64, %56
  br label %78

78:                                               ; preds = %77, %43
  %79 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %80 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.iscsi_scsi_rsp*, %struct.iscsi_scsi_rsp** %8, align 8
  %83 = getelementptr inbounds %struct.iscsi_scsi_rsp, %struct.iscsi_scsi_rsp* %82, i32 0, i32 5
  store i32 %81, i32* %83, align 8
  %84 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %85 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.iscsi_scsi_rsp*, %struct.iscsi_scsi_rsp** %8, align 8
  %89 = getelementptr inbounds %struct.iscsi_scsi_rsp, %struct.iscsi_scsi_rsp* %88, i32 0, i32 4
  store i32 %87, i32* %89, align 4
  %90 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %91 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.iscsi_scsi_rsp*, %struct.iscsi_scsi_rsp** %8, align 8
  %94 = getelementptr inbounds %struct.iscsi_scsi_rsp, %struct.iscsi_scsi_rsp* %93, i32 0, i32 3
  store i32 %92, i32* %94, align 8
  %95 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %96 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = call i8* @cpu_to_be32(i64 %97)
  %99 = load %struct.iscsi_scsi_rsp*, %struct.iscsi_scsi_rsp** %8, align 8
  %100 = getelementptr inbounds %struct.iscsi_scsi_rsp, %struct.iscsi_scsi_rsp* %99, i32 0, i32 2
  store i8* %98, i8** %100, align 8
  %101 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %102 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  %103 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %102, i32 0, i32 1
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %103, align 8
  %105 = call i32 @iscsit_increment_maxcmdsn(%struct.iscsi_cmd* %101, %struct.TYPE_4__* %104)
  %106 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  %107 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %106, i32 0, i32 1
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = call i8* @cpu_to_be32(i64 %110)
  %112 = load %struct.iscsi_scsi_rsp*, %struct.iscsi_scsi_rsp** %8, align 8
  %113 = getelementptr inbounds %struct.iscsi_scsi_rsp, %struct.iscsi_scsi_rsp* %112, i32 0, i32 1
  store i8* %111, i8** %113, align 8
  %114 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  %115 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %114, i32 0, i32 1
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  %118 = call i64 @atomic_read(i32* %117)
  %119 = call i8* @cpu_to_be32(i64 %118)
  %120 = load %struct.iscsi_scsi_rsp*, %struct.iscsi_scsi_rsp** %8, align 8
  %121 = getelementptr inbounds %struct.iscsi_scsi_rsp, %struct.iscsi_scsi_rsp* %120, i32 0, i32 0
  store i8* %119, i8** %121, align 8
  %122 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %123 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %126 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %129 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %133 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  %137 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @pr_debug(i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str, i64 0, i64 0), i32 %124, i64 %127, i32 %131, i32 %135, i32 %138)
  ret void
}

declare dso_local i32 @atomic_long_inc(i32*) #1

declare dso_local i32 @memset(%struct.iscsi_scsi_rsp*, i32, i32) #1

declare dso_local i8* @cpu_to_be32(i64) #1

declare dso_local i32 @iscsit_increment_maxcmdsn(%struct.iscsi_cmd*, %struct.TYPE_4__*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @pr_debug(i8*, i32, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
