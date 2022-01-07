; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_rnode.c_csio_rns_ready.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_rnode.c_csio_rns_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csio_rnode = type { i32, i32, i32 }
%struct.csio_lnode = type { i32 }

@n_evt_sm = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [65 x i8] c"ssni:x%x Ignoring event %d recv from did:x%x in rn state[ready]\0A\00", align 1
@n_evt_drop = common dso_local global i32 0, align 4
@n_err_inval = common dso_local global i32 0, align 4
@csio_rns_offline = common dso_local global i32 0, align 4
@csio_rns_uninit = common dso_local global i32 0, align 4
@csio_rns_disappeared = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [63 x i8] c"ssni:x%x unexp event %d recv from did:x%x in rn state[uninit]\0A\00", align 1
@n_evt_unexp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.csio_rnode*, i32)* @csio_rns_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @csio_rns_ready(%struct.csio_rnode* %0, i32 %1) #0 {
  %3 = alloca %struct.csio_rnode*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.csio_lnode*, align 8
  %6 = alloca i32, align 4
  store %struct.csio_rnode* %0, %struct.csio_rnode** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.csio_rnode*, %struct.csio_rnode** %3, align 8
  %8 = call %struct.csio_lnode* @csio_rnode_to_lnode(%struct.csio_rnode* %7)
  store %struct.csio_lnode* %8, %struct.csio_lnode** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.csio_rnode*, %struct.csio_rnode** %3, align 8
  %10 = load i32*, i32** @n_evt_sm, align 8
  %11 = load i32, i32* %4, align 4
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds i32, i32* %10, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @CSIO_INC_STATS(%struct.csio_rnode* %9, i32 %14)
  %16 = load i32, i32* %4, align 4
  switch i32 %16, label %74 [
    i32 133, label %17
    i32 130, label %17
    i32 129, label %29
    i32 128, label %29
    i32 134, label %46
    i32 132, label %53
    i32 135, label %60
    i32 131, label %67
  ]

17:                                               ; preds = %2, %2
  %18 = load %struct.csio_lnode*, %struct.csio_lnode** %5, align 8
  %19 = load %struct.csio_rnode*, %struct.csio_rnode** %3, align 8
  %20 = call i32 @csio_rn_flowid(%struct.csio_rnode* %19)
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.csio_rnode*, %struct.csio_rnode** %3, align 8
  %23 = getelementptr inbounds %struct.csio_rnode, %struct.csio_rnode* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @csio_ln_dbg(%struct.csio_lnode* %18, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %21, i32 %24)
  %26 = load %struct.csio_rnode*, %struct.csio_rnode** %3, align 8
  %27 = load i32, i32* @n_evt_drop, align 4
  %28 = call i32 @CSIO_INC_STATS(%struct.csio_rnode* %26, i32 %27)
  br label %86

