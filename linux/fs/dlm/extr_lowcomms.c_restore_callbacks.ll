; ModuleID = '/home/carl/AnghaBench/linux/fs/dlm/extr_lowcomms.c_restore_callbacks.c'
source_filename = "/home/carl/AnghaBench/linux/fs/dlm/extr_lowcomms.c_restore_callbacks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.socket = type { %struct.sock* }
%struct.sock = type { i32, i32, i32, i32, i32, i32* }

@listen_sock = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.socket*)* @restore_callbacks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @restore_callbacks(%struct.socket* %0) #0 {
  %2 = alloca %struct.socket*, align 8
  %3 = alloca %struct.sock*, align 8
  store %struct.socket* %0, %struct.socket** %2, align 8
  %4 = load %struct.socket*, %struct.socket** %2, align 8
  %5 = getelementptr inbounds %struct.socket, %struct.socket* %4, i32 0, i32 0
  %6 = load %struct.sock*, %struct.sock** %5, align 8
  store %struct.sock* %6, %struct.sock** %3, align 8
  %7 = load %struct.sock*, %struct.sock** %3, align 8
  %8 = getelementptr inbounds %struct.sock, %struct.sock* %7, i32 0, i32 0
  %9 = call i32 @write_lock_bh(i32* %8)
  %10 = load %struct.sock*, %struct.sock** %3, align 8
  %11 = getelementptr inbounds %struct.sock, %struct.sock* %10, i32 0, i32 5
  store i32* null, i32** %11, align 8
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @listen_sock, i32 0, i32 3), align 4
  %13 = load %struct.sock*, %struct.sock** %3, align 8
  %14 = getelementptr inbounds %struct.sock, %struct.sock* %13, i32 0, i32 4
  store i32 %12, i32* %14, align 8
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @listen_sock, i32 0, i32 2), align 4
  %16 = load %struct.sock*, %struct.sock** %3, align 8
  %17 = getelementptr inbounds %struct.sock, %struct.sock* %16, i32 0, i32 3
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @listen_sock, i32 0, i32 1), align 4
  %19 = load %struct.sock*, %struct.sock** %3, align 8
  %20 = getelementptr inbounds %struct.sock, %struct.sock* %19, i32 0, i32 2
  store i32 %18, i32* %20, align 8
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @listen_sock, i32 0, i32 0), align 4
  %22 = load %struct.sock*, %struct.sock** %3, align 8
  %23 = getelementptr inbounds %struct.sock, %struct.sock* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load %struct.sock*, %struct.sock** %3, align 8
  %25 = getelementptr inbounds %struct.sock, %struct.sock* %24, i32 0, i32 0
  %26 = call i32 @write_unlock_bh(i32* %25)
  ret void
}

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
