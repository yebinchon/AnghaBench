; ModuleID = '/home/carl/AnghaBench/linux/drivers/ntb/test/extr_ntb_pingpong.c_pp_pong.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ntb/test/extr_ntb_pingpong.c_pp_pong.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_ctx = type { i32, i32, %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"Pong spad %#x, msg %#x (port %d)\0A\00", align 1
@delay_ms = common dso_local global i32 0, align 4
@HRTIMER_MODE_REL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pp_ctx*)* @pp_pong to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pp_pong(%struct.pp_ctx* %0) #0 {
  %2 = alloca %struct.pp_ctx*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.pp_ctx* %0, %struct.pp_ctx** %2, align 8
  store i32 -1, i32* %3, align 4
  store i32 -1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load %struct.pp_ctx*, %struct.pp_ctx** %2, align 8
  %7 = getelementptr inbounds %struct.pp_ctx, %struct.pp_ctx* %6, i32 0, i32 2
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %9 = call i32 @ntb_spad_read(%struct.TYPE_7__* %8, i32 0)
  store i32 %9, i32* %4, align 4
  %10 = load %struct.pp_ctx*, %struct.pp_ctx** %2, align 8
  %11 = getelementptr inbounds %struct.pp_ctx, %struct.pp_ctx* %10, i32 0, i32 2
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %13 = call i32 @ntb_msg_read(%struct.TYPE_7__* %12, i32* %5, i32 0)
  store i32 %13, i32* %3, align 4
  %14 = load %struct.pp_ctx*, %struct.pp_ctx** %2, align 8
  %15 = getelementptr inbounds %struct.pp_ctx, %struct.pp_ctx* %14, i32 0, i32 2
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %17 = call i32 @ntb_msg_clear_sts(%struct.TYPE_7__* %16, i32 -1)
  %18 = load %struct.pp_ctx*, %struct.pp_ctx** %2, align 8
  %19 = getelementptr inbounds %struct.pp_ctx, %struct.pp_ctx* %18, i32 0, i32 2
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* %3, align 4
  %24 = load %struct.pp_ctx*, %struct.pp_ctx** %2, align 8
  %25 = getelementptr inbounds %struct.pp_ctx, %struct.pp_ctx* %24, i32 0, i32 2
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @ntb_peer_port_number(%struct.TYPE_7__* %26, i32 %27)
  %29 = call i32 @dev_dbg(i32* %21, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %23, i32 %28)
  %30 = load %struct.pp_ctx*, %struct.pp_ctx** %2, align 8
  %31 = getelementptr inbounds %struct.pp_ctx, %struct.pp_ctx* %30, i32 0, i32 3
  %32 = call i32 @atomic_inc(i32* %31)
  %33 = load %struct.pp_ctx*, %struct.pp_ctx** %2, align 8
  %34 = getelementptr inbounds %struct.pp_ctx, %struct.pp_ctx* %33, i32 0, i32 2
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %34, align 8
  %36 = load %struct.pp_ctx*, %struct.pp_ctx** %2, align 8
  %37 = getelementptr inbounds %struct.pp_ctx, %struct.pp_ctx* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @ntb_db_set_mask(%struct.TYPE_7__* %35, i32 %38)
  %40 = load %struct.pp_ctx*, %struct.pp_ctx** %2, align 8
  %41 = getelementptr inbounds %struct.pp_ctx, %struct.pp_ctx* %40, i32 0, i32 2
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %41, align 8
  %43 = load %struct.pp_ctx*, %struct.pp_ctx** %2, align 8
  %44 = getelementptr inbounds %struct.pp_ctx, %struct.pp_ctx* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @ntb_db_clear(%struct.TYPE_7__* %42, i32 %45)
  %47 = load %struct.pp_ctx*, %struct.pp_ctx** %2, align 8
  %48 = getelementptr inbounds %struct.pp_ctx, %struct.pp_ctx* %47, i32 0, i32 0
  %49 = load i32, i32* @delay_ms, align 4
  %50 = call i32 @ms_to_ktime(i32 %49)
  %51 = load i32, i32* @HRTIMER_MODE_REL, align 4
  %52 = call i32 @hrtimer_start(i32* %48, i32 %50, i32 %51)
  ret void
}

declare dso_local i32 @ntb_spad_read(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @ntb_msg_read(%struct.TYPE_7__*, i32*, i32) #1

declare dso_local i32 @ntb_msg_clear_sts(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @ntb_peer_port_number(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @ntb_db_set_mask(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @ntb_db_clear(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @hrtimer_start(i32*, i32, i32) #1

declare dso_local i32 @ms_to_ktime(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
