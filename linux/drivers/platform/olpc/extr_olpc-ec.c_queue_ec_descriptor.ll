; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/olpc/extr_olpc-ec.c_queue_ec_descriptor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/olpc/extr_olpc-ec.c_queue_ec_descriptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ec_cmd_desc = type { i32 }
%struct.olpc_ec_priv = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ec_cmd_desc*, %struct.olpc_ec_priv*)* @queue_ec_descriptor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @queue_ec_descriptor(%struct.ec_cmd_desc* %0, %struct.olpc_ec_priv* %1) #0 {
  %3 = alloca %struct.ec_cmd_desc*, align 8
  %4 = alloca %struct.olpc_ec_priv*, align 8
  %5 = alloca i64, align 8
  store %struct.ec_cmd_desc* %0, %struct.ec_cmd_desc** %3, align 8
  store %struct.olpc_ec_priv* %1, %struct.olpc_ec_priv** %4, align 8
  %6 = load %struct.ec_cmd_desc*, %struct.ec_cmd_desc** %3, align 8
  %7 = getelementptr inbounds %struct.ec_cmd_desc, %struct.ec_cmd_desc* %6, i32 0, i32 0
  %8 = call i32 @INIT_LIST_HEAD(i32* %7)
  %9 = load %struct.olpc_ec_priv*, %struct.olpc_ec_priv** %4, align 8
  %10 = getelementptr inbounds %struct.olpc_ec_priv, %struct.olpc_ec_priv* %9, i32 0, i32 1
  %11 = load i64, i64* %5, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load %struct.ec_cmd_desc*, %struct.ec_cmd_desc** %3, align 8
  %14 = getelementptr inbounds %struct.ec_cmd_desc, %struct.ec_cmd_desc* %13, i32 0, i32 0
  %15 = load %struct.olpc_ec_priv*, %struct.olpc_ec_priv** %4, align 8
  %16 = getelementptr inbounds %struct.olpc_ec_priv, %struct.olpc_ec_priv* %15, i32 0, i32 2
  %17 = call i32 @list_add_tail(i32* %14, i32* %16)
  %18 = load %struct.olpc_ec_priv*, %struct.olpc_ec_priv** %4, align 8
  %19 = getelementptr inbounds %struct.olpc_ec_priv, %struct.olpc_ec_priv* %18, i32 0, i32 1
  %20 = load i64, i64* %5, align 8
  %21 = call i32 @spin_unlock_irqrestore(i32* %19, i64 %20)
  %22 = load %struct.olpc_ec_priv*, %struct.olpc_ec_priv** %4, align 8
  %23 = getelementptr inbounds %struct.olpc_ec_priv, %struct.olpc_ec_priv* %22, i32 0, i32 0
  %24 = call i32 @schedule_work(i32* %23)
  ret void
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
