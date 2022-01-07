; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_broadsheetfb.c_broadsheetfb_dpy_update_pages.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_broadsheetfb.c_broadsheetfb_dpy_update_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.broadsheetfb_par = type { i32, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 (%struct.broadsheetfb_par*)* }
%struct.TYPE_5__ = type { %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i32 }

@BS_CMD_LD_IMG_AREA = common dso_local global i32 0, align 4
@BS_CMD_WR_REG = common dso_local global i32 0, align 4
@BS_CMD_LD_IMG_END = common dso_local global i32 0, align 4
@BS_CMD_UPD_FULL = common dso_local global i32 0, align 4
@BS_CMD_WAIT_DSPE_TRG = common dso_local global i32 0, align 4
@BS_CMD_WAIT_DSPE_FREND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.broadsheetfb_par*, i32, i32)* @broadsheetfb_dpy_update_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @broadsheetfb_dpy_update_pages(%struct.broadsheetfb_par* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.broadsheetfb_par*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [5 x i32], align 16
  %8 = alloca i8*, align 8
  store %struct.broadsheetfb_par* %0, %struct.broadsheetfb_par** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.broadsheetfb_par*, %struct.broadsheetfb_par** %4, align 8
  %10 = getelementptr inbounds %struct.broadsheetfb_par, %struct.broadsheetfb_par* %9, i32 0, i32 2
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to i8*
  store i8* %14, i8** %8, align 8
  %15 = load %struct.broadsheetfb_par*, %struct.broadsheetfb_par** %4, align 8
  %16 = getelementptr inbounds %struct.broadsheetfb_par, %struct.broadsheetfb_par* %15, i32 0, i32 0
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load i32, i32* %5, align 4
  %19 = and i32 %18, 65532
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %6, align 4
  %21 = or i32 %20, 3
  store i32 %21, i32* %6, align 4
  %22 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  store i32 48, i32* %22, align 16
  %23 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 1
  store i32 0, i32* %23, align 4
  %24 = load i32, i32* %5, align 4
  %25 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 2
  store i32 %24, i32* %25, align 8
  %26 = load %struct.broadsheetfb_par*, %struct.broadsheetfb_par** %4, align 8
  %27 = getelementptr inbounds %struct.broadsheetfb_par, %struct.broadsheetfb_par* %26, i32 0, i32 2
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @cpu_to_le16(i32 %31)
  %33 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 3
  store i32 %32, i32* %33, align 4
  %34 = load i32, i32* %6, align 4
  %35 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 4
  store i32 %34, i32* %35, align 16
  %36 = load %struct.broadsheetfb_par*, %struct.broadsheetfb_par** %4, align 8
  %37 = load i32, i32* @BS_CMD_LD_IMG_AREA, align 4
  %38 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  %39 = call i32 @broadsheet_send_cmdargs(%struct.broadsheetfb_par* %36, i32 %37, i32 5, i32* %38)
  %40 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  store i32 340, i32* %40, align 16
  %41 = load %struct.broadsheetfb_par*, %struct.broadsheetfb_par** %4, align 8
  %42 = load i32, i32* @BS_CMD_WR_REG, align 4
  %43 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  %44 = call i32 @broadsheet_send_cmdargs(%struct.broadsheetfb_par* %41, i32 %42, i32 1, i32* %43)
  %45 = load i32, i32* %5, align 4
  %46 = load %struct.broadsheetfb_par*, %struct.broadsheetfb_par** %4, align 8
  %47 = getelementptr inbounds %struct.broadsheetfb_par, %struct.broadsheetfb_par* %46, i32 0, i32 2
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = mul nsw i32 %45, %51
  %53 = load i8*, i8** %8, align 8
  %54 = sext i32 %52 to i64
  %55 = getelementptr inbounds i8, i8* %53, i64 %54
  store i8* %55, i8** %8, align 8
  %56 = load %struct.broadsheetfb_par*, %struct.broadsheetfb_par** %4, align 8
  %57 = load i32, i32* %6, align 4
  %58 = add nsw i32 1, %57
  %59 = load i32, i32* %5, align 4
  %60 = sub nsw i32 %58, %59
  %61 = load %struct.broadsheetfb_par*, %struct.broadsheetfb_par** %4, align 8
  %62 = getelementptr inbounds %struct.broadsheetfb_par, %struct.broadsheetfb_par* %61, i32 0, i32 2
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = mul nsw i32 %60, %66
  %68 = sdiv i32 %67, 2
  %69 = load i8*, i8** %8, align 8
  %70 = bitcast i8* %69 to i32*
  %71 = call i32 @broadsheet_burst_write(%struct.broadsheetfb_par* %56, i32 %68, i32* %70)
  %72 = load %struct.broadsheetfb_par*, %struct.broadsheetfb_par** %4, align 8
  %73 = load i32, i32* @BS_CMD_LD_IMG_END, align 4
  %74 = call i32 @broadsheet_send_command(%struct.broadsheetfb_par* %72, i32 %73)
  %75 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  store i32 17152, i32* %75, align 16
  %76 = load %struct.broadsheetfb_par*, %struct.broadsheetfb_par** %4, align 8
  %77 = load i32, i32* @BS_CMD_UPD_FULL, align 4
  %78 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  %79 = call i32 @broadsheet_send_cmdargs(%struct.broadsheetfb_par* %76, i32 %77, i32 1, i32* %78)
  %80 = load %struct.broadsheetfb_par*, %struct.broadsheetfb_par** %4, align 8
  %81 = load i32, i32* @BS_CMD_WAIT_DSPE_TRG, align 4
  %82 = call i32 @broadsheet_send_command(%struct.broadsheetfb_par* %80, i32 %81)
  %83 = load %struct.broadsheetfb_par*, %struct.broadsheetfb_par** %4, align 8
  %84 = load i32, i32* @BS_CMD_WAIT_DSPE_FREND, align 4
  %85 = call i32 @broadsheet_send_command(%struct.broadsheetfb_par* %83, i32 %84)
  %86 = load %struct.broadsheetfb_par*, %struct.broadsheetfb_par** %4, align 8
  %87 = getelementptr inbounds %struct.broadsheetfb_par, %struct.broadsheetfb_par* %86, i32 0, i32 1
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = load i32 (%struct.broadsheetfb_par*)*, i32 (%struct.broadsheetfb_par*)** %89, align 8
  %91 = load %struct.broadsheetfb_par*, %struct.broadsheetfb_par** %4, align 8
  %92 = call i32 %90(%struct.broadsheetfb_par* %91)
  %93 = load %struct.broadsheetfb_par*, %struct.broadsheetfb_par** %4, align 8
  %94 = getelementptr inbounds %struct.broadsheetfb_par, %struct.broadsheetfb_par* %93, i32 0, i32 0
  %95 = call i32 @mutex_unlock(i32* %94)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

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
