; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_st.c_st_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_st.c_st_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.scsi_tape* }
%struct.scsi_tape = type { i64, i32, i64, i32 }

@ST_LOCKED_AUTO = common dso_local global i64 0, align 8
@st_use_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @st_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st_release(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.scsi_tape*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.file*, %struct.file** %4, align 8
  %8 = getelementptr inbounds %struct.file, %struct.file* %7, i32 0, i32 0
  %9 = load %struct.scsi_tape*, %struct.scsi_tape** %8, align 8
  store %struct.scsi_tape* %9, %struct.scsi_tape** %6, align 8
  %10 = load %struct.scsi_tape*, %struct.scsi_tape** %6, align 8
  %11 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @ST_LOCKED_AUTO, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load %struct.scsi_tape*, %struct.scsi_tape** %6, align 8
  %17 = call i32 @do_door_lock(%struct.scsi_tape* %16, i32 0)
  br label %18

18:                                               ; preds = %15, %2
  %19 = load %struct.scsi_tape*, %struct.scsi_tape** %6, align 8
  %20 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @normalize_buffer(i32 %21)
  %23 = call i32 @spin_lock(i32* @st_use_lock)
  %24 = load %struct.scsi_tape*, %struct.scsi_tape** %6, align 8
  %25 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %24, i32 0, i32 2
  store i64 0, i64* %25, align 8
  %26 = call i32 @spin_unlock(i32* @st_use_lock)
  %27 = load %struct.scsi_tape*, %struct.scsi_tape** %6, align 8
  %28 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @scsi_autopm_put_device(i32 %29)
  %31 = load %struct.scsi_tape*, %struct.scsi_tape** %6, align 8
  %32 = call i32 @scsi_tape_put(%struct.scsi_tape* %31)
  %33 = load i32, i32* %5, align 4
  ret i32 %33
}

declare dso_local i32 @do_door_lock(%struct.scsi_tape*, i32) #1

declare dso_local i32 @normalize_buffer(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @scsi_autopm_put_device(i32) #1

declare dso_local i32 @scsi_tape_put(%struct.scsi_tape*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
