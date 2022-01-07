; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_wr.c_csio_get_flbuf_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_wr.c_csio_get_flbuf_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csio_hw = type { i32 }
%struct.csio_sge = type { i32* }

@SGE_FL_BUFFER_SIZE0_A = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.csio_hw*, %struct.csio_sge*, i64)* @csio_get_flbuf_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @csio_get_flbuf_size(%struct.csio_hw* %0, %struct.csio_sge* %1, i64 %2) #0 {
  %4 = alloca %struct.csio_hw*, align 8
  %5 = alloca %struct.csio_sge*, align 8
  %6 = alloca i64, align 8
  store %struct.csio_hw* %0, %struct.csio_hw** %4, align 8
  store %struct.csio_sge* %1, %struct.csio_sge** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %struct.csio_hw*, %struct.csio_hw** %4, align 8
  %8 = load i64, i64* @SGE_FL_BUFFER_SIZE0_A, align 8
  %9 = load i64, i64* %6, align 8
  %10 = mul i64 %9, 8
  %11 = add i64 %8, %10
  %12 = call i32 @csio_rd_reg32(%struct.csio_hw* %7, i64 %11)
  %13 = load %struct.csio_sge*, %struct.csio_sge** %5, align 8
  %14 = getelementptr inbounds %struct.csio_sge, %struct.csio_sge* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load i64, i64* %6, align 8
  %17 = getelementptr inbounds i32, i32* %15, i64 %16
  store i32 %12, i32* %17, align 4
  ret void
}

declare dso_local i32 @csio_rd_reg32(%struct.csio_hw*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
