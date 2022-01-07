; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_trace.c_nvme_trace_read_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_trace.c_nvme_trace_read_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_seq = type { i32 }

@.str = private unnamed_addr constant [51 x i8] c"slba=%llu, len=%u, ctrl=0x%x, dsmgmt=%u, reftag=%u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.trace_seq*, i32*)* @nvme_trace_read_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @nvme_trace_read_write(%struct.trace_seq* %0, i32* %1) #0 {
  %3 = alloca %struct.trace_seq*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.trace_seq* %0, %struct.trace_seq** %3, align 8
  store i32* %1, i32** %4, align 8
  %11 = load %struct.trace_seq*, %struct.trace_seq** %3, align 8
  %12 = call i8* @trace_seq_buffer_ptr(%struct.trace_seq* %11)
  store i8* %12, i8** %5, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = call i32 @get_unaligned_le64(i32* %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32*, i32** %4, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 8
  %17 = call i32 @get_unaligned_le16(i32* %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32*, i32** %4, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 10
  %20 = call i32 @get_unaligned_le16(i32* %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32*, i32** %4, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 12
  %23 = call i32 @get_unaligned_le32(i32* %22)
  store i32 %23, i32* %9, align 4
  %24 = load i32*, i32** %4, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 16
  %26 = call i32 @get_unaligned_le32(i32* %25)
  store i32 %26, i32* %10, align 4
  %27 = load %struct.trace_seq*, %struct.trace_seq** %3, align 8
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %10, align 4
  %33 = call i32 @trace_seq_printf(%struct.trace_seq* %27, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %29, i32 %30, i32 %31, i32 %32)
  %34 = load %struct.trace_seq*, %struct.trace_seq** %3, align 8
  %35 = call i32 @trace_seq_putc(%struct.trace_seq* %34, i32 0)
  %36 = load i8*, i8** %5, align 8
  ret i8* %36
}

declare dso_local i8* @trace_seq_buffer_ptr(%struct.trace_seq*) #1

declare dso_local i32 @get_unaligned_le64(i32*) #1

declare dso_local i32 @get_unaligned_le16(i32*) #1

declare dso_local i32 @get_unaligned_le32(i32*) #1

declare dso_local i32 @trace_seq_printf(%struct.trace_seq*, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @trace_seq_putc(%struct.trace_seq*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
