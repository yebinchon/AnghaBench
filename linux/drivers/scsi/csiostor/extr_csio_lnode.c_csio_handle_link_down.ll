; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_lnode.c_csio_handle_link_down.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_lnode.c_csio_handle_link_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csio_hw = type { i32, %struct.csio_fcf_info* }
%struct.csio_fcf_info = type { i32 }
%struct.csio_lnode = type { i32, %struct.csio_fcf_info* }

@n_link_down = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [81 x i8] c"warn: FCOE link is already in offline Ignoring Fcoe linkdown event on portid %d\0A\00", align 1
@n_evt_drop = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"warn: FCOE linkdown recv with invalid port %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"warn: FCOE linkdown recv with invalid fcfi x%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Port:%d - FCOE LINK DOWN\0A\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"warn: FCOE linkdown recv with invalid vnpi x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.csio_hw*, i32, i32, i32)* @csio_handle_link_down to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @csio_handle_link_down(%struct.csio_hw* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.csio_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.csio_fcf_info*, align 8
  %10 = alloca %struct.csio_lnode*, align 8
  store %struct.csio_hw* %0, %struct.csio_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.csio_hw*, %struct.csio_hw** %5, align 8
  %12 = bitcast %struct.csio_hw* %11 to %struct.csio_lnode*
  %13 = load i32, i32* %8, align 4
  %14 = call %struct.csio_lnode* @csio_ln_lookup_by_vnpi(%struct.csio_lnode* %12, i32 %13)
  store %struct.csio_lnode* %14, %struct.csio_lnode** %10, align 8
  %15 = load %struct.csio_lnode*, %struct.csio_lnode** %10, align 8
  %16 = icmp ne %struct.csio_lnode* %15, null
  br i1 %16, label %17, label %67

17:                                               ; preds = %4
  %18 = load %struct.csio_lnode*, %struct.csio_lnode** %10, align 8
  %19 = getelementptr inbounds %struct.csio_lnode, %struct.csio_lnode* %18, i32 0, i32 1
  %20 = load %struct.csio_fcf_info*, %struct.csio_fcf_info** %19, align 8
  store %struct.csio_fcf_info* %20, %struct.csio_fcf_info** %9, align 8
  %21 = load %struct.csio_lnode*, %struct.csio_lnode** %10, align 8
  %22 = load i32, i32* @n_link_down, align 4
  %23 = call i32 @CSIO_INC_STATS(%struct.csio_lnode* %21, i32 %22)
  %24 = load %struct.csio_lnode*, %struct.csio_lnode** %10, align 8
  %25 = call i32 @csio_is_lnode_ready(%struct.csio_lnode* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %17
  %28 = load %struct.csio_lnode*, %struct.csio_lnode** %10, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @csio_ln_warn(%struct.csio_lnode* %28, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load %struct.csio_lnode*, %struct.csio_lnode** %10, align 8
  %32 = load i32, i32* @n_evt_drop, align 4
  %33 = call i32 @CSIO_INC_STATS(%struct.csio_lnode* %31, i32 %32)
  br label %76

34:                                               ; preds = %17
  %35 = load %struct.csio_fcf_info*, %struct.csio_fcf_info** %9, align 8
  %36 = getelementptr inbounds %struct.csio_fcf_info, %struct.csio_fcf_info* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %47

40:                                               ; preds = %34
  %41 = load %struct.csio_lnode*, %struct.csio_lnode** %10, align 8
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @csio_ln_warn(%struct.csio_lnode* %41, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  %44 = load %struct.csio_lnode*, %struct.csio_lnode** %10, align 8
  %45 = load i32, i32* @n_evt_drop, align 4
  %46 = call i32 @CSIO_INC_STATS(%struct.csio_lnode* %44, i32 %45)
  br label %76

47:                                               ; preds = %34
  %48 = load %struct.csio_lnode*, %struct.csio_lnode** %10, align 8
  %49 = getelementptr inbounds %struct.csio_lnode, %struct.csio_lnode* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %60

53:                                               ; preds = %47
  %54 = load %struct.csio_lnode*, %struct.csio_lnode** %10, align 8
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @csio_ln_warn(%struct.csio_lnode* %54, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %55)
  %57 = load %struct.csio_lnode*, %struct.csio_lnode** %10, align 8
  %58 = load i32, i32* @n_evt_drop, align 4
  %59 = call i32 @CSIO_INC_STATS(%struct.csio_lnode* %57, i32 %58)
  br label %76

60:                                               ; preds = %47
  %61 = load %struct.csio_hw*, %struct.csio_hw** %5, align 8
  %62 = bitcast %struct.csio_hw* %61 to %struct.csio_lnode*
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @csio_info(%struct.csio_lnode* %62, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %63)
  %65 = load %struct.csio_lnode*, %struct.csio_lnode** %10, align 8
  %66 = call i32 @csio_ln_down(%struct.csio_lnode* %65)
  br label %76

67:                                               ; preds = %4
  %68 = load %struct.csio_hw*, %struct.csio_hw** %5, align 8
  %69 = bitcast %struct.csio_hw* %68 to %struct.csio_lnode*
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @csio_warn(%struct.csio_lnode* %69, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0), i32 %70)
  %72 = load %struct.csio_hw*, %struct.csio_hw** %5, align 8
  %73 = bitcast %struct.csio_hw* %72 to %struct.csio_lnode*
  %74 = load i32, i32* @n_evt_drop, align 4
  %75 = call i32 @CSIO_INC_STATS(%struct.csio_lnode* %73, i32 %74)
  br label %76

76:                                               ; preds = %27, %40, %53, %60, %67
  ret void
}

declare dso_local %struct.csio_lnode* @csio_ln_lookup_by_vnpi(%struct.csio_lnode*, i32) #1

declare dso_local i32 @CSIO_INC_STATS(%struct.csio_lnode*, i32) #1

declare dso_local i32 @csio_is_lnode_ready(%struct.csio_lnode*) #1

declare dso_local i32 @csio_ln_warn(%struct.csio_lnode*, i8*, i32) #1

declare dso_local i32 @csio_info(%struct.csio_lnode*, i8*, i32) #1

declare dso_local i32 @csio_ln_down(%struct.csio_lnode*) #1

declare dso_local i32 @csio_warn(%struct.csio_lnode*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
