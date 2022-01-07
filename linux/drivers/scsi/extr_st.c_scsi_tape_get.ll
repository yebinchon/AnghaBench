; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_st.c_scsi_tape_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_st.c_scsi_tape_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_tape = type { i32, i32 }

@st_ref_mutex = common dso_local global i32 0, align 4
@st_index_lock = common dso_local global i32 0, align 4
@st_index_idr = common dso_local global i32 0, align 4
@scsi_tape_release = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.scsi_tape* (i32)* @scsi_tape_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.scsi_tape* @scsi_tape_get(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scsi_tape*, align 8
  store i32 %0, i32* %2, align 4
  store %struct.scsi_tape* null, %struct.scsi_tape** %3, align 8
  %4 = call i32 @mutex_lock(i32* @st_ref_mutex)
  %5 = call i32 @spin_lock(i32* @st_index_lock)
  %6 = load i32, i32* %2, align 4
  %7 = call %struct.scsi_tape* @idr_find(i32* @st_index_idr, i32 %6)
  store %struct.scsi_tape* %7, %struct.scsi_tape** %3, align 8
  %8 = load %struct.scsi_tape*, %struct.scsi_tape** %3, align 8
  %9 = icmp ne %struct.scsi_tape* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %33

11:                                               ; preds = %1
  %12 = load %struct.scsi_tape*, %struct.scsi_tape** %3, align 8
  %13 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %12, i32 0, i32 0
  %14 = call i32 @kref_get(i32* %13)
  %15 = load %struct.scsi_tape*, %struct.scsi_tape** %3, align 8
  %16 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %11
  br label %28

20:                                               ; preds = %11
  %21 = load %struct.scsi_tape*, %struct.scsi_tape** %3, align 8
  %22 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @scsi_device_get(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  br label %28

27:                                               ; preds = %20
  br label %33

28:                                               ; preds = %26, %19
  %29 = load %struct.scsi_tape*, %struct.scsi_tape** %3, align 8
  %30 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %29, i32 0, i32 0
  %31 = load i32, i32* @scsi_tape_release, align 4
  %32 = call i32 @kref_put(i32* %30, i32 %31)
  store %struct.scsi_tape* null, %struct.scsi_tape** %3, align 8
  br label %33

33:                                               ; preds = %28, %27, %10
  %34 = call i32 @spin_unlock(i32* @st_index_lock)
  %35 = call i32 @mutex_unlock(i32* @st_ref_mutex)
  %36 = load %struct.scsi_tape*, %struct.scsi_tape** %3, align 8
  ret %struct.scsi_tape* %36
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.scsi_tape* @idr_find(i32*, i32) #1

declare dso_local i32 @kref_get(i32*) #1

declare dso_local i64 @scsi_device_get(i32) #1

declare dso_local i32 @kref_put(i32*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
