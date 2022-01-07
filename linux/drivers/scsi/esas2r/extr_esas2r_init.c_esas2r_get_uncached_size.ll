; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_init.c_esas2r_get_uncached_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_init.c_esas2r_get_uncached_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esas2r_adapter = type { i32 }

@ESAS2R_DISC_BUF_LEN = common dso_local global i32 0, align 4
@num_sg_lists = common dso_local global i32 0, align 4
@sgl_page_size = common dso_local global i64 0, align 8
@num_requests = common dso_local global i32 0, align 4
@num_ae_requests = common dso_local global i32 0, align 4
@ESAS2R_LIST_EXTRA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @esas2r_get_uncached_size(%struct.esas2r_adapter* %0) #0 {
  %2 = alloca %struct.esas2r_adapter*, align 8
  store %struct.esas2r_adapter* %0, %struct.esas2r_adapter** %2, align 8
  %3 = load i32, i32* @ESAS2R_DISC_BUF_LEN, align 4
  %4 = call i64 @ALIGN(i32 %3, i32 8)
  %5 = add i64 4, %4
  %6 = call i64 @ALIGN(i32 8, i32 8)
  %7 = add i64 %5, %6
  %8 = add i64 %7, 8
  %9 = load i32, i32* @num_sg_lists, align 4
  %10 = load i64, i64* @sgl_page_size, align 8
  %11 = trunc i64 %10 to i32
  %12 = mul nsw i32 %9, %11
  %13 = sext i32 %12 to i64
  %14 = add i64 %8, %13
  %15 = load i32, i32* @num_requests, align 4
  %16 = load i32, i32* @num_ae_requests, align 4
  %17 = add nsw i32 %15, %16
  %18 = add nsw i32 %17, 1
  %19 = load i32, i32* @ESAS2R_LIST_EXTRA, align 4
  %20 = add nsw i32 %18, %19
  %21 = sext i32 %20 to i64
  %22 = mul i64 %21, 4
  %23 = trunc i64 %22 to i32
  %24 = call i64 @ALIGN(i32 %23, i32 8)
  %25 = add i64 %14, %24
  %26 = load i32, i32* @num_requests, align 4
  %27 = load i32, i32* @num_ae_requests, align 4
  %28 = add nsw i32 %26, %27
  %29 = add nsw i32 %28, 1
  %30 = load i32, i32* @ESAS2R_LIST_EXTRA, align 4
  %31 = add nsw i32 %29, %30
  %32 = sext i32 %31 to i64
  %33 = mul i64 %32, 4
  %34 = trunc i64 %33 to i32
  %35 = call i64 @ALIGN(i32 %34, i32 8)
  %36 = add i64 %25, %35
  %37 = add i64 %36, 256
  ret i64 %37
}

declare dso_local i64 @ALIGN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
