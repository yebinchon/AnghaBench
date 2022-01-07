; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target.c_iscsit_send_r2t.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target.c_iscsit_send_r2t.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_cmd = type { i32, i32, i32, %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.iscsi_conn = type { %struct.TYPE_5__*, i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_5__ = type { i32 (%struct.iscsi_conn*, %struct.iscsi_cmd*, i32*, i32*, i32)*, i32 (%struct.iscsi_conn*, %struct.iscsi_cmd*, %struct.iscsi_r2t*)* }
%struct.iscsi_r2t = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.iscsi_r2t_rsp = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32 }
%struct.scsi_lun = type { i32 }

@ISCSI_HDR_LEN = common dso_local global i32 0, align 4
@ISCSI_OP_R2T = common dso_local global i32 0, align 4
@ISCSI_FLAG_CMD_FINAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [102 x i8] c"Built %sR2T, ITT: 0x%08x, TTT: 0x%08x, StatSN: 0x%08x, R2TSN: 0x%08x, Offset: %u, DDTL: %u, CID: %hu\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"Recovery \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscsi_cmd*, %struct.iscsi_conn*)* @iscsit_send_r2t to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iscsit_send_r2t(%struct.iscsi_cmd* %0, %struct.iscsi_conn* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iscsi_cmd*, align 8
  %5 = alloca %struct.iscsi_conn*, align 8
  %6 = alloca %struct.iscsi_r2t*, align 8
  %7 = alloca %struct.iscsi_r2t_rsp*, align 8
  %8 = alloca i32, align 4
  store %struct.iscsi_cmd* %0, %struct.iscsi_cmd** %4, align 8
  store %struct.iscsi_conn* %1, %struct.iscsi_conn** %5, align 8
  %9 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %10 = call %struct.iscsi_r2t* @iscsit_get_r2t_from_list(%struct.iscsi_cmd* %9)
  store %struct.iscsi_r2t* %10, %struct.iscsi_r2t** %6, align 8
  %11 = load %struct.iscsi_r2t*, %struct.iscsi_r2t** %6, align 8
  %12 = icmp ne %struct.iscsi_r2t* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %174

14:                                               ; preds = %2
  %15 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %16 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %15, i32 0, i32 4
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.iscsi_r2t_rsp*
  store %struct.iscsi_r2t_rsp* %18, %struct.iscsi_r2t_rsp** %7, align 8
  %19 = load %struct.iscsi_r2t_rsp*, %struct.iscsi_r2t_rsp** %7, align 8
  %20 = load i32, i32* @ISCSI_HDR_LEN, align 4
  %21 = call i32 @memset(%struct.iscsi_r2t_rsp* %19, i32 0, i32 %20)
  %22 = load i32, i32* @ISCSI_OP_R2T, align 4
  %23 = load %struct.iscsi_r2t_rsp*, %struct.iscsi_r2t_rsp** %7, align 8
  %24 = getelementptr inbounds %struct.iscsi_r2t_rsp, %struct.iscsi_r2t_rsp* %23, i32 0, i32 10
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* @ISCSI_FLAG_CMD_FINAL, align 4
  %26 = load %struct.iscsi_r2t_rsp*, %struct.iscsi_r2t_rsp** %7, align 8
  %27 = getelementptr inbounds %struct.iscsi_r2t_rsp, %struct.iscsi_r2t_rsp* %26, i32 0, i32 9
  %28 = load i32, i32* %27, align 8
  %29 = or i32 %28, %25
  store i32 %29, i32* %27, align 8
  %30 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %31 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.iscsi_r2t_rsp*, %struct.iscsi_r2t_rsp** %7, align 8
  %35 = getelementptr inbounds %struct.iscsi_r2t_rsp, %struct.iscsi_r2t_rsp* %34, i32 0, i32 8
  %36 = bitcast i32* %35 to %struct.scsi_lun*
  %37 = call i32 @int_to_scsilun(i32 %33, %struct.scsi_lun* %36)
  %38 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %39 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.iscsi_r2t_rsp*, %struct.iscsi_r2t_rsp** %7, align 8
  %42 = getelementptr inbounds %struct.iscsi_r2t_rsp, %struct.iscsi_r2t_rsp* %41, i32 0, i32 7
  store i32 %40, i32* %42, align 8
  %43 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %44 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %43, i32 0, i32 0
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  %47 = load i32 (%struct.iscsi_conn*, %struct.iscsi_cmd*, %struct.iscsi_r2t*)*, i32 (%struct.iscsi_conn*, %struct.iscsi_cmd*, %struct.iscsi_r2t*)** %46, align 8
  %48 = icmp ne i32 (%struct.iscsi_conn*, %struct.iscsi_cmd*, %struct.iscsi_r2t*)* %47, null
  br i1 %48, label %49, label %59

49:                                               ; preds = %14
  %50 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %51 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %50, i32 0, i32 0
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  %54 = load i32 (%struct.iscsi_conn*, %struct.iscsi_cmd*, %struct.iscsi_r2t*)*, i32 (%struct.iscsi_conn*, %struct.iscsi_cmd*, %struct.iscsi_r2t*)** %53, align 8
  %55 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %56 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %57 = load %struct.iscsi_r2t*, %struct.iscsi_r2t** %6, align 8
  %58 = call i32 %54(%struct.iscsi_conn* %55, %struct.iscsi_cmd* %56, %struct.iscsi_r2t* %57)
  br label %66

59:                                               ; preds = %14
  %60 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %61 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %60, i32 0, i32 2
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = call i32 @session_get_next_ttt(%struct.TYPE_6__* %62)
  %64 = load %struct.iscsi_r2t*, %struct.iscsi_r2t** %6, align 8
  %65 = getelementptr inbounds %struct.iscsi_r2t, %struct.iscsi_r2t* %64, i32 0, i32 4
  store i32 %63, i32* %65, align 4
  br label %66

66:                                               ; preds = %59, %49
  %67 = load %struct.iscsi_r2t*, %struct.iscsi_r2t** %6, align 8
  %68 = getelementptr inbounds %struct.iscsi_r2t, %struct.iscsi_r2t* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 4
  %70 = call i8* @cpu_to_be32(i32 %69)
  %71 = load %struct.iscsi_r2t_rsp*, %struct.iscsi_r2t_rsp** %7, align 8
  %72 = getelementptr inbounds %struct.iscsi_r2t_rsp, %struct.iscsi_r2t_rsp* %71, i32 0, i32 6
  store i8* %70, i8** %72, align 8
  %73 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %74 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = call i8* @cpu_to_be32(i32 %75)
  %77 = load %struct.iscsi_r2t_rsp*, %struct.iscsi_r2t_rsp** %7, align 8
  %78 = getelementptr inbounds %struct.iscsi_r2t_rsp, %struct.iscsi_r2t_rsp* %77, i32 0, i32 0
  store i8* %76, i8** %78, align 8
  %79 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %80 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %79, i32 0, i32 2
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i8* @cpu_to_be32(i32 %83)
  %85 = load %struct.iscsi_r2t_rsp*, %struct.iscsi_r2t_rsp** %7, align 8
  %86 = getelementptr inbounds %struct.iscsi_r2t_rsp, %struct.iscsi_r2t_rsp* %85, i32 0, i32 5
  store i8* %84, i8** %86, align 8
  %87 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %88 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %87, i32 0, i32 2
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = call i64 @atomic_read(i32* %90)
  %92 = trunc i64 %91 to i32
  %93 = call i8* @cpu_to_be32(i32 %92)
  %94 = load %struct.iscsi_r2t_rsp*, %struct.iscsi_r2t_rsp** %7, align 8
  %95 = getelementptr inbounds %struct.iscsi_r2t_rsp, %struct.iscsi_r2t_rsp* %94, i32 0, i32 4
  store i8* %93, i8** %95, align 8
  %96 = load %struct.iscsi_r2t*, %struct.iscsi_r2t** %6, align 8
  %97 = getelementptr inbounds %struct.iscsi_r2t, %struct.iscsi_r2t* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = call i8* @cpu_to_be32(i32 %98)
  %100 = load %struct.iscsi_r2t_rsp*, %struct.iscsi_r2t_rsp** %7, align 8
  %101 = getelementptr inbounds %struct.iscsi_r2t_rsp, %struct.iscsi_r2t_rsp* %100, i32 0, i32 3
  store i8* %99, i8** %101, align 8
  %102 = load %struct.iscsi_r2t*, %struct.iscsi_r2t** %6, align 8
  %103 = getelementptr inbounds %struct.iscsi_r2t, %struct.iscsi_r2t* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = call i8* @cpu_to_be32(i32 %104)
  %106 = load %struct.iscsi_r2t_rsp*, %struct.iscsi_r2t_rsp** %7, align 8
  %107 = getelementptr inbounds %struct.iscsi_r2t_rsp, %struct.iscsi_r2t_rsp* %106, i32 0, i32 2
  store i8* %105, i8** %107, align 8
  %108 = load %struct.iscsi_r2t*, %struct.iscsi_r2t** %6, align 8
  %109 = getelementptr inbounds %struct.iscsi_r2t, %struct.iscsi_r2t* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = call i8* @cpu_to_be32(i32 %110)
  %112 = load %struct.iscsi_r2t_rsp*, %struct.iscsi_r2t_rsp** %7, align 8
  %113 = getelementptr inbounds %struct.iscsi_r2t_rsp, %struct.iscsi_r2t_rsp* %112, i32 0, i32 1
  store i8* %111, i8** %113, align 8
  %114 = load %struct.iscsi_r2t*, %struct.iscsi_r2t** %6, align 8
  %115 = getelementptr inbounds %struct.iscsi_r2t, %struct.iscsi_r2t* %114, i32 0, i32 5
  %116 = load i32, i32* %115, align 4
  %117 = icmp ne i32 %116, 0
  %118 = xor i1 %117, true
  %119 = zext i1 %118 to i64
  %120 = select i1 %118, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0)
  %121 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %122 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.iscsi_r2t*, %struct.iscsi_r2t** %6, align 8
  %125 = getelementptr inbounds %struct.iscsi_r2t, %struct.iscsi_r2t* %124, i32 0, i32 4
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.iscsi_r2t_rsp*, %struct.iscsi_r2t_rsp** %7, align 8
  %128 = getelementptr inbounds %struct.iscsi_r2t_rsp, %struct.iscsi_r2t_rsp* %127, i32 0, i32 0
  %129 = load i8*, i8** %128, align 8
  %130 = call i32 @ntohl(i8* %129)
  %131 = load %struct.iscsi_r2t*, %struct.iscsi_r2t** %6, align 8
  %132 = getelementptr inbounds %struct.iscsi_r2t, %struct.iscsi_r2t* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.iscsi_r2t*, %struct.iscsi_r2t** %6, align 8
  %135 = getelementptr inbounds %struct.iscsi_r2t, %struct.iscsi_r2t* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.iscsi_r2t*, %struct.iscsi_r2t** %6, align 8
  %138 = getelementptr inbounds %struct.iscsi_r2t, %struct.iscsi_r2t* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %141 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @pr_debug(i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str, i64 0, i64 0), i8* %120, i32 %123, i32 %126, i32 %130, i32 %133, i32 %136, i32 %139, i32 %142)
  %144 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %145 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %144, i32 0, i32 1
  %146 = call i32 @spin_lock_bh(i32* %145)
  %147 = load %struct.iscsi_r2t*, %struct.iscsi_r2t** %6, align 8
  %148 = getelementptr inbounds %struct.iscsi_r2t, %struct.iscsi_r2t* %147, i32 0, i32 0
  store i32 1, i32* %148, align 4
  %149 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %150 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %149, i32 0, i32 1
  %151 = call i32 @spin_unlock_bh(i32* %150)
  %152 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %153 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %152, i32 0, i32 0
  %154 = load %struct.TYPE_5__*, %struct.TYPE_5__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 0
  %156 = load i32 (%struct.iscsi_conn*, %struct.iscsi_cmd*, i32*, i32*, i32)*, i32 (%struct.iscsi_conn*, %struct.iscsi_cmd*, i32*, i32*, i32)** %155, align 8
  %157 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %158 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %159 = call i32 %156(%struct.iscsi_conn* %157, %struct.iscsi_cmd* %158, i32* null, i32* null, i32 0)
  store i32 %159, i32* %8, align 4
  %160 = load i32, i32* %8, align 4
  %161 = icmp slt i32 %160, 0
  br i1 %161, label %162, label %164

