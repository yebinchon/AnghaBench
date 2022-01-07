; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_st.c_validate_options.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_st.c_validate_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@buffer_kbs = common dso_local global i32 0, align 4
@ST_KILOBYTE = common dso_local global i32 0, align 4
@st_fixed_buffer_size = common dso_local global i32 0, align 4
@max_sg_segs = common dso_local global i64 0, align 8
@ST_FIRST_SG = common dso_local global i64 0, align 8
@st_max_sg_segs = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @validate_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @validate_options() #0 {
  %1 = load i32, i32* @buffer_kbs, align 4
  %2 = icmp sgt i32 %1, 0
  br i1 %2, label %3, label %7

3:                                                ; preds = %0
  %4 = load i32, i32* @buffer_kbs, align 4
  %5 = load i32, i32* @ST_KILOBYTE, align 4
  %6 = mul nsw i32 %4, %5
  store i32 %6, i32* @st_fixed_buffer_size, align 4
  br label %7

7:                                                ; preds = %3, %0
  %8 = load i64, i64* @max_sg_segs, align 8
  %9 = load i64, i64* @ST_FIRST_SG, align 8
  %10 = icmp sge i64 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %7
  %12 = load i64, i64* @max_sg_segs, align 8
  store i64 %12, i64* @st_max_sg_segs, align 8
  br label %13

13:                                               ; preds = %11, %7
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
