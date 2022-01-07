; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_login.c_iscsi_login_zero_tsih_s1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_login.c_iscsi_login_zero_tsih_s1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_conn = type { i32* }
%struct.iscsi_session = type { i32, %struct.iscsi_session*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.iscsi_login_req = type { i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ISCSI_STATUS_CLS_TARGET_ERR = common dso_local global i32 0, align 4
@ISCSI_LOGIN_STATUS_NO_RESOURCES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Could not allocate memory for session\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@iscsit_handle_time2retain_timeout = common dso_local global i32 0, align 4
@sess_ida = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Session ID allocation failed %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"Unable to allocate memory for struct iscsi_sess_ops.\0A\00", align 1
@TARGET_PROT_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscsi_conn*, i8*)* @iscsi_login_zero_tsih_s1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iscsi_login_zero_tsih_s1(%struct.iscsi_conn* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iscsi_conn*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.iscsi_session*, align 8
  %7 = alloca %struct.iscsi_login_req*, align 8
  %8 = alloca i32, align 4
  store %struct.iscsi_conn* %0, %struct.iscsi_conn** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.iscsi_session* null, %struct.iscsi_session** %6, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.iscsi_login_req*
  store %struct.iscsi_login_req* %10, %struct.iscsi_login_req** %7, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call i8* @kzalloc(i32 104, i32 %11)
  %13 = bitcast i8* %12 to %struct.iscsi_session*
  store %struct.iscsi_session* %13, %struct.iscsi_session** %6, align 8
  %14 = load %struct.iscsi_session*, %struct.iscsi_session** %6, align 8
  %15 = icmp ne %struct.iscsi_session* %14, null
  br i1 %15, label %24, label %16

16:                                               ; preds = %2
  %17 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %18 = load i32, i32* @ISCSI_STATUS_CLS_TARGET_ERR, align 4
  %19 = load i32, i32* @ISCSI_LOGIN_STATUS_NO_RESOURCES, align 4
  %20 = call i32 @iscsit_tx_login_rsp(%struct.iscsi_conn* %17, i32 %18, i32 %19)
  %21 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %170

24:                                               ; preds = %2
  %25 = load %struct.iscsi_session*, %struct.iscsi_session** %6, align 8
  %26 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %27 = load %struct.iscsi_login_req*, %struct.iscsi_login_req** %7, align 8
  %28 = getelementptr inbounds %struct.iscsi_login_req, %struct.iscsi_login_req* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @iscsi_login_set_conn_values(%struct.iscsi_session* %25, %struct.iscsi_conn* %26, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %24
  br label %163

33:                                               ; preds = %24
  %34 = load %struct.iscsi_login_req*, %struct.iscsi_login_req** %7, align 8
  %35 = getelementptr inbounds %struct.iscsi_login_req, %struct.iscsi_login_req* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.iscsi_session*, %struct.iscsi_session** %6, align 8
  %38 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %37, i32 0, i32 22
  store i32 %36, i32* %38, align 8
  %39 = load %struct.iscsi_session*, %struct.iscsi_session** %6, align 8
  %40 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %39, i32 0, i32 21
  %41 = load %struct.iscsi_login_req*, %struct.iscsi_login_req** %7, align 8
  %42 = getelementptr inbounds %struct.iscsi_login_req, %struct.iscsi_login_req* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @memcpy(i32* %40, i32 %43, i32 6)
  %45 = load %struct.iscsi_login_req*, %struct.iscsi_login_req** %7, align 8
  %46 = getelementptr inbounds %struct.iscsi_login_req, %struct.iscsi_login_req* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @be32_to_cpu(i32 %47)
  %49 = load %struct.iscsi_session*, %struct.iscsi_session** %6, align 8
  %50 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %49, i32 0, i32 20
  store i32 %48, i32* %50, align 8
  %51 = load %struct.iscsi_session*, %struct.iscsi_session** %6, align 8
  %52 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %51, i32 0, i32 19
  %53 = call i32 @INIT_LIST_HEAD(i32* %52)
  %54 = load %struct.iscsi_session*, %struct.iscsi_session** %6, align 8
  %55 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %54, i32 0, i32 18
  %56 = call i32 @INIT_LIST_HEAD(i32* %55)
  %57 = load %struct.iscsi_session*, %struct.iscsi_session** %6, align 8
  %58 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %57, i32 0, i32 17
  %59 = call i32 @INIT_LIST_HEAD(i32* %58)
  %60 = load %struct.iscsi_session*, %struct.iscsi_session** %6, align 8
  %61 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %60, i32 0, i32 16
  %62 = call i32 @INIT_LIST_HEAD(i32* %61)
  %63 = load %struct.iscsi_session*, %struct.iscsi_session** %6, align 8
  %64 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %63, i32 0, i32 15
  %65 = call i32 @init_completion(i32* %64)
  %66 = load %struct.iscsi_session*, %struct.iscsi_session** %6, align 8
  %67 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %66, i32 0, i32 14
  %68 = call i32 @init_completion(i32* %67)
  %69 = load %struct.iscsi_session*, %struct.iscsi_session** %6, align 8
  %70 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %69, i32 0, i32 13
  %71 = call i32 @init_completion(i32* %70)
  %72 = load %struct.iscsi_session*, %struct.iscsi_session** %6, align 8
  %73 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %72, i32 0, i32 12
  %74 = call i32 @init_completion(i32* %73)
  %75 = load %struct.iscsi_session*, %struct.iscsi_session** %6, align 8
  %76 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %75, i32 0, i32 11
  %77 = call i32 @mutex_init(i32* %76)
  %78 = load %struct.iscsi_session*, %struct.iscsi_session** %6, align 8
  %79 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %78, i32 0, i32 10
  %80 = call i32 @spin_lock_init(i32* %79)
  %81 = load %struct.iscsi_session*, %struct.iscsi_session** %6, align 8
  %82 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %81, i32 0, i32 9
  %83 = call i32 @spin_lock_init(i32* %82)
  %84 = load %struct.iscsi_session*, %struct.iscsi_session** %6, align 8
  %85 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %84, i32 0, i32 8
  %86 = call i32 @spin_lock_init(i32* %85)
  %87 = load %struct.iscsi_session*, %struct.iscsi_session** %6, align 8
  %88 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %87, i32 0, i32 7
  %89 = call i32 @spin_lock_init(i32* %88)
  %90 = load %struct.iscsi_session*, %struct.iscsi_session** %6, align 8
  %91 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %90, i32 0, i32 6
  %92 = call i32 @spin_lock_init(i32* %91)
  %93 = load %struct.iscsi_session*, %struct.iscsi_session** %6, align 8
  %94 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %93, i32 0, i32 5
  %95 = load i32, i32* @iscsit_handle_time2retain_timeout, align 4
  %96 = call i32 @timer_setup(i32* %94, i32 %95, i32 0)
  %97 = load i32, i32* @GFP_KERNEL, align 4
  %98 = call i32 @ida_alloc(i32* @sess_ida, i32 %97)
  store i32 %98, i32* %8, align 4
  %99 = load i32, i32* %8, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %108

101:                                              ; preds = %33
  %102 = load i32, i32* %8, align 4
  %103 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %102)
  %104 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %105 = load i32, i32* @ISCSI_STATUS_CLS_TARGET_ERR, align 4
  %106 = load i32, i32* @ISCSI_LOGIN_STATUS_NO_RESOURCES, align 4
  %107 = call i32 @iscsit_tx_login_rsp(%struct.iscsi_conn* %104, i32 %105, i32 %106)
  br label %163

108:                                              ; preds = %33
  %109 = load i32, i32* %8, align 4
  %110 = load %struct.iscsi_session*, %struct.iscsi_session** %6, align 8
  %111 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %110, i32 0, i32 0
  store i32 %109, i32* %111, align 8
  %112 = call i32 (...) @get_jiffies_64()
  %113 = load %struct.iscsi_session*, %struct.iscsi_session** %6, align 8
  %114 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %113, i32 0, i32 4
  store i32 %112, i32* %114, align 8
  %115 = load %struct.iscsi_session*, %struct.iscsi_session** %6, align 8
  %116 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %115, i32 0, i32 3
  %117 = load %struct.iscsi_login_req*, %struct.iscsi_login_req** %7, align 8
  %118 = getelementptr inbounds %struct.iscsi_login_req, %struct.iscsi_login_req* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @be32_to_cpu(i32 %119)
  %121 = call i32 @atomic_set(i32* %116, i32 %120)
  %122 = load i32, i32* @GFP_KERNEL, align 4
  %123 = call i8* @kzalloc(i32 4, i32 %122)
  %124 = bitcast i8* %123 to %struct.iscsi_session*
  %125 = load %struct.iscsi_session*, %struct.iscsi_session** %6, align 8
  %126 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %125, i32 0, i32 1
  store %struct.iscsi_session* %124, %struct.iscsi_session** %126, align 8
  %127 = load %struct.iscsi_session*, %struct.iscsi_session** %6, align 8
  %128 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %127, i32 0, i32 1
  %129 = load %struct.iscsi_session*, %struct.iscsi_session** %128, align 8
  %130 = icmp ne %struct.iscsi_session* %129, null
  br i1 %130, label %137, label %131

131:                                              ; preds = %108
  %132 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %133 = load i32, i32* @ISCSI_STATUS_CLS_TARGET_ERR, align 4
  %134 = load i32, i32* @ISCSI_LOGIN_STATUS_NO_RESOURCES, align 4
  %135 = call i32 @iscsit_tx_login_rsp(%struct.iscsi_conn* %132, i32 %133, i32 %134)
  %136 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0))
  br label %158

