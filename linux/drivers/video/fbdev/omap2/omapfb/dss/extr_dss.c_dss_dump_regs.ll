; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dss.c_dss_dump_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dss.c_dss_dump_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"%-35s %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"DSS_REVISION\00", align 1
@DSS_REVISION = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"DSS_SYSCONFIG\00", align 1
@DSS_SYSCONFIG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"DSS_SYSSTATUS\00", align 1
@DSS_SYSSTATUS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"DSS_CONTROL\00", align 1
@DSS_CONTROL = common dso_local global i32 0, align 4
@OMAP_DSS_CHANNEL_LCD = common dso_local global i32 0, align 4
@OMAP_DISPLAY_TYPE_SDI = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [16 x i8] c"DSS_SDI_CONTROL\00", align 1
@DSS_SDI_CONTROL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [16 x i8] c"DSS_PLL_CONTROL\00", align 1
@DSS_PLL_CONTROL = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [15 x i8] c"DSS_SDI_STATUS\00", align 1
@DSS_SDI_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*)* @dss_dump_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dss_dump_regs(%struct.seq_file* %0) #0 {
  %2 = alloca %struct.seq_file*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %2, align 8
  %3 = call i64 (...) @dss_runtime_get()
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %43

6:                                                ; preds = %1
  %7 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %8 = load i32, i32* @DSS_REVISION, align 4
  %9 = call i32 (i32, ...) bitcast (i32 (...)* @dss_read_reg to i32 (i32, ...)*)(i32 %8)
  %10 = call i32 (%struct.seq_file*, i8*, i8*, i32, ...) bitcast (i32 (...)* @seq_printf to i32 (%struct.seq_file*, i8*, i8*, i32, ...)*)(%struct.seq_file* %7, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %9)
  %11 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %12 = load i32, i32* @DSS_SYSCONFIG, align 4
  %13 = call i32 (i32, ...) bitcast (i32 (...)* @dss_read_reg to i32 (i32, ...)*)(i32 %12)
  %14 = call i32 (%struct.seq_file*, i8*, i8*, i32, ...) bitcast (i32 (...)* @seq_printf to i32 (%struct.seq_file*, i8*, i8*, i32, ...)*)(%struct.seq_file* %11, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %13)
  %15 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %16 = load i32, i32* @DSS_SYSSTATUS, align 4
  %17 = call i32 (i32, ...) bitcast (i32 (...)* @dss_read_reg to i32 (i32, ...)*)(i32 %16)
  %18 = call i32 (%struct.seq_file*, i8*, i8*, i32, ...) bitcast (i32 (...)* @seq_printf to i32 (%struct.seq_file*, i8*, i8*, i32, ...)*)(%struct.seq_file* %15, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %17)
  %19 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %20 = load i32, i32* @DSS_CONTROL, align 4
  %21 = call i32 (i32, ...) bitcast (i32 (...)* @dss_read_reg to i32 (i32, ...)*)(i32 %20)
  %22 = call i32 (%struct.seq_file*, i8*, i8*, i32, ...) bitcast (i32 (...)* @seq_printf to i32 (%struct.seq_file*, i8*, i8*, i32, ...)*)(%struct.seq_file* %19, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* @OMAP_DSS_CHANNEL_LCD, align 4
  %24 = call i32 @dss_feat_get_supported_displays(i32 %23)
  %25 = load i32, i32* @OMAP_DISPLAY_TYPE_SDI, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %41

28:                                               ; preds = %6
  %29 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %30 = load i32, i32* @DSS_SDI_CONTROL, align 4
  %31 = call i32 (i32, ...) bitcast (i32 (...)* @dss_read_reg to i32 (i32, ...)*)(i32 %30)
  %32 = call i32 (%struct.seq_file*, i8*, i8*, i32, ...) bitcast (i32 (...)* @seq_printf to i32 (%struct.seq_file*, i8*, i8*, i32, ...)*)(%struct.seq_file* %29, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 %31)
  %33 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %34 = load i32, i32* @DSS_PLL_CONTROL, align 4
  %35 = call i32 (i32, ...) bitcast (i32 (...)* @dss_read_reg to i32 (i32, ...)*)(i32 %34)
  %36 = call i32 (%struct.seq_file*, i8*, i8*, i32, ...) bitcast (i32 (...)* @seq_printf to i32 (%struct.seq_file*, i8*, i8*, i32, ...)*)(%struct.seq_file* %33, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i32 %35)
  %37 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %38 = load i32, i32* @DSS_SDI_STATUS, align 4
  %39 = call i32 (i32, ...) bitcast (i32 (...)* @dss_read_reg to i32 (i32, ...)*)(i32 %38)
  %40 = call i32 (%struct.seq_file*, i8*, i8*, i32, ...) bitcast (i32 (...)* @seq_printf to i32 (%struct.seq_file*, i8*, i8*, i32, ...)*)(%struct.seq_file* %37, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i32 %39)
  br label %41

41:                                               ; preds = %28, %6
  %42 = call i32 (...) @dss_runtime_put()
  br label %43

43:                                               ; preds = %41, %5
  ret void
}

declare dso_local i64 @dss_runtime_get(...) #1

declare dso_local i32 @seq_printf(...) #1

declare dso_local i32 @dss_read_reg(...) #1

declare dso_local i32 @dss_feat_get_supported_displays(i32) #1

declare dso_local i32 @dss_runtime_put(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
