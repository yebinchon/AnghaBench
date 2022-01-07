; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi/extr_ibmvfc.c_ibmvfc_tgt_adisc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi/extr_ibmvfc.c_ibmvfc_tgt_adisc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibmvfc_target = type { i32, i32, %struct.TYPE_15__, i32, %struct.ibmvfc_host* }
%struct.TYPE_15__ = type { i64 }
%struct.ibmvfc_host = type { i64, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32, i32 }
%struct.ibmvfc_passthru_mad = type { %struct.TYPE_12__, %struct.TYPE_11__ }
%struct.TYPE_12__ = type { i8** }
%struct.TYPE_11__ = type { i8*, i32, i8* }
%struct.ibmvfc_event = type { %struct.TYPE_10__, %struct.ibmvfc_target* }
%struct.TYPE_10__ = type { %struct.ibmvfc_passthru_mad }

@disc_threads = common dso_local global i64 0, align 8
@ibmvfc_tgt_adisc_done = common dso_local global i32 0, align 4
@IBMVFC_MAD_FORMAT = common dso_local global i32 0, align 4
@IBMVFC_FC_ELS = common dso_local global i32 0, align 4
@IBMVFC_ADISC = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@IBMVFC_ADISC_TIMEOUT = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@IBMVFC_TGT_ACTION_INIT_WAIT = common dso_local global i32 0, align 4
@IBMVFC_ADISC_PLUS_CANCEL_TIMEOUT = common dso_local global i32 0, align 4
@IBMVFC_TGT_ACTION_NONE = common dso_local global i32 0, align 4
@ibmvfc_release_tgt = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"Sent ADISC\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ibmvfc_target*)* @ibmvfc_tgt_adisc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ibmvfc_tgt_adisc(%struct.ibmvfc_target* %0) #0 {
  %2 = alloca %struct.ibmvfc_target*, align 8
  %3 = alloca %struct.ibmvfc_passthru_mad*, align 8
  %4 = alloca %struct.ibmvfc_host*, align 8
  %5 = alloca %struct.ibmvfc_event*, align 8
  store %struct.ibmvfc_target* %0, %struct.ibmvfc_target** %2, align 8
  %6 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %2, align 8
  %7 = getelementptr inbounds %struct.ibmvfc_target, %struct.ibmvfc_target* %6, i32 0, i32 4
  %8 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %7, align 8
  store %struct.ibmvfc_host* %8, %struct.ibmvfc_host** %4, align 8
  %9 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %4, align 8
  %10 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @disc_threads, align 8
  %13 = icmp sge i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %153

