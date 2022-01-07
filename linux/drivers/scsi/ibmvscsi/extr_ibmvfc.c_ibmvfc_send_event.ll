; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi/extr_ibmvfc.c_ibmvfc_send_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi/extr_ibmvfc.c_ibmvfc_send_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibmvfc_event = type { i32 (%struct.ibmvfc_event*)*, %struct.TYPE_12__*, %struct.TYPE_14__*, %struct.TYPE_13__, i32, %struct.TYPE_10__, %struct.TYPE_12__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_9__ }
%struct.TYPE_11__ = type { i32, i8* }
%struct.TYPE_9__ = type { i8* }
%struct.ibmvfc_host = type { i32, i32 }

@IBMVFC_CMD_FORMAT = common dso_local global i64 0, align 8
@IBMVFC_MAD_FORMAT = common dso_local global i64 0, align 8
@ibmvfc_timeout = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@H_CLOSED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Send warning. Receive queue closed, will retry.\0A\00", align 1
@SCSI_MLQUEUE_HOST_BUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Send error (rc=%d)\0A\00", align 1
@DID_ERROR = common dso_local global i32 0, align 4
@IBMVFC_MAD_CRQ_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ibmvfc_event*, %struct.ibmvfc_host*, i64)* @ibmvfc_send_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ibmvfc_send_event(%struct.ibmvfc_event* %0, %struct.ibmvfc_host* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ibmvfc_event*, align 8
  %6 = alloca %struct.ibmvfc_host*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.ibmvfc_event* %0, %struct.ibmvfc_event** %5, align 8
  store %struct.ibmvfc_host* %1, %struct.ibmvfc_host** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %5, align 8
  %11 = getelementptr inbounds %struct.ibmvfc_event, %struct.ibmvfc_event* %10, i32 0, i32 5
  %12 = bitcast %struct.TYPE_10__* %11 to i32*
  store i32* %12, i32** %8, align 8
  %13 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %5, align 8
  %14 = getelementptr inbounds %struct.ibmvfc_event, %struct.ibmvfc_event* %13, i32 0, i32 1
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %16 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %5, align 8
  %17 = getelementptr inbounds %struct.ibmvfc_event, %struct.ibmvfc_event* %16, i32 0, i32 6
  %18 = bitcast %struct.TYPE_12__* %15 to i8*
  %19 = bitcast %struct.TYPE_12__* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %18, i8* align 8 %19, i64 24, i1 false)
  %20 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %5, align 8
  %21 = getelementptr inbounds %struct.ibmvfc_event, %struct.ibmvfc_event* %20, i32 0, i32 5
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @IBMVFC_CMD_FORMAT, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %35

26:                                               ; preds = %3
  %27 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %5, align 8
  %28 = ptrtoint %struct.ibmvfc_event* %27 to i32
  %29 = call i8* @cpu_to_be64(i32 %28)
  %30 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %5, align 8
  %31 = getelementptr inbounds %struct.ibmvfc_event, %struct.ibmvfc_event* %30, i32 0, i32 1
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  store i8* %29, i8** %34, align 8
  br label %54

35:                                               ; preds = %3
  %36 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %5, align 8
  %37 = getelementptr inbounds %struct.ibmvfc_event, %struct.ibmvfc_event* %36, i32 0, i32 5
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @IBMVFC_MAD_FORMAT, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %51

42:                                               ; preds = %35
  %43 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %5, align 8
  %44 = ptrtoint %struct.ibmvfc_event* %43 to i32
  %45 = call i8* @cpu_to_be64(i32 %44)
  %46 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %5, align 8
  %47 = getelementptr inbounds %struct.ibmvfc_event, %struct.ibmvfc_event* %46, i32 0, i32 1
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 1
  store i8* %45, i8** %50, align 8
  br label %53

51:                                               ; preds = %35
  %52 = call i32 (...) @BUG()
  br label %53

53:                                               ; preds = %51, %42
  br label %54

