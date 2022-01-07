; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_lnode.c_csio_lnode_state_to_str.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_lnode.c_csio_lnode_state_to_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csio_lnode = type { i32 }

@csio_lns_uninit = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"UNINIT\00", align 1
@csio_lns_ready = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"READY\00", align 1
@csio_lns_offline = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"OFFLINE\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"UNKNOWN\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @csio_lnode_state_to_str(%struct.csio_lnode* %0, i32* %1) #0 {
  %3 = alloca %struct.csio_lnode*, align 8
  %4 = alloca i32*, align 8
  store %struct.csio_lnode* %0, %struct.csio_lnode** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load %struct.csio_lnode*, %struct.csio_lnode** %3, align 8
  %6 = call i64 @csio_get_state(%struct.csio_lnode* %5)
  %7 = load i64, i64* @csio_lns_uninit, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load i32*, i32** %4, align 8
  %11 = call i32 @strcpy(i32* %10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %31

12:                                               ; preds = %2
  %13 = load %struct.csio_lnode*, %struct.csio_lnode** %3, align 8
  %14 = call i64 @csio_get_state(%struct.csio_lnode* %13)
  %15 = load i64, i64* @csio_lns_ready, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = load i32*, i32** %4, align 8
  %19 = call i32 @strcpy(i32* %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %31

20:                                               ; preds = %12
  %21 = load %struct.csio_lnode*, %struct.csio_lnode** %3, align 8
  %22 = call i64 @csio_get_state(%struct.csio_lnode* %21)
  %23 = load i64, i64* @csio_lns_offline, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load i32*, i32** %4, align 8
  %27 = call i32 @strcpy(i32* %26, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  br label %31

28:                                               ; preds = %20
  %29 = load i32*, i32** %4, align 8
  %30 = call i32 @strcpy(i32* %29, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  br label %31

31:                                               ; preds = %28, %25, %17, %9
  ret void
}

declare dso_local i64 @csio_get_state(%struct.csio_lnode*) #1

declare dso_local i32 @strcpy(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
