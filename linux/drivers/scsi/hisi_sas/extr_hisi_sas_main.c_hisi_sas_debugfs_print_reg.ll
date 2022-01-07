; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_main.c_hisi_sas_debugfs_print_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_main.c_hisi_sas_debugfs_print_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.hisi_sas_debugfs_reg = type { i32, i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"0x%08x 0x%08x %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"0x%08x 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, %struct.seq_file*)* @hisi_sas_debugfs_print_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hisi_sas_debugfs_print_reg(i32* %0, i8* %1, %struct.seq_file* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.seq_file*, align 8
  %7 = alloca %struct.hisi_sas_debugfs_reg*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.seq_file* %2, %struct.seq_file** %6, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.hisi_sas_debugfs_reg*
  store %struct.hisi_sas_debugfs_reg* %12, %struct.hisi_sas_debugfs_reg** %7, align 8
  store i32 0, i32* %8, align 4
  br label %13

13:                                               ; preds = %52, %3
  %14 = load i32, i32* %8, align 4
  %15 = load %struct.hisi_sas_debugfs_reg*, %struct.hisi_sas_debugfs_reg** %7, align 8
  %16 = getelementptr inbounds %struct.hisi_sas_debugfs_reg, %struct.hisi_sas_debugfs_reg* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %55

19:                                               ; preds = %13
  %20 = load i32, i32* %8, align 4
  %21 = mul nsw i32 %20, 4
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = load %struct.hisi_sas_debugfs_reg*, %struct.hisi_sas_debugfs_reg** %7, align 8
  %24 = getelementptr inbounds %struct.hisi_sas_debugfs_reg, %struct.hisi_sas_debugfs_reg* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.hisi_sas_debugfs_reg*, %struct.hisi_sas_debugfs_reg** %7, align 8
  %27 = getelementptr inbounds %struct.hisi_sas_debugfs_reg, %struct.hisi_sas_debugfs_reg* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i8* @hisi_sas_debugfs_to_reg_name(i32 %22, i32 %25, i32 %28)
  store i8* %29, i8** %10, align 8
  %30 = load i8*, i8** %10, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %42

32:                                               ; preds = %19
  %33 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %34 = load i32, i32* %9, align 4
  %35 = load i32*, i32** %4, align 8
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = load i8*, i8** %10, align 8
  %41 = call i32 (%struct.seq_file*, i8*, i32, i32, ...) @seq_printf(%struct.seq_file* %33, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %39, i8* %40)
  br label %51

42:                                               ; preds = %19
  %43 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %44 = load i32, i32* %9, align 4
  %45 = load i32*, i32** %4, align 8
  %46 = load i32, i32* %8, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = call i32 (%struct.seq_file*, i8*, i32, i32, ...) @seq_printf(%struct.seq_file* %43, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %44, i32 %49)
  br label %51

51:                                               ; preds = %42, %32
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %8, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %8, align 4
  br label %13

55:                                               ; preds = %13
  ret void
}

declare dso_local i8* @hisi_sas_debugfs_to_reg_name(i32, i32, i32) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
