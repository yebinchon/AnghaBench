; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_st.c_do_door_lock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_st.c_do_door_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_tape = type { i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"%socking drive door.\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"Unl\00", align 1
@SCSI_REMOVAL_PREVENT = common dso_local global i32 0, align 4
@SCSI_REMOVAL_ALLOW = common dso_local global i32 0, align 4
@ST_LOCKED_EXPLICIT = common dso_local global i32 0, align 4
@ST_UNLOCKED = common dso_local global i32 0, align 4
@ST_LOCK_FAILS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_tape*, i32)* @do_door_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_door_lock(%struct.scsi_tape* %0, i32 %1) #0 {
  %3 = alloca %struct.scsi_tape*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.scsi_tape* %0, %struct.scsi_tape** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.scsi_tape*, %struct.scsi_tape** %3, align 8
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  %9 = zext i1 %8 to i64
  %10 = select i1 %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %11 = call i32 @DEBC_printk(%struct.scsi_tape* %6, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %10)
  %12 = load %struct.scsi_tape*, %struct.scsi_tape** %3, align 8
  %13 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* @SCSI_REMOVAL_PREVENT, align 4
  br label %21

19:                                               ; preds = %2
  %20 = load i32, i32* @SCSI_REMOVAL_ALLOW, align 4
  br label %21

21:                                               ; preds = %19, %17
  %22 = phi i32 [ %18, %17 ], [ %20, %19 ]
  %23 = call i32 @scsi_set_medium_removal(i32 %14, i32 %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %37, label %26

26:                                               ; preds = %21
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = load i32, i32* @ST_LOCKED_EXPLICIT, align 4
  br label %33

31:                                               ; preds = %26
  %32 = load i32, i32* @ST_UNLOCKED, align 4
  br label %33

33:                                               ; preds = %31, %29
  %34 = phi i32 [ %30, %29 ], [ %32, %31 ]
  %35 = load %struct.scsi_tape*, %struct.scsi_tape** %3, align 8
  %36 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  br label %41

37:                                               ; preds = %21
  %38 = load i32, i32* @ST_LOCK_FAILS, align 4
  %39 = load %struct.scsi_tape*, %struct.scsi_tape** %3, align 8
  %40 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  br label %41

41:                                               ; preds = %37, %33
  %42 = load i32, i32* %5, align 4
  ret i32 %42
}

declare dso_local i32 @DEBC_printk(%struct.scsi_tape*, i8*, i8*) #1

declare dso_local i32 @scsi_set_medium_removal(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
