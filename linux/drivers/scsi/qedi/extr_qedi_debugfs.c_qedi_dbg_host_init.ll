; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_debugfs.c_qedi_dbg_host_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_debugfs.c_qedi_dbg_host_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qedi_dbg_ctx = type { i32, i32 }
%struct.qedi_debugfs_ops = type { i32 }
%struct.file_operations = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"host%u\00", align 1
@qedi_dbg_root = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qedi_dbg_host_init(%struct.qedi_dbg_ctx* %0, %struct.qedi_debugfs_ops* %1, %struct.file_operations* %2) #0 {
  %4 = alloca %struct.qedi_dbg_ctx*, align 8
  %5 = alloca %struct.qedi_debugfs_ops*, align 8
  %6 = alloca %struct.file_operations*, align 8
  %7 = alloca [32 x i8], align 16
  store %struct.qedi_dbg_ctx* %0, %struct.qedi_dbg_ctx** %4, align 8
  store %struct.qedi_debugfs_ops* %1, %struct.qedi_debugfs_ops** %5, align 8
  store %struct.file_operations* %2, %struct.file_operations** %6, align 8
  %8 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %9 = load %struct.qedi_dbg_ctx*, %struct.qedi_dbg_ctx** %4, align 8
  %10 = getelementptr inbounds %struct.qedi_dbg_ctx, %struct.qedi_dbg_ctx* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @sprintf(i8* %8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %14 = load i32, i32* @qedi_dbg_root, align 4
  %15 = call i32 @debugfs_create_dir(i8* %13, i32 %14)
  %16 = load %struct.qedi_dbg_ctx*, %struct.qedi_dbg_ctx** %4, align 8
  %17 = getelementptr inbounds %struct.qedi_dbg_ctx, %struct.qedi_dbg_ctx* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 4
  br label %18

18:                                               ; preds = %27, %3
  %19 = load %struct.qedi_debugfs_ops*, %struct.qedi_debugfs_ops** %5, align 8
  %20 = icmp ne %struct.qedi_debugfs_ops* %19, null
  br i1 %20, label %21, label %41

21:                                               ; preds = %18
  %22 = load %struct.qedi_debugfs_ops*, %struct.qedi_debugfs_ops** %5, align 8
  %23 = getelementptr inbounds %struct.qedi_debugfs_ops, %struct.qedi_debugfs_ops* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %21
  br label %41

27:                                               ; preds = %21
  %28 = load %struct.qedi_debugfs_ops*, %struct.qedi_debugfs_ops** %5, align 8
  %29 = getelementptr inbounds %struct.qedi_debugfs_ops, %struct.qedi_debugfs_ops* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.qedi_dbg_ctx*, %struct.qedi_dbg_ctx** %4, align 8
  %32 = getelementptr inbounds %struct.qedi_dbg_ctx, %struct.qedi_dbg_ctx* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.qedi_dbg_ctx*, %struct.qedi_dbg_ctx** %4, align 8
  %35 = load %struct.file_operations*, %struct.file_operations** %6, align 8
  %36 = call i32 @debugfs_create_file(i32 %30, i32 384, i32 %33, %struct.qedi_dbg_ctx* %34, %struct.file_operations* %35)
  %37 = load %struct.qedi_debugfs_ops*, %struct.qedi_debugfs_ops** %5, align 8
  %38 = getelementptr inbounds %struct.qedi_debugfs_ops, %struct.qedi_debugfs_ops* %37, i32 1
  store %struct.qedi_debugfs_ops* %38, %struct.qedi_debugfs_ops** %5, align 8
  %39 = load %struct.file_operations*, %struct.file_operations** %6, align 8
  %40 = getelementptr inbounds %struct.file_operations, %struct.file_operations* %39, i32 1
  store %struct.file_operations* %40, %struct.file_operations** %6, align 8
  br label %18

41:                                               ; preds = %26, %18
  ret void
}

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @debugfs_create_dir(i8*, i32) #1

declare dso_local i32 @debugfs_create_file(i32, i32, i32, %struct.qedi_dbg_ctx*, %struct.file_operations*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
