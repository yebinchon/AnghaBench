; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/snic/extr_snic_trc.c_snic_trc_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/snic/extr_snic_trc.c_snic_trc_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.snic_trc }
%struct.snic_trc = type { i32, i32* }

@snic_glob = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [26 x i8] c"Trace Facility Disabled.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snic_trc_free() #0 {
  %1 = alloca %struct.snic_trc*, align 8
  %2 = load %struct.TYPE_2__*, %struct.TYPE_2__** @snic_glob, align 8
  %3 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %2, i32 0, i32 0
  store %struct.snic_trc* %3, %struct.snic_trc** %1, align 8
  %4 = load %struct.snic_trc*, %struct.snic_trc** %1, align 8
  %5 = getelementptr inbounds %struct.snic_trc, %struct.snic_trc* %4, i32 0, i32 0
  store i32 0, i32* %5, align 8
  %6 = call i32 (...) @snic_trc_debugfs_term()
  %7 = load %struct.snic_trc*, %struct.snic_trc** %1, align 8
  %8 = getelementptr inbounds %struct.snic_trc, %struct.snic_trc* %7, i32 0, i32 1
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %0
  %12 = load %struct.snic_trc*, %struct.snic_trc** %1, align 8
  %13 = getelementptr inbounds %struct.snic_trc, %struct.snic_trc* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = call i32 @vfree(i32* %14)
  %16 = load %struct.snic_trc*, %struct.snic_trc** %1, align 8
  %17 = getelementptr inbounds %struct.snic_trc, %struct.snic_trc* %16, i32 0, i32 1
  store i32* null, i32** %17, align 8
  br label %18

18:                                               ; preds = %11, %0
  %19 = call i32 @SNIC_INFO(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @snic_trc_debugfs_term(...) #1

declare dso_local i32 @vfree(i32*) #1

declare dso_local i32 @SNIC_INFO(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
