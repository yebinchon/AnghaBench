; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_gdth.c_gdth_scsi_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_gdth.c_gdth_scsi_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32 (%struct.scsi_cmnd*)*, i64, i32* }
%struct.gdth_cmndinfo = type { i32 }
%struct.completion = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"gdth_scsi_done()\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_cmnd*)* @gdth_scsi_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gdth_scsi_done(%struct.scsi_cmnd* %0) #0 {
  %2 = alloca %struct.scsi_cmnd*, align 8
  %3 = alloca %struct.gdth_cmndinfo*, align 8
  %4 = alloca i32, align 4
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %2, align 8
  %5 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %6 = call %struct.gdth_cmndinfo* @gdth_cmnd_priv(%struct.scsi_cmnd* %5)
  store %struct.gdth_cmndinfo* %6, %struct.gdth_cmndinfo** %3, align 8
  %7 = load %struct.gdth_cmndinfo*, %struct.gdth_cmndinfo** %3, align 8
  %8 = getelementptr inbounds %struct.gdth_cmndinfo, %struct.gdth_cmndinfo* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %4, align 4
  %10 = call i32 @TRACE2(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.gdth_cmndinfo*, %struct.gdth_cmndinfo** %3, align 8
  %12 = call i32 @gdth_put_cmndinfo(%struct.gdth_cmndinfo* %11)
  %13 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %14 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %13, i32 0, i32 2
  store i32* null, i32** %14, align 8
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %1
  %18 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %19 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.completion*
  %22 = call i32 @complete(%struct.completion* %21)
  br label %29

23:                                               ; preds = %1
  %24 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %25 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %24, i32 0, i32 0
  %26 = load i32 (%struct.scsi_cmnd*)*, i32 (%struct.scsi_cmnd*)** %25, align 8
  %27 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %28 = call i32 %26(%struct.scsi_cmnd* %27)
  br label %29

29:                                               ; preds = %23, %17
  ret void
}

declare dso_local %struct.gdth_cmndinfo* @gdth_cmnd_priv(%struct.scsi_cmnd*) #1

declare dso_local i32 @TRACE2(i8*) #1

declare dso_local i32 @gdth_put_cmndinfo(%struct.gdth_cmndinfo*) #1

declare dso_local i32 @complete(%struct.completion*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
