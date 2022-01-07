; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/uwb/extr_uwb-debug.c_drp_avail_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/uwb/extr_uwb-debug.c_drp_avail_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.uwb_rc* }
%struct.uwb_rc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"global:  %*pb\0A\00", align 1
@UWB_NUM_MAS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"local:   %*pb\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"pending: %*pb\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @drp_avail_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drp_avail_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.uwb_rc*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %7 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %6, i32 0, i32 0
  %8 = load %struct.uwb_rc*, %struct.uwb_rc** %7, align 8
  store %struct.uwb_rc* %8, %struct.uwb_rc** %5, align 8
  %9 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %10 = load i32, i32* @UWB_NUM_MAS, align 4
  %11 = load %struct.uwb_rc*, %struct.uwb_rc** %5, align 8
  %12 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @seq_printf(%struct.seq_file* %9, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %14)
  %16 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %17 = load i32, i32* @UWB_NUM_MAS, align 4
  %18 = load %struct.uwb_rc*, %struct.uwb_rc** %5, align 8
  %19 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @seq_printf(%struct.seq_file* %16, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %17, i32 %21)
  %23 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %24 = load i32, i32* @UWB_NUM_MAS, align 4
  %25 = load %struct.uwb_rc*, %struct.uwb_rc** %5, align 8
  %26 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @seq_printf(%struct.seq_file* %23, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %24, i32 %28)
  ret i32 0
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
