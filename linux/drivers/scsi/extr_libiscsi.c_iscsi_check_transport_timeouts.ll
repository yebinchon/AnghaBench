; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_libiscsi.c_iscsi_check_transport_timeouts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_libiscsi.c_iscsi_check_transport_timeouts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_conn = type { i64, i64, i64, i64, i32, %struct.iscsi_session* }
%struct.iscsi_session = type { i64, i32 }
%struct.timer_list = type { i32 }

@transport_timer = common dso_local global i32 0, align 4
@ISCSI_STATE_LOGGED_IN = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [87 x i8] c"ping timeout of %d secs expired, recv timeout %d, last rx %lu, last ping %lu, now %lu\0A\00", align 1
@jiffies = common dso_local global i32 0, align 4
@ISCSI_ERR_NOP_TIMEDOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Sending nopout as ping\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Setting next tmo %lu\0A\00", align 1
@conn = common dso_local global %struct.iscsi_conn* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @iscsi_check_transport_timeouts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iscsi_check_transport_timeouts(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.iscsi_conn*, align 8
  %4 = alloca %struct.iscsi_session*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %8 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %9 = ptrtoint %struct.iscsi_conn* %8 to i32
  %10 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %11 = load i32, i32* @transport_timer, align 4
  %12 = call %struct.iscsi_conn* @from_timer(i32 %9, %struct.timer_list* %10, i32 %11)
  store %struct.iscsi_conn* %12, %struct.iscsi_conn** %3, align 8
  %13 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %14 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %13, i32 0, i32 5
  %15 = load %struct.iscsi_session*, %struct.iscsi_session** %14, align 8
  store %struct.iscsi_session* %15, %struct.iscsi_session** %4, align 8
  store i64 0, i64* %6, align 8
  %16 = load %struct.iscsi_session*, %struct.iscsi_session** %4, align 8
  %17 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %16, i32 0, i32 1
  %18 = call i32 @spin_lock(i32* %17)
  %19 = load %struct.iscsi_session*, %struct.iscsi_session** %4, align 8
  %20 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @ISCSI_STATE_LOGGED_IN, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  br label %105

25:                                               ; preds = %1
  %26 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %27 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %5, align 8
  %29 = load i64, i64* %5, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %25
  br label %105

32:                                               ; preds = %25
  %33 = load i64, i64* @HZ, align 8
  %34 = load i64, i64* %5, align 8
  %35 = mul i64 %34, %33
  store i64 %35, i64* %5, align 8
  %36 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %37 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %7, align 8
  %39 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %40 = call i64 @iscsi_has_ping_timed_out(%struct.iscsi_conn* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %63

42:                                               ; preds = %32
  %43 = load i32, i32* @KERN_ERR, align 4
  %44 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %45 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %46 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %49 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* %7, align 8
  %52 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %53 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %52, i32 0, i32 3
  %54 = load i64, i64* %53, align 8
  %55 = load i32, i32* @jiffies, align 4
  %56 = call i32 @iscsi_conn_printk(i32 %43, %struct.iscsi_conn* %44, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str, i64 0, i64 0), i64 %47, i64 %50, i64 %51, i64 %54, i32 %55)
  %57 = load %struct.iscsi_session*, %struct.iscsi_session** %4, align 8
  %58 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %57, i32 0, i32 1
  %59 = call i32 @spin_unlock(i32* %58)
  %60 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %61 = load i32, i32* @ISCSI_ERR_NOP_TIMEDOUT, align 4
  %62 = call i32 @iscsi_conn_failure(%struct.iscsi_conn* %60, i32 %61)
  br label %109

63:                                               ; preds = %32
  %64 = load i64, i64* %7, align 8
  %65 = load i64, i64* %5, align 8
  %66 = add i64 %64, %65
  %67 = load i32, i32* @jiffies, align 4
  %68 = call i64 @time_before_eq(i64 %66, i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %93

70:                                               ; preds = %63
  %71 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %72 = call i32 (%struct.iscsi_conn*, i8*, ...) @ISCSI_DBG_CONN(%struct.iscsi_conn* %71, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %73 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %74 = call i64 @iscsi_send_nopout(%struct.iscsi_conn* %73, i32* null)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %70
  %77 = load i32, i32* @jiffies, align 4
  %78 = sext i32 %77 to i64
  %79 = load i64, i64* @HZ, align 8
  %80 = mul i64 1, %79
  %81 = add i64 %78, %80
  store i64 %81, i64* %6, align 8
  br label %92

82:                                               ; preds = %70
  %83 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %84 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %83, i32 0, i32 3
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %87 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @HZ, align 8
  %90 = mul i64 %88, %89
  %91 = add i64 %85, %90
  store i64 %91, i64* %6, align 8
  br label %92

92:                                               ; preds = %82, %76
  br label %97

93:                                               ; preds = %63
  %94 = load i64, i64* %7, align 8
  %95 = load i64, i64* %5, align 8
  %96 = add i64 %94, %95
  store i64 %96, i64* %6, align 8
  br label %97

97:                                               ; preds = %93, %92
  %98 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %99 = load i64, i64* %6, align 8
  %100 = call i32 (%struct.iscsi_conn*, i8*, ...) @ISCSI_DBG_CONN(%struct.iscsi_conn* %98, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i64 %99)
  %101 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %102 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %101, i32 0, i32 4
  %103 = load i64, i64* %6, align 8
  %104 = call i32 @mod_timer(i32* %102, i64 %103)
  br label %105

105:                                              ; preds = %97, %31, %24
  %106 = load %struct.iscsi_session*, %struct.iscsi_session** %4, align 8
  %107 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %106, i32 0, i32 1
  %108 = call i32 @spin_unlock(i32* %107)
  br label %109

109:                                              ; preds = %105, %42
  ret void
}

declare dso_local %struct.iscsi_conn* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @iscsi_has_ping_timed_out(%struct.iscsi_conn*) #1

declare dso_local i32 @iscsi_conn_printk(i32, %struct.iscsi_conn*, i8*, i64, i64, i64, i64, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @iscsi_conn_failure(%struct.iscsi_conn*, i32) #1

declare dso_local i64 @time_before_eq(i64, i32) #1

declare dso_local i32 @ISCSI_DBG_CONN(%struct.iscsi_conn*, i8*, ...) #1

declare dso_local i64 @iscsi_send_nopout(%struct.iscsi_conn*, i32*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
