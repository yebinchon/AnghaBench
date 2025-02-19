; ModuleID = '/home/carl/AnghaBench/linux/drivers/ntb/test/extr_ntb_pingpong.c_pp_ping.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ntb/test/extr_ntb_pingpong.c_pp_ping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_ctx = type { i32, i32, %struct.TYPE_6__*, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"Ping port %d spad %#x, msg %#x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pp_ctx*)* @pp_ping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pp_ping(%struct.pp_ctx* %0) #0 {
  %2 = alloca %struct.pp_ctx*, align 8
  %3 = alloca i32, align 4
  store %struct.pp_ctx* %0, %struct.pp_ctx** %2, align 8
  %4 = load %struct.pp_ctx*, %struct.pp_ctx** %2, align 8
  %5 = getelementptr inbounds %struct.pp_ctx, %struct.pp_ctx* %4, i32 0, i32 5
  %6 = call i32 @atomic_read(i32* %5)
  store i32 %6, i32* %3, align 4
  %7 = load %struct.pp_ctx*, %struct.pp_ctx** %2, align 8
  %8 = getelementptr inbounds %struct.pp_ctx, %struct.pp_ctx* %7, i32 0, i32 0
  %9 = call i32 @spin_lock(i32* %8)
  %10 = load %struct.pp_ctx*, %struct.pp_ctx** %2, align 8
  %11 = getelementptr inbounds %struct.pp_ctx, %struct.pp_ctx* %10, i32 0, i32 2
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = load %struct.pp_ctx*, %struct.pp_ctx** %2, align 8
  %14 = getelementptr inbounds %struct.pp_ctx, %struct.pp_ctx* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @ntb_peer_spad_write(%struct.TYPE_6__* %12, i32 %15, i32 0, i32 %16)
  %18 = load %struct.pp_ctx*, %struct.pp_ctx** %2, align 8
  %19 = getelementptr inbounds %struct.pp_ctx, %struct.pp_ctx* %18, i32 0, i32 2
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = load %struct.pp_ctx*, %struct.pp_ctx** %2, align 8
  %22 = getelementptr inbounds %struct.pp_ctx, %struct.pp_ctx* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @ntb_peer_msg_write(%struct.TYPE_6__* %20, i32 %23, i32 0, i32 %24)
  %26 = load %struct.pp_ctx*, %struct.pp_ctx** %2, align 8
  %27 = getelementptr inbounds %struct.pp_ctx, %struct.pp_ctx* %26, i32 0, i32 2
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load %struct.pp_ctx*, %struct.pp_ctx** %2, align 8
  %31 = getelementptr inbounds %struct.pp_ctx, %struct.pp_ctx* %30, i32 0, i32 2
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = load %struct.pp_ctx*, %struct.pp_ctx** %2, align 8
  %34 = getelementptr inbounds %struct.pp_ctx, %struct.pp_ctx* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @ntb_peer_port_number(%struct.TYPE_6__* %32, i32 %35)
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* %3, align 4
  %39 = call i32 @dev_dbg(i32* %29, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %36, i32 %37, i32 %38)
  %40 = load %struct.pp_ctx*, %struct.pp_ctx** %2, align 8
  %41 = getelementptr inbounds %struct.pp_ctx, %struct.pp_ctx* %40, i32 0, i32 2
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = load %struct.pp_ctx*, %struct.pp_ctx** %2, align 8
  %44 = getelementptr inbounds %struct.pp_ctx, %struct.pp_ctx* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @ntb_peer_db_set(%struct.TYPE_6__* %42, i32 %45)
  %47 = load %struct.pp_ctx*, %struct.pp_ctx** %2, align 8
  %48 = getelementptr inbounds %struct.pp_ctx, %struct.pp_ctx* %47, i32 0, i32 2
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = load %struct.pp_ctx*, %struct.pp_ctx** %2, align 8
  %51 = getelementptr inbounds %struct.pp_ctx, %struct.pp_ctx* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @ntb_db_clear_mask(%struct.TYPE_6__* %49, i32 %52)
  %54 = load %struct.pp_ctx*, %struct.pp_ctx** %2, align 8
  %55 = getelementptr inbounds %struct.pp_ctx, %struct.pp_ctx* %54, i32 0, i32 0
  %56 = call i32 @spin_unlock(i32* %55)
  ret void
}

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @ntb_peer_spad_write(%struct.TYPE_6__*, i32, i32, i32) #1

declare dso_local i32 @ntb_peer_msg_write(%struct.TYPE_6__*, i32, i32, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @ntb_peer_port_number(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @ntb_peer_db_set(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @ntb_db_clear_mask(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
