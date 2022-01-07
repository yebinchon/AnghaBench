; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target.c_iscsit_send_response.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target.c_iscsit_send_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_cmd = type { i64, %struct.TYPE_3__, i8*, i32* }
%struct.TYPE_3__ = type { i32, i32, i64 }
%struct.iscsi_conn = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.iscsi_conn*, %struct.iscsi_cmd*, i32*, i8*, i32)* }
%struct.iscsi_scsi_rsp = type { i32 }

@ISTATE_SEND_STATUS = common dso_local global i64 0, align 8
@SCF_TRANSPORT_TASK_SENSE = common dso_local global i32 0, align 4
@SCF_EMULATED_TASK_SENSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Adding %u bytes of padding to SENSE.\0A\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"Attaching SENSE DATA: %u bytes to iSCSI Response PDU\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscsi_cmd*, %struct.iscsi_conn*)* @iscsit_send_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iscsit_send_response(%struct.iscsi_cmd* %0, %struct.iscsi_conn* %1) #0 {
  %3 = alloca %struct.iscsi_cmd*, align 8
  %4 = alloca %struct.iscsi_conn*, align 8
  %5 = alloca %struct.iscsi_scsi_rsp*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.iscsi_cmd* %0, %struct.iscsi_cmd** %3, align 8
  store %struct.iscsi_conn* %1, %struct.iscsi_conn** %4, align 8
  %10 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %3, align 8
  %11 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %10, i32 0, i32 3
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  %14 = bitcast i32* %13 to %struct.iscsi_scsi_rsp*
  store %struct.iscsi_scsi_rsp* %14, %struct.iscsi_scsi_rsp** %5, align 8
  %15 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %3, align 8
  %16 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @ISTATE_SEND_STATUS, align 8
  %19 = icmp eq i64 %17, %18
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %6, align 4
  store i8* null, i8** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %21 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %3, align 8
  %22 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.iscsi_scsi_rsp*, %struct.iscsi_scsi_rsp** %5, align 8
  %25 = call i32 @iscsit_build_rsp_pdu(%struct.iscsi_cmd* %21, %struct.iscsi_conn* %22, i32 %23, %struct.iscsi_scsi_rsp* %24)
  %26 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %3, align 8
  %27 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %108

31:                                               ; preds = %2
  %32 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %3, align 8
  %33 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @SCF_TRANSPORT_TASK_SENSE, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %47, label %39

39:                                               ; preds = %31
  %40 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %3, align 8
  %41 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @SCF_EMULATED_TASK_SENSE, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %108

47:                                               ; preds = %39, %31
  %48 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %3, align 8
  %49 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %3, align 8
  %53 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %52, i32 0, i32 2
  %54 = load i8*, i8** %53, align 8
  %55 = call i32 @put_unaligned_be16(i32 %51, i8* %54)
  %56 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %3, align 8
  %57 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = sext i32 %59 to i64
  %61 = add i64 %60, 4
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %58, align 4
  %63 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %3, align 8
  %64 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = sub nsw i32 0, %66
  %68 = and i32 %67, 3
  store i32 %68, i32* %8, align 4
  %69 = load %struct.iscsi_scsi_rsp*, %struct.iscsi_scsi_rsp** %5, align 8
  %70 = getelementptr inbounds %struct.iscsi_scsi_rsp, %struct.iscsi_scsi_rsp* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %3, align 8
  %73 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @hton24(i32 %71, i32 %75)
  %77 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %3, align 8
  %78 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %77, i32 0, i32 2
  %79 = load i8*, i8** %78, align 8
  store i8* %79, i8** %7, align 8
  %80 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %3, align 8
  %81 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %8, align 4
  %85 = add nsw i32 %83, %84
  store i32 %85, i32* %9, align 4
  %86 = load i32, i32* %8, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %102

88:                                               ; preds = %47
  %89 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %3, align 8
  %90 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %89, i32 0, i32 2
  %91 = load i8*, i8** %90, align 8
  %92 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %3, align 8
  %93 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr i8, i8* %91, i64 %96
  %98 = load i32, i32* %8, align 4
  %99 = call i32 @memset(i8* %97, i32 0, i32 %98)
  %100 = load i32, i32* %8, align 4
  %101 = call i32 @pr_debug(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %100)
  br label %102

102:                                              ; preds = %88, %47
  %103 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %3, align 8
  %104 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @pr_debug(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 %106)
  br label %108

108:                                              ; preds = %102, %39, %2
  %109 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %110 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %109, i32 0, i32 0
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  %113 = load i32 (%struct.iscsi_conn*, %struct.iscsi_cmd*, i32*, i8*, i32)*, i32 (%struct.iscsi_conn*, %struct.iscsi_cmd*, i32*, i8*, i32)** %112, align 8
  %114 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %115 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %3, align 8
  %116 = load i8*, i8** %7, align 8
  %117 = load i32, i32* %9, align 4
  %118 = call i32 %113(%struct.iscsi_conn* %114, %struct.iscsi_cmd* %115, i32* null, i8* %116, i32 %117)
  ret i32 %118
}

declare dso_local i32 @iscsit_build_rsp_pdu(%struct.iscsi_cmd*, %struct.iscsi_conn*, i32, %struct.iscsi_scsi_rsp*) #1

declare dso_local i32 @put_unaligned_be16(i32, i8*) #1

declare dso_local i32 @hton24(i32, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
