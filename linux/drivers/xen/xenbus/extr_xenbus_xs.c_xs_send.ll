; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/xenbus/extr_xenbus_xs.c_xs_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/xenbus/extr_xenbus_xs.c_xs_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xb_req_data = type { i32, %struct.xsd_sockmsg, i32, i32, i32, i64 }
%struct.xsd_sockmsg = type { i32 }

@xb_req_state_queued = common dso_local global i32 0, align 4
@xb_write_mutex = common dso_local global i32 0, align 4
@xb_write_list = common dso_local global i32 0, align 4
@xb_waitq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xb_req_data*, %struct.xsd_sockmsg*)* @xs_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xs_send(%struct.xb_req_data* %0, %struct.xsd_sockmsg* %1) #0 {
  %3 = alloca %struct.xb_req_data*, align 8
  %4 = alloca %struct.xsd_sockmsg*, align 8
  %5 = alloca i32, align 4
  store %struct.xb_req_data* %0, %struct.xb_req_data** %3, align 8
  store %struct.xsd_sockmsg* %1, %struct.xsd_sockmsg** %4, align 8
  %6 = load %struct.xb_req_data*, %struct.xb_req_data** %3, align 8
  %7 = getelementptr inbounds %struct.xb_req_data, %struct.xb_req_data* %6, i32 0, i32 1
  %8 = load %struct.xsd_sockmsg*, %struct.xsd_sockmsg** %4, align 8
  %9 = bitcast %struct.xsd_sockmsg* %7 to i8*
  %10 = bitcast %struct.xsd_sockmsg* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %9, i8* align 4 %10, i64 4, i1 false)
  %11 = load %struct.xb_req_data*, %struct.xb_req_data** %3, align 8
  %12 = getelementptr inbounds %struct.xb_req_data, %struct.xb_req_data* %11, i32 0, i32 5
  store i64 0, i64* %12, align 8
  %13 = load i32, i32* @xb_req_state_queued, align 4
  %14 = load %struct.xb_req_data*, %struct.xb_req_data** %3, align 8
  %15 = getelementptr inbounds %struct.xb_req_data, %struct.xb_req_data* %14, i32 0, i32 4
  store i32 %13, i32* %15, align 8
  %16 = load %struct.xb_req_data*, %struct.xb_req_data** %3, align 8
  %17 = getelementptr inbounds %struct.xb_req_data, %struct.xb_req_data* %16, i32 0, i32 3
  %18 = call i32 @init_waitqueue_head(i32* %17)
  %19 = load %struct.xb_req_data*, %struct.xb_req_data** %3, align 8
  %20 = getelementptr inbounds %struct.xb_req_data, %struct.xb_req_data* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.xsd_sockmsg, %struct.xsd_sockmsg* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.xb_req_data*, %struct.xb_req_data** %3, align 8
  %24 = getelementptr inbounds %struct.xb_req_data, %struct.xb_req_data* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 8
  %25 = load %struct.xb_req_data*, %struct.xb_req_data** %3, align 8
  %26 = call i32 @xs_request_enter(%struct.xb_req_data* %25)
  %27 = load %struct.xb_req_data*, %struct.xb_req_data** %3, align 8
  %28 = getelementptr inbounds %struct.xb_req_data, %struct.xb_req_data* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.xsd_sockmsg, %struct.xsd_sockmsg* %28, i32 0, i32 0
  store i32 %26, i32* %29, align 4
  %30 = call i32 @mutex_lock(i32* @xb_write_mutex)
  %31 = load %struct.xb_req_data*, %struct.xb_req_data** %3, align 8
  %32 = getelementptr inbounds %struct.xb_req_data, %struct.xb_req_data* %31, i32 0, i32 0
  %33 = call i32 @list_add_tail(i32* %32, i32* @xb_write_list)
  %34 = call i32 @list_is_singular(i32* @xb_write_list)
  store i32 %34, i32* %5, align 4
  %35 = call i32 @mutex_unlock(i32* @xb_write_mutex)
  %36 = load i32, i32* %5, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %2
  %39 = call i32 @wake_up(i32* @xb_waitq)
  br label %40

40:                                               ; preds = %38, %2
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @init_waitqueue_head(i32*) #2

declare dso_local i32 @xs_request_enter(%struct.xb_req_data*) #2

declare dso_local i32 @mutex_lock(i32*) #2

declare dso_local i32 @list_add_tail(i32*, i32*) #2

declare dso_local i32 @list_is_singular(i32*) #2

declare dso_local i32 @mutex_unlock(i32*) #2

declare dso_local i32 @wake_up(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
