; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_cifsglob.h_revert_current_mid.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_cifsglob.h_revert_current_mid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TCP_Server_Info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.TCP_Server_Info*, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TCP_Server_Info*, i32)* @revert_current_mid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @revert_current_mid(%struct.TCP_Server_Info* %0, i32 %1) #0 {
  %3 = alloca %struct.TCP_Server_Info*, align 8
  %4 = alloca i32, align 4
  store %struct.TCP_Server_Info* %0, %struct.TCP_Server_Info** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %3, align 8
  %6 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32 (%struct.TCP_Server_Info*, i32)*, i32 (%struct.TCP_Server_Info*, i32)** %8, align 8
  %10 = icmp ne i32 (%struct.TCP_Server_Info*, i32)* %9, null
  br i1 %10, label %11, label %20

11:                                               ; preds = %2
  %12 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %3, align 8
  %13 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32 (%struct.TCP_Server_Info*, i32)*, i32 (%struct.TCP_Server_Info*, i32)** %15, align 8
  %17 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %3, align 8
  %18 = load i32, i32* %4, align 4
  %19 = call i32 %16(%struct.TCP_Server_Info* %17, i32 %18)
  br label %20

20:                                               ; preds = %11, %2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
