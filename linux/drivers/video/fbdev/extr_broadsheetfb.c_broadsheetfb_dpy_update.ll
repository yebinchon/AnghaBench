; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_broadsheetfb.c_broadsheetfb_dpy_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_broadsheetfb.c_broadsheetfb_dpy_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.broadsheetfb_par = type { i64, i32, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 (%struct.broadsheetfb_par*)* }
%struct.TYPE_4__ = type { i64 }

@BS_CMD_LD_IMG = common dso_local global i32 0, align 4
@BS_CMD_WR_REG = common dso_local global i32 0, align 4
@panel_table = common dso_local global %struct.TYPE_6__* null, align 8
@BS_CMD_LD_IMG_END = common dso_local global i32 0, align 4
@BS_CMD_UPD_FULL = common dso_local global i32 0, align 4
@BS_CMD_WAIT_DSPE_TRG = common dso_local global i32 0, align 4
@BS_CMD_WAIT_DSPE_FREND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.broadsheetfb_par*)* @broadsheetfb_dpy_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @broadsheetfb_dpy_update(%struct.broadsheetfb_par* %0) #0 {
  %2 = alloca %struct.broadsheetfb_par*, align 8
  %3 = alloca [5 x i32], align 16
  store %struct.broadsheetfb_par* %0, %struct.broadsheetfb_par** %2, align 8
  %4 = load %struct.broadsheetfb_par*, %struct.broadsheetfb_par** %2, align 8
  %5 = getelementptr inbounds %struct.broadsheetfb_par, %struct.broadsheetfb_par* %4, i32 0, i32 1
  %6 = call i32 @mutex_lock(i32* %5)
  %7 = getelementptr inbounds [5 x i32], [5 x i32]* %3, i64 0, i64 0
  store i32 48, i32* %7, align 16
  %8 = load %struct.broadsheetfb_par*, %struct.broadsheetfb_par** %2, align 8
  %9 = load i32, i32* @BS_CMD_LD_IMG, align 4
  %10 = getelementptr inbounds [5 x i32], [5 x i32]* %3, i64 0, i64 0
  %11 = call i32 @broadsheet_send_cmdargs(%struct.broadsheetfb_par* %8, i32 %9, i32 1, i32* %10)
  %12 = getelementptr inbounds [5 x i32], [5 x i32]* %3, i64 0, i64 0
  store i32 340, i32* %12, align 16
  %13 = load %struct.broadsheetfb_par*, %struct.broadsheetfb_par** %2, align 8
  %14 = load i32, i32* @BS_CMD_WR_REG, align 4
  %15 = getelementptr inbounds [5 x i32], [5 x i32]* %3, i64 0, i64 0
  %16 = call i32 @broadsheet_send_cmdargs(%struct.broadsheetfb_par* %13, i32 %14, i32 1, i32* %15)
  %17 = load %struct.broadsheetfb_par*, %struct.broadsheetfb_par** %2, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** @panel_table, align 8
  %19 = load %struct.broadsheetfb_par*, %struct.broadsheetfb_par** %2, align 8
  %20 = getelementptr inbounds %struct.broadsheetfb_par, %struct.broadsheetfb_par* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** @panel_table, align 8
  %26 = load %struct.broadsheetfb_par*, %struct.broadsheetfb_par** %2, align 8
  %27 = getelementptr inbounds %struct.broadsheetfb_par, %struct.broadsheetfb_par* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = mul nsw i32 %24, %31
  %33 = sdiv i32 %32, 2
  %34 = load %struct.broadsheetfb_par*, %struct.broadsheetfb_par** %2, align 8
  %35 = getelementptr inbounds %struct.broadsheetfb_par, %struct.broadsheetfb_par* %34, i32 0, i32 3
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = inttoptr i64 %38 to i32*
  %40 = call i32 @broadsheet_burst_write(%struct.broadsheetfb_par* %17, i32 %33, i32* %39)
  %41 = load %struct.broadsheetfb_par*, %struct.broadsheetfb_par** %2, align 8
  %42 = load i32, i32* @BS_CMD_LD_IMG_END, align 4
  %43 = call i32 @broadsheet_send_command(%struct.broadsheetfb_par* %41, i32 %42)
  %44 = getelementptr inbounds [5 x i32], [5 x i32]* %3, i64 0, i64 0
  store i32 17152, i32* %44, align 16
  %45 = load %struct.broadsheetfb_par*, %struct.broadsheetfb_par** %2, align 8
  %46 = load i32, i32* @BS_CMD_UPD_FULL, align 4
  %47 = getelementptr inbounds [5 x i32], [5 x i32]* %3, i64 0, i64 0
  %48 = call i32 @broadsheet_send_cmdargs(%struct.broadsheetfb_par* %45, i32 %46, i32 1, i32* %47)
  %49 = load %struct.broadsheetfb_par*, %struct.broadsheetfb_par** %2, align 8
  %50 = load i32, i32* @BS_CMD_WAIT_DSPE_TRG, align 4
  %51 = call i32 @broadsheet_send_command(%struct.broadsheetfb_par* %49, i32 %50)
  %52 = load %struct.broadsheetfb_par*, %struct.broadsheetfb_par** %2, align 8
  %53 = load i32, i32* @BS_CMD_WAIT_DSPE_FREND, align 4
  %54 = call i32 @broadsheet_send_command(%struct.broadsheetfb_par* %52, i32 %53)
  %55 = load %struct.broadsheetfb_par*, %struct.broadsheetfb_par** %2, align 8
  %56 = getelementptr inbounds %struct.broadsheetfb_par, %struct.broadsheetfb_par* %55, i32 0, i32 2
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i32 (%struct.broadsheetfb_par*)*, i32 (%struct.broadsheetfb_par*)** %58, align 8
  %60 = load %struct.broadsheetfb_par*, %struct.broadsheetfb_par** %2, align 8
  %61 = call i32 %59(%struct.broadsheetfb_par* %60)
  %62 = load %struct.broadsheetfb_par*, %struct.broadsheetfb_par** %2, align 8
  %63 = getelementptr inbounds %struct.broadsheetfb_par, %struct.broadsheetfb_par* %62, i32 0, i32 1
  %64 = call i32 @mutex_unlock(i32* %63)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @broadsheet_send_cmdargs(%struct.broadsheetfb_par*, i32, i32, i32*) #1

declare dso_local i32 @broadsheet_burst_write(%struct.broadsheetfb_par*, i32, i32*) #1

declare dso_local i32 @broadsheet_send_command(%struct.broadsheetfb_par*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