54:                                               ; preds = %53, %26
  %55 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %5, align 8
  %56 = getelementptr inbounds %struct.ibmvfc_event, %struct.ibmvfc_event* %55, i32 0, i32 4
  %57 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %6, align 8
  %58 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %57, i32 0, i32 1
  %59 = call i32 @list_add_tail(i32* %56, i32* %58)
  %60 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %5, align 8
  %61 = getelementptr inbounds %struct.ibmvfc_event, %struct.ibmvfc_event* %60, i32 0, i32 3
  %62 = load i32, i32* @ibmvfc_timeout, align 4
  %63 = call i32 @timer_setup(%struct.TYPE_13__* %61, i32 %62, i32 0)
  %64 = load i64, i64* %7, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %78

66:                                               ; preds = %54
  %67 = load i64, i64* @jiffies, align 8
  %68 = load i64, i64* %7, align 8
  %69 = load i64, i64* @HZ, align 8
  %70 = mul i64 %68, %69
  %71 = add i64 %67, %70
  %72 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %5, align 8
  %73 = getelementptr inbounds %struct.ibmvfc_event, %struct.ibmvfc_event* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 0
  store i64 %71, i64* %74, align 8
  %75 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %5, align 8
  %76 = getelementptr inbounds %struct.ibmvfc_event, %struct.ibmvfc_event* %75, i32 0, i32 3
  %77 = call i32 @add_timer(%struct.TYPE_13__* %76)
  br label %78

78:                                               ; preds = %66, %54
  %79 = call i32 (...) @mb()
  %80 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %6, align 8
  %81 = load i32*, i32** %8, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @be64_to_cpu(i32 %83)
  %85 = load i32*, i32** %8, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 1
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @be64_to_cpu(i32 %87)
  %89 = call i32 @ibmvfc_send_crq(%struct.ibmvfc_host* %80, i32 %84, i32 %88)
  store i32 %89, i32* %9, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %156

91:                                               ; preds = %78
  %92 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %5, align 8
  %93 = getelementptr inbounds %struct.ibmvfc_event, %struct.ibmvfc_event* %92, i32 0, i32 4
  %94 = call i32 @list_del(i32* %93)
  %95 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %5, align 8
  %96 = getelementptr inbounds %struct.ibmvfc_event, %struct.ibmvfc_event* %95, i32 0, i32 3
  %97 = call i32 @del_timer(%struct.TYPE_13__* %96)
  %98 = load i32, i32* %9, align 4
  %99 = load i32, i32* @H_CLOSED, align 4
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %101, label %123

