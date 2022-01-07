; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_main.c_hisi_sas_show_row_64.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_main.c_hisi_sas_show_row_64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"index %04d:\0A\09\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c" 0x%016llx\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"\0A\09\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*, i32, i32, i32*)* @hisi_sas_show_row_64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hisi_sas_show_row_64(%struct.seq_file* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.seq_file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %10 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @seq_printf(%struct.seq_file* %10, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %11)
  store i32 1, i32* %9, align 4
  br label %13

13:                                               ; preds = %31, %4
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* %7, align 4
  %16 = sdiv i32 %15, 8
  %17 = icmp sle i32 %14, %16
  br i1 %17, label %18, label %36

18:                                               ; preds = %13
  %19 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %20 = load i32*, i32** %8, align 8
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @le64_to_cpu(i32 %21)
  %23 = call i32 @seq_printf(%struct.seq_file* %19, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* %9, align 4
  %25 = srem i32 %24, 2
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %18
  %28 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %29 = call i32 @seq_puts(%struct.seq_file* %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %30

30:                                               ; preds = %27, %18
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %9, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %9, align 4
  %34 = load i32*, i32** %8, align 8
  %35 = getelementptr inbounds i32, i32* %34, i32 1
  store i32* %35, i32** %8, align 8
  br label %13

36:                                               ; preds = %13
  %37 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %38 = call i32 @seq_puts(%struct.seq_file* %37, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
