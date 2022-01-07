; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_switch.c_tb_switch_nvm_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_switch.c_tb_switch_nvm_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb_switch = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*, i64)* @tb_switch_nvm_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tb_switch_nvm_read(i8* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.tb_switch*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.tb_switch*
  store %struct.tb_switch* %12, %struct.tb_switch** %9, align 8
  %13 = load %struct.tb_switch*, %struct.tb_switch** %9, align 8
  %14 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %13, i32 0, i32 0
  %15 = call i32 @pm_runtime_get_sync(i32* %14)
  %16 = load %struct.tb_switch*, %struct.tb_switch** %9, align 8
  %17 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = call i32 @mutex_trylock(i32* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %4
  %23 = call i32 (...) @restart_syscall()
  store i32 %23, i32* %10, align 4
  br label %37

24:                                               ; preds = %4
  %25 = load %struct.tb_switch*, %struct.tb_switch** %9, align 8
  %26 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = load i8*, i8** %7, align 8
  %30 = load i64, i64* %8, align 8
  %31 = call i32 @dma_port_flash_read(i32 %27, i32 %28, i8* %29, i64 %30)
  store i32 %31, i32* %10, align 4
  %32 = load %struct.tb_switch*, %struct.tb_switch** %9, align 8
  %33 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = call i32 @mutex_unlock(i32* %35)
  br label %37

37:                                               ; preds = %24, %22
  %38 = load %struct.tb_switch*, %struct.tb_switch** %9, align 8
  %39 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %38, i32 0, i32 0
  %40 = call i32 @pm_runtime_mark_last_busy(i32* %39)
  %41 = load %struct.tb_switch*, %struct.tb_switch** %9, align 8
  %42 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %41, i32 0, i32 0
  %43 = call i32 @pm_runtime_put_autosuspend(i32* %42)
  %44 = load i32, i32* %10, align 4
  ret i32 %44
}

declare dso_local i32 @pm_runtime_get_sync(i32*) #1

declare dso_local i32 @mutex_trylock(i32*) #1

declare dso_local i32 @restart_syscall(...) #1

declare dso_local i32 @dma_port_flash_read(i32, i32, i8*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32*) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
