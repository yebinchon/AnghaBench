; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_n_r3964.c_findClient.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_n_r3964.c_findClient.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r3964_client_info = type { %struct.pid*, %struct.r3964_client_info* }
%struct.r3964_info = type { %struct.r3964_client_info* }
%struct.pid = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.r3964_client_info* (%struct.r3964_info*, %struct.pid*)* @findClient to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.r3964_client_info* @findClient(%struct.r3964_info* %0, %struct.pid* %1) #0 {
  %3 = alloca %struct.r3964_client_info*, align 8
  %4 = alloca %struct.r3964_info*, align 8
  %5 = alloca %struct.pid*, align 8
  %6 = alloca %struct.r3964_client_info*, align 8
  store %struct.r3964_info* %0, %struct.r3964_info** %4, align 8
  store %struct.pid* %1, %struct.pid** %5, align 8
  %7 = load %struct.r3964_info*, %struct.r3964_info** %4, align 8
  %8 = getelementptr inbounds %struct.r3964_info, %struct.r3964_info* %7, i32 0, i32 0
  %9 = load %struct.r3964_client_info*, %struct.r3964_client_info** %8, align 8
  store %struct.r3964_client_info* %9, %struct.r3964_client_info** %6, align 8
  br label %10

10:                                               ; preds = %22, %2
  %11 = load %struct.r3964_client_info*, %struct.r3964_client_info** %6, align 8
  %12 = icmp ne %struct.r3964_client_info* %11, null
  br i1 %12, label %13, label %26

13:                                               ; preds = %10
  %14 = load %struct.r3964_client_info*, %struct.r3964_client_info** %6, align 8
  %15 = getelementptr inbounds %struct.r3964_client_info, %struct.r3964_client_info* %14, i32 0, i32 0
  %16 = load %struct.pid*, %struct.pid** %15, align 8
  %17 = load %struct.pid*, %struct.pid** %5, align 8
  %18 = icmp eq %struct.pid* %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %13
  %20 = load %struct.r3964_client_info*, %struct.r3964_client_info** %6, align 8
  store %struct.r3964_client_info* %20, %struct.r3964_client_info** %3, align 8
  br label %27

21:                                               ; preds = %13
  br label %22

22:                                               ; preds = %21
  %23 = load %struct.r3964_client_info*, %struct.r3964_client_info** %6, align 8
  %24 = getelementptr inbounds %struct.r3964_client_info, %struct.r3964_client_info* %23, i32 0, i32 1
  %25 = load %struct.r3964_client_info*, %struct.r3964_client_info** %24, align 8
  store %struct.r3964_client_info* %25, %struct.r3964_client_info** %6, align 8
  br label %10

26:                                               ; preds = %10
  store %struct.r3964_client_info* null, %struct.r3964_client_info** %3, align 8
  br label %27

27:                                               ; preds = %26, %19
  %28 = load %struct.r3964_client_info*, %struct.r3964_client_info** %3, align 8
  ret %struct.r3964_client_info* %28
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
