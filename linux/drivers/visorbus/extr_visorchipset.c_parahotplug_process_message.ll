; ModuleID = '/home/carl/AnghaBench/linux/drivers/visorbus/extr_visorchipset.c_parahotplug_process_message.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/visorbus/extr_visorchipset.c_parahotplug_process_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.controlvm_message = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.parahotplug_request = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@CONTROLVM_RESP_SUCCESS = common dso_local global i32 0, align 4
@parahotplug_request_list_lock = common dso_local global i32 0, align 4
@parahotplug_request_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.controlvm_message*)* @parahotplug_process_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parahotplug_process_message(%struct.controlvm_message* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.controlvm_message*, align 8
  %4 = alloca %struct.parahotplug_request*, align 8
  %5 = alloca i32, align 4
  store %struct.controlvm_message* %0, %struct.controlvm_message** %3, align 8
  %6 = load %struct.controlvm_message*, %struct.controlvm_message** %3, align 8
  %7 = call %struct.parahotplug_request* @parahotplug_request_create(%struct.controlvm_message* %6)
  store %struct.parahotplug_request* %7, %struct.parahotplug_request** %4, align 8
  %8 = load %struct.parahotplug_request*, %struct.parahotplug_request** %4, align 8
  %9 = icmp ne %struct.parahotplug_request* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %60

13:                                               ; preds = %1
  %14 = load %struct.controlvm_message*, %struct.controlvm_message** %3, align 8
  %15 = getelementptr inbounds %struct.controlvm_message, %struct.controlvm_message* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %38

21:                                               ; preds = %13
  %22 = load %struct.parahotplug_request*, %struct.parahotplug_request** %4, align 8
  %23 = call i32 @parahotplug_request_kickoff(%struct.parahotplug_request* %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  br label %50

27:                                               ; preds = %21
  %28 = load %struct.controlvm_message*, %struct.controlvm_message** %3, align 8
  %29 = getelementptr inbounds %struct.controlvm_message, %struct.controlvm_message* %28, i32 0, i32 1
  %30 = load i32, i32* @CONTROLVM_RESP_SUCCESS, align 4
  %31 = load %struct.controlvm_message*, %struct.controlvm_message** %3, align 8
  %32 = getelementptr inbounds %struct.controlvm_message, %struct.controlvm_message* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = call i32 @controlvm_respond(i32* %29, i32 %30, %struct.TYPE_6__* %34)
  %36 = load %struct.parahotplug_request*, %struct.parahotplug_request** %4, align 8
  %37 = call i32 @parahotplug_request_destroy(%struct.parahotplug_request* %36)
  store i32 0, i32* %2, align 4
  br label %60

38:                                               ; preds = %13
  %39 = call i32 @spin_lock(i32* @parahotplug_request_list_lock)
  %40 = load %struct.parahotplug_request*, %struct.parahotplug_request** %4, align 8
  %41 = getelementptr inbounds %struct.parahotplug_request, %struct.parahotplug_request* %40, i32 0, i32 0
  %42 = call i32 @list_add_tail(i32* %41, i32* @parahotplug_request_list)
  %43 = call i32 @spin_unlock(i32* @parahotplug_request_list_lock)
  %44 = load %struct.parahotplug_request*, %struct.parahotplug_request** %4, align 8
  %45 = call i32 @parahotplug_request_kickoff(%struct.parahotplug_request* %44)
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %5, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %38
  br label %50

49:                                               ; preds = %38
  store i32 0, i32* %2, align 4
  br label %60

50:                                               ; preds = %48, %26
  %51 = load %struct.controlvm_message*, %struct.controlvm_message** %3, align 8
  %52 = getelementptr inbounds %struct.controlvm_message, %struct.controlvm_message* %51, i32 0, i32 1
  %53 = load i32, i32* %5, align 4
  %54 = load %struct.controlvm_message*, %struct.controlvm_message** %3, align 8
  %55 = getelementptr inbounds %struct.controlvm_message, %struct.controlvm_message* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = call i32 @controlvm_respond(i32* %52, i32 %53, %struct.TYPE_6__* %57)
  %59 = load i32, i32* %5, align 4
  store i32 %59, i32* %2, align 4
  br label %60

60:                                               ; preds = %50, %49, %27, %10
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local %struct.parahotplug_request* @parahotplug_request_create(%struct.controlvm_message*) #1

declare dso_local i32 @parahotplug_request_kickoff(%struct.parahotplug_request*) #1

declare dso_local i32 @controlvm_respond(i32*, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @parahotplug_request_destroy(%struct.parahotplug_request*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
