; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_smb2ops.c_smb3_handle_read_data.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_smb2ops.c_smb3_handle_read_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TCP_Server_Info = type { i8*, i8*, i32, i64 }
%struct.mid_q_entry = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smb3_handle_read_data(%struct.TCP_Server_Info* %0, %struct.mid_q_entry* %1) #0 {
  %3 = alloca %struct.TCP_Server_Info*, align 8
  %4 = alloca %struct.mid_q_entry*, align 8
  %5 = alloca i8*, align 8
  store %struct.TCP_Server_Info* %0, %struct.TCP_Server_Info** %3, align 8
  store %struct.mid_q_entry* %1, %struct.mid_q_entry** %4, align 8
  %6 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %3, align 8
  %7 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %6, i32 0, i32 3
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %3, align 8
  %12 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  br label %18

14:                                               ; preds = %2
  %15 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %3, align 8
  %16 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %15, i32 0, i32 1
  %17 = load i8*, i8** %16, align 8
  br label %18

18:                                               ; preds = %14, %10
  %19 = phi i8* [ %13, %10 ], [ %17, %14 ]
  store i8* %19, i8** %5, align 8
  %20 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %3, align 8
  %21 = load %struct.mid_q_entry*, %struct.mid_q_entry** %4, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %3, align 8
  %24 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @handle_read_data(%struct.TCP_Server_Info* %20, %struct.mid_q_entry* %21, i8* %22, i32 %25, i32* null, i32 0, i32 0)
  ret i32 %26
}

declare dso_local i32 @handle_read_data(%struct.TCP_Server_Info*, %struct.mid_q_entry*, i8*, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