162:                                              ; preds = %66
  %163 = load i32, i32* %8, align 4
  store i32 %163, i32* %3, align 4
  br label %174

164:                                              ; preds = %66
  %165 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %166 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %165, i32 0, i32 0
  %167 = call i32 @spin_lock_bh(i32* %166)
  %168 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %169 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %170 = call i32 @iscsit_start_dataout_timer(%struct.iscsi_cmd* %168, %struct.iscsi_conn* %169)
  %171 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %172 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %171, i32 0, i32 0
  %173 = call i32 @spin_unlock_bh(i32* %172)
  store i32 0, i32* %3, align 4
  br label %174

174:                                              ; preds = %164, %162, %13
  %175 = load i32, i32* %3, align 4
  ret i32 %175
}

declare dso_local %struct.iscsi_r2t* @iscsit_get_r2t_from_list(%struct.iscsi_cmd*) #1

declare dso_local i32 @memset(%struct.iscsi_r2t_rsp*, i32, i32) #1

declare dso_local i32 @int_to_scsilun(i32, %struct.scsi_lun*) #1

declare dso_local i32 @session_get_next_ttt(%struct.TYPE_6__*) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @pr_debug(i8*, i8*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ntohl(i8*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @iscsit_start_dataout_timer(%struct.iscsi_cmd*, %struct.iscsi_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