101:                                              ; preds = %91
  %102 = call i64 (...) @printk_ratelimit()
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %101
  %105 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %6, align 8
  %106 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @dev_warn(i32 %107, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  br label %109

109:                                              ; preds = %104, %101
  %110 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %5, align 8
  %111 = getelementptr inbounds %struct.ibmvfc_event, %struct.ibmvfc_event* %110, i32 0, i32 2
  %112 = load %struct.TYPE_14__*, %struct.TYPE_14__** %111, align 8
  %113 = icmp ne %struct.TYPE_14__* %112, null
  br i1 %113, label %114, label %119

114:                                              ; preds = %109
  %115 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %5, align 8
  %116 = getelementptr inbounds %struct.ibmvfc_event, %struct.ibmvfc_event* %115, i32 0, i32 2
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %116, align 8
  %118 = call i32 @scsi_dma_unmap(%struct.TYPE_14__* %117)
  br label %119

119:                                              ; preds = %114, %109
  %120 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %5, align 8
  %121 = call i32 @ibmvfc_free_event(%struct.ibmvfc_event* %120)
  %122 = load i32, i32* @SCSI_MLQUEUE_HOST_BUSY, align 4
  store i32 %122, i32* %4, align 4
  br label %160

123:                                              ; preds = %91
  %124 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %6, align 8
  %125 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* %9, align 4
  %128 = call i32 @dev_err(i32 %126, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %127)
  %129 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %5, align 8
  %130 = getelementptr inbounds %struct.ibmvfc_event, %struct.ibmvfc_event* %129, i32 0, i32 2
  %131 = load %struct.TYPE_14__*, %struct.TYPE_14__** %130, align 8
  %132 = icmp ne %struct.TYPE_14__* %131, null
  br i1 %132, label %133, label %142

133:                                              ; preds = %123
  %134 = load i32, i32* @DID_ERROR, align 4
  %135 = shl i32 %134, 16
  %136 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %5, align 8
  %137 = getelementptr inbounds %struct.ibmvfc_event, %struct.ibmvfc_event* %136, i32 0, i32 2
  %138 = load %struct.TYPE_14__*, %struct.TYPE_14__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %138, i32 0, i32 0
  store i32 %135, i32* %139, align 4
  %140 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %5, align 8
  %141 = getelementptr inbounds %struct.ibmvfc_event, %struct.ibmvfc_event* %140, i32 0, i32 0
  store i32 (%struct.ibmvfc_event*)* @ibmvfc_scsi_eh_done, i32 (%struct.ibmvfc_event*)** %141, align 8
  br label %150

142:                                              ; preds = %123
  %143 = load i32, i32* @IBMVFC_MAD_CRQ_ERROR, align 4
  %144 = call i32 @cpu_to_be16(i32 %143)
  %145 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %5, align 8
  %146 = getelementptr inbounds %struct.ibmvfc_event, %struct.ibmvfc_event* %145, i32 0, i32 1
  %147 = load %struct.TYPE_12__*, %struct.TYPE_12__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %148, i32 0, i32 0
  store i32 %144, i32* %149, align 8
  br label %150

150:                                              ; preds = %142, %133
  %151 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %5, align 8
  %152 = getelementptr inbounds %struct.ibmvfc_event, %struct.ibmvfc_event* %151, i32 0, i32 0
  %153 = load i32 (%struct.ibmvfc_event*)*, i32 (%struct.ibmvfc_event*)** %152, align 8
  %154 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %5, align 8
  %155 = call i32 %153(%struct.ibmvfc_event* %154)
  br label %159

156:                                              ; preds = %78
  %157 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %5, align 8
  %158 = call i32 @ibmvfc_trc_start(%struct.ibmvfc_event* %157)
  br label %159

159:                                              ; preds = %156, %150
  store i32 0, i32* %4, align 4
  br label %160

160:                                              ; preds = %159, %119
  %161 = load i32, i32* %4, align 4
  ret i32 %161
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @cpu_to_be64(i32) #2

declare dso_local i32 @BUG(...) #2

declare dso_local i32 @list_add_tail(i32*, i32*) #2

declare dso_local i32 @timer_setup(%struct.TYPE_13__*, i32, i32) #2

declare dso_local i32 @add_timer(%struct.TYPE_13__*) #2

declare dso_local i32 @mb(...) #2

declare dso_local i32 @ibmvfc_send_crq(%struct.ibmvfc_host*, i32, i32) #2

declare dso_local i32 @be64_to_cpu(i32) #2

declare dso_local i32 @list_del(i32*) #2

declare dso_local i32 @del_timer(%struct.TYPE_13__*) #2

declare dso_local i64 @printk_ratelimit(...) #2

declare dso_local i32 @dev_warn(i32, i8*) #2

declare dso_local i32 @scsi_dma_unmap(%struct.TYPE_14__*) #2

declare dso_local i32 @ibmvfc_free_event(%struct.ibmvfc_event*) #2

declare dso_local i32 @dev_err(i32, i8*, i32) #2

declare dso_local i32 @ibmvfc_scsi_eh_done(%struct.ibmvfc_event*) #2

declare dso_local i32 @cpu_to_be16(i32) #2

declare dso_local i32 @ibmvfc_trc_start(%struct.ibmvfc_event*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
