; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_smb1ops.c_cifs_check_trans2.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_smb1ops.c_cifs_check_trans2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mid_q_entry = type { i32, i8*, i32, i32 }
%struct.TCP_Server_Info = type { i32*, i32 }

@VFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"1st trans2 resp needs bigbuf\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mid_q_entry*, %struct.TCP_Server_Info*, i8*, i32)* @cifs_check_trans2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cifs_check_trans2(%struct.mid_q_entry* %0, %struct.TCP_Server_Info* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mid_q_entry*, align 8
  %7 = alloca %struct.TCP_Server_Info*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.mid_q_entry* %0, %struct.mid_q_entry** %6, align 8
  store %struct.TCP_Server_Info* %1, %struct.TCP_Server_Info** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %57

13:                                               ; preds = %4
  %14 = load i8*, i8** %8, align 8
  %15 = call i64 @check2ndT2(i8* %14)
  %16 = icmp sle i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  store i32 0, i32* %5, align 4
  br label %57

18:                                               ; preds = %13
  %19 = load %struct.mid_q_entry*, %struct.mid_q_entry** %6, align 8
  %20 = getelementptr inbounds %struct.mid_q_entry, %struct.mid_q_entry* %19, i32 0, i32 0
  store i32 1, i32* %20, align 8
  %21 = load %struct.mid_q_entry*, %struct.mid_q_entry** %6, align 8
  %22 = getelementptr inbounds %struct.mid_q_entry, %struct.mid_q_entry* %21, i32 0, i32 1
  %23 = load i8*, i8** %22, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %40

25:                                               ; preds = %18
  %26 = load i8*, i8** %8, align 8
  %27 = load %struct.mid_q_entry*, %struct.mid_q_entry** %6, align 8
  %28 = getelementptr inbounds %struct.mid_q_entry, %struct.mid_q_entry* %27, i32 0, i32 1
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 @coalesce_t2(i8* %26, i8* %29)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  store i32 1, i32* %5, align 4
  br label %57

34:                                               ; preds = %25
  %35 = load %struct.mid_q_entry*, %struct.mid_q_entry** %6, align 8
  %36 = getelementptr inbounds %struct.mid_q_entry, %struct.mid_q_entry* %35, i32 0, i32 2
  store i32 1, i32* %36, align 8
  %37 = load %struct.mid_q_entry*, %struct.mid_q_entry** %6, align 8
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @dequeue_mid(%struct.mid_q_entry* %37, i32 %38)
  store i32 1, i32* %5, align 4
  br label %57

40:                                               ; preds = %18
  %41 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %7, align 8
  %42 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %40
  %46 = load i32, i32* @VFS, align 4
  %47 = call i32 @cifs_dbg(i32 %46, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %56

48:                                               ; preds = %40
  %49 = load i8*, i8** %8, align 8
  %50 = load %struct.mid_q_entry*, %struct.mid_q_entry** %6, align 8
  %51 = getelementptr inbounds %struct.mid_q_entry, %struct.mid_q_entry* %50, i32 0, i32 1
  store i8* %49, i8** %51, align 8
  %52 = load %struct.mid_q_entry*, %struct.mid_q_entry** %6, align 8
  %53 = getelementptr inbounds %struct.mid_q_entry, %struct.mid_q_entry* %52, i32 0, i32 3
  store i32 1, i32* %53, align 4
  %54 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %7, align 8
  %55 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %54, i32 0, i32 0
  store i32* null, i32** %55, align 8
  br label %56

56:                                               ; preds = %48, %45
  store i32 1, i32* %5, align 4
  br label %57

57:                                               ; preds = %56, %34, %33, %17, %12
  %58 = load i32, i32* %5, align 4
  ret i32 %58
}

declare dso_local i64 @check2ndT2(i8*) #1

declare dso_local i32 @coalesce_t2(i8*, i8*) #1

declare dso_local i32 @dequeue_mid(%struct.mid_q_entry*, i32) #1

declare dso_local i32 @cifs_dbg(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
