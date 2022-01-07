; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_connect.c_zero_credits.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_connect.c_zero_credits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TCP_Server_Info = type { i32, i32, i32, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TCP_Server_Info*)* @zero_credits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zero_credits(%struct.TCP_Server_Info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TCP_Server_Info*, align 8
  %4 = alloca i32, align 4
  store %struct.TCP_Server_Info* %0, %struct.TCP_Server_Info** %3, align 8
  %5 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %3, align 8
  %6 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %5, i32 0, i32 4
  %7 = call i32 @spin_lock(i32* %6)
  %8 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %3, align 8
  %9 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %3, align 8
  %12 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = add nsw i32 %10, %13
  %15 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %3, align 8
  %16 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = add nsw i32 %14, %17
  store i32 %18, i32* %4, align 4
  %19 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %3, align 8
  %20 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %1
  %24 = load i32, i32* %4, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %3, align 8
  %28 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %27, i32 0, i32 4
  %29 = call i32 @spin_unlock(i32* %28)
  store i32 1, i32* %2, align 4
  br label %34

30:                                               ; preds = %23, %1
  %31 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %3, align 8
  %32 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %31, i32 0, i32 4
  %33 = call i32 @spin_unlock(i32* %32)
  store i32 0, i32* %2, align 4
  br label %34

34:                                               ; preds = %30, %26
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
