; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_disc.c_esas2r_disc_dev_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_disc.c_esas2r_disc_dev_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esas2r_adapter = type { %struct.esas2r_target*, %struct.esas2r_target* }
%struct.esas2r_target = type { i64 }
%struct.esas2r_request = type { i64 }
%struct.esas2r_disc_context = type { %struct.esas2r_target*, i32 }

@TS_NOT_PRESENT = common dso_local global i64 0, align 8
@TS_INVALID = common dso_local global i64 0, align 8
@DCS_DEV_ADD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.esas2r_adapter*, %struct.esas2r_request*)* @esas2r_disc_dev_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @esas2r_disc_dev_remove(%struct.esas2r_adapter* %0, %struct.esas2r_request* %1) #0 {
  %3 = alloca %struct.esas2r_adapter*, align 8
  %4 = alloca %struct.esas2r_request*, align 8
  %5 = alloca %struct.esas2r_disc_context*, align 8
  %6 = alloca %struct.esas2r_target*, align 8
  %7 = alloca %struct.esas2r_target*, align 8
  store %struct.esas2r_adapter* %0, %struct.esas2r_adapter** %3, align 8
  store %struct.esas2r_request* %1, %struct.esas2r_request** %4, align 8
  %8 = load %struct.esas2r_request*, %struct.esas2r_request** %4, align 8
  %9 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.esas2r_disc_context*
  store %struct.esas2r_disc_context* %11, %struct.esas2r_disc_context** %5, align 8
  %12 = call i32 (...) @esas2r_trace_enter()
  %13 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %14 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %13, i32 0, i32 0
  %15 = load %struct.esas2r_target*, %struct.esas2r_target** %14, align 8
  store %struct.esas2r_target* %15, %struct.esas2r_target** %6, align 8
  br label %16

16:                                               ; preds = %45, %2
  %17 = load %struct.esas2r_target*, %struct.esas2r_target** %6, align 8
  %18 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %19 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %18, i32 0, i32 1
  %20 = load %struct.esas2r_target*, %struct.esas2r_target** %19, align 8
  %21 = icmp ult %struct.esas2r_target* %17, %20
  br i1 %21, label %22, label %48

22:                                               ; preds = %16
  %23 = load %struct.esas2r_target*, %struct.esas2r_target** %6, align 8
  %24 = getelementptr inbounds %struct.esas2r_target, %struct.esas2r_target* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @TS_NOT_PRESENT, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  br label %45

29:                                               ; preds = %22
  %30 = load i64, i64* @TS_INVALID, align 8
  %31 = load %struct.esas2r_target*, %struct.esas2r_target** %6, align 8
  %32 = getelementptr inbounds %struct.esas2r_target, %struct.esas2r_target* %31, i32 0, i32 0
  store i64 %30, i64* %32, align 8
  %33 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %34 = load %struct.esas2r_target*, %struct.esas2r_target** %6, align 8
  %35 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %36 = call i32 @esas2r_targ_get_id(%struct.esas2r_target* %34, %struct.esas2r_adapter* %35)
  %37 = call %struct.esas2r_target* @esas2r_targ_db_find_by_virt_id(%struct.esas2r_adapter* %33, i32 %36)
  store %struct.esas2r_target* %37, %struct.esas2r_target** %7, align 8
  %38 = load %struct.esas2r_target*, %struct.esas2r_target** %7, align 8
  %39 = icmp ne %struct.esas2r_target* %38, null
  br i1 %39, label %40, label %44

40:                                               ; preds = %29
  %41 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %42 = load %struct.esas2r_target*, %struct.esas2r_target** %7, align 8
  %43 = call i32 @esas2r_targ_db_remove(%struct.esas2r_adapter* %41, %struct.esas2r_target* %42)
  br label %44

44:                                               ; preds = %40, %29
  br label %45

45:                                               ; preds = %44, %28
  %46 = load %struct.esas2r_target*, %struct.esas2r_target** %6, align 8
  %47 = getelementptr inbounds %struct.esas2r_target, %struct.esas2r_target* %46, i32 1
  store %struct.esas2r_target* %47, %struct.esas2r_target** %6, align 8
  br label %16

48:                                               ; preds = %16
  %49 = load i32, i32* @DCS_DEV_ADD, align 4
  %50 = load %struct.esas2r_disc_context*, %struct.esas2r_disc_context** %5, align 8
  %51 = getelementptr inbounds %struct.esas2r_disc_context, %struct.esas2r_disc_context* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 8
  %52 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %53 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %52, i32 0, i32 0
  %54 = load %struct.esas2r_target*, %struct.esas2r_target** %53, align 8
  %55 = load %struct.esas2r_disc_context*, %struct.esas2r_disc_context** %5, align 8
  %56 = getelementptr inbounds %struct.esas2r_disc_context, %struct.esas2r_disc_context* %55, i32 0, i32 0
  store %struct.esas2r_target* %54, %struct.esas2r_target** %56, align 8
  %57 = call i32 (...) @esas2r_trace_exit()
  ret i32 0
}

declare dso_local i32 @esas2r_trace_enter(...) #1

declare dso_local %struct.esas2r_target* @esas2r_targ_db_find_by_virt_id(%struct.esas2r_adapter*, i32) #1

declare dso_local i32 @esas2r_targ_get_id(%struct.esas2r_target*, %struct.esas2r_adapter*) #1

declare dso_local i32 @esas2r_targ_db_remove(%struct.esas2r_adapter*, %struct.esas2r_target*) #1

declare dso_local i32 @esas2r_trace_exit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
