; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi/extr_ibmvfc.c_ibmvfc_handle_crq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi/extr_ibmvfc.c_ibmvfc_handle_crq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibmvfc_crq = type { i64, i32, i64 }
%struct.ibmvfc_host = type { i32, i32, i32, i32, i32 }
%struct.ibmvfc_event = type { i32 (%struct.ibmvfc_event*)*, i32, i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"Partner initialized\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Unable to send init rsp. rc=%ld\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Partner initialization complete\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Unknown crq message type: %d\0A\00", align 1
@IBMVFC_NO_CRQ = common dso_local global i32 0, align 4
@IBMVFC_HOST_ACTION_NONE = common dso_local global i32 0, align 4
@IBMVFC_PARTITION_MIGRATED = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [41 x i8] c"Partition migrated, Re-enabling adapter\0A\00", align 1
@DID_REQUEUE = common dso_local global i32 0, align 4
@IBMVFC_LINK_DOWN = common dso_local global i32 0, align 4
@IBMVFC_HOST_ACTION_REENABLE = common dso_local global i32 0, align 4
@IBMVFC_PARTNER_FAILED = common dso_local global i64 0, align 8
@IBMVFC_PARTNER_DEREGISTER = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [53 x i8] c"Host partner adapter deregistered or failed (rc=%d)\0A\00", align 1
@DID_ERROR = common dso_local global i32 0, align 4
@IBMVFC_HOST_ACTION_RESET = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [55 x i8] c"Received unknown transport event from partner (rc=%d)\0A\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"Got an invalid message type 0x%02x\0A\00", align 1
@IBMVFC_ASYNC_EVENT = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [49 x i8] c"Returned correlation_token 0x%08llx is invalid!\0A\00", align 1
@.str.9 = private unnamed_addr constant [48 x i8] c"Received duplicate correlation_token 0x%08llx!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ibmvfc_crq*, %struct.ibmvfc_host*)* @ibmvfc_handle_crq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ibmvfc_handle_crq(%struct.ibmvfc_crq* %0, %struct.ibmvfc_host* %1) #0 {
  %3 = alloca %struct.ibmvfc_crq*, align 8
  %4 = alloca %struct.ibmvfc_host*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ibmvfc_event*, align 8
  store %struct.ibmvfc_crq* %0, %struct.ibmvfc_crq** %3, align 8
  store %struct.ibmvfc_host* %1, %struct.ibmvfc_host** %4, align 8
  %7 = load %struct.ibmvfc_crq*, %struct.ibmvfc_crq** %3, align 8
  %8 = getelementptr inbounds %struct.ibmvfc_crq, %struct.ibmvfc_crq* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = call i64 @be64_to_cpu(i64 %9)
  %11 = inttoptr i64 %10 to %struct.ibmvfc_event*
  store %struct.ibmvfc_event* %11, %struct.ibmvfc_event** %6, align 8
  %12 = load %struct.ibmvfc_crq*, %struct.ibmvfc_crq** %3, align 8
  %13 = getelementptr inbounds %struct.ibmvfc_crq, %struct.ibmvfc_crq* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  switch i32 %14, label %124 [
    i32 129, label %15
    i32 128, label %54
    i32 132, label %123
  ]

15:                                               ; preds = %2
  %16 = load %struct.ibmvfc_crq*, %struct.ibmvfc_crq** %3, align 8
  %17 = getelementptr inbounds %struct.ibmvfc_crq, %struct.ibmvfc_crq* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  switch i64 %18, label %45 [
    i64 131, label %19
    i64 130, label %38
  ]

19:                                               ; preds = %15
  %20 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %4, align 8
  %21 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @dev_info(i32 %22, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %4, align 8
  %25 = call i64 @ibmvfc_send_crq_init_complete(%struct.ibmvfc_host* %24)
  store i64 %25, i64* %5, align 8
  %26 = load i64, i64* %5, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %19
  %29 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %4, align 8
  %30 = call i32 @ibmvfc_init_host(%struct.ibmvfc_host* %29)
  br label %37

31:                                               ; preds = %19
  %32 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %4, align 8
  %33 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i64, i64* %5, align 8
  %36 = call i32 @dev_err(i32 %34, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i64 %35)
  br label %37

37:                                               ; preds = %31, %28
  br label %53

38:                                               ; preds = %15
  %39 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %4, align 8
  %40 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @dev_info(i32 %41, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %43 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %4, align 8
  %44 = call i32 @ibmvfc_init_host(%struct.ibmvfc_host* %43)
  br label %53

45:                                               ; preds = %15
  %46 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %4, align 8
  %47 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.ibmvfc_crq*, %struct.ibmvfc_crq** %3, align 8
  %50 = getelementptr inbounds %struct.ibmvfc_crq, %struct.ibmvfc_crq* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @dev_err(i32 %48, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i64 %51)
  br label %53

53:                                               ; preds = %45, %38, %37
  br label %186

54:                                               ; preds = %2
  %55 = load i32, i32* @IBMVFC_NO_CRQ, align 4
  %56 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %4, align 8
  %57 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %56, i32 0, i32 4
  store i32 %55, i32* %57, align 4
  %58 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %4, align 8
  %59 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %58, i32 0, i32 3
  store i32 0, i32* %59, align 4
  %60 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %4, align 8
  %61 = load i32, i32* @IBMVFC_HOST_ACTION_NONE, align 4
  %62 = call i32 @ibmvfc_set_host_action(%struct.ibmvfc_host* %60, i32 %61)
  %63 = load %struct.ibmvfc_crq*, %struct.ibmvfc_crq** %3, align 8
  %64 = getelementptr inbounds %struct.ibmvfc_crq, %struct.ibmvfc_crq* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @IBMVFC_PARTITION_MIGRATED, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %84

68:                                               ; preds = %54
  %69 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %4, align 8
  %70 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @dev_info(i32 %71, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0))
  %73 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %4, align 8
  %74 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %73, i32 0, i32 0
  store i32 1, i32* %74, align 4
  %75 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %4, align 8
  %76 = load i32, i32* @DID_REQUEUE, align 4
  %77 = call i32 @ibmvfc_purge_requests(%struct.ibmvfc_host* %75, i32 %76)
  %78 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %4, align 8
  %79 = load i32, i32* @IBMVFC_LINK_DOWN, align 4
  %80 = call i32 @ibmvfc_link_down(%struct.ibmvfc_host* %78, i32 %79)
  %81 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %4, align 8
  %82 = load i32, i32* @IBMVFC_HOST_ACTION_REENABLE, align 4
  %83 = call i32 @ibmvfc_set_host_action(%struct.ibmvfc_host* %81, i32 %82)
  br label %122

84:                                               ; preds = %54
  %85 = load %struct.ibmvfc_crq*, %struct.ibmvfc_crq** %3, align 8
  %86 = getelementptr inbounds %struct.ibmvfc_crq, %struct.ibmvfc_crq* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @IBMVFC_PARTNER_FAILED, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %96, label %90

90:                                               ; preds = %84
  %91 = load %struct.ibmvfc_crq*, %struct.ibmvfc_crq** %3, align 8
  %92 = getelementptr inbounds %struct.ibmvfc_crq, %struct.ibmvfc_crq* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @IBMVFC_PARTNER_DEREGISTER, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %113

96:                                               ; preds = %90, %84
  %97 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %4, align 8
  %98 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.ibmvfc_crq*, %struct.ibmvfc_crq** %3, align 8
  %101 = getelementptr inbounds %struct.ibmvfc_crq, %struct.ibmvfc_crq* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = call i32 @dev_err(i32 %99, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.5, i64 0, i64 0), i64 %102)
  %104 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %4, align 8
  %105 = load i32, i32* @DID_ERROR, align 4
  %106 = call i32 @ibmvfc_purge_requests(%struct.ibmvfc_host* %104, i32 %105)
  %107 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %4, align 8
  %108 = load i32, i32* @IBMVFC_LINK_DOWN, align 4
  %109 = call i32 @ibmvfc_link_down(%struct.ibmvfc_host* %107, i32 %108)
  %110 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %4, align 8
  %111 = load i32, i32* @IBMVFC_HOST_ACTION_RESET, align 4
  %112 = call i32 @ibmvfc_set_host_action(%struct.ibmvfc_host* %110, i32 %111)
  br label %121

113:                                              ; preds = %90
  %114 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %4, align 8
  %115 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.ibmvfc_crq*, %struct.ibmvfc_crq** %3, align 8
  %118 = getelementptr inbounds %struct.ibmvfc_crq, %struct.ibmvfc_crq* %117, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  %120 = call i32 @dev_err(i32 %116, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.6, i64 0, i64 0), i64 %119)
  br label %121

