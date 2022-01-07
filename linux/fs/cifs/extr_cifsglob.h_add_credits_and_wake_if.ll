; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_cifsglob.h_add_credits_and_wake_if.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_cifsglob.h_add_credits_and_wake_if.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TCP_Server_Info = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.TCP_Server_Info*, %struct.cifs_credits*, i32)* }
%struct.cifs_credits = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TCP_Server_Info*, %struct.cifs_credits*, i32)* @add_credits_and_wake_if to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_credits_and_wake_if(%struct.TCP_Server_Info* %0, %struct.cifs_credits* %1, i32 %2) #0 {
  %4 = alloca %struct.TCP_Server_Info*, align 8
  %5 = alloca %struct.cifs_credits*, align 8
  %6 = alloca i32, align 4
  store %struct.TCP_Server_Info* %0, %struct.TCP_Server_Info** %4, align 8
  store %struct.cifs_credits* %1, %struct.cifs_credits** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.cifs_credits*, %struct.cifs_credits** %5, align 8
  %8 = getelementptr inbounds %struct.cifs_credits, %struct.cifs_credits* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %24

11:                                               ; preds = %3
  %12 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %4, align 8
  %13 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32 (%struct.TCP_Server_Info*, %struct.cifs_credits*, i32)*, i32 (%struct.TCP_Server_Info*, %struct.cifs_credits*, i32)** %15, align 8
  %17 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %4, align 8
  %18 = load %struct.cifs_credits*, %struct.cifs_credits** %5, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call i32 %16(%struct.TCP_Server_Info* %17, %struct.cifs_credits* %18, i32 %19)
  %21 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %4, align 8
  %22 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %21, i32 0, i32 0
  %23 = call i32 @wake_up(i32* %22)
  br label %24

24:                                               ; preds = %11, %3
  ret void
}

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
