; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_zs.c_zs_transmit_drain.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_zs.c_zs_transmit_drain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zs_port = type { %struct.zs_scc* }
%struct.zs_scc = type { i32 }

@R0 = common dso_local global i32 0, align 4
@Tx_BUF_EMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zs_port*, i32)* @zs_transmit_drain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zs_transmit_drain(%struct.zs_port* %0, i32 %1) #0 {
  %3 = alloca %struct.zs_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.zs_scc*, align 8
  %6 = alloca i32, align 4
  store %struct.zs_port* %0, %struct.zs_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.zs_port*, %struct.zs_port** %3, align 8
  %8 = getelementptr inbounds %struct.zs_port, %struct.zs_port* %7, i32 0, i32 0
  %9 = load %struct.zs_scc*, %struct.zs_scc** %8, align 8
  store %struct.zs_scc* %9, %struct.zs_scc** %5, align 8
  store i32 10000, i32* %6, align 4
  br label %10

10:                                               ; preds = %23, %2
  %11 = load %struct.zs_port*, %struct.zs_port** %3, align 8
  %12 = load i32, i32* @R0, align 4
  %13 = call i32 @read_zsreg(%struct.zs_port* %11, i32 %12)
  %14 = load i32, i32* @Tx_BUF_EMP, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %10
  %18 = load i32, i32* %6, align 4
  %19 = add nsw i32 %18, -1
  store i32 %19, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br label %21

21:                                               ; preds = %17, %10
  %22 = phi i1 [ false, %10 ], [ %20, %17 ]
  br i1 %22, label %23, label %33

23:                                               ; preds = %21
  %24 = load %struct.zs_scc*, %struct.zs_scc** %5, align 8
  %25 = getelementptr inbounds %struct.zs_scc, %struct.zs_scc* %24, i32 0, i32 0
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @zs_spin_unlock_cond_irq(i32* %25, i32 %26)
  %28 = call i32 @udelay(i32 2)
  %29 = load %struct.zs_scc*, %struct.zs_scc** %5, align 8
  %30 = getelementptr inbounds %struct.zs_scc, %struct.zs_scc* %29, i32 0, i32 0
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @zs_spin_lock_cond_irq(i32* %30, i32 %31)
  br label %10

33:                                               ; preds = %21
  %34 = load i32, i32* %6, align 4
  ret i32 %34
}

declare dso_local i32 @read_zsreg(%struct.zs_port*, i32) #1

declare dso_local i32 @zs_spin_unlock_cond_irq(i32*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @zs_spin_lock_cond_irq(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
