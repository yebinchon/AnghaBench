; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_trace.c_scsi_trace_zbc_in.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_trace.c_scsi_trace_zbc_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_seq = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"REPORT_ZONES\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"UNKNOWN\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"%s zone=%llu alloc_len=%u options=%u partial=%u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.trace_seq*, i8*, i32)* @scsi_trace_zbc_in to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @scsi_trace_zbc_in(%struct.trace_seq* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.trace_seq*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  store %struct.trace_seq* %0, %struct.trace_seq** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.trace_seq*, %struct.trace_seq** %4, align 8
  %13 = call i8* @trace_seq_buffer_ptr(%struct.trace_seq* %12)
  store i8* %13, i8** %7, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = call i32 @SERVICE_ACTION16(i8* %14)
  switch i32 %15, label %17 [
    i32 128, label %16
  ]

16:                                               ; preds = %3
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  br label %20

17:                                               ; preds = %3
  %18 = load %struct.trace_seq*, %struct.trace_seq** %4, align 8
  %19 = call i32 @trace_seq_puts(%struct.trace_seq* %18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  br label %46

20:                                               ; preds = %16
  %21 = load i8*, i8** %5, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 2
  %23 = call i64 @get_unaligned_be64(i8* %22)
  store i64 %23, i64* %9, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 10
  %26 = call i32 @get_unaligned_be32(i8* %25)
  store i32 %26, i32* %10, align 4
  %27 = load i8*, i8** %5, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 14
  %29 = load i8, i8* %28, align 1
  %30 = zext i8 %29 to i32
  %31 = and i32 %30, 63
  %32 = trunc i32 %31 to i8
  store i8 %32, i8* %11, align 1
  %33 = load %struct.trace_seq*, %struct.trace_seq** %4, align 8
  %34 = load i8*, i8** %8, align 8
  %35 = load i64, i64* %9, align 8
  %36 = load i32, i32* %10, align 4
  %37 = load i8, i8* %11, align 1
  %38 = load i8*, i8** %5, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 14
  %40 = load i8, i8* %39, align 1
  %41 = zext i8 %40 to i32
  %42 = ashr i32 %41, 7
  %43 = and i32 %42, 1
  %44 = trunc i32 %43 to i8
  %45 = call i32 @trace_seq_printf(%struct.trace_seq* %33, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i8* %34, i64 %35, i32 %36, i8 zeroext %37, i8 zeroext %44)
  br label %46

46:                                               ; preds = %20, %17
  %47 = load %struct.trace_seq*, %struct.trace_seq** %4, align 8
  %48 = call i32 @trace_seq_putc(%struct.trace_seq* %47, i32 0)
  %49 = load i8*, i8** %7, align 8
  ret i8* %49
}

declare dso_local i8* @trace_seq_buffer_ptr(%struct.trace_seq*) #1

declare dso_local i32 @SERVICE_ACTION16(i8*) #1

declare dso_local i32 @trace_seq_puts(%struct.trace_seq*, i8*) #1

declare dso_local i64 @get_unaligned_be64(i8*) #1

declare dso_local i32 @get_unaligned_be32(i8*) #1

declare dso_local i32 @trace_seq_printf(%struct.trace_seq*, i8*, i8*, i64, i32, i8 zeroext, i8 zeroext) #1

declare dso_local i32 @trace_seq_putc(%struct.trace_seq*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
