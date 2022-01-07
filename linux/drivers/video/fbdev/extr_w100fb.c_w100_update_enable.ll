; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_w100fb.c_w100_update_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_w100fb.c_w100_update_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.disp_db_buf_cntl_wr_u = type { i64, [8 x i8] }
%struct.TYPE_2__ = type { i32, i32, i32 }

@remapped_regs = common dso_local global i64 0, align 8
@mmDISP_DB_BUF_CNTL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @w100_update_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @w100_update_enable() #0 {
  %1 = alloca %union.disp_db_buf_cntl_wr_u, align 8
  %2 = bitcast %union.disp_db_buf_cntl_wr_u* %1 to %struct.TYPE_2__*
  %3 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %2, i32 0, i32 0
  store i32 30, i32* %3, align 8
  %4 = bitcast %union.disp_db_buf_cntl_wr_u* %1 to %struct.TYPE_2__*
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 1
  store i32 1, i32* %5, align 4
  %6 = bitcast %union.disp_db_buf_cntl_wr_u* %1 to %struct.TYPE_2__*
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 2
  store i32 1, i32* %7, align 8
  %8 = bitcast %union.disp_db_buf_cntl_wr_u* %1 to i64*
  %9 = load i64, i64* %8, align 8
  %10 = trunc i64 %9 to i32
  %11 = load i64, i64* @remapped_regs, align 8
  %12 = load i64, i64* @mmDISP_DB_BUF_CNTL, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @writel(i32 %10, i64 %13)
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