137:                                              ; preds = %108
  %138 = load i32, i32* @TARGET_PROT_NORMAL, align 4
  %139 = call i32 @transport_alloc_session(i32 %138)
  %140 = load %struct.iscsi_session*, %struct.iscsi_session** %6, align 8
  %141 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %140, i32 0, i32 2
  store i32 %139, i32* %141, align 8
  %142 = load %struct.iscsi_session*, %struct.iscsi_session** %6, align 8
  %143 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = call i64 @IS_ERR(i32 %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %152

147:                                              ; preds = %137
  %148 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %149 = load i32, i32* @ISCSI_STATUS_CLS_TARGET_ERR, align 4
  %150 = load i32, i32* @ISCSI_LOGIN_STATUS_NO_RESOURCES, align 4
  %151 = call i32 @iscsit_tx_login_rsp(%struct.iscsi_conn* %148, i32 %149, i32 %150)
  br label %153

152:                                              ; preds = %137
  store i32 0, i32* %3, align 4
  br label %170

153:                                              ; preds = %147
  %154 = load %struct.iscsi_session*, %struct.iscsi_session** %6, align 8
  %155 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %154, i32 0, i32 1
  %156 = load %struct.iscsi_session*, %struct.iscsi_session** %155, align 8
  %157 = call i32 @kfree(%struct.iscsi_session* %156)
  br label %158

158:                                              ; preds = %153, %131
  %159 = load %struct.iscsi_session*, %struct.iscsi_session** %6, align 8
  %160 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = call i32 @ida_free(i32* @sess_ida, i32 %161)
  br label %163

163:                                              ; preds = %158, %101, %32
  %164 = load %struct.iscsi_session*, %struct.iscsi_session** %6, align 8
  %165 = call i32 @kfree(%struct.iscsi_session* %164)
  %166 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %167 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %166, i32 0, i32 0
  store i32* null, i32** %167, align 8
  %168 = load i32, i32* @ENOMEM, align 4
  %169 = sub nsw i32 0, %168
  store i32 %169, i32* %3, align 4
  br label %170

170:                                              ; preds = %163, %152, %16
  %171 = load i32, i32* %3, align 4
  ret i32 %171
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @iscsit_tx_login_rsp(%struct.iscsi_conn*, i32, i32) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i64 @iscsi_login_set_conn_values(%struct.iscsi_session*, %struct.iscsi_conn*, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @ida_alloc(i32*, i32) #1

declare dso_local i32 @get_jiffies_64(...) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @transport_alloc_session(i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @kfree(%struct.iscsi_session*) #1

declare dso_local i32 @ida_free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
