; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bnx2fc/extr_bnx2fc_hwi.c_bnx2fc_alloc_work.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bnx2fc/extr_bnx2fc_hwi.c_bnx2fc_alloc_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2fc_work = type { i32, %struct.bnx2fc_rport*, i32 }
%struct.bnx2fc_rport = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bnx2fc_work* (%struct.bnx2fc_rport*, i32)* @bnx2fc_alloc_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bnx2fc_work* @bnx2fc_alloc_work(%struct.bnx2fc_rport* %0, i32 %1) #0 {
  %3 = alloca %struct.bnx2fc_work*, align 8
  %4 = alloca %struct.bnx2fc_rport*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.bnx2fc_work*, align 8
  store %struct.bnx2fc_rport* %0, %struct.bnx2fc_rport** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @GFP_ATOMIC, align 4
  %8 = call %struct.bnx2fc_work* @kzalloc(i32 24, i32 %7)
  store %struct.bnx2fc_work* %8, %struct.bnx2fc_work** %6, align 8
  %9 = load %struct.bnx2fc_work*, %struct.bnx2fc_work** %6, align 8
  %10 = icmp ne %struct.bnx2fc_work* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store %struct.bnx2fc_work* null, %struct.bnx2fc_work** %3, align 8
  br label %23

12:                                               ; preds = %2
  %13 = load %struct.bnx2fc_work*, %struct.bnx2fc_work** %6, align 8
  %14 = getelementptr inbounds %struct.bnx2fc_work, %struct.bnx2fc_work* %13, i32 0, i32 2
  %15 = call i32 @INIT_LIST_HEAD(i32* %14)
  %16 = load %struct.bnx2fc_rport*, %struct.bnx2fc_rport** %4, align 8
  %17 = load %struct.bnx2fc_work*, %struct.bnx2fc_work** %6, align 8
  %18 = getelementptr inbounds %struct.bnx2fc_work, %struct.bnx2fc_work* %17, i32 0, i32 1
  store %struct.bnx2fc_rport* %16, %struct.bnx2fc_rport** %18, align 8
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.bnx2fc_work*, %struct.bnx2fc_work** %6, align 8
  %21 = getelementptr inbounds %struct.bnx2fc_work, %struct.bnx2fc_work* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load %struct.bnx2fc_work*, %struct.bnx2fc_work** %6, align 8
  store %struct.bnx2fc_work* %22, %struct.bnx2fc_work** %3, align 8
  br label %23

23:                                               ; preds = %12, %11
  %24 = load %struct.bnx2fc_work*, %struct.bnx2fc_work** %3, align 8
  ret %struct.bnx2fc_work* %24
}

declare dso_local %struct.bnx2fc_work* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
