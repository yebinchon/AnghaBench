; ModuleID = '/home/carl/AnghaBench/linux/drivers/nubus/extr_proc.c_nubus_proc_add_rsrc_mem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nubus/extr_proc.c_nubus_proc_add_rsrc_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc_dir_entry = type { i32 }
%struct.nubus_dirent = type { i32 }
%struct.nubus_proc_pde_data = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%x\00", align 1
@S_IFREG = common dso_local global i32 0, align 4
@nubus_proc_rsrc_show = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nubus_proc_add_rsrc_mem(%struct.proc_dir_entry* %0, %struct.nubus_dirent* %1, i32 %2) #0 {
  %4 = alloca %struct.proc_dir_entry*, align 8
  %5 = alloca %struct.nubus_dirent*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [9 x i8], align 1
  %8 = alloca %struct.nubus_proc_pde_data*, align 8
  store %struct.proc_dir_entry* %0, %struct.proc_dir_entry** %4, align 8
  store %struct.nubus_dirent* %1, %struct.nubus_dirent** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %4, align 8
  %10 = icmp ne %struct.proc_dir_entry* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %3
  br label %34

12:                                               ; preds = %3
  %13 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 0
  %14 = load %struct.nubus_dirent*, %struct.nubus_dirent** %5, align 8
  %15 = getelementptr inbounds %struct.nubus_dirent, %struct.nubus_dirent* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @snprintf(i8* %13, i32 9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %12
  %21 = load %struct.nubus_dirent*, %struct.nubus_dirent** %5, align 8
  %22 = call i32 @nubus_dirptr(%struct.nubus_dirent* %21)
  %23 = load i32, i32* %6, align 4
  %24 = call %struct.nubus_proc_pde_data* @nubus_proc_alloc_pde_data(i32 %22, i32 %23)
  store %struct.nubus_proc_pde_data* %24, %struct.nubus_proc_pde_data** %8, align 8
  br label %26

25:                                               ; preds = %12
  store %struct.nubus_proc_pde_data* null, %struct.nubus_proc_pde_data** %8, align 8
  br label %26

26:                                               ; preds = %25, %20
  %27 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 0
  %28 = load i32, i32* @S_IFREG, align 4
  %29 = or i32 %28, 292
  %30 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %4, align 8
  %31 = load i32, i32* @nubus_proc_rsrc_show, align 4
  %32 = load %struct.nubus_proc_pde_data*, %struct.nubus_proc_pde_data** %8, align 8
  %33 = call i32 @proc_create_single_data(i8* %27, i32 %29, %struct.proc_dir_entry* %30, i32 %31, %struct.nubus_proc_pde_data* %32)
  br label %34

34:                                               ; preds = %26, %11
  ret void
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local %struct.nubus_proc_pde_data* @nubus_proc_alloc_pde_data(i32, i32) #1

declare dso_local i32 @nubus_dirptr(%struct.nubus_dirent*) #1

declare dso_local i32 @proc_create_single_data(i8*, i32, %struct.proc_dir_entry*, i32, %struct.nubus_proc_pde_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
