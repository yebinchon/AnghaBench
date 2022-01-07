; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_trace.c_nvme_trace_admin_identify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_trace.c_nvme_trace_admin_identify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_seq = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"cns=%u, ctrlid=%u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.trace_seq*, i32*)* @nvme_trace_admin_identify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @nvme_trace_admin_identify(%struct.trace_seq* %0, i32* %1) #0 {
  %3 = alloca %struct.trace_seq*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.trace_seq* %0, %struct.trace_seq** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load %struct.trace_seq*, %struct.trace_seq** %3, align 8
  %9 = call i8* @trace_seq_buffer_ptr(%struct.trace_seq* %8)
  store i8* %9, i8** %5, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %6, align 4
  %13 = load i32*, i32** %4, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 2
  %15 = call i32 @get_unaligned_le16(i32* %14)
  store i32 %15, i32* %7, align 4
  %16 = load %struct.trace_seq*, %struct.trace_seq** %3, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @trace_seq_printf(%struct.trace_seq* %16, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %18)
  %20 = load %struct.trace_seq*, %struct.trace_seq** %3, align 8
  %21 = call i32 @trace_seq_putc(%struct.trace_seq* %20, i32 0)
  %22 = load i8*, i8** %5, align 8
  ret i8* %22
}

declare dso_local i8* @trace_seq_buffer_ptr(%struct.trace_seq*) #1

declare dso_local i32 @get_unaligned_le16(i32*) #1

declare dso_local i32 @trace_seq_printf(%struct.trace_seq*, i8*, i32, i32) #1

declare dso_local i32 @trace_seq_putc(%struct.trace_seq*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
