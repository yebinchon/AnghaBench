; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_connect.c_handle_mid.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_connect.c_handle_mid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mid_q_entry = type { i8*, i32, i64 }
%struct.TCP_Server_Info = type { i32*, i32*, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 (%struct.mid_q_entry*, %struct.TCP_Server_Info*, i8*, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mid_q_entry*, %struct.TCP_Server_Info*, i8*, i32)* @handle_mid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_mid(%struct.mid_q_entry* %0, %struct.TCP_Server_Info* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.mid_q_entry*, align 8
  %6 = alloca %struct.TCP_Server_Info*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.mid_q_entry* %0, %struct.mid_q_entry** %5, align 8
  store %struct.TCP_Server_Info* %1, %struct.TCP_Server_Info** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %6, align 8
  %10 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %9, i32 0, i32 3
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64 (%struct.mid_q_entry*, %struct.TCP_Server_Info*, i8*, i32)*, i64 (%struct.mid_q_entry*, %struct.TCP_Server_Info*, i8*, i32)** %12, align 8
  %14 = icmp ne i64 (%struct.mid_q_entry*, %struct.TCP_Server_Info*, i8*, i32)* %13, null
  br i1 %14, label %15, label %28

15:                                               ; preds = %4
  %16 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %6, align 8
  %17 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %16, i32 0, i32 3
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64 (%struct.mid_q_entry*, %struct.TCP_Server_Info*, i8*, i32)*, i64 (%struct.mid_q_entry*, %struct.TCP_Server_Info*, i8*, i32)** %19, align 8
  %21 = load %struct.mid_q_entry*, %struct.mid_q_entry** %5, align 8
  %22 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %6, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = load i32, i32* %8, align 4
  %25 = call i64 %20(%struct.mid_q_entry* %21, %struct.TCP_Server_Info* %22, i8* %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %15
  br label %57

28:                                               ; preds = %15, %4
  %29 = load i8*, i8** %7, align 8
  %30 = load %struct.mid_q_entry*, %struct.mid_q_entry** %5, align 8
  %31 = getelementptr inbounds %struct.mid_q_entry, %struct.mid_q_entry* %30, i32 0, i32 0
  store i8* %29, i8** %31, align 8
  %32 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %6, align 8
  %33 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.mid_q_entry*, %struct.mid_q_entry** %5, align 8
  %36 = getelementptr inbounds %struct.mid_q_entry, %struct.mid_q_entry* %35, i32 0, i32 2
  store i64 %34, i64* %36, align 8
  %37 = load %struct.mid_q_entry*, %struct.mid_q_entry** %5, align 8
  %38 = getelementptr inbounds %struct.mid_q_entry, %struct.mid_q_entry* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %53, label %41

41:                                               ; preds = %28
  %42 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %6, align 8
  %43 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %6, align 8
  %48 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %47, i32 0, i32 1
  store i32* null, i32** %48, align 8
  br label %52

49:                                               ; preds = %41
  %50 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %6, align 8
  %51 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %50, i32 0, i32 0
  store i32* null, i32** %51, align 8
  br label %52

52:                                               ; preds = %49, %46
  br label %53

53:                                               ; preds = %52, %28
  %54 = load %struct.mid_q_entry*, %struct.mid_q_entry** %5, align 8
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @dequeue_mid(%struct.mid_q_entry* %54, i32 %55)
  br label %57

57:                                               ; preds = %53, %27
  ret void
}

declare dso_local i32 @dequeue_mid(%struct.mid_q_entry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