29:                                               ; preds = %2, %2
  %30 = load %struct.csio_lnode*, %struct.csio_lnode** %5, align 8
  %31 = load %struct.csio_rnode*, %struct.csio_rnode** %3, align 8
  %32 = load %struct.csio_rnode*, %struct.csio_rnode** %3, align 8
  %33 = getelementptr inbounds %struct.csio_rnode, %struct.csio_rnode* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @csio_rn_verify_rparams(%struct.csio_lnode* %30, %struct.csio_rnode* %31, i32 %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %29
  %39 = load %struct.csio_rnode*, %struct.csio_rnode** %3, align 8
  %40 = call i32 @__csio_reg_rnode(%struct.csio_rnode* %39)
  br label %45

41:                                               ; preds = %29
  %42 = load %struct.csio_rnode*, %struct.csio_rnode** %3, align 8
  %43 = load i32, i32* @n_err_inval, align 4
  %44 = call i32 @CSIO_INC_STATS(%struct.csio_rnode* %42, i32 %43)
  br label %45

45:                                               ; preds = %41, %38
  br label %86

46:                                               ; preds = %2
  %47 = load %struct.csio_rnode*, %struct.csio_rnode** %3, align 8
  %48 = getelementptr inbounds %struct.csio_rnode, %struct.csio_rnode* %47, i32 0, i32 1
  %49 = load i32, i32* @csio_rns_offline, align 4
  %50 = call i32 @csio_set_state(i32* %48, i32 %49)
  %51 = load %struct.csio_rnode*, %struct.csio_rnode** %3, align 8
  %52 = call i32 @__csio_unreg_rnode(%struct.csio_rnode* %51)
  br label %86

53:                                               ; preds = %2
  %54 = load %struct.csio_rnode*, %struct.csio_rnode** %3, align 8
  %55 = getelementptr inbounds %struct.csio_rnode, %struct.csio_rnode* %54, i32 0, i32 1
  %56 = load i32, i32* @csio_rns_offline, align 4
  %57 = call i32 @csio_set_state(i32* %55, i32 %56)
  %58 = load %struct.csio_rnode*, %struct.csio_rnode** %3, align 8
  %59 = call i32 @__csio_unreg_rnode(%struct.csio_rnode* %58)
  br label %86

60:                                               ; preds = %2
  %61 = load %struct.csio_rnode*, %struct.csio_rnode** %3, align 8
  %62 = getelementptr inbounds %struct.csio_rnode, %struct.csio_rnode* %61, i32 0, i32 1
  %63 = load i32, i32* @csio_rns_uninit, align 4
  %64 = call i32 @csio_set_state(i32* %62, i32 %63)
  %65 = load %struct.csio_rnode*, %struct.csio_rnode** %3, align 8
  %66 = call i32 @__csio_unreg_rnode(%struct.csio_rnode* %65)
  br label %86

67:                                               ; preds = %2
  %68 = load %struct.csio_rnode*, %struct.csio_rnode** %3, align 8
  %69 = getelementptr inbounds %struct.csio_rnode, %struct.csio_rnode* %68, i32 0, i32 1
  %70 = load i32, i32* @csio_rns_disappeared, align 4
  %71 = call i32 @csio_set_state(i32* %69, i32 %70)
  %72 = load %struct.csio_rnode*, %struct.csio_rnode** %3, align 8
  %73 = call i32 @__csio_unreg_rnode(%struct.csio_rnode* %72)
  br label %86

74:                                               ; preds = %2
  %75 = load %struct.csio_lnode*, %struct.csio_lnode** %5, align 8
  %76 = load %struct.csio_rnode*, %struct.csio_rnode** %3, align 8
  %77 = call i32 @csio_rn_flowid(%struct.csio_rnode* %76)
  %78 = load i32, i32* %4, align 4
  %79 = load %struct.csio_rnode*, %struct.csio_rnode** %3, align 8
  %80 = getelementptr inbounds %struct.csio_rnode, %struct.csio_rnode* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @csio_ln_dbg(%struct.csio_lnode* %75, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0), i32 %77, i32 %78, i32 %81)
  %83 = load %struct.csio_rnode*, %struct.csio_rnode** %3, align 8
  %84 = load i32, i32* @n_evt_unexp, align 4
  %85 = call i32 @CSIO_INC_STATS(%struct.csio_rnode* %83, i32 %84)
  br label %86

86:                                               ; preds = %74, %67, %60, %53, %46, %45, %17
  ret void
}

declare dso_local %struct.csio_lnode* @csio_rnode_to_lnode(%struct.csio_rnode*) #1

declare dso_local i32 @CSIO_INC_STATS(%struct.csio_rnode*, i32) #1

declare dso_local i32 @csio_ln_dbg(%struct.csio_lnode*, i8*, i32, i32, i32) #1

declare dso_local i32 @csio_rn_flowid(%struct.csio_rnode*) #1

declare dso_local i32 @csio_rn_verify_rparams(%struct.csio_lnode*, %struct.csio_rnode*, i32) #1

declare dso_local i32 @__csio_reg_rnode(%struct.csio_rnode*) #1

declare dso_local i32 @csio_set_state(i32*, i32) #1

declare dso_local i32 @__csio_unreg_rnode(%struct.csio_rnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
