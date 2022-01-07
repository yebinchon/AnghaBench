; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_debug.c_prot_verify_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_debug.c_prot_verify_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32 }
%struct.t10_pi_tuple = type { i64 }

@dif_errors = common dso_local global i32 0, align 4
@dix_reads = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*, i64, i32, i32)* @prot_verify_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prot_verify_read(%struct.scsi_cmnd* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.scsi_cmnd*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.t10_pi_tuple*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %14

14:                                               ; preds = %45, %4
  %15 = load i32, i32* %10, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp ult i32 %15, %16
  br i1 %17, label %18, label %50

18:                                               ; preds = %14
  %19 = load i64, i64* %7, align 8
  %20 = load i32, i32* %10, align 4
  %21 = zext i32 %20 to i64
  %22 = add nsw i64 %19, %21
  store i64 %22, i64* %12, align 8
  %23 = load i64, i64* %12, align 8
  %24 = call %struct.t10_pi_tuple* @dif_store(i64 %23)
  store %struct.t10_pi_tuple* %24, %struct.t10_pi_tuple** %11, align 8
  %25 = load %struct.t10_pi_tuple*, %struct.t10_pi_tuple** %11, align 8
  %26 = getelementptr inbounds %struct.t10_pi_tuple, %struct.t10_pi_tuple* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i64 @cpu_to_be16(i32 65535)
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %18
  br label %45

31:                                               ; preds = %18
  %32 = load %struct.t10_pi_tuple*, %struct.t10_pi_tuple** %11, align 8
  %33 = load i64, i64* %12, align 8
  %34 = call i32 @lba2fake_store(i64 %33)
  %35 = load i64, i64* %12, align 8
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @dif_verify(%struct.t10_pi_tuple* %32, i32 %34, i64 %35, i32 %36)
  store i32 %37, i32* %13, align 4
  %38 = load i32, i32* %13, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %31
  %41 = load i32, i32* @dif_errors, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* @dif_errors, align 4
  %43 = load i32, i32* %13, align 4
  store i32 %43, i32* %5, align 4
  br label %57

44:                                               ; preds = %31
  br label %45

45:                                               ; preds = %44, %30
  %46 = load i32, i32* %10, align 4
  %47 = add i32 %46, 1
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %9, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %9, align 4
  br label %14

50:                                               ; preds = %14
  %51 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %52 = load i64, i64* %7, align 8
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @dif_copy_prot(%struct.scsi_cmnd* %51, i64 %52, i32 %53, i32 1)
  %55 = load i32, i32* @dix_reads, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* @dix_reads, align 4
  store i32 0, i32* %5, align 4
  br label %57

57:                                               ; preds = %50, %40
  %58 = load i32, i32* %5, align 4
  ret i32 %58
}

declare dso_local %struct.t10_pi_tuple* @dif_store(i64) #1

declare dso_local i64 @cpu_to_be16(i32) #1

declare dso_local i32 @dif_verify(%struct.t10_pi_tuple*, i32, i64, i32) #1

declare dso_local i32 @lba2fake_store(i64) #1

declare dso_local i32 @dif_copy_prot(%struct.scsi_cmnd*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
