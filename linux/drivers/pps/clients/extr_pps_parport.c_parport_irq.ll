; ModuleID = '/home/carl/AnghaBench/linux/drivers/pps/clients/extr_pps_parport.c_parport_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pps/clients/extr_pps_parport.c_parport_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pps_event_time = type { i32 }
%struct.pps_client_pp = type { i32, i64, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.parport* }
%struct.parport = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"lost the signal\0A\00", align 1
@CLEAR_WAIT_MAX_ERRORS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [47 x i8] c"disabled clear edge capture after %d timeouts\0A\00", align 1
@PPS_CAPTUREASSERT = common dso_local global i32 0, align 4
@PPS_CAPTURECLEAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @parport_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parport_irq(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.pps_event_time, align 4
  %4 = alloca %struct.pps_event_time, align 4
  %5 = alloca %struct.pps_client_pp*, align 8
  %6 = alloca %struct.parport*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = bitcast i8* %9 to %struct.pps_client_pp*
  store %struct.pps_client_pp* %10, %struct.pps_client_pp** %5, align 8
  %11 = load %struct.pps_client_pp*, %struct.pps_client_pp** %5, align 8
  %12 = getelementptr inbounds %struct.pps_client_pp, %struct.pps_client_pp* %11, i32 0, i32 3
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load %struct.parport*, %struct.parport** %14, align 8
  store %struct.parport* %15, %struct.parport** %6, align 8
  %16 = call i32 @pps_get_ts(%struct.pps_event_time* %3)
  %17 = load %struct.pps_client_pp*, %struct.pps_client_pp** %5, align 8
  %18 = getelementptr inbounds %struct.pps_client_pp, %struct.pps_client_pp* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  br label %85

22:                                               ; preds = %1
  %23 = load i64, i64* %8, align 8
  %24 = call i32 @local_irq_save(i64 %23)
  %25 = load %struct.parport*, %struct.parport** %6, align 8
  %26 = call i32 @signal_is_set(%struct.parport* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %37, label %28

28:                                               ; preds = %22
  %29 = load i64, i64* %8, align 8
  %30 = call i32 @local_irq_restore(i64 %29)
  %31 = load %struct.pps_client_pp*, %struct.pps_client_pp** %5, align 8
  %32 = getelementptr inbounds %struct.pps_client_pp, %struct.pps_client_pp* %31, i32 0, i32 2
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 (i32, i8*, ...) @dev_err(i32 %35, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %85

37:                                               ; preds = %22
  %38 = load %struct.pps_client_pp*, %struct.pps_client_pp** %5, align 8
  %39 = getelementptr inbounds %struct.pps_client_pp, %struct.pps_client_pp* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %7, align 4
  br label %41

41:                                               ; preds = %55, %37
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %58

44:                                               ; preds = %41
  %45 = load %struct.parport*, %struct.parport** %6, align 8
  %46 = call i32 @signal_is_set(%struct.parport* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %54, label %48

48:                                               ; preds = %44
  %49 = call i32 @pps_get_ts(%struct.pps_event_time* %4)
  %50 = load i64, i64* %8, align 8
  %51 = call i32 @local_irq_restore(i64 %50)
  %52 = load %struct.pps_client_pp*, %struct.pps_client_pp** %5, align 8
  %53 = getelementptr inbounds %struct.pps_client_pp, %struct.pps_client_pp* %52, i32 0, i32 1
  store i64 0, i64* %53, align 8
  br label %91

54:                                               ; preds = %44
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %7, align 4
  %57 = add i32 %56, -1
  store i32 %57, i32* %7, align 4
  br label %41

58:                                               ; preds = %41
  %59 = load i64, i64* %8, align 8
  %60 = call i32 @local_irq_restore(i64 %59)
  %61 = load %struct.pps_client_pp*, %struct.pps_client_pp** %5, align 8
  %62 = getelementptr inbounds %struct.pps_client_pp, %struct.pps_client_pp* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = add nsw i64 %63, 1
  store i64 %64, i64* %62, align 8
  %65 = load %struct.pps_client_pp*, %struct.pps_client_pp** %5, align 8
  %66 = getelementptr inbounds %struct.pps_client_pp, %struct.pps_client_pp* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @CLEAR_WAIT_MAX_ERRORS, align 8
  %69 = icmp sge i64 %67, %68
  br i1 %69, label %70, label %84

70:                                               ; preds = %58
  %71 = load %struct.pps_client_pp*, %struct.pps_client_pp** %5, align 8
  %72 = getelementptr inbounds %struct.pps_client_pp, %struct.pps_client_pp* %71, i32 0, i32 2
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.pps_client_pp*, %struct.pps_client_pp** %5, align 8
  %77 = getelementptr inbounds %struct.pps_client_pp, %struct.pps_client_pp* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = call i32 (i32, i8*, ...) @dev_err(i32 %75, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i64 %78)
  %80 = load %struct.pps_client_pp*, %struct.pps_client_pp** %5, align 8
  %81 = getelementptr inbounds %struct.pps_client_pp, %struct.pps_client_pp* %80, i32 0, i32 0
  store i32 0, i32* %81, align 8
  %82 = load %struct.pps_client_pp*, %struct.pps_client_pp** %5, align 8
  %83 = getelementptr inbounds %struct.pps_client_pp, %struct.pps_client_pp* %82, i32 0, i32 1
  store i64 0, i64* %83, align 8
  br label %84

84:                                               ; preds = %70, %58
  br label %85

85:                                               ; preds = %84, %28, %21
  %86 = load %struct.pps_client_pp*, %struct.pps_client_pp** %5, align 8
  %87 = getelementptr inbounds %struct.pps_client_pp, %struct.pps_client_pp* %86, i32 0, i32 2
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %87, align 8
  %89 = load i32, i32* @PPS_CAPTUREASSERT, align 4
  %90 = call i32 @pps_event(%struct.TYPE_4__* %88, %struct.pps_event_time* %3, i32 %89, i32* null)
  br label %102

91:                                               ; preds = %48
  %92 = load %struct.pps_client_pp*, %struct.pps_client_pp** %5, align 8
  %93 = getelementptr inbounds %struct.pps_client_pp, %struct.pps_client_pp* %92, i32 0, i32 2
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = load i32, i32* @PPS_CAPTUREASSERT, align 4
  %96 = call i32 @pps_event(%struct.TYPE_4__* %94, %struct.pps_event_time* %3, i32 %95, i32* null)
  %97 = load %struct.pps_client_pp*, %struct.pps_client_pp** %5, align 8
  %98 = getelementptr inbounds %struct.pps_client_pp, %struct.pps_client_pp* %97, i32 0, i32 2
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %98, align 8
  %100 = load i32, i32* @PPS_CAPTURECLEAR, align 4
  %101 = call i32 @pps_event(%struct.TYPE_4__* %99, %struct.pps_event_time* %4, i32 %100, i32* null)
  br label %102

102:                                              ; preds = %91, %85
  ret void
}

declare dso_local i32 @pps_get_ts(%struct.pps_event_time*) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @signal_is_set(%struct.parport*) #1

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @pps_event(%struct.TYPE_4__*, %struct.pps_event_time*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
