; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/hvc/extr_hvc_iucv.c_hvc_iucv_notifier_hangup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/hvc/extr_hvc_iucv.c_hvc_iucv_notifier_hangup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hvc_struct = type { i32 }
%struct.hvc_iucv_private = type { i64, i32, i32 }

@TTY_CLOSED = common dso_local global i32 0, align 4
@IUCV_SEVERED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hvc_struct*, i32)* @hvc_iucv_notifier_hangup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hvc_iucv_notifier_hangup(%struct.hvc_struct* %0, i32 %1) #0 {
  %3 = alloca %struct.hvc_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hvc_iucv_private*, align 8
  store %struct.hvc_struct* %0, %struct.hvc_struct** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = call %struct.hvc_iucv_private* @hvc_iucv_get_private(i32 %6)
  store %struct.hvc_iucv_private* %7, %struct.hvc_iucv_private** %5, align 8
  %8 = load %struct.hvc_iucv_private*, %struct.hvc_iucv_private** %5, align 8
  %9 = icmp ne %struct.hvc_iucv_private* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  br label %32

11:                                               ; preds = %2
  %12 = load %struct.hvc_iucv_private*, %struct.hvc_iucv_private** %5, align 8
  %13 = call i32 @flush_sndbuf_sync(%struct.hvc_iucv_private* %12)
  %14 = load %struct.hvc_iucv_private*, %struct.hvc_iucv_private** %5, align 8
  %15 = getelementptr inbounds %struct.hvc_iucv_private, %struct.hvc_iucv_private* %14, i32 0, i32 1
  %16 = call i32 @spin_lock_bh(i32* %15)
  %17 = load i32, i32* @TTY_CLOSED, align 4
  %18 = load %struct.hvc_iucv_private*, %struct.hvc_iucv_private** %5, align 8
  %19 = getelementptr inbounds %struct.hvc_iucv_private, %struct.hvc_iucv_private* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 4
  %20 = load %struct.hvc_iucv_private*, %struct.hvc_iucv_private** %5, align 8
  %21 = getelementptr inbounds %struct.hvc_iucv_private, %struct.hvc_iucv_private* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @IUCV_SEVERED, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %11
  %26 = load %struct.hvc_iucv_private*, %struct.hvc_iucv_private** %5, align 8
  %27 = call i32 @hvc_iucv_cleanup(%struct.hvc_iucv_private* %26)
  br label %28

28:                                               ; preds = %25, %11
  %29 = load %struct.hvc_iucv_private*, %struct.hvc_iucv_private** %5, align 8
  %30 = getelementptr inbounds %struct.hvc_iucv_private, %struct.hvc_iucv_private* %29, i32 0, i32 1
  %31 = call i32 @spin_unlock_bh(i32* %30)
  br label %32

32:                                               ; preds = %28, %10
  ret void
}

declare dso_local %struct.hvc_iucv_private* @hvc_iucv_get_private(i32) #1

declare dso_local i32 @flush_sndbuf_sync(%struct.hvc_iucv_private*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @hvc_iucv_cleanup(%struct.hvc_iucv_private*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
