; ModuleID = '/home/carl/AnghaBench/linux/drivers/visorbus/extr_visorchipset.c_parahotplug_request_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/visorbus/extr_visorchipset.c_parahotplug_request_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parahotplug_request = type { %struct.controlvm_message, i32, i32 }
%struct.controlvm_message = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.parahotplug_request* (%struct.controlvm_message*)* @parahotplug_request_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.parahotplug_request* @parahotplug_request_create(%struct.controlvm_message* %0) #0 {
  %2 = alloca %struct.parahotplug_request*, align 8
  %3 = alloca %struct.controlvm_message*, align 8
  %4 = alloca %struct.parahotplug_request*, align 8
  store %struct.controlvm_message* %0, %struct.controlvm_message** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.parahotplug_request* @kmalloc(i32 12, i32 %5)
  store %struct.parahotplug_request* %6, %struct.parahotplug_request** %4, align 8
  %7 = load %struct.parahotplug_request*, %struct.parahotplug_request** %4, align 8
  %8 = icmp ne %struct.parahotplug_request* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store %struct.parahotplug_request* null, %struct.parahotplug_request** %2, align 8
  br label %23

10:                                               ; preds = %1
  %11 = call i32 (...) @parahotplug_next_id()
  %12 = load %struct.parahotplug_request*, %struct.parahotplug_request** %4, align 8
  %13 = getelementptr inbounds %struct.parahotplug_request, %struct.parahotplug_request* %12, i32 0, i32 2
  store i32 %11, i32* %13, align 4
  %14 = call i32 (...) @parahotplug_next_expiration()
  %15 = load %struct.parahotplug_request*, %struct.parahotplug_request** %4, align 8
  %16 = getelementptr inbounds %struct.parahotplug_request, %struct.parahotplug_request* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  %17 = load %struct.parahotplug_request*, %struct.parahotplug_request** %4, align 8
  %18 = getelementptr inbounds %struct.parahotplug_request, %struct.parahotplug_request* %17, i32 0, i32 0
  %19 = load %struct.controlvm_message*, %struct.controlvm_message** %3, align 8
  %20 = bitcast %struct.controlvm_message* %18 to i8*
  %21 = bitcast %struct.controlvm_message* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %20, i8* align 4 %21, i64 4, i1 false)
  %22 = load %struct.parahotplug_request*, %struct.parahotplug_request** %4, align 8
  store %struct.parahotplug_request* %22, %struct.parahotplug_request** %2, align 8
  br label %23

23:                                               ; preds = %10, %9
  %24 = load %struct.parahotplug_request*, %struct.parahotplug_request** %2, align 8
  ret %struct.parahotplug_request* %24
}

declare dso_local %struct.parahotplug_request* @kmalloc(i32, i32) #1

declare dso_local i32 @parahotplug_next_id(...) #1

declare dso_local i32 @parahotplug_next_expiration(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
