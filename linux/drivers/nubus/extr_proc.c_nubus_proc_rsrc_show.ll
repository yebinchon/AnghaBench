; ModuleID = '/home/carl/AnghaBench/linux/drivers/nubus/extr_proc.c_nubus_proc_rsrc_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nubus/extr_proc.c_nubus_proc_rsrc_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i64, %struct.inode* }
%struct.inode = type { i32 }
%struct.nubus_proc_pde_data = type { i64, i64 }
%struct.nubus_dirent = type { i32, i64, i64 }

@EFBIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @nubus_proc_rsrc_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nubus_proc_rsrc_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.nubus_proc_pde_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.nubus_dirent, align 8
  %10 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %12 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %11, i32 0, i32 1
  %13 = load %struct.inode*, %struct.inode** %12, align 8
  store %struct.inode* %13, %struct.inode** %6, align 8
  %14 = load %struct.inode*, %struct.inode** %6, align 8
  %15 = call %struct.nubus_proc_pde_data* @PDE_DATA(%struct.inode* %14)
  store %struct.nubus_proc_pde_data* %15, %struct.nubus_proc_pde_data** %7, align 8
  %16 = load %struct.nubus_proc_pde_data*, %struct.nubus_proc_pde_data** %7, align 8
  %17 = icmp ne %struct.nubus_proc_pde_data* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %73

19:                                               ; preds = %2
  %20 = load %struct.nubus_proc_pde_data*, %struct.nubus_proc_pde_data** %7, align 8
  %21 = getelementptr inbounds %struct.nubus_proc_pde_data, %struct.nubus_proc_pde_data* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %24 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp sgt i64 %22, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %19
  %28 = load i32, i32* @EFBIG, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %73

30:                                               ; preds = %19
  %31 = load %struct.nubus_proc_pde_data*, %struct.nubus_proc_pde_data** %7, align 8
  %32 = getelementptr inbounds %struct.nubus_proc_pde_data, %struct.nubus_proc_pde_data* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %55

35:                                               ; preds = %30
  %36 = load %struct.inode*, %struct.inode** %6, align 8
  %37 = call i64 @proc_get_parent_data(%struct.inode* %36)
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %35
  store i32 0, i32* %3, align 4
  br label %73

42:                                               ; preds = %35
  %43 = load i32, i32* %8, align 4
  %44 = getelementptr inbounds %struct.nubus_dirent, %struct.nubus_dirent* %9, i32 0, i32 0
  store i32 %43, i32* %44, align 8
  %45 = load %struct.nubus_proc_pde_data*, %struct.nubus_proc_pde_data** %7, align 8
  %46 = getelementptr inbounds %struct.nubus_proc_pde_data, %struct.nubus_proc_pde_data* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds %struct.nubus_dirent, %struct.nubus_dirent* %9, i32 0, i32 2
  store i64 %47, i64* %48, align 8
  %49 = getelementptr inbounds %struct.nubus_dirent, %struct.nubus_dirent* %9, i32 0, i32 1
  store i64 0, i64* %49, align 8
  %50 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %51 = load %struct.nubus_proc_pde_data*, %struct.nubus_proc_pde_data** %7, align 8
  %52 = getelementptr inbounds %struct.nubus_proc_pde_data, %struct.nubus_proc_pde_data* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @nubus_seq_write_rsrc_mem(%struct.seq_file* %50, %struct.nubus_dirent* %9, i64 %53)
  br label %72

55:                                               ; preds = %30
  %56 = load %struct.nubus_proc_pde_data*, %struct.nubus_proc_pde_data** %7, align 8
  %57 = getelementptr inbounds %struct.nubus_proc_pde_data, %struct.nubus_proc_pde_data* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %10, align 4
  %60 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %61 = load i32, i32* %10, align 4
  %62 = lshr i32 %61, 16
  %63 = call i32 @seq_putc(%struct.seq_file* %60, i32 %62)
  %64 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %65 = load i32, i32* %10, align 4
  %66 = lshr i32 %65, 8
  %67 = call i32 @seq_putc(%struct.seq_file* %64, i32 %66)
  %68 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %69 = load i32, i32* %10, align 4
  %70 = lshr i32 %69, 0
  %71 = call i32 @seq_putc(%struct.seq_file* %68, i32 %70)
  br label %72

72:                                               ; preds = %55, %42
  store i32 0, i32* %3, align 4
  br label %73

73:                                               ; preds = %72, %41, %27, %18
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local %struct.nubus_proc_pde_data* @PDE_DATA(%struct.inode*) #1

declare dso_local i64 @proc_get_parent_data(%struct.inode*) #1

declare dso_local i32 @nubus_seq_write_rsrc_mem(%struct.seq_file*, %struct.nubus_dirent*, i64) #1

declare dso_local i32 @seq_putc(%struct.seq_file*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
