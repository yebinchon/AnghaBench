; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi/extr_ibmvfc.c_ibmvfc_adisc_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi/extr_ibmvfc.c_ibmvfc_adisc_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibmvfc_target = type { i64, i32, i32, i32, %struct.ibmvfc_host* }
%struct.ibmvfc_host = type { i64, i64, i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.timer_list = type { i32 }
%struct.ibmvfc_event = type { %struct.TYPE_4__, %struct.ibmvfc_target* }
%struct.TYPE_4__ = type { %struct.ibmvfc_tmf }
%struct.ibmvfc_tmf = type { i8*, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i8*, i8* }

@timer = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"ADISC timeout\0A\00", align 1
@disc_threads = common dso_local global i64 0, align 8
@IBMVFC_TGT_ACTION_INIT_WAIT = common dso_local global i64 0, align 8
@IBMVFC_INITIALIZING = common dso_local global i64 0, align 8
@IBMVFC_HOST_ACTION_QUERY_TGTS = common dso_local global i64 0, align 8
@ibmvfc_tgt_adisc_cancel_done = common dso_local global i32 0, align 4
@IBMVFC_MAD_FORMAT = common dso_local global i32 0, align 4
@IBMVFC_TMF_MAD = common dso_local global i32 0, align 4
@default_timeout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"Failed to send cancel event for ADISC. rc=%d\0A\00", align 1
@ibmvfc_release_tgt = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"Attempting to cancel ADISC\0A\00", align 1
@tgt = common dso_local global %struct.ibmvfc_target* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @ibmvfc_adisc_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ibmvfc_adisc_timeout(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.ibmvfc_target*, align 8
  %4 = alloca %struct.ibmvfc_host*, align 8
  %5 = alloca %struct.ibmvfc_event*, align 8
  %6 = alloca %struct.ibmvfc_tmf*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %9 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %3, align 8
  %10 = ptrtoint %struct.ibmvfc_target* %9 to i32
  %11 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %12 = load i32, i32* @timer, align 4
  %13 = call %struct.ibmvfc_target* @from_timer(i32 %10, %struct.timer_list* %11, i32 %12)
  store %struct.ibmvfc_target* %13, %struct.ibmvfc_target** %3, align 8
  %14 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %3, align 8
  %15 = getelementptr inbounds %struct.ibmvfc_target, %struct.ibmvfc_target* %14, i32 0, i32 4
  %16 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %15, align 8
  store %struct.ibmvfc_host* %16, %struct.ibmvfc_host** %4, align 8
  %17 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %3, align 8
  %18 = call i32 @tgt_dbg(%struct.ibmvfc_target* %17, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %4, align 8
  %20 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %19, i32 0, i32 3
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i64, i64* %7, align 8
  %25 = call i32 @spin_lock_irqsave(i32 %23, i64 %24)
  %26 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %4, align 8
  %27 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @disc_threads, align 8
  %30 = icmp sge i64 %28, %29
  br i1 %30, label %49, label %31

31:                                               ; preds = %1
  %32 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %3, align 8
  %33 = getelementptr inbounds %struct.ibmvfc_target, %struct.ibmvfc_target* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @IBMVFC_TGT_ACTION_INIT_WAIT, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %49, label %37

37:                                               ; preds = %31
  %38 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %4, align 8
  %39 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @IBMVFC_INITIALIZING, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %49, label %43

43:                                               ; preds = %37
  %44 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %4, align 8
  %45 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @IBMVFC_HOST_ACTION_QUERY_TGTS, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %57

49:                                               ; preds = %43, %37, %31, %1
  %50 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %4, align 8
  %51 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %50, i32 0, i32 3
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i64, i64* %7, align 8
  %56 = call i32 @spin_unlock_irqrestore(i32 %54, i64 %55)
  br label %135

57:                                               ; preds = %43
  %58 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %4, align 8
  %59 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = add nsw i64 %60, 1
  store i64 %61, i64* %59, align 8
  %62 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %3, align 8
  %63 = getelementptr inbounds %struct.ibmvfc_target, %struct.ibmvfc_target* %62, i32 0, i32 2
  %64 = call i32 @kref_get(i32* %63)
  %65 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %4, align 8
  %66 = call %struct.ibmvfc_event* @ibmvfc_get_event(%struct.ibmvfc_host* %65)
  store %struct.ibmvfc_event* %66, %struct.ibmvfc_event** %5, align 8
  %67 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %5, align 8
  %68 = load i32, i32* @ibmvfc_tgt_adisc_cancel_done, align 4
  %69 = load i32, i32* @IBMVFC_MAD_FORMAT, align 4
  %70 = call i32 @ibmvfc_init_event(%struct.ibmvfc_event* %67, i32 %68, i32 %69)
  %71 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %3, align 8
  %72 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %5, align 8
  %73 = getelementptr inbounds %struct.ibmvfc_event, %struct.ibmvfc_event* %72, i32 0, i32 1
  store %struct.ibmvfc_target* %71, %struct.ibmvfc_target** %73, align 8
  %74 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %5, align 8
  %75 = getelementptr inbounds %struct.ibmvfc_event, %struct.ibmvfc_event* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  store %struct.ibmvfc_tmf* %76, %struct.ibmvfc_tmf** %6, align 8
  %77 = load %struct.ibmvfc_tmf*, %struct.ibmvfc_tmf** %6, align 8
  %78 = call i32 @memset(%struct.ibmvfc_tmf* %77, i32 0, i32 40)
  %79 = call i8* @cpu_to_be32(i32 1)
  %80 = load %struct.ibmvfc_tmf*, %struct.ibmvfc_tmf** %6, align 8
  %81 = getelementptr inbounds %struct.ibmvfc_tmf, %struct.ibmvfc_tmf* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 2
  store i8* %79, i8** %82, align 8
  %83 = load i32, i32* @IBMVFC_TMF_MAD, align 4
  %84 = call i8* @cpu_to_be32(i32 %83)
  %85 = load %struct.ibmvfc_tmf*, %struct.ibmvfc_tmf** %6, align 8
  %86 = getelementptr inbounds %struct.ibmvfc_tmf, %struct.ibmvfc_tmf* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 1
  store i8* %84, i8** %87, align 8
  %88 = call i32 @cpu_to_be16(i32 40)
  %89 = load %struct.ibmvfc_tmf*, %struct.ibmvfc_tmf** %6, align 8
  %90 = getelementptr inbounds %struct.ibmvfc_tmf, %struct.ibmvfc_tmf* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  store i32 %88, i32* %91, align 8
  %92 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %3, align 8
  %93 = getelementptr inbounds %struct.ibmvfc_target, %struct.ibmvfc_target* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @cpu_to_be64(i32 %94)
  %96 = load %struct.ibmvfc_tmf*, %struct.ibmvfc_tmf** %6, align 8
  %97 = getelementptr inbounds %struct.ibmvfc_tmf, %struct.ibmvfc_tmf* %96, i32 0, i32 1
  store i32 %95, i32* %97, align 8
  %98 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %3, align 8
  %99 = getelementptr inbounds %struct.ibmvfc_target, %struct.ibmvfc_target* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = call i8* @cpu_to_be32(i32 %100)
  %102 = load %struct.ibmvfc_tmf*, %struct.ibmvfc_tmf** %6, align 8
  %103 = getelementptr inbounds %struct.ibmvfc_tmf, %struct.ibmvfc_tmf* %102, i32 0, i32 0
  store i8* %101, i8** %103, align 8
  %104 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %5, align 8
  %105 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %4, align 8
  %106 = load i32, i32* @default_timeout, align 4
  %107 = call i32 @ibmvfc_send_event(%struct.ibmvfc_event* %104, %struct.ibmvfc_host* %105, i32 %106)
  store i32 %107, i32* %8, align 4
  %108 = load i32, i32* %8, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %124

110:                                              ; preds = %57
  %111 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %3, align 8
  %112 = load i32, i32* %8, align 4
  %113 = call i32 @tgt_err(%struct.ibmvfc_target* %111, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %112)
  %114 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %4, align 8
  %115 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = add nsw i64 %116, -1
  store i64 %117, i64* %115, align 8
  %118 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %3, align 8
  %119 = getelementptr inbounds %struct.ibmvfc_target, %struct.ibmvfc_target* %118, i32 0, i32 2
  %120 = load i32, i32* @ibmvfc_release_tgt, align 4
  %121 = call i32 @kref_put(i32* %119, i32 %120)
  %122 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %4, align 8
  %123 = call i32 @__ibmvfc_reset_host(%struct.ibmvfc_host* %122)
  br label %127

124:                                              ; preds = %57
  %125 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %3, align 8
  %126 = call i32 @tgt_dbg(%struct.ibmvfc_target* %125, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %127

127:                                              ; preds = %124, %110
  %128 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %4, align 8
  %129 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %128, i32 0, i32 3
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load i64, i64* %7, align 8
  %134 = call i32 @spin_unlock_irqrestore(i32 %132, i64 %133)
  br label %135

135:                                              ; preds = %127, %49
  ret void
}

declare dso_local %struct.ibmvfc_target* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @tgt_dbg(%struct.ibmvfc_target*, i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

declare dso_local i32 @kref_get(i32*) #1

declare dso_local %struct.ibmvfc_event* @ibmvfc_get_event(%struct.ibmvfc_host*) #1

declare dso_local i32 @ibmvfc_init_event(%struct.ibmvfc_event*, i32, i32) #1

declare dso_local i32 @memset(%struct.ibmvfc_tmf*, i32, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @cpu_to_be64(i32) #1

declare dso_local i32 @ibmvfc_send_event(%struct.ibmvfc_event*, %struct.ibmvfc_host*, i32) #1

declare dso_local i32 @tgt_err(%struct.ibmvfc_target*, i8*, i32) #1

declare dso_local i32 @kref_put(i32*, i32) #1

declare dso_local i32 @__ibmvfc_reset_host(%struct.ibmvfc_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