15:                                               ; preds = %1
  %16 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %2, align 8
  %17 = getelementptr inbounds %struct.ibmvfc_target, %struct.ibmvfc_target* %16, i32 0, i32 1
  %18 = call i32 @kref_get(i32* %17)
  %19 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %4, align 8
  %20 = call %struct.ibmvfc_event* @ibmvfc_get_event(%struct.ibmvfc_host* %19)
  store %struct.ibmvfc_event* %20, %struct.ibmvfc_event** %5, align 8
  %21 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %4, align 8
  %22 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %23, 1
  store i64 %24, i64* %22, align 8
  %25 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %5, align 8
  %26 = load i32, i32* @ibmvfc_tgt_adisc_done, align 4
  %27 = load i32, i32* @IBMVFC_MAD_FORMAT, align 4
  %28 = call i32 @ibmvfc_init_event(%struct.ibmvfc_event* %25, i32 %26, i32 %27)
  %29 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %2, align 8
  %30 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %5, align 8
  %31 = getelementptr inbounds %struct.ibmvfc_event, %struct.ibmvfc_event* %30, i32 0, i32 1
  store %struct.ibmvfc_target* %29, %struct.ibmvfc_target** %31, align 8
  %32 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %5, align 8
  %33 = call i32 @ibmvfc_init_passthru(%struct.ibmvfc_event* %32)
  %34 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %5, align 8
  %35 = getelementptr inbounds %struct.ibmvfc_event, %struct.ibmvfc_event* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  store %struct.ibmvfc_passthru_mad* %36, %struct.ibmvfc_passthru_mad** %3, align 8
  %37 = load i32, i32* @IBMVFC_FC_ELS, align 4
  %38 = call i8* @cpu_to_be32(i32 %37)
  %39 = load %struct.ibmvfc_passthru_mad*, %struct.ibmvfc_passthru_mad** %3, align 8
  %40 = getelementptr inbounds %struct.ibmvfc_passthru_mad, %struct.ibmvfc_passthru_mad* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 2
  store i8* %38, i8** %41, align 8
  %42 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %2, align 8
  %43 = getelementptr inbounds %struct.ibmvfc_target, %struct.ibmvfc_target* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @cpu_to_be64(i32 %44)
  %46 = load %struct.ibmvfc_passthru_mad*, %struct.ibmvfc_passthru_mad** %3, align 8
  %47 = getelementptr inbounds %struct.ibmvfc_passthru_mad, %struct.ibmvfc_passthru_mad* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 1
  store i32 %45, i32* %48, align 8
  %49 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %2, align 8
  %50 = getelementptr inbounds %struct.ibmvfc_target, %struct.ibmvfc_target* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i8* @cpu_to_be32(i32 %51)
  %53 = load %struct.ibmvfc_passthru_mad*, %struct.ibmvfc_passthru_mad** %3, align 8
  %54 = getelementptr inbounds %struct.ibmvfc_passthru_mad, %struct.ibmvfc_passthru_mad* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 0
  store i8* %52, i8** %55, align 8
  %56 = load i32, i32* @IBMVFC_ADISC, align 4
  %57 = call i8* @cpu_to_be32(i32 %56)
  %58 = load %struct.ibmvfc_passthru_mad*, %struct.ibmvfc_passthru_mad** %3, align 8
  %59 = getelementptr inbounds %struct.ibmvfc_passthru_mad, %struct.ibmvfc_passthru_mad* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 0
  %61 = load i8**, i8*** %60, align 8
  %62 = getelementptr inbounds i8*, i8** %61, i64 0
  store i8* %57, i8** %62, align 8
  %63 = load %struct.ibmvfc_passthru_mad*, %struct.ibmvfc_passthru_mad** %3, align 8
  %64 = getelementptr inbounds %struct.ibmvfc_passthru_mad, %struct.ibmvfc_passthru_mad* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 0
  %66 = load i8**, i8*** %65, align 8
  %67 = getelementptr inbounds i8*, i8** %66, i64 2
  %68 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %4, align 8
  %69 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %68, i32 0, i32 1
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 2
  %73 = call i32 @memcpy(i8** %67, i32* %72, i32 4)
  %74 = load %struct.ibmvfc_passthru_mad*, %struct.ibmvfc_passthru_mad** %3, align 8
  %75 = getelementptr inbounds %struct.ibmvfc_passthru_mad, %struct.ibmvfc_passthru_mad* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 0
  %77 = load i8**, i8*** %76, align 8
  %78 = getelementptr inbounds i8*, i8** %77, i64 4
  %79 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %4, align 8
  %80 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %79, i32 0, i32 1
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 1
  %84 = call i32 @memcpy(i8** %78, i32* %83, i32 4)
  %85 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %4, align 8
  %86 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %85, i32 0, i32 1
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @be64_to_cpu(i32 %90)
  %92 = and i32 %91, 16777215
  %93 = call i8* @cpu_to_be32(i32 %92)
  %94 = load %struct.ibmvfc_passthru_mad*, %struct.ibmvfc_passthru_mad** %3, align 8
  %95 = getelementptr inbounds %struct.ibmvfc_passthru_mad, %struct.ibmvfc_passthru_mad* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 0
  %97 = load i8**, i8*** %96, align 8
  %98 = getelementptr inbounds i8*, i8** %97, i64 6
  store i8* %93, i8** %98, align 8
  %99 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %2, align 8
  %100 = getelementptr inbounds %struct.ibmvfc_target, %struct.ibmvfc_target* %99, i32 0, i32 2
  %101 = call i64 @timer_pending(%struct.TYPE_15__* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %113

103:                                              ; preds = %15
  %104 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %2, align 8
  %105 = getelementptr inbounds %struct.ibmvfc_target, %struct.ibmvfc_target* %104, i32 0, i32 2
  %106 = load i64, i64* @jiffies, align 8
  %107 = load i32, i32* @IBMVFC_ADISC_TIMEOUT, align 4
  %108 = load i32, i32* @HZ, align 4
  %109 = mul nsw i32 %107, %108
  %110 = sext i32 %109 to i64
  %111 = add nsw i64 %106, %110
  %112 = call i32 @mod_timer(%struct.TYPE_15__* %105, i64 %111)
  br label %126

113:                                              ; preds = %15
  %114 = load i64, i64* @jiffies, align 8
  %115 = load i32, i32* @IBMVFC_ADISC_TIMEOUT, align 4
  %116 = load i32, i32* @HZ, align 4
  %117 = mul nsw i32 %115, %116
  %118 = sext i32 %117 to i64
  %119 = add nsw i64 %114, %118
  %120 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %2, align 8
  %121 = getelementptr inbounds %struct.ibmvfc_target, %struct.ibmvfc_target* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %121, i32 0, i32 0
  store i64 %119, i64* %122, align 8
  %123 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %2, align 8
  %124 = getelementptr inbounds %struct.ibmvfc_target, %struct.ibmvfc_target* %123, i32 0, i32 2
  %125 = call i32 @add_timer(%struct.TYPE_15__* %124)
  br label %126

126:                                              ; preds = %113, %103
  %127 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %2, align 8
  %128 = load i32, i32* @IBMVFC_TGT_ACTION_INIT_WAIT, align 4
  %129 = call i32 @ibmvfc_set_tgt_action(%struct.ibmvfc_target* %127, i32 %128)
  %130 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %5, align 8
  %131 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %4, align 8
  %132 = load i32, i32* @IBMVFC_ADISC_PLUS_CANCEL_TIMEOUT, align 4
  %133 = call i64 @ibmvfc_send_event(%struct.ibmvfc_event* %130, %struct.ibmvfc_host* %131, i32 %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %150

135:                                              ; preds = %126
  %136 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %4, align 8
  %137 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = add nsw i64 %138, -1
  store i64 %139, i64* %137, align 8
  %140 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %2, align 8
  %141 = getelementptr inbounds %struct.ibmvfc_target, %struct.ibmvfc_target* %140, i32 0, i32 2
  %142 = call i32 @del_timer(%struct.TYPE_15__* %141)
  %143 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %2, align 8
  %144 = load i32, i32* @IBMVFC_TGT_ACTION_NONE, align 4
  %145 = call i32 @ibmvfc_set_tgt_action(%struct.ibmvfc_target* %143, i32 %144)
  %146 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %2, align 8
  %147 = getelementptr inbounds %struct.ibmvfc_target, %struct.ibmvfc_target* %146, i32 0, i32 1
  %148 = load i32, i32* @ibmvfc_release_tgt, align 4
  %149 = call i32 @kref_put(i32* %147, i32 %148)
  br label %153

150:                                              ; preds = %126
  %151 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %2, align 8
  %152 = call i32 @tgt_dbg(%struct.ibmvfc_target* %151, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %153

153:                                              ; preds = %14, %150, %135
  ret void
}

declare dso_local i32 @kref_get(i32*) #1

declare dso_local %struct.ibmvfc_event* @ibmvfc_get_event(%struct.ibmvfc_host*) #1

declare dso_local i32 @ibmvfc_init_event(%struct.ibmvfc_event*, i32, i32) #1

declare dso_local i32 @ibmvfc_init_passthru(%struct.ibmvfc_event*) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @cpu_to_be64(i32) #1

declare dso_local i32 @memcpy(i8**, i32*, i32) #1

declare dso_local i32 @be64_to_cpu(i32) #1

declare dso_local i64 @timer_pending(%struct.TYPE_15__*) #1

declare dso_local i32 @mod_timer(%struct.TYPE_15__*, i64) #1

declare dso_local i32 @add_timer(%struct.TYPE_15__*) #1

declare dso_local i32 @ibmvfc_set_tgt_action(%struct.ibmvfc_target*, i32) #1

declare dso_local i64 @ibmvfc_send_event(%struct.ibmvfc_event*, %struct.ibmvfc_host*, i32) #1

declare dso_local i32 @del_timer(%struct.TYPE_15__*) #1

declare dso_local i32 @kref_put(i32*, i32) #1

declare dso_local i32 @tgt_dbg(%struct.ibmvfc_target*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
