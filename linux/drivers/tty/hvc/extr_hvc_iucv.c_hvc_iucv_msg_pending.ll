; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/hvc/extr_hvc_iucv.c_hvc_iucv_msg_pending.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/hvc/extr_hvc_iucv.c_hvc_iucv_msg_pending.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iucv_path = type { %struct.hvc_iucv_private* }
%struct.hvc_iucv_private = type { i64, i32, i32 }
%struct.iucv_message = type { i64 }
%struct.iucv_tty_buffer = type { i32, %struct.iucv_message }

@MSG_MAX_DATALEN = common dso_local global i32 0, align 4
@TTY_CLOSED = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iucv_path*, %struct.iucv_message*)* @hvc_iucv_msg_pending to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hvc_iucv_msg_pending(%struct.iucv_path* %0, %struct.iucv_message* %1) #0 {
  %3 = alloca %struct.iucv_path*, align 8
  %4 = alloca %struct.iucv_message*, align 8
  %5 = alloca %struct.hvc_iucv_private*, align 8
  %6 = alloca %struct.iucv_tty_buffer*, align 8
  store %struct.iucv_path* %0, %struct.iucv_path** %3, align 8
  store %struct.iucv_message* %1, %struct.iucv_message** %4, align 8
  %7 = load %struct.iucv_path*, %struct.iucv_path** %3, align 8
  %8 = getelementptr inbounds %struct.iucv_path, %struct.iucv_path* %7, i32 0, i32 0
  %9 = load %struct.hvc_iucv_private*, %struct.hvc_iucv_private** %8, align 8
  store %struct.hvc_iucv_private* %9, %struct.hvc_iucv_private** %5, align 8
  %10 = load %struct.iucv_message*, %struct.iucv_message** %4, align 8
  %11 = getelementptr inbounds %struct.iucv_message, %struct.iucv_message* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i32, i32* @MSG_MAX_DATALEN, align 4
  %14 = call i64 @MSG_SIZE(i32 %13)
  %15 = icmp sgt i64 %12, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load %struct.iucv_path*, %struct.iucv_path** %3, align 8
  %18 = load %struct.iucv_message*, %struct.iucv_message** %4, align 8
  %19 = call i32 @iucv_message_reject(%struct.iucv_path* %17, %struct.iucv_message* %18)
  br label %58

20:                                               ; preds = %2
  %21 = load %struct.hvc_iucv_private*, %struct.hvc_iucv_private** %5, align 8
  %22 = getelementptr inbounds %struct.hvc_iucv_private, %struct.hvc_iucv_private* %21, i32 0, i32 1
  %23 = call i32 @spin_lock(i32* %22)
  %24 = load %struct.hvc_iucv_private*, %struct.hvc_iucv_private** %5, align 8
  %25 = getelementptr inbounds %struct.hvc_iucv_private, %struct.hvc_iucv_private* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @TTY_CLOSED, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %20
  %30 = load %struct.iucv_path*, %struct.iucv_path** %3, align 8
  %31 = load %struct.iucv_message*, %struct.iucv_message** %4, align 8
  %32 = call i32 @iucv_message_reject(%struct.iucv_path* %30, %struct.iucv_message* %31)
  br label %54

33:                                               ; preds = %20
  %34 = load i32, i32* @GFP_ATOMIC, align 4
  %35 = call %struct.iucv_tty_buffer* @alloc_tty_buffer(i32 0, i32 %34)
  store %struct.iucv_tty_buffer* %35, %struct.iucv_tty_buffer** %6, align 8
  %36 = load %struct.iucv_tty_buffer*, %struct.iucv_tty_buffer** %6, align 8
  %37 = icmp ne %struct.iucv_tty_buffer* %36, null
  br i1 %37, label %42, label %38

38:                                               ; preds = %33
  %39 = load %struct.iucv_path*, %struct.iucv_path** %3, align 8
  %40 = load %struct.iucv_message*, %struct.iucv_message** %4, align 8
  %41 = call i32 @iucv_message_reject(%struct.iucv_path* %39, %struct.iucv_message* %40)
  br label %54

42:                                               ; preds = %33
  %43 = load %struct.iucv_tty_buffer*, %struct.iucv_tty_buffer** %6, align 8
  %44 = getelementptr inbounds %struct.iucv_tty_buffer, %struct.iucv_tty_buffer* %43, i32 0, i32 1
  %45 = load %struct.iucv_message*, %struct.iucv_message** %4, align 8
  %46 = bitcast %struct.iucv_message* %44 to i8*
  %47 = bitcast %struct.iucv_message* %45 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %46, i8* align 8 %47, i64 8, i1 false)
  %48 = load %struct.iucv_tty_buffer*, %struct.iucv_tty_buffer** %6, align 8
  %49 = getelementptr inbounds %struct.iucv_tty_buffer, %struct.iucv_tty_buffer* %48, i32 0, i32 0
  %50 = load %struct.hvc_iucv_private*, %struct.hvc_iucv_private** %5, align 8
  %51 = getelementptr inbounds %struct.hvc_iucv_private, %struct.hvc_iucv_private* %50, i32 0, i32 2
  %52 = call i32 @list_add_tail(i32* %49, i32* %51)
  %53 = call i32 (...) @hvc_kick()
  br label %54

54:                                               ; preds = %42, %38, %29
  %55 = load %struct.hvc_iucv_private*, %struct.hvc_iucv_private** %5, align 8
  %56 = getelementptr inbounds %struct.hvc_iucv_private, %struct.hvc_iucv_private* %55, i32 0, i32 1
  %57 = call i32 @spin_unlock(i32* %56)
  br label %58

58:                                               ; preds = %54, %16
  ret void
}

declare dso_local i64 @MSG_SIZE(i32) #1

declare dso_local i32 @iucv_message_reject(%struct.iucv_path*, %struct.iucv_message*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.iucv_tty_buffer* @alloc_tty_buffer(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @hvc_kick(...) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
