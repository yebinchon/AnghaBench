; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fwserial/extr_fwserial.c_fwtty_write_xchar.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fwserial/extr_fwserial.c_fwtty_write_xchar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fwtty_port = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.fwtty_peer = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"%02x\0A\00", align 1
@TCODE_WRITE_BLOCK_REQUEST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fwtty_port*, i8)* @fwtty_write_xchar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fwtty_write_xchar(%struct.fwtty_port* %0, i8 signext %1) #0 {
  %3 = alloca %struct.fwtty_port*, align 8
  %4 = alloca i8, align 1
  %5 = alloca %struct.fwtty_peer*, align 8
  store %struct.fwtty_port* %0, %struct.fwtty_port** %3, align 8
  store i8 %1, i8* %4, align 1
  %6 = load %struct.fwtty_port*, %struct.fwtty_port** %3, align 8
  %7 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* %8, align 4
  %11 = load %struct.fwtty_port*, %struct.fwtty_port** %3, align 8
  %12 = load i8, i8* %4, align 1
  %13 = call i32 @fwtty_dbg(%struct.fwtty_port* %11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8 signext %12)
  %14 = call i32 (...) @rcu_read_lock()
  %15 = load %struct.fwtty_port*, %struct.fwtty_port** %3, align 8
  %16 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.fwtty_peer* @rcu_dereference(i32 %17)
  store %struct.fwtty_peer* %18, %struct.fwtty_peer** %5, align 8
  %19 = load %struct.fwtty_peer*, %struct.fwtty_peer** %5, align 8
  %20 = icmp ne %struct.fwtty_peer* %19, null
  br i1 %20, label %21, label %29

21:                                               ; preds = %2
  %22 = load %struct.fwtty_peer*, %struct.fwtty_peer** %5, align 8
  %23 = load i32, i32* @TCODE_WRITE_BLOCK_REQUEST, align 4
  %24 = load %struct.fwtty_peer*, %struct.fwtty_peer** %5, align 8
  %25 = getelementptr inbounds %struct.fwtty_peer, %struct.fwtty_peer* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.fwtty_port*, %struct.fwtty_port** %3, align 8
  %28 = call i32 @fwtty_send_data_async(%struct.fwtty_peer* %22, i32 %23, i32 %26, i8* %4, i32 1, i32* null, %struct.fwtty_port* %27)
  br label %29

29:                                               ; preds = %21, %2
  %30 = call i32 (...) @rcu_read_unlock()
  ret void
}

declare dso_local i32 @fwtty_dbg(%struct.fwtty_port*, i8*, i8 signext) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.fwtty_peer* @rcu_dereference(i32) #1

declare dso_local i32 @fwtty_send_data_async(%struct.fwtty_peer*, i32, i32, i8*, i32, i32*, %struct.fwtty_port*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