121:                                              ; preds = %113, %96
  br label %122

122:                                              ; preds = %121, %68
  br label %186

123:                                              ; preds = %2
  br label %133

124:                                              ; preds = %2
  %125 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %4, align 8
  %126 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.ibmvfc_crq*, %struct.ibmvfc_crq** %3, align 8
  %129 = getelementptr inbounds %struct.ibmvfc_crq, %struct.ibmvfc_crq* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = sext i32 %130 to i64
  %132 = call i32 @dev_err(i32 %127, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0), i64 %131)
  br label %186

133:                                              ; preds = %123
  %134 = load %struct.ibmvfc_crq*, %struct.ibmvfc_crq** %3, align 8
  %135 = getelementptr inbounds %struct.ibmvfc_crq, %struct.ibmvfc_crq* %134, i32 0, i32 2
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @IBMVFC_ASYNC_EVENT, align 8
  %138 = icmp eq i64 %136, %137
  br i1 %138, label %139, label %140

139:                                              ; preds = %133
  br label %186

140:                                              ; preds = %133
  %141 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %4, align 8
  %142 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %141, i32 0, i32 2
  %143 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %6, align 8
  %144 = call i32 @ibmvfc_valid_event(i32* %142, %struct.ibmvfc_event* %143)
  %145 = icmp ne i32 %144, 0
  %146 = xor i1 %145, true
  %147 = zext i1 %146 to i32
  %148 = call i64 @unlikely(i32 %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %158

150:                                              ; preds = %140
  %151 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %4, align 8
  %152 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.ibmvfc_crq*, %struct.ibmvfc_crq** %3, align 8
  %155 = getelementptr inbounds %struct.ibmvfc_crq, %struct.ibmvfc_crq* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = call i32 @dev_err(i32 %153, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.8, i64 0, i64 0), i64 %156)
  br label %186

