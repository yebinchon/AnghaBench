; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_rtl8723bs_recv.c_initrecvbuf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_rtl8723bs_recv.c_initrecvbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.recv_buf = type { %struct.adapter*, i32, i32 }
%struct.adapter = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.recv_buf*, %struct.adapter*)* @initrecvbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @initrecvbuf(%struct.recv_buf* %0, %struct.adapter* %1) #0 {
  %3 = alloca %struct.recv_buf*, align 8
  %4 = alloca %struct.adapter*, align 8
  store %struct.recv_buf* %0, %struct.recv_buf** %3, align 8
  store %struct.adapter* %1, %struct.adapter** %4, align 8
  %5 = load %struct.recv_buf*, %struct.recv_buf** %3, align 8
  %6 = getelementptr inbounds %struct.recv_buf, %struct.recv_buf* %5, i32 0, i32 2
  %7 = call i32 @INIT_LIST_HEAD(i32* %6)
  %8 = load %struct.recv_buf*, %struct.recv_buf** %3, align 8
  %9 = getelementptr inbounds %struct.recv_buf, %struct.recv_buf* %8, i32 0, i32 1
  %10 = call i32 @spin_lock_init(i32* %9)
  %11 = load %struct.adapter*, %struct.adapter** %4, align 8
  %12 = load %struct.recv_buf*, %struct.recv_buf** %3, align 8
  %13 = getelementptr inbounds %struct.recv_buf, %struct.recv_buf* %12, i32 0, i32 0
  store %struct.adapter* %11, %struct.adapter** %13, align 8
  ret void
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
