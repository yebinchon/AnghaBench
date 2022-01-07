; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/target/extr_tcp.c_nvmet_tcp_remove_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/target/extr_tcp.c_nvmet_tcp_remove_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvmet_port = type { %struct.nvmet_tcp_port* }
%struct.nvmet_tcp_port = type { %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvmet_port*)* @nvmet_tcp_remove_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvmet_tcp_remove_port(%struct.nvmet_port* %0) #0 {
  %2 = alloca %struct.nvmet_port*, align 8
  %3 = alloca %struct.nvmet_tcp_port*, align 8
  store %struct.nvmet_port* %0, %struct.nvmet_port** %2, align 8
  %4 = load %struct.nvmet_port*, %struct.nvmet_port** %2, align 8
  %5 = getelementptr inbounds %struct.nvmet_port, %struct.nvmet_port* %4, i32 0, i32 0
  %6 = load %struct.nvmet_tcp_port*, %struct.nvmet_tcp_port** %5, align 8
  store %struct.nvmet_tcp_port* %6, %struct.nvmet_tcp_port** %3, align 8
  %7 = load %struct.nvmet_tcp_port*, %struct.nvmet_tcp_port** %3, align 8
  %8 = getelementptr inbounds %struct.nvmet_tcp_port, %struct.nvmet_tcp_port* %7, i32 0, i32 0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = call i32 @write_lock_bh(i32* %12)
  %14 = load %struct.nvmet_tcp_port*, %struct.nvmet_tcp_port** %3, align 8
  %15 = getelementptr inbounds %struct.nvmet_tcp_port, %struct.nvmet_tcp_port* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.nvmet_tcp_port*, %struct.nvmet_tcp_port** %3, align 8
  %18 = getelementptr inbounds %struct.nvmet_tcp_port, %struct.nvmet_tcp_port* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 2
  store i32 %16, i32* %22, align 8
  %23 = load %struct.nvmet_tcp_port*, %struct.nvmet_tcp_port** %3, align 8
  %24 = getelementptr inbounds %struct.nvmet_tcp_port, %struct.nvmet_tcp_port* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  store i32* null, i32** %28, align 8
  %29 = load %struct.nvmet_tcp_port*, %struct.nvmet_tcp_port** %3, align 8
  %30 = getelementptr inbounds %struct.nvmet_tcp_port, %struct.nvmet_tcp_port* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = call i32 @write_unlock_bh(i32* %34)
  %36 = load %struct.nvmet_tcp_port*, %struct.nvmet_tcp_port** %3, align 8
  %37 = getelementptr inbounds %struct.nvmet_tcp_port, %struct.nvmet_tcp_port* %36, i32 0, i32 1
  %38 = call i32 @cancel_work_sync(i32* %37)
  %39 = load %struct.nvmet_tcp_port*, %struct.nvmet_tcp_port** %3, align 8
  %40 = getelementptr inbounds %struct.nvmet_tcp_port, %struct.nvmet_tcp_port* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = call i32 @sock_release(%struct.TYPE_4__* %41)
  %43 = load %struct.nvmet_tcp_port*, %struct.nvmet_tcp_port** %3, align 8
  %44 = call i32 @kfree(%struct.nvmet_tcp_port* %43)
  ret void
}

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @sock_release(%struct.TYPE_4__*) #1

declare dso_local i32 @kfree(%struct.nvmet_tcp_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
