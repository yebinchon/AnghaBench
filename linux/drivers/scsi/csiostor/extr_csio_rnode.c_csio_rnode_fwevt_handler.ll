; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_rnode.c_csio_rnode_fwevt_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_rnode.c_csio_rnode_fwevt_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csio_rnode = type { i64, i64, i32 }
%struct.csio_lnode = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"ssni:x%x Unhandled FW Rdev event: %d\0A\00", align 1
@n_evt_unexp = common dso_local global i32 0, align 4
@n_evt_fw = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @csio_rnode_fwevt_handler(%struct.csio_rnode* %0, i64 %1) #0 {
  %3 = alloca %struct.csio_rnode*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.csio_lnode*, align 8
  %6 = alloca i32, align 4
  store %struct.csio_rnode* %0, %struct.csio_rnode** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.csio_rnode*, %struct.csio_rnode** %3, align 8
  %8 = call %struct.csio_lnode* @csio_rnode_to_lnode(%struct.csio_rnode* %7)
  store %struct.csio_lnode* %8, %struct.csio_lnode** %5, align 8
  %9 = load i64, i64* %4, align 8
  %10 = call i32 @CSIO_FWE_TO_RNFE(i64 %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %22, label %13

13:                                               ; preds = %2
  %14 = load %struct.csio_lnode*, %struct.csio_lnode** %5, align 8
  %15 = load %struct.csio_rnode*, %struct.csio_rnode** %3, align 8
  %16 = call i32 @csio_rn_flowid(%struct.csio_rnode* %15)
  %17 = load i64, i64* %4, align 8
  %18 = call i32 @csio_ln_err(%struct.csio_lnode* %14, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %16, i64 %17)
  %19 = load %struct.csio_rnode*, %struct.csio_rnode** %3, align 8
  %20 = load i32, i32* @n_evt_unexp, align 4
  %21 = call i32 @CSIO_INC_STATS(%struct.csio_rnode* %19, i32 %20)
  br label %48

22:                                               ; preds = %2
  %23 = load %struct.csio_rnode*, %struct.csio_rnode** %3, align 8
  %24 = load i32*, i32** @n_evt_fw, align 8
  %25 = load i64, i64* %4, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @CSIO_INC_STATS(%struct.csio_rnode* %23, i32 %27)
  %29 = load %struct.csio_rnode*, %struct.csio_rnode** %3, align 8
  %30 = getelementptr inbounds %struct.csio_rnode, %struct.csio_rnode* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.csio_rnode*, %struct.csio_rnode** %3, align 8
  %33 = getelementptr inbounds %struct.csio_rnode, %struct.csio_rnode* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  %34 = load i64, i64* %4, align 8
  %35 = load %struct.csio_rnode*, %struct.csio_rnode** %3, align 8
  %36 = getelementptr inbounds %struct.csio_rnode, %struct.csio_rnode* %35, i32 0, i32 1
  store i64 %34, i64* %36, align 8
  %37 = load %struct.csio_rnode*, %struct.csio_rnode** %3, align 8
  %38 = getelementptr inbounds %struct.csio_rnode, %struct.csio_rnode* %37, i32 0, i32 2
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @csio_post_event(i32* %38, i32 %39)
  %41 = load %struct.csio_rnode*, %struct.csio_rnode** %3, align 8
  %42 = call i64 @csio_is_rnode_uninit(%struct.csio_rnode* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %22
  %45 = load %struct.csio_lnode*, %struct.csio_lnode** %5, align 8
  %46 = load %struct.csio_rnode*, %struct.csio_rnode** %3, align 8
  %47 = call i32 @csio_put_rnode(%struct.csio_lnode* %45, %struct.csio_rnode* %46)
  br label %48

48:                                               ; preds = %13, %44, %22
  ret void
}

declare dso_local %struct.csio_lnode* @csio_rnode_to_lnode(%struct.csio_rnode*) #1

declare dso_local i32 @CSIO_FWE_TO_RNFE(i64) #1

declare dso_local i32 @csio_ln_err(%struct.csio_lnode*, i8*, i32, i64) #1

declare dso_local i32 @csio_rn_flowid(%struct.csio_rnode*) #1

declare dso_local i32 @CSIO_INC_STATS(%struct.csio_rnode*, i32) #1

declare dso_local i32 @csio_post_event(i32*, i32) #1

declare dso_local i64 @csio_is_rnode_uninit(%struct.csio_rnode*) #1

declare dso_local i32 @csio_put_rnode(%struct.csio_lnode*, %struct.csio_rnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
