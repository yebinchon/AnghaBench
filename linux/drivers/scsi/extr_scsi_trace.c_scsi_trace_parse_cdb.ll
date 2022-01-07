; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_trace.c_scsi_trace_parse_cdb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_trace.c_scsi_trace_parse_cdb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_seq = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @scsi_trace_parse_cdb(%struct.trace_seq* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.trace_seq*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.trace_seq* %0, %struct.trace_seq** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i8*, i8** %6, align 8
  %9 = getelementptr inbounds i8, i8* %8, i64 0
  %10 = load i8, i8* %9, align 1
  %11 = zext i8 %10 to i32
  switch i32 %11, label %67 [
    i32 142, label %12
    i32 132, label %12
    i32 145, label %17
    i32 138, label %17
    i32 135, label %17
    i32 131, label %17
    i32 144, label %22
    i32 137, label %22
    i32 134, label %22
    i32 143, label %27
    i32 136, label %27
    i32 133, label %27
    i32 130, label %27
    i32 140, label %32
    i32 141, label %37
    i32 139, label %42
    i32 147, label %47
    i32 146, label %52
    i32 129, label %57
    i32 128, label %62
  ]

12:                                               ; preds = %3, %3
  %13 = load %struct.trace_seq*, %struct.trace_seq** %5, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = load i32, i32* %7, align 4
  %16 = call i8* @scsi_trace_rw6(%struct.trace_seq* %13, i8* %14, i32 %15)
  store i8* %16, i8** %4, align 8
  br label %72

17:                                               ; preds = %3, %3, %3, %3
  %18 = load %struct.trace_seq*, %struct.trace_seq** %5, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call i8* @scsi_trace_rw10(%struct.trace_seq* %18, i8* %19, i32 %20)
  store i8* %21, i8** %4, align 8
  br label %72

22:                                               ; preds = %3, %3, %3
  %23 = load %struct.trace_seq*, %struct.trace_seq** %5, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i8* @scsi_trace_rw12(%struct.trace_seq* %23, i8* %24, i32 %25)
  store i8* %26, i8** %4, align 8
  br label %72

27:                                               ; preds = %3, %3, %3, %3
  %28 = load %struct.trace_seq*, %struct.trace_seq** %5, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = load i32, i32* %7, align 4
  %31 = call i8* @scsi_trace_rw16(%struct.trace_seq* %28, i8* %29, i32 %30)
  store i8* %31, i8** %4, align 8
  br label %72

32:                                               ; preds = %3
  %33 = load %struct.trace_seq*, %struct.trace_seq** %5, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call i8* @scsi_trace_unmap(%struct.trace_seq* %33, i8* %34, i32 %35)
  store i8* %36, i8** %4, align 8
  br label %72

37:                                               ; preds = %3
  %38 = load %struct.trace_seq*, %struct.trace_seq** %5, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = load i32, i32* %7, align 4
  %41 = call i8* @scsi_trace_service_action_in(%struct.trace_seq* %38, i8* %39, i32 %40)
  store i8* %41, i8** %4, align 8
  br label %72

42:                                               ; preds = %3
  %43 = load %struct.trace_seq*, %struct.trace_seq** %5, align 8
  %44 = load i8*, i8** %6, align 8
  %45 = load i32, i32* %7, align 4
  %46 = call i8* @scsi_trace_varlen(%struct.trace_seq* %43, i8* %44, i32 %45)
  store i8* %46, i8** %4, align 8
  br label %72

47:                                               ; preds = %3
  %48 = load %struct.trace_seq*, %struct.trace_seq** %5, align 8
  %49 = load i8*, i8** %6, align 8
  %50 = load i32, i32* %7, align 4
  %51 = call i8* @scsi_trace_maintenance_in(%struct.trace_seq* %48, i8* %49, i32 %50)
  store i8* %51, i8** %4, align 8
  br label %72

52:                                               ; preds = %3
  %53 = load %struct.trace_seq*, %struct.trace_seq** %5, align 8
  %54 = load i8*, i8** %6, align 8
  %55 = load i32, i32* %7, align 4
  %56 = call i8* @scsi_trace_maintenance_out(%struct.trace_seq* %53, i8* %54, i32 %55)
  store i8* %56, i8** %4, align 8
  br label %72

57:                                               ; preds = %3
  %58 = load %struct.trace_seq*, %struct.trace_seq** %5, align 8
  %59 = load i8*, i8** %6, align 8
  %60 = load i32, i32* %7, align 4
  %61 = call i8* @scsi_trace_zbc_in(%struct.trace_seq* %58, i8* %59, i32 %60)
  store i8* %61, i8** %4, align 8
  br label %72

62:                                               ; preds = %3
  %63 = load %struct.trace_seq*, %struct.trace_seq** %5, align 8
  %64 = load i8*, i8** %6, align 8
  %65 = load i32, i32* %7, align 4
  %66 = call i8* @scsi_trace_zbc_out(%struct.trace_seq* %63, i8* %64, i32 %65)
  store i8* %66, i8** %4, align 8
  br label %72

67:                                               ; preds = %3
  %68 = load %struct.trace_seq*, %struct.trace_seq** %5, align 8
  %69 = load i8*, i8** %6, align 8
  %70 = load i32, i32* %7, align 4
  %71 = call i8* @scsi_trace_misc(%struct.trace_seq* %68, i8* %69, i32 %70)
  store i8* %71, i8** %4, align 8
  br label %72

72:                                               ; preds = %67, %62, %57, %52, %47, %42, %37, %32, %27, %22, %17, %12
  %73 = load i8*, i8** %4, align 8
  ret i8* %73
}

declare dso_local i8* @scsi_trace_rw6(%struct.trace_seq*, i8*, i32) #1

declare dso_local i8* @scsi_trace_rw10(%struct.trace_seq*, i8*, i32) #1

declare dso_local i8* @scsi_trace_rw12(%struct.trace_seq*, i8*, i32) #1

declare dso_local i8* @scsi_trace_rw16(%struct.trace_seq*, i8*, i32) #1

declare dso_local i8* @scsi_trace_unmap(%struct.trace_seq*, i8*, i32) #1

declare dso_local i8* @scsi_trace_service_action_in(%struct.trace_seq*, i8*, i32) #1

declare dso_local i8* @scsi_trace_varlen(%struct.trace_seq*, i8*, i32) #1

declare dso_local i8* @scsi_trace_maintenance_in(%struct.trace_seq*, i8*, i32) #1

declare dso_local i8* @scsi_trace_maintenance_out(%struct.trace_seq*, i8*, i32) #1

declare dso_local i8* @scsi_trace_zbc_in(%struct.trace_seq*, i8*, i32) #1

declare dso_local i8* @scsi_trace_zbc_out(%struct.trace_seq*, i8*, i32) #1

declare dso_local i8* @scsi_trace_misc(%struct.trace_seq*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
