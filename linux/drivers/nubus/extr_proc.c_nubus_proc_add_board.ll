; ModuleID = '/home/carl/AnghaBench/linux/drivers/nubus/extr_proc.c_nubus_proc_add_board.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nubus/extr_proc.c_nubus_proc_add_board.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc_dir_entry = type { i32 }
%struct.nubus_board = type { i32 }

@proc_bus_nubus_dir = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.proc_dir_entry* @nubus_proc_add_board(%struct.nubus_board* %0) #0 {
  %2 = alloca %struct.proc_dir_entry*, align 8
  %3 = alloca %struct.nubus_board*, align 8
  %4 = alloca [2 x i8], align 1
  store %struct.nubus_board* %0, %struct.nubus_board** %3, align 8
  %5 = load i32, i32* @proc_bus_nubus_dir, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  store %struct.proc_dir_entry* null, %struct.proc_dir_entry** %2, align 8
  br label %17

8:                                                ; preds = %1
  %9 = getelementptr inbounds [2 x i8], [2 x i8]* %4, i64 0, i64 0
  %10 = load %struct.nubus_board*, %struct.nubus_board** %3, align 8
  %11 = getelementptr inbounds %struct.nubus_board, %struct.nubus_board* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @snprintf(i8* %9, i32 2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = getelementptr inbounds [2 x i8], [2 x i8]* %4, i64 0, i64 0
  %15 = load i32, i32* @proc_bus_nubus_dir, align 4
  %16 = call %struct.proc_dir_entry* @proc_mkdir(i8* %14, i32 %15)
  store %struct.proc_dir_entry* %16, %struct.proc_dir_entry** %2, align 8
  br label %17

17:                                               ; preds = %8, %7
  %18 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %2, align 8
  ret %struct.proc_dir_entry* %18
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local %struct.proc_dir_entry* @proc_mkdir(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
