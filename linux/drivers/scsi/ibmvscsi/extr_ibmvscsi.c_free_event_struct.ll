; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi/extr_ibmvscsi.c_free_event_struct.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi/extr_ibmvscsi.c_free_event_struct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_pool = type { i32 }
%struct.srp_event_struct = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [50 x i8] c"Freeing invalid event_struct %p (not in pool %p)\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"Freeing event_struct %p which is not in use!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.event_pool*, %struct.srp_event_struct*)* @free_event_struct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_event_struct(%struct.event_pool* %0, %struct.srp_event_struct* %1) #0 {
  %3 = alloca %struct.event_pool*, align 8
  %4 = alloca %struct.srp_event_struct*, align 8
  store %struct.event_pool* %0, %struct.event_pool** %3, align 8
  store %struct.srp_event_struct* %1, %struct.srp_event_struct** %4, align 8
  %5 = load %struct.event_pool*, %struct.event_pool** %3, align 8
  %6 = load %struct.srp_event_struct*, %struct.srp_event_struct** %4, align 8
  %7 = call i32 @valid_event_struct(%struct.event_pool* %5, %struct.srp_event_struct* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %20, label %9

9:                                                ; preds = %2
  %10 = load %struct.srp_event_struct*, %struct.srp_event_struct** %4, align 8
  %11 = getelementptr inbounds %struct.srp_event_struct, %struct.srp_event_struct* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.srp_event_struct*, %struct.srp_event_struct** %4, align 8
  %16 = load %struct.event_pool*, %struct.event_pool** %3, align 8
  %17 = getelementptr inbounds %struct.event_pool, %struct.event_pool* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 (i32, i8*, %struct.srp_event_struct*, ...) @dev_err(i32 %14, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), %struct.srp_event_struct* %15, i32 %18)
  br label %33

20:                                               ; preds = %2
  %21 = load %struct.srp_event_struct*, %struct.srp_event_struct** %4, align 8
  %22 = getelementptr inbounds %struct.srp_event_struct, %struct.srp_event_struct* %21, i32 0, i32 1
  %23 = call i32 @atomic_inc_return(i32* %22)
  %24 = icmp ne i32 %23, 1
  br i1 %24, label %25, label %33

25:                                               ; preds = %20
  %26 = load %struct.srp_event_struct*, %struct.srp_event_struct** %4, align 8
  %27 = getelementptr inbounds %struct.srp_event_struct, %struct.srp_event_struct* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.srp_event_struct*, %struct.srp_event_struct** %4, align 8
  %32 = call i32 (i32, i8*, %struct.srp_event_struct*, ...) @dev_err(i32 %30, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), %struct.srp_event_struct* %31)
  br label %33

33:                                               ; preds = %9, %25, %20
  ret void
}

declare dso_local i32 @valid_event_struct(%struct.event_pool*, %struct.srp_event_struct*) #1

declare dso_local i32 @dev_err(i32, i8*, %struct.srp_event_struct*, ...) #1

declare dso_local i32 @atomic_inc_return(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