158:                                              ; preds = %140
  %159 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %6, align 8
  %160 = getelementptr inbounds %struct.ibmvfc_event, %struct.ibmvfc_event* %159, i32 0, i32 3
  %161 = call i32 @atomic_read(i32* %160)
  %162 = call i64 @unlikely(i32 %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %172

164:                                              ; preds = %158
  %165 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %4, align 8
  %166 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.ibmvfc_crq*, %struct.ibmvfc_crq** %3, align 8
  %169 = getelementptr inbounds %struct.ibmvfc_crq, %struct.ibmvfc_crq* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = call i32 @dev_err(i32 %167, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.9, i64 0, i64 0), i64 %170)
  br label %186

172:                                              ; preds = %158
  %173 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %6, align 8
  %174 = getelementptr inbounds %struct.ibmvfc_event, %struct.ibmvfc_event* %173, i32 0, i32 2
  %175 = call i32 @del_timer(i32* %174)
  %176 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %6, align 8
  %177 = getelementptr inbounds %struct.ibmvfc_event, %struct.ibmvfc_event* %176, i32 0, i32 1
  %178 = call i32 @list_del(i32* %177)
  %179 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %6, align 8
  %180 = call i32 @ibmvfc_trc_end(%struct.ibmvfc_event* %179)
  %181 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %6, align 8
  %182 = getelementptr inbounds %struct.ibmvfc_event, %struct.ibmvfc_event* %181, i32 0, i32 0
  %183 = load i32 (%struct.ibmvfc_event*)*, i32 (%struct.ibmvfc_event*)** %182, align 8
  %184 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %6, align 8
  %185 = call i32 %183(%struct.ibmvfc_event* %184)
  br label %186

186:                                              ; preds = %172, %164, %150, %139, %124, %122, %53
  ret void
}

declare dso_local i64 @be64_to_cpu(i64) #1

declare dso_local i32 @dev_info(i32, i8*) #1

declare dso_local i64 @ibmvfc_send_crq_init_complete(%struct.ibmvfc_host*) #1

declare dso_local i32 @ibmvfc_init_host(%struct.ibmvfc_host*) #1

declare dso_local i32 @dev_err(i32, i8*, i64) #1

declare dso_local i32 @ibmvfc_set_host_action(%struct.ibmvfc_host*, i32) #1

declare dso_local i32 @ibmvfc_purge_requests(%struct.ibmvfc_host*, i32) #1

declare dso_local i32 @ibmvfc_link_down(%struct.ibmvfc_host*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ibmvfc_valid_event(i32*, %struct.ibmvfc_event*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @ibmvfc_trc_end(%struct.ibmvfc_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
