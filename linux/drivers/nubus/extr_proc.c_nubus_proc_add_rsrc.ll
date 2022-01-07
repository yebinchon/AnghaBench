; ModuleID = '/home/carl/AnghaBench/linux/drivers/nubus/extr_proc.c_nubus_proc_add_rsrc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nubus/extr_proc.c_nubus_proc_add_rsrc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc_dir_entry = type { i32 }
%struct.nubus_dirent = type { i32, i64 }

@.str = private unnamed_addr constant [3 x i8] c"%x\00", align 1
@S_IFREG = common dso_local global i32 0, align 4
@nubus_proc_rsrc_show = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nubus_proc_add_rsrc(%struct.proc_dir_entry* %0, %struct.nubus_dirent* %1) #0 {
  %3 = alloca %struct.proc_dir_entry*, align 8
  %4 = alloca %struct.nubus_dirent*, align 8
  %5 = alloca [9 x i8], align 1
  %6 = alloca i8*, align 8
  store %struct.proc_dir_entry* %0, %struct.proc_dir_entry** %3, align 8
  store %struct.nubus_dirent* %1, %struct.nubus_dirent** %4, align 8
  %7 = load %struct.nubus_dirent*, %struct.nubus_dirent** %4, align 8
  %8 = getelementptr inbounds %struct.nubus_dirent, %struct.nubus_dirent* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to i8*
  store i8* %10, i8** %6, align 8
  %11 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %3, align 8
  %12 = icmp ne %struct.proc_dir_entry* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  br label %28

14:                                               ; preds = %2
  %15 = getelementptr inbounds [9 x i8], [9 x i8]* %5, i64 0, i64 0
  %16 = load %struct.nubus_dirent*, %struct.nubus_dirent** %4, align 8
  %17 = getelementptr inbounds %struct.nubus_dirent, %struct.nubus_dirent* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @snprintf(i8* %15, i32 9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = getelementptr inbounds [9 x i8], [9 x i8]* %5, i64 0, i64 0
  %21 = load i32, i32* @S_IFREG, align 4
  %22 = or i32 %21, 292
  %23 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %3, align 8
  %24 = load i32, i32* @nubus_proc_rsrc_show, align 4
  %25 = load i8*, i8** %6, align 8
  %26 = call i32 @nubus_proc_alloc_pde_data(i8* %25, i32 0)
  %27 = call i32 @proc_create_single_data(i8* %20, i32 %22, %struct.proc_dir_entry* %23, i32 %24, i32 %26)
  br label %28

28:                                               ; preds = %14, %13
  ret void
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @proc_create_single_data(i8*, i32, %struct.proc_dir_entry*, i32, i32) #1

declare dso_local i32 @nubus_proc_alloc_pde_data(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
